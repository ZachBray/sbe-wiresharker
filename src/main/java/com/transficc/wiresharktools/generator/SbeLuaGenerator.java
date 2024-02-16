package com.transficc.wiresharktools.generator;

import uk.co.real_logic.sbe.xml.MessageSchema;
import uk.co.real_logic.sbe.xml.ParserOptions;
import uk.co.real_logic.sbe.xml.XmlSchemaParser;
import com.transficc.wiresharktools.generator.codewriter.CodeWriter;
import com.transficc.wiresharktools.generator.schemaparsing.Protocol;
import com.transficc.wiresharktools.generator.schemaparsing.SchemaParser;

import java.io.*;
import java.util.*;

@SuppressWarnings("ObjectAllocationInLoop")
public class SbeLuaGenerator
{
    private static final String PROTOCOL_NAME = System.getProperty("protocol.name");
    private static final String ENVELOPES = System.getProperty("envelope.message.names");

    public static void main(String[] args)
    {
        if (null == PROTOCOL_NAME)
        {
            System.err.println("Please specify protocol name with -Dprotocol.name=<name>");
            System.exit(1);
        }

        final File outputFile = new File(PROTOCOL_NAME + ".lua");

        final Set<String> envelopes = new HashSet<>();
        if (null != ENVELOPES)
        {
            Collections.addAll(envelopes, ENVELOPES.split(","));
        }

        final Schema[] inputSchemas = new Schema[args.length];
        for (int i = 0; i < args.length; i++)
        {
            final File inputFile = new File(args[i]);
            final String schemaName = inputFile.getName()
                .replace("-codecs.xml", "")
                .replace(".xml", "")
                .replace("-", "");
            inputSchemas[i] = Schema.schema(
                readSchemaFromFile(inputFile),
                schemaName,
                envelopes
            );
        }

        try (final OutputStream outputStream = new FileOutputStream(outputFile))
        {
            SbeLuaGenerator.generateLuaDissector(
                PROTOCOL_NAME + "_protocol",
                PROTOCOL_NAME,
                PROTOCOL_NAME + "_protocol",
                outputStream,
                inputSchemas
            );
        }
        catch (final IOException e)
        {
            throw new UncheckedIOException(e);
        }
    }

    private static MessageSchema readSchemaFromFile(final File inputFile)
    {
        try
        {
            final FileInputStream schema = new FileInputStream(inputFile);
            return XmlSchemaParser.parse(schema, ParserOptions.DEFAULT);
        }
        catch (final Exception e)
        {
            throw new IllegalStateException("Could not parse schema: " + inputFile, e);
        }
    }

    public static void generateLuaDissector(
            final String protocolTree,
            final String protocolShortName,
            final String protocolDescription,
            final OutputStream out,
            final Schema... schemas
    )
    {
        final List<Protocol> protocols = new ArrayList<>();
        for (final Schema schema : schemas)
        {
            final Protocol protocol = new Protocol(schema.schemaName, schema.messageSchema.id(), schema.envelopes);
            final MessageSchema messageSchema = schema.messageSchema;
            SchemaParser.generateSchemaCode(messageSchema, protocol);
            protocols.add(protocol);
        }

        CodeWriter.write(protocolTree, protocolShortName, protocolDescription, out, protocols);
    }

}
