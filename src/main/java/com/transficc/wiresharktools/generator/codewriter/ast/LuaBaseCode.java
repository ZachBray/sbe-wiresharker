package com.transficc.wiresharktools.generator.codewriter.ast;

import com.transficc.wiresharktools.generator.codewriter.Indentation;

public final class LuaBaseCode implements Renderable
{
    private final SchemaDispatcherFunction schemaDispatchFunction;
    private final String protocolTree;
    private final String protocolDescription;

    public LuaBaseCode(
            final SchemaDispatcherFunction schemaDispatchFunction,
            final String protocolTree,
            final String protocolDescription
    )
    {
        this.schemaDispatchFunction = schemaDispatchFunction;
        this.protocolTree = protocolTree;
        this.protocolDescription = protocolDescription;
    }

    @Override
    public String render(final Indentation indentation)
    {
        return indentation + "function " + protocolTree + ".dissector(buffer, pinfo, tree)\n" +
            indentation.indent() + "pinfo.desegment_len = buffer:len()\n" +
            indentation.indent() + "pinfo.desegment_offset = 0\n" +
            indentation.indent() + "pinfo.cols.protocol = " + protocolTree + ".name\n" +
            indentation.indent() + "\n" +
            indentation.indent() + "local protocolRootTree = tree:add(" + protocolTree + ", buffer, \"" + protocolTree + "\")\n" +
            indentation.indent() + "\n" +
            indentation.indent() + "dispatch(buffer, 0, protocolRootTree)\n" +
               indentation + "end\n" +
               indentation + "\n" +
               schemaDispatchFunction.render(indentation) +
               "\n" +
               blockLengthFunction() +
               "\n" +
               schemaIdFunction() +
               "\n" +
               templateIdFunction() +
               "\n" +
            heuristicRegistration(indentation);
    }

    private String heuristicRegistration(final Indentation indentation)
    {
        return indentation + "local function heuristic_" + protocolTree + "_dissector(buffer, pinfo, tree)\n" +
            indentation.indent() + "-- Check if the buffer length is at least enough for the 8-byte header\n" +
            indentation.indent() + "if buffer:len() < 8 then\n" +
            indentation.indent().indent() + "return false\n" +
            indentation.indent() + "end\n" +
            "\n" +
            indentation.indent() + "-- Parsing the fields from the buffer\n" +
            indentation.indent() + "local blockLength = blockLength(buffer, 0)\n" +
            indentation.indent() + "local schemaId = schemaId(buffer, 0)\n" +
            "\n" +
            indentation.indent() + "if buffer:len() < 8 + blockLength then\n" +
            indentation.indent().indent() + "return false\n" +
            indentation.indent() + "end\n" +
            "\n" +
            indentation.indent() + "-- Check for schemaId, blockLength and version conditions\n" +
            indentation.indent() + "if " + schemaDispatchFunction.renderCondition() + " then\n" +
            indentation.indent().indent() + "-- Call the dissector function\n" +
            indentation.indent().indent() + protocolTree + ".dissector(buffer, pinfo, tree)\n" +
            "\n" +
            indentation.indent().indent() + "-- Return true to indicate this dissector successfully dissected the buffer\n" +
            indentation.indent().indent() + "return true\n" +
            indentation.indent() + "end\n" +
            "\n" +
            indentation.indent() + "-- Return false if conditions are not met\n" +
            indentation.indent() + "return false\n" +
            indentation + "end\n" +
            "\n" +
            indentation + "-- Register the heuristic dissector\n" +
            indentation + protocolTree + ":register_heuristic(\"aeron_msg_payload\", heuristic_" + protocolTree + "_dissector)\n\n";
    }

    private static String templateIdFunction()
    {
        return "function templateId(buffer, offset)\n" +
               "    return buffer(offset + 2, 2):le_uint()\n" +
               "end\n";
    }

    private static String schemaIdFunction()
    {
        return "function schemaId(buffer, offset)\n" +
               "    return buffer(offset + 4, 2):le_uint()\n" +
               "end\n";
    }

    private static String blockLengthFunction()
    {
        return "function blockLength(buffer, offset)\n" +
               "    return buffer(offset + 0, 2):le_uint()\n" +
               "end\n";
    }
}
