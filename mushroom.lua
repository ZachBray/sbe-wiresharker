mushroom_protocol = Proto("mushroom", "mushroom_protocol")


aeronarchive_aeronarchive_messageHeader_blockLength = ProtoField.uint16("blockLength", "blockLength", base.DEC)
aeronarchive_templateId = {
    [64] = "ExtendRecordingRequest2",
    [1] = "ControlResponse",
    [65] = "StopRecordingByIdentityRequest",
    [2] = "ConnectRequest",
    [66] = "ReplicateRequest2",
    [3] = "CloseSessionRequest",
    [4] = "StartRecordingRequest",
    [5] = "StopRecordingRequest",
    [6] = "ReplayRequest",
    [7] = "StopReplayRequest",
    [8] = "ListRecordingsRequest",
    [9] = "ListRecordingsForUriRequest",
    [10] = "ListRecordingRequest",
    [11] = "ExtendRecordingRequest",
    [12] = "RecordingPositionRequest",
    [13] = "TruncateRecordingRequest",
    [14] = "StopRecordingSubscriptionRequest",
    [15] = "StopPositionRequest",
    [16] = "FindLastMatchingRecordingRequest",
    [17] = "ListRecordingSubscriptionsRequest",
    [18] = "BoundedReplayRequest",
    [19] = "StopAllReplaysRequest",
    [20] = "CatalogHeader",
    [21] = "RecordingDescriptorHeader",
    [22] = "RecordingDescriptor",
    [23] = "RecordingSubscriptionDescriptor",
    [24] = "RecordingSignalEvent",
    [101] = "RecordingStarted",
    [102] = "RecordingProgress",
    [103] = "RecordingStopped",
    [104] = "PurgeRecordingRequest",
    [50] = "ReplicateRequest",
    [51] = "StopReplicationRequest",
    [52] = "StartPositionRequest",
    [53] = "DetachSegmentsRequest",
    [54] = "DeleteDetachedSegmentsRequest",
    [55] = "PurgeSegmentsRequest",
    [56] = "AttachSegmentsRequest",
    [57] = "MigrateSegmentsRequest",
    [58] = "AuthConnectRequest",
    [59] = "Challenge",
    [60] = "ChallengeResponse",
    [61] = "KeepAliveRequest",
    [62] = "TaggedReplicateRequest",
    [63] = "StartRecordingRequest2"
}
aeronarchive_aeronarchive_messageHeader_templateId = ProtoField.uint16("templateId", "templateId", base.DEC, aeronarchive_templateId)
aeronarchive_aeronarchive_messageHeader_schemaId = ProtoField.uint16("schemaId", "schemaId", base.DEC)
aeronarchive_aeronarchive_messageHeader_version = ProtoField.uint16("version", "version", base.DEC)
aeronarchive_extendRecordingRequest2_controlSessionId = ProtoField.int64("controlSessionId", "controlSessionId", base.DEC)
aeronarchive_extendRecordingRequest2_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_extendRecordingRequest2_recordingId = ProtoField.int64("recordingId", "recordingId", base.DEC)
aeronarchive_extendRecordingRequest2_streamId = ProtoField.int32("streamId", "streamId", base.DEC)
aeronarchive_sourceLocation = {
    [0] = "LOCAL",
    [1] = "REMOTE"
}
aeronarchive_extendRecordingRequest2_sourceLocation = ProtoField.int32("sourceLocation", "sourceLocation", base.DEC, aeronarchive_sourceLocation)
aeronarchive_autoStop = {
    [0] = "FALSE",
    [1] = "TRUE"
}
aeronarchive_extendRecordingRequest2_autoStop = ProtoField.int32("autoStop", "autoStop", base.DEC, aeronarchive_autoStop)
aeronarchive_extendRecordingRequest2_channel = ProtoField.string("channel", "channel", base.ASCII)
aeronarchive_controlResponse_controlSessionId = ProtoField.int64("controlSessionId", "controlSessionId", base.DEC)
aeronarchive_controlResponse_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_controlResponse_relevantId = ProtoField.int64("relevantId", "relevantId", base.DEC)
aeronarchive_code = {
    [0] = "OK",
    [1] = "ERROR",
    [2] = "RECORDING_UNKNOWN",
    [3] = "SUBSCRIPTION_UNKNOWN"
}
aeronarchive_controlResponse_code = ProtoField.int32("code", "code", base.DEC, aeronarchive_code)
aeronarchive_controlResponse_version = ProtoField.int32("version", "version", base.DEC)
aeronarchive_controlResponse_errorMessage = ProtoField.string("errorMessage", "errorMessage", base.ASCII)
aeronarchive_stopRecordingByIdentityRequest_controlSessionId = ProtoField.int64("controlSessionId", "controlSessionId", base.DEC)
aeronarchive_stopRecordingByIdentityRequest_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_stopRecordingByIdentityRequest_recordingId = ProtoField.int64("recordingId", "recordingId", base.DEC)
aeronarchive_connectRequest_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_connectRequest_responseStreamId = ProtoField.int32("responseStreamId", "responseStreamId", base.DEC)
aeronarchive_connectRequest_version = ProtoField.int32("version", "version", base.DEC)
aeronarchive_connectRequest_responseChannel = ProtoField.string("responseChannel", "responseChannel", base.ASCII)
aeronarchive_replicateRequest2_controlSessionId = ProtoField.int64("controlSessionId", "controlSessionId", base.DEC)
aeronarchive_replicateRequest2_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_replicateRequest2_srcRecordingId = ProtoField.int64("srcRecordingId", "srcRecordingId", base.DEC)
aeronarchive_replicateRequest2_dstRecordingId = ProtoField.int64("dstRecordingId", "dstRecordingId", base.DEC)
aeronarchive_replicateRequest2_stopPosition = ProtoField.int64("stopPosition", "stopPosition", base.DEC)
aeronarchive_replicateRequest2_channelTagId = ProtoField.int64("channelTagId", "channelTagId", base.DEC)
aeronarchive_replicateRequest2_subscriptionTagId = ProtoField.int64("subscriptionTagId", "subscriptionTagId", base.DEC)
aeronarchive_replicateRequest2_srcControlStreamId = ProtoField.int32("srcControlStreamId", "srcControlStreamId", base.DEC)
aeronarchive_replicateRequest2_fileIoMaxLength = ProtoField.int32("fileIoMaxLength", "fileIoMaxLength", base.DEC)
aeronarchive_replicateRequest2_replicationSessionId = ProtoField.int32("replicationSessionId", "replicationSessionId", base.DEC)
aeronarchive_replicateRequest2_srcControlChannel = ProtoField.string("srcControlChannel", "srcControlChannel", base.ASCII)
aeronarchive_replicateRequest2_liveDestination = ProtoField.string("liveDestination", "liveDestination", base.ASCII)
aeronarchive_replicateRequest2_replicationChannel = ProtoField.string("replicationChannel", "replicationChannel", base.ASCII)
aeronarchive_replicateRequest2_encodedCredentials = ProtoField.string("encodedCredentials", "encodedCredentials", base.ASCII)
aeronarchive_closeSessionRequest_controlSessionId = ProtoField.int64("controlSessionId", "controlSessionId", base.DEC)
aeronarchive_startRecordingRequest_controlSessionId = ProtoField.int64("controlSessionId", "controlSessionId", base.DEC)
aeronarchive_startRecordingRequest_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_startRecordingRequest_streamId = ProtoField.int32("streamId", "streamId", base.DEC)
aeronarchive_startRecordingRequest_sourceLocation = ProtoField.int32("sourceLocation", "sourceLocation", base.DEC, aeronarchive_sourceLocation)
aeronarchive_startRecordingRequest_channel = ProtoField.string("channel", "channel", base.ASCII)
aeronarchive_stopRecordingRequest_controlSessionId = ProtoField.int64("controlSessionId", "controlSessionId", base.DEC)
aeronarchive_stopRecordingRequest_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_stopRecordingRequest_streamId = ProtoField.int32("streamId", "streamId", base.DEC)
aeronarchive_stopRecordingRequest_channel = ProtoField.string("channel", "channel", base.ASCII)
aeronarchive_replayRequest_controlSessionId = ProtoField.int64("controlSessionId", "controlSessionId", base.DEC)
aeronarchive_replayRequest_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_replayRequest_recordingId = ProtoField.int64("recordingId", "recordingId", base.DEC)
aeronarchive_replayRequest_position = ProtoField.int64("position", "position", base.DEC)
aeronarchive_replayRequest_length = ProtoField.int64("length", "length", base.DEC)
aeronarchive_replayRequest_replayStreamId = ProtoField.int32("replayStreamId", "replayStreamId", base.DEC)
aeronarchive_replayRequest_fileIoMaxLength = ProtoField.int32("fileIoMaxLength", "fileIoMaxLength", base.DEC)
aeronarchive_replayRequest_replayChannel = ProtoField.string("replayChannel", "replayChannel", base.ASCII)
aeronarchive_stopReplayRequest_controlSessionId = ProtoField.int64("controlSessionId", "controlSessionId", base.DEC)
aeronarchive_stopReplayRequest_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_stopReplayRequest_replaySessionId = ProtoField.int64("replaySessionId", "replaySessionId", base.DEC)
aeronarchive_listRecordingsRequest_controlSessionId = ProtoField.int64("controlSessionId", "controlSessionId", base.DEC)
aeronarchive_listRecordingsRequest_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_listRecordingsRequest_fromRecordingId = ProtoField.int64("fromRecordingId", "fromRecordingId", base.DEC)
aeronarchive_listRecordingsRequest_recordCount = ProtoField.int32("recordCount", "recordCount", base.DEC)
aeronarchive_listRecordingsForUriRequest_controlSessionId = ProtoField.int64("controlSessionId", "controlSessionId", base.DEC)
aeronarchive_listRecordingsForUriRequest_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_listRecordingsForUriRequest_fromRecordingId = ProtoField.int64("fromRecordingId", "fromRecordingId", base.DEC)
aeronarchive_listRecordingsForUriRequest_recordCount = ProtoField.int32("recordCount", "recordCount", base.DEC)
aeronarchive_listRecordingsForUriRequest_streamId = ProtoField.int32("streamId", "streamId", base.DEC)
aeronarchive_listRecordingsForUriRequest_channel = ProtoField.string("channel", "channel", base.ASCII)
aeronarchive_listRecordingRequest_controlSessionId = ProtoField.int64("controlSessionId", "controlSessionId", base.DEC)
aeronarchive_listRecordingRequest_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_listRecordingRequest_recordingId = ProtoField.int64("recordingId", "recordingId", base.DEC)
aeronarchive_extendRecordingRequest_controlSessionId = ProtoField.int64("controlSessionId", "controlSessionId", base.DEC)
aeronarchive_extendRecordingRequest_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_extendRecordingRequest_recordingId = ProtoField.int64("recordingId", "recordingId", base.DEC)
aeronarchive_extendRecordingRequest_streamId = ProtoField.int32("streamId", "streamId", base.DEC)
aeronarchive_extendRecordingRequest_sourceLocation = ProtoField.int32("sourceLocation", "sourceLocation", base.DEC, aeronarchive_sourceLocation)
aeronarchive_extendRecordingRequest_channel = ProtoField.string("channel", "channel", base.ASCII)
aeronarchive_recordingPositionRequest_controlSessionId = ProtoField.int64("controlSessionId", "controlSessionId", base.DEC)
aeronarchive_recordingPositionRequest_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_recordingPositionRequest_recordingId = ProtoField.int64("recordingId", "recordingId", base.DEC)
aeronarchive_truncateRecordingRequest_controlSessionId = ProtoField.int64("controlSessionId", "controlSessionId", base.DEC)
aeronarchive_truncateRecordingRequest_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_truncateRecordingRequest_recordingId = ProtoField.int64("recordingId", "recordingId", base.DEC)
aeronarchive_truncateRecordingRequest_position = ProtoField.int64("position", "position", base.DEC)
aeronarchive_stopRecordingSubscriptionRequest_controlSessionId = ProtoField.int64("controlSessionId", "controlSessionId", base.DEC)
aeronarchive_stopRecordingSubscriptionRequest_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_stopRecordingSubscriptionRequest_subscriptionId = ProtoField.int64("subscriptionId", "subscriptionId", base.DEC)
aeronarchive_stopPositionRequest_controlSessionId = ProtoField.int64("controlSessionId", "controlSessionId", base.DEC)
aeronarchive_stopPositionRequest_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_stopPositionRequest_recordingId = ProtoField.int64("recordingId", "recordingId", base.DEC)
aeronarchive_findLastMatchingRecordingRequest_controlSessionId = ProtoField.int64("controlSessionId", "controlSessionId", base.DEC)
aeronarchive_findLastMatchingRecordingRequest_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_findLastMatchingRecordingRequest_minRecordingId = ProtoField.int64("minRecordingId", "minRecordingId", base.DEC)
aeronarchive_findLastMatchingRecordingRequest_sessionId = ProtoField.int32("sessionId", "sessionId", base.DEC)
aeronarchive_findLastMatchingRecordingRequest_streamId = ProtoField.int32("streamId", "streamId", base.DEC)
aeronarchive_findLastMatchingRecordingRequest_channel = ProtoField.string("channel", "channel", base.ASCII)
aeronarchive_listRecordingSubscriptionsRequest_controlSessionId = ProtoField.int64("controlSessionId", "controlSessionId", base.DEC)
aeronarchive_listRecordingSubscriptionsRequest_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_listRecordingSubscriptionsRequest_pseudoIndex = ProtoField.int32("pseudoIndex", "pseudoIndex", base.DEC)
aeronarchive_listRecordingSubscriptionsRequest_subscriptionCount = ProtoField.int32("subscriptionCount", "subscriptionCount", base.DEC)
aeronarchive_applyStreamId = {
    [0] = "FALSE",
    [1] = "TRUE"
}
aeronarchive_listRecordingSubscriptionsRequest_applyStreamId = ProtoField.int32("applyStreamId", "applyStreamId", base.DEC, aeronarchive_applyStreamId)
aeronarchive_listRecordingSubscriptionsRequest_streamId = ProtoField.int32("streamId", "streamId", base.DEC)
aeronarchive_listRecordingSubscriptionsRequest_channel = ProtoField.string("channel", "channel", base.ASCII)
aeronarchive_boundedReplayRequest_controlSessionId = ProtoField.int64("controlSessionId", "controlSessionId", base.DEC)
aeronarchive_boundedReplayRequest_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_boundedReplayRequest_recordingId = ProtoField.int64("recordingId", "recordingId", base.DEC)
aeronarchive_boundedReplayRequest_position = ProtoField.int64("position", "position", base.DEC)
aeronarchive_boundedReplayRequest_length = ProtoField.int64("length", "length", base.DEC)
aeronarchive_boundedReplayRequest_limitCounterId = ProtoField.int32("limitCounterId", "limitCounterId", base.DEC)
aeronarchive_boundedReplayRequest_replayStreamId = ProtoField.int32("replayStreamId", "replayStreamId", base.DEC)
aeronarchive_boundedReplayRequest_fileIoMaxLength = ProtoField.int32("fileIoMaxLength", "fileIoMaxLength", base.DEC)
aeronarchive_boundedReplayRequest_replayChannel = ProtoField.string("replayChannel", "replayChannel", base.ASCII)
aeronarchive_stopAllReplaysRequest_controlSessionId = ProtoField.int64("controlSessionId", "controlSessionId", base.DEC)
aeronarchive_stopAllReplaysRequest_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_stopAllReplaysRequest_recordingId = ProtoField.int64("recordingId", "recordingId", base.DEC)
aeronarchive_catalogHeader_version = ProtoField.int32("version", "version", base.DEC)
aeronarchive_catalogHeader_length = ProtoField.int32("length", "length", base.DEC)
aeronarchive_catalogHeader_nextRecordingId = ProtoField.int64("nextRecordingId", "nextRecordingId", base.DEC)
aeronarchive_catalogHeader_alignment = ProtoField.int32("alignment", "alignment", base.DEC)
aeronarchive_catalogHeader_reserved = ProtoField.int8("reserved", "reserved", base.DEC)
aeronarchive_recordingDescriptorHeader_length = ProtoField.int32("length", "length", base.DEC)
aeronarchive_state = {
    [0] = "INVALID",
    [1] = "VALID"
}
aeronarchive_recordingDescriptorHeader_state = ProtoField.int32("state", "state", base.DEC, aeronarchive_state)
aeronarchive_recordingDescriptorHeader_checksum = ProtoField.int32("checksum", "checksum", base.DEC)
aeronarchive_recordingDescriptorHeader_reserved = ProtoField.int8("reserved", "reserved", base.DEC)
aeronarchive_recordingDescriptor_controlSessionId = ProtoField.int64("controlSessionId", "controlSessionId", base.DEC)
aeronarchive_recordingDescriptor_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_recordingDescriptor_recordingId = ProtoField.int64("recordingId", "recordingId", base.DEC)
aeronarchive_recordingDescriptor_startTimestamp = ProtoField.int64("startTimestamp", "startTimestamp", base.DEC)
aeronarchive_recordingDescriptor_stopTimestamp = ProtoField.int64("stopTimestamp", "stopTimestamp", base.DEC)
aeronarchive_recordingDescriptor_startPosition = ProtoField.int64("startPosition", "startPosition", base.DEC)
aeronarchive_recordingDescriptor_stopPosition = ProtoField.int64("stopPosition", "stopPosition", base.DEC)
aeronarchive_recordingDescriptor_initialTermId = ProtoField.int32("initialTermId", "initialTermId", base.DEC)
aeronarchive_recordingDescriptor_segmentFileLength = ProtoField.int32("segmentFileLength", "segmentFileLength", base.DEC)
aeronarchive_recordingDescriptor_termBufferLength = ProtoField.int32("termBufferLength", "termBufferLength", base.DEC)
aeronarchive_recordingDescriptor_mtuLength = ProtoField.int32("mtuLength", "mtuLength", base.DEC)
aeronarchive_recordingDescriptor_sessionId = ProtoField.int32("sessionId", "sessionId", base.DEC)
aeronarchive_recordingDescriptor_streamId = ProtoField.int32("streamId", "streamId", base.DEC)
aeronarchive_recordingDescriptor_strippedChannel = ProtoField.string("strippedChannel", "strippedChannel", base.ASCII)
aeronarchive_recordingDescriptor_originalChannel = ProtoField.string("originalChannel", "originalChannel", base.ASCII)
aeronarchive_recordingDescriptor_sourceIdentity = ProtoField.string("sourceIdentity", "sourceIdentity", base.ASCII)
aeronarchive_recordingSubscriptionDescriptor_controlSessionId = ProtoField.int64("controlSessionId", "controlSessionId", base.DEC)
aeronarchive_recordingSubscriptionDescriptor_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_recordingSubscriptionDescriptor_subscriptionId = ProtoField.int64("subscriptionId", "subscriptionId", base.DEC)
aeronarchive_recordingSubscriptionDescriptor_streamId = ProtoField.int32("streamId", "streamId", base.DEC)
aeronarchive_recordingSubscriptionDescriptor_strippedChannel = ProtoField.string("strippedChannel", "strippedChannel", base.ASCII)
aeronarchive_recordingSignalEvent_controlSessionId = ProtoField.int64("controlSessionId", "controlSessionId", base.DEC)
aeronarchive_recordingSignalEvent_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_recordingSignalEvent_recordingId = ProtoField.int64("recordingId", "recordingId", base.DEC)
aeronarchive_recordingSignalEvent_subscriptionId = ProtoField.int64("subscriptionId", "subscriptionId", base.DEC)
aeronarchive_recordingSignalEvent_position = ProtoField.int64("position", "position", base.DEC)
aeronarchive_signal = {
    [0] = "START",
    [1] = "STOP",
    [2] = "EXTEND",
    [3] = "REPLICATE",
    [4] = "MERGE",
    [5] = "SYNC",
    [6] = "DELETE",
    [7] = "REPLICATE_END"
}
aeronarchive_recordingSignalEvent_signal = ProtoField.int32("signal", "signal", base.DEC, aeronarchive_signal)
aeronarchive_recordingStarted_recordingId = ProtoField.int64("recordingId", "recordingId", base.DEC)
aeronarchive_recordingStarted_startPosition = ProtoField.int64("startPosition", "startPosition", base.DEC)
aeronarchive_recordingStarted_sessionId = ProtoField.int32("sessionId", "sessionId", base.DEC)
aeronarchive_recordingStarted_streamId = ProtoField.int32("streamId", "streamId", base.DEC)
aeronarchive_recordingStarted_channel = ProtoField.string("channel", "channel", base.ASCII)
aeronarchive_recordingStarted_sourceIdentity = ProtoField.string("sourceIdentity", "sourceIdentity", base.ASCII)
aeronarchive_recordingProgress_recordingId = ProtoField.int64("recordingId", "recordingId", base.DEC)
aeronarchive_recordingProgress_startPosition = ProtoField.int64("startPosition", "startPosition", base.DEC)
aeronarchive_recordingProgress_position = ProtoField.int64("position", "position", base.DEC)
aeronarchive_recordingStopped_recordingId = ProtoField.int64("recordingId", "recordingId", base.DEC)
aeronarchive_recordingStopped_startPosition = ProtoField.int64("startPosition", "startPosition", base.DEC)
aeronarchive_recordingStopped_stopPosition = ProtoField.int64("stopPosition", "stopPosition", base.DEC)
aeronarchive_purgeRecordingRequest_controlSessionId = ProtoField.int64("controlSessionId", "controlSessionId", base.DEC)
aeronarchive_purgeRecordingRequest_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_purgeRecordingRequest_recordingId = ProtoField.int64("recordingId", "recordingId", base.DEC)
aeronarchive_replicateRequest_controlSessionId = ProtoField.int64("controlSessionId", "controlSessionId", base.DEC)
aeronarchive_replicateRequest_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_replicateRequest_srcRecordingId = ProtoField.int64("srcRecordingId", "srcRecordingId", base.DEC)
aeronarchive_replicateRequest_dstRecordingId = ProtoField.int64("dstRecordingId", "dstRecordingId", base.DEC)
aeronarchive_replicateRequest_srcControlStreamId = ProtoField.int32("srcControlStreamId", "srcControlStreamId", base.DEC)
aeronarchive_replicateRequest_srcControlChannel = ProtoField.string("srcControlChannel", "srcControlChannel", base.ASCII)
aeronarchive_replicateRequest_liveDestination = ProtoField.string("liveDestination", "liveDestination", base.ASCII)
aeronarchive_stopReplicationRequest_controlSessionId = ProtoField.int64("controlSessionId", "controlSessionId", base.DEC)
aeronarchive_stopReplicationRequest_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_stopReplicationRequest_replicationId = ProtoField.int64("replicationId", "replicationId", base.DEC)
aeronarchive_startPositionRequest_controlSessionId = ProtoField.int64("controlSessionId", "controlSessionId", base.DEC)
aeronarchive_startPositionRequest_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_startPositionRequest_recordingId = ProtoField.int64("recordingId", "recordingId", base.DEC)
aeronarchive_detachSegmentsRequest_controlSessionId = ProtoField.int64("controlSessionId", "controlSessionId", base.DEC)
aeronarchive_detachSegmentsRequest_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_detachSegmentsRequest_recordingId = ProtoField.int64("recordingId", "recordingId", base.DEC)
aeronarchive_detachSegmentsRequest_newStartPosition = ProtoField.int64("newStartPosition", "newStartPosition", base.DEC)
aeronarchive_deleteDetachedSegmentsRequest_controlSessionId = ProtoField.int64("controlSessionId", "controlSessionId", base.DEC)
aeronarchive_deleteDetachedSegmentsRequest_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_deleteDetachedSegmentsRequest_recordingId = ProtoField.int64("recordingId", "recordingId", base.DEC)
aeronarchive_purgeSegmentsRequest_controlSessionId = ProtoField.int64("controlSessionId", "controlSessionId", base.DEC)
aeronarchive_purgeSegmentsRequest_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_purgeSegmentsRequest_recordingId = ProtoField.int64("recordingId", "recordingId", base.DEC)
aeronarchive_purgeSegmentsRequest_newStartPosition = ProtoField.int64("newStartPosition", "newStartPosition", base.DEC)
aeronarchive_attachSegmentsRequest_controlSessionId = ProtoField.int64("controlSessionId", "controlSessionId", base.DEC)
aeronarchive_attachSegmentsRequest_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_attachSegmentsRequest_recordingId = ProtoField.int64("recordingId", "recordingId", base.DEC)
aeronarchive_migrateSegmentsRequest_controlSessionId = ProtoField.int64("controlSessionId", "controlSessionId", base.DEC)
aeronarchive_migrateSegmentsRequest_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_migrateSegmentsRequest_srcRecordingId = ProtoField.int64("srcRecordingId", "srcRecordingId", base.DEC)
aeronarchive_migrateSegmentsRequest_dstRecordingId = ProtoField.int64("dstRecordingId", "dstRecordingId", base.DEC)
aeronarchive_authConnectRequest_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_authConnectRequest_responseStreamId = ProtoField.int32("responseStreamId", "responseStreamId", base.DEC)
aeronarchive_authConnectRequest_version = ProtoField.int32("version", "version", base.DEC)
aeronarchive_authConnectRequest_responseChannel = ProtoField.string("responseChannel", "responseChannel", base.ASCII)
aeronarchive_authConnectRequest_encodedCredentials = ProtoField.string("encodedCredentials", "encodedCredentials", base.ASCII)
aeronarchive_challenge_controlSessionId = ProtoField.int64("controlSessionId", "controlSessionId", base.DEC)
aeronarchive_challenge_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_challenge_version = ProtoField.int32("version", "version", base.DEC)
aeronarchive_challenge_encodedChallenge = ProtoField.string("encodedChallenge", "encodedChallenge", base.ASCII)
aeronarchive_challengeResponse_controlSessionId = ProtoField.int64("controlSessionId", "controlSessionId", base.DEC)
aeronarchive_challengeResponse_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_challengeResponse_encodedCredentials = ProtoField.string("encodedCredentials", "encodedCredentials", base.ASCII)
aeronarchive_keepAliveRequest_controlSessionId = ProtoField.int64("controlSessionId", "controlSessionId", base.DEC)
aeronarchive_keepAliveRequest_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_taggedReplicateRequest_controlSessionId = ProtoField.int64("controlSessionId", "controlSessionId", base.DEC)
aeronarchive_taggedReplicateRequest_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_taggedReplicateRequest_srcRecordingId = ProtoField.int64("srcRecordingId", "srcRecordingId", base.DEC)
aeronarchive_taggedReplicateRequest_dstRecordingId = ProtoField.int64("dstRecordingId", "dstRecordingId", base.DEC)
aeronarchive_taggedReplicateRequest_channelTagId = ProtoField.int64("channelTagId", "channelTagId", base.DEC)
aeronarchive_taggedReplicateRequest_subscriptionTagId = ProtoField.int64("subscriptionTagId", "subscriptionTagId", base.DEC)
aeronarchive_taggedReplicateRequest_srcControlStreamId = ProtoField.int32("srcControlStreamId", "srcControlStreamId", base.DEC)
aeronarchive_taggedReplicateRequest_srcControlChannel = ProtoField.string("srcControlChannel", "srcControlChannel", base.ASCII)
aeronarchive_taggedReplicateRequest_liveDestination = ProtoField.string("liveDestination", "liveDestination", base.ASCII)
aeronarchive_startRecordingRequest2_controlSessionId = ProtoField.int64("controlSessionId", "controlSessionId", base.DEC)
aeronarchive_startRecordingRequest2_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeronarchive_startRecordingRequest2_streamId = ProtoField.int32("streamId", "streamId", base.DEC)
aeronarchive_startRecordingRequest2_sourceLocation = ProtoField.int32("sourceLocation", "sourceLocation", base.DEC, aeronarchive_sourceLocation)
aeronarchive_startRecordingRequest2_autoStop = ProtoField.int32("autoStop", "autoStop", base.DEC, aeronarchive_autoStop)
aeronarchive_startRecordingRequest2_channel = ProtoField.string("channel", "channel", base.ASCII)
aeroncluster_aeroncluster_messageHeader_blockLength = ProtoField.uint16("blockLength", "blockLength", base.DEC)
aeroncluster_templateId = {
    [1] = "SessionMessageHeader",
    [2] = "SessionEvent",
    [3] = "SessionConnectRequest",
    [4] = "SessionCloseRequest",
    [5] = "SessionKeepAlive",
    [6] = "NewLeaderEvent",
    [7] = "Challenge",
    [8] = "ChallengeResponse",
    [20] = "TimerEvent",
    [21] = "SessionOpenEvent",
    [22] = "SessionCloseEvent",
    [23] = "ClusterActionRequest",
    [24] = "NewLeadershipTermEvent",
    [25] = "MembershipChangeEvent",
    [26] = "AdminRequest",
    [27] = "AdminResponse",
    [30] = "CloseSession",
    [31] = "ScheduleTimer",
    [32] = "CancelTimer",
    [33] = "ServiceAck",
    [34] = "ClusterMembersQuery",
    [35] = "RemoveMember",
    [40] = "JoinLog",
    [41] = "ClusterMembersResponse",
    [42] = "ServiceTerminationPosition",
    [43] = "ClusterMembersExtendedResponse",
    [50] = "CanvassPosition",
    [51] = "RequestVote",
    [52] = "Vote",
    [53] = "NewLeadershipTerm",
    [54] = "AppendPosition",
    [55] = "CommitPosition",
    [56] = "CatchupPosition",
    [57] = "StopCatchup",
    [70] = "AddPassiveMember",
    [71] = "ClusterMembersChange",
    [72] = "SnapshotRecordingQuery",
    [73] = "SnapshotRecordings",
    [74] = "JoinCluster",
    [75] = "TerminationPosition",
    [76] = "TerminationAck",
    [77] = "BackupQuery",
    [78] = "BackupResponse",
    [79] = "HeartbeatRequest",
    [80] = "HeartbeatResponse",
    [81] = "StandbySnapshot",
    [100] = "SnapshotMarker",
    [102] = "ClientSession",
    [103] = "ClusterSession",
    [104] = "Timer",
    [105] = "ConsensusModule",
    [106] = "ClusterMembers",
    [107] = "PendingMessageTracker",
    [108] = "requestServiceAck"
}
aeroncluster_aeroncluster_messageHeader_templateId = ProtoField.uint16("templateId", "templateId", base.DEC, aeroncluster_templateId)
aeroncluster_aeroncluster_messageHeader_schemaId = ProtoField.uint16("schemaId", "schemaId", base.DEC)
aeroncluster_aeroncluster_messageHeader_version = ProtoField.uint16("version", "version", base.DEC)
aeroncluster_sessionMessageHeader_leadershipTermId = ProtoField.int64("leadershipTermId", "leadershipTermId", base.DEC)
aeroncluster_sessionMessageHeader_clusterSessionId = ProtoField.int64("clusterSessionId", "clusterSessionId", base.DEC)
aeroncluster_sessionMessageHeader_timestamp = ProtoField.int64("timestamp", "timestamp", base.DEC)
aeroncluster_sessionEvent_clusterSessionId = ProtoField.int64("clusterSessionId", "clusterSessionId", base.DEC)
aeroncluster_sessionEvent_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeroncluster_sessionEvent_leadershipTermId = ProtoField.int64("leadershipTermId", "leadershipTermId", base.DEC)
aeroncluster_sessionEvent_leaderMemberId = ProtoField.int32("leaderMemberId", "leaderMemberId", base.DEC)
aeroncluster_code = {
    [0] = "OK",
    [1] = "ERROR",
    [2] = "REDIRECT",
    [3] = "AUTHENTICATION_REJECTED",
    [4] = "CLOSED"
}
aeroncluster_sessionEvent_code = ProtoField.int32("code", "code", base.DEC, aeroncluster_code)
aeroncluster_sessionEvent_version = ProtoField.int32("version", "version", base.DEC)
aeroncluster_sessionEvent_detail = ProtoField.string("detail", "detail", base.ASCII)
aeroncluster_sessionConnectRequest_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeroncluster_sessionConnectRequest_responseStreamId = ProtoField.int32("responseStreamId", "responseStreamId", base.DEC)
aeroncluster_sessionConnectRequest_version = ProtoField.int32("version", "version", base.DEC)
aeroncluster_sessionConnectRequest_responseChannel = ProtoField.string("responseChannel", "responseChannel", base.ASCII)
aeroncluster_sessionConnectRequest_encodedCredentials = ProtoField.string("encodedCredentials", "encodedCredentials", base.ASCII)
aeroncluster_sessionCloseRequest_leadershipTermId = ProtoField.int64("leadershipTermId", "leadershipTermId", base.DEC)
aeroncluster_sessionCloseRequest_clusterSessionId = ProtoField.int64("clusterSessionId", "clusterSessionId", base.DEC)
aeroncluster_sessionKeepAlive_leadershipTermId = ProtoField.int64("leadershipTermId", "leadershipTermId", base.DEC)
aeroncluster_sessionKeepAlive_clusterSessionId = ProtoField.int64("clusterSessionId", "clusterSessionId", base.DEC)
aeroncluster_newLeaderEvent_leadershipTermId = ProtoField.int64("leadershipTermId", "leadershipTermId", base.DEC)
aeroncluster_newLeaderEvent_clusterSessionId = ProtoField.int64("clusterSessionId", "clusterSessionId", base.DEC)
aeroncluster_newLeaderEvent_leaderMemberId = ProtoField.int32("leaderMemberId", "leaderMemberId", base.DEC)
aeroncluster_newLeaderEvent_ingressEndpoints = ProtoField.string("ingressEndpoints", "ingressEndpoints", base.ASCII)
aeroncluster_challenge_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeroncluster_challenge_clusterSessionId = ProtoField.int64("clusterSessionId", "clusterSessionId", base.DEC)
aeroncluster_challenge_encodedChallenge = ProtoField.string("encodedChallenge", "encodedChallenge", base.ASCII)
aeroncluster_challengeResponse_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeroncluster_challengeResponse_clusterSessionId = ProtoField.int64("clusterSessionId", "clusterSessionId", base.DEC)
aeroncluster_challengeResponse_encodedCredentials = ProtoField.string("encodedCredentials", "encodedCredentials", base.ASCII)
aeroncluster_timerEvent_leadershipTermId = ProtoField.int64("leadershipTermId", "leadershipTermId", base.DEC)
aeroncluster_timerEvent_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeroncluster_timerEvent_timestamp = ProtoField.int64("timestamp", "timestamp", base.DEC)
aeroncluster_sessionOpenEvent_leadershipTermId = ProtoField.int64("leadershipTermId", "leadershipTermId", base.DEC)
aeroncluster_sessionOpenEvent_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeroncluster_sessionOpenEvent_clusterSessionId = ProtoField.int64("clusterSessionId", "clusterSessionId", base.DEC)
aeroncluster_sessionOpenEvent_timestamp = ProtoField.int64("timestamp", "timestamp", base.DEC)
aeroncluster_sessionOpenEvent_responseStreamId = ProtoField.int32("responseStreamId", "responseStreamId", base.DEC)
aeroncluster_sessionOpenEvent_responseChannel = ProtoField.string("responseChannel", "responseChannel", base.ASCII)
aeroncluster_sessionOpenEvent_encodedPrincipal = ProtoField.string("encodedPrincipal", "encodedPrincipal", base.ASCII)
aeroncluster_sessionCloseEvent_leadershipTermId = ProtoField.int64("leadershipTermId", "leadershipTermId", base.DEC)
aeroncluster_sessionCloseEvent_clusterSessionId = ProtoField.int64("clusterSessionId", "clusterSessionId", base.DEC)
aeroncluster_sessionCloseEvent_timestamp = ProtoField.int64("timestamp", "timestamp", base.DEC)
aeroncluster_closeReason = {
    [0] = "CLIENT_ACTION",
    [1] = "SERVICE_ACTION",
    [2] = "TIMEOUT"
}
aeroncluster_sessionCloseEvent_closeReason = ProtoField.int32("closeReason", "closeReason", base.DEC, aeroncluster_closeReason)
aeroncluster_clusterActionRequest_leadershipTermId = ProtoField.int64("leadershipTermId", "leadershipTermId", base.DEC)
aeroncluster_clusterActionRequest_logPosition = ProtoField.int64("logPosition", "logPosition", base.DEC)
aeroncluster_clusterActionRequest_timestamp = ProtoField.int64("timestamp", "timestamp", base.DEC)
aeroncluster_action = {
    [0] = "SUSPEND",
    [1] = "RESUME",
    [2] = "SNAPSHOT"
}
aeroncluster_clusterActionRequest_action = ProtoField.int32("action", "action", base.DEC, aeroncluster_action)
aeroncluster_clusterActionRequest_flags = ProtoField.int32("flags", "flags", base.DEC)
aeroncluster_newLeadershipTermEvent_leadershipTermId = ProtoField.int64("leadershipTermId", "leadershipTermId", base.DEC)
aeroncluster_newLeadershipTermEvent_logPosition = ProtoField.int64("logPosition", "logPosition", base.DEC)
aeroncluster_newLeadershipTermEvent_timestamp = ProtoField.int64("timestamp", "timestamp", base.DEC)
aeroncluster_newLeadershipTermEvent_termBaseLogPosition = ProtoField.int64("termBaseLogPosition", "termBaseLogPosition", base.DEC)
aeroncluster_newLeadershipTermEvent_leaderMemberId = ProtoField.int32("leaderMemberId", "leaderMemberId", base.DEC)
aeroncluster_newLeadershipTermEvent_logSessionId = ProtoField.int32("logSessionId", "logSessionId", base.DEC)
aeroncluster_timeUnit = {
    [0] = "MILLIS",
    [1] = "MICROS",
    [2] = "NANOS"
}
aeroncluster_newLeadershipTermEvent_timeUnit = ProtoField.int32("timeUnit", "timeUnit", base.DEC, aeroncluster_timeUnit)
aeroncluster_newLeadershipTermEvent_appVersion = ProtoField.int32("appVersion", "appVersion", base.DEC)
aeroncluster_membershipChangeEvent_leadershipTermId = ProtoField.int64("leadershipTermId", "leadershipTermId", base.DEC)
aeroncluster_membershipChangeEvent_logPosition = ProtoField.int64("logPosition", "logPosition", base.DEC)
aeroncluster_membershipChangeEvent_timestamp = ProtoField.int64("timestamp", "timestamp", base.DEC)
aeroncluster_membershipChangeEvent_leaderMemberId = ProtoField.int32("leaderMemberId", "leaderMemberId", base.DEC)
aeroncluster_membershipChangeEvent_clusterSize = ProtoField.int32("clusterSize", "clusterSize", base.DEC)
aeroncluster_changeType = {
    [0] = "JOIN",
    [1] = "QUIT"
}
aeroncluster_membershipChangeEvent_changeType = ProtoField.int32("changeType", "changeType", base.DEC, aeroncluster_changeType)
aeroncluster_membershipChangeEvent_memberId = ProtoField.int32("memberId", "memberId", base.DEC)
aeroncluster_membershipChangeEvent_clusterMembers = ProtoField.string("clusterMembers", "clusterMembers", base.ASCII)
aeroncluster_adminRequest_leadershipTermId = ProtoField.int64("leadershipTermId", "leadershipTermId", base.DEC)
aeroncluster_adminRequest_clusterSessionId = ProtoField.int64("clusterSessionId", "clusterSessionId", base.DEC)
aeroncluster_adminRequest_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeroncluster_requestType = {
    [0] = "SNAPSHOT"
}
aeroncluster_adminRequest_requestType = ProtoField.int32("requestType", "requestType", base.DEC, aeroncluster_requestType)
aeroncluster_adminRequest_payload = ProtoField.string("payload", "payload", base.ASCII)
aeroncluster_adminResponse_clusterSessionId = ProtoField.int64("clusterSessionId", "clusterSessionId", base.DEC)
aeroncluster_adminResponse_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeroncluster_adminResponse_requestType = ProtoField.int32("requestType", "requestType", base.DEC, aeroncluster_requestType)
aeroncluster_responseCode = {
    [0] = "OK",
    [1] = "ERROR",
    [2] = "UNAUTHORISED_ACCESS"
}
aeroncluster_adminResponse_responseCode = ProtoField.int32("responseCode", "responseCode", base.DEC, aeroncluster_responseCode)
aeroncluster_adminResponse_message = ProtoField.string("message", "message", base.ASCII)
aeroncluster_adminResponse_payload = ProtoField.string("payload", "payload", base.ASCII)
aeroncluster_closeSession_clusterSessionId = ProtoField.int64("clusterSessionId", "clusterSessionId", base.DEC)
aeroncluster_scheduleTimer_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeroncluster_scheduleTimer_deadline = ProtoField.int64("deadline", "deadline", base.DEC)
aeroncluster_cancelTimer_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeroncluster_serviceAck_logPosition = ProtoField.int64("logPosition", "logPosition", base.DEC)
aeroncluster_serviceAck_timestamp = ProtoField.int64("timestamp", "timestamp", base.DEC)
aeroncluster_serviceAck_ackId = ProtoField.int64("ackId", "ackId", base.DEC)
aeroncluster_serviceAck_relevantId = ProtoField.int64("relevantId", "relevantId", base.DEC)
aeroncluster_serviceAck_serviceId = ProtoField.int32("serviceId", "serviceId", base.DEC)
aeroncluster_clusterMembersQuery_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeroncluster_extended = {
    [0] = "FALSE",
    [1] = "TRUE"
}
aeroncluster_clusterMembersQuery_extended = ProtoField.int32("extended", "extended", base.DEC, aeroncluster_extended)
aeroncluster_removeMember_memberId = ProtoField.int32("memberId", "memberId", base.DEC)
aeroncluster_isPassive = {
    [0] = "FALSE",
    [1] = "TRUE"
}
aeroncluster_removeMember_isPassive = ProtoField.int32("isPassive", "isPassive", base.DEC, aeroncluster_isPassive)
aeroncluster_joinLog_logPosition = ProtoField.int64("logPosition", "logPosition", base.DEC)
aeroncluster_joinLog_maxLogPosition = ProtoField.int64("maxLogPosition", "maxLogPosition", base.DEC)
aeroncluster_joinLog_memberId = ProtoField.int32("memberId", "memberId", base.DEC)
aeroncluster_joinLog_logSessionId = ProtoField.int32("logSessionId", "logSessionId", base.DEC)
aeroncluster_joinLog_logStreamId = ProtoField.int32("logStreamId", "logStreamId", base.DEC)
aeroncluster_isStartup = {
    [0] = "FALSE",
    [1] = "TRUE"
}
aeroncluster_joinLog_isStartup = ProtoField.int32("isStartup", "isStartup", base.DEC, aeroncluster_isStartup)
aeroncluster_joinLog_role = ProtoField.int32("role", "role", base.DEC)
aeroncluster_joinLog_logChannel = ProtoField.string("logChannel", "logChannel", base.ASCII)
aeroncluster_clusterMembersResponse_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeroncluster_clusterMembersResponse_leaderMemberId = ProtoField.int32("leaderMemberId", "leaderMemberId", base.DEC)
aeroncluster_clusterMembersResponse_activeMembers = ProtoField.string("activeMembers", "activeMembers", base.ASCII)
aeroncluster_clusterMembersResponse_passiveFollowers = ProtoField.string("passiveFollowers", "passiveFollowers", base.ASCII)
aeroncluster_serviceTerminationPosition_logPosition = ProtoField.int64("logPosition", "logPosition", base.DEC)
aeroncluster_clusterMembersExtendedResponse_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeroncluster_clusterMembersExtendedResponse_currentTimeNs = ProtoField.int64("currentTimeNs", "currentTimeNs", base.DEC)
aeroncluster_clusterMembersExtendedResponse_leaderMemberId = ProtoField.int32("leaderMemberId", "leaderMemberId", base.DEC)
aeroncluster_clusterMembersExtendedResponse_memberId = ProtoField.int32("memberId", "memberId", base.DEC)
aeroncluster_clusterMembersExtendedResponse_activeMembers = ProtoField.none("activeMembers", "activeMembers")
aeroncluster_clusterMembersExtendedResponse_activeMembers_leadershipTermId = ProtoField.int64("leadershipTermId", "leadershipTermId", base.DEC)
aeroncluster_clusterMembersExtendedResponse_activeMembers_logPosition = ProtoField.int64("logPosition", "logPosition", base.DEC)
aeroncluster_clusterMembersExtendedResponse_activeMembers_timeOfLastAppendNs = ProtoField.int64("timeOfLastAppendNs", "timeOfLastAppendNs", base.DEC)
aeroncluster_clusterMembersExtendedResponse_activeMembers_memberId = ProtoField.int32("memberId", "memberId", base.DEC)
aeroncluster_clusterMembersExtendedResponse_activeMembers_ingressEndpoint = ProtoField.string("ingressEndpoint", "ingressEndpoint", base.ASCII)
aeroncluster_clusterMembersExtendedResponse_activeMembers_consensusEndpoint = ProtoField.string("consensusEndpoint", "consensusEndpoint", base.ASCII)
aeroncluster_clusterMembersExtendedResponse_activeMembers_logEndpoint = ProtoField.string("logEndpoint", "logEndpoint", base.ASCII)
aeroncluster_clusterMembersExtendedResponse_activeMembers_catchupEndpoint = ProtoField.string("catchupEndpoint", "catchupEndpoint", base.ASCII)
aeroncluster_clusterMembersExtendedResponse_activeMembers_archiveEndpoint = ProtoField.string("archiveEndpoint", "archiveEndpoint", base.ASCII)
aeroncluster_clusterMembersExtendedResponse_passiveMembers = ProtoField.none("passiveMembers", "passiveMembers")
aeroncluster_clusterMembersExtendedResponse_passiveMembers_leadershipTermId = ProtoField.int64("leadershipTermId", "leadershipTermId", base.DEC)
aeroncluster_clusterMembersExtendedResponse_passiveMembers_logPosition = ProtoField.int64("logPosition", "logPosition", base.DEC)
aeroncluster_clusterMembersExtendedResponse_passiveMembers_timeOfLastAppendNs = ProtoField.int64("timeOfLastAppendNs", "timeOfLastAppendNs", base.DEC)
aeroncluster_clusterMembersExtendedResponse_passiveMembers_memberId = ProtoField.int32("memberId", "memberId", base.DEC)
aeroncluster_clusterMembersExtendedResponse_passiveMembers_ingressEndpoint = ProtoField.string("ingressEndpoint", "ingressEndpoint", base.ASCII)
aeroncluster_clusterMembersExtendedResponse_passiveMembers_consensusEndpoint = ProtoField.string("consensusEndpoint", "consensusEndpoint", base.ASCII)
aeroncluster_clusterMembersExtendedResponse_passiveMembers_logEndpoint = ProtoField.string("logEndpoint", "logEndpoint", base.ASCII)
aeroncluster_clusterMembersExtendedResponse_passiveMembers_catchupEndpoint = ProtoField.string("catchupEndpoint", "catchupEndpoint", base.ASCII)
aeroncluster_clusterMembersExtendedResponse_passiveMembers_archiveEndpoint = ProtoField.string("archiveEndpoint", "archiveEndpoint", base.ASCII)
aeroncluster_canvassPosition_logLeadershipTermId = ProtoField.int64("logLeadershipTermId", "logLeadershipTermId", base.DEC)
aeroncluster_canvassPosition_logPosition = ProtoField.int64("logPosition", "logPosition", base.DEC)
aeroncluster_canvassPosition_leadershipTermId = ProtoField.int64("leadershipTermId", "leadershipTermId", base.DEC)
aeroncluster_canvassPosition_followerMemberId = ProtoField.int32("followerMemberId", "followerMemberId", base.DEC)
aeroncluster_canvassPosition_protocolVersion = ProtoField.int32("protocolVersion", "protocolVersion", base.DEC)
aeroncluster_requestVote_logLeadershipTermId = ProtoField.int64("logLeadershipTermId", "logLeadershipTermId", base.DEC)
aeroncluster_requestVote_logPosition = ProtoField.int64("logPosition", "logPosition", base.DEC)
aeroncluster_requestVote_candidateTermId = ProtoField.int64("candidateTermId", "candidateTermId", base.DEC)
aeroncluster_requestVote_candidateMemberId = ProtoField.int32("candidateMemberId", "candidateMemberId", base.DEC)
aeroncluster_requestVote_protocolVersion = ProtoField.int32("protocolVersion", "protocolVersion", base.DEC)
aeroncluster_vote_candidateTermId = ProtoField.int64("candidateTermId", "candidateTermId", base.DEC)
aeroncluster_vote_logLeadershipTermId = ProtoField.int64("logLeadershipTermId", "logLeadershipTermId", base.DEC)
aeroncluster_vote_logPosition = ProtoField.int64("logPosition", "logPosition", base.DEC)
aeroncluster_vote_candidateMemberId = ProtoField.int32("candidateMemberId", "candidateMemberId", base.DEC)
aeroncluster_vote_followerMemberId = ProtoField.int32("followerMemberId", "followerMemberId", base.DEC)
aeroncluster_vote = {
    [0] = "FALSE",
    [1] = "TRUE"
}
aeroncluster_vote_vote = ProtoField.int32("vote", "vote", base.DEC, aeroncluster_vote)
aeroncluster_newLeadershipTerm_logLeadershipTermId = ProtoField.int64("logLeadershipTermId", "logLeadershipTermId", base.DEC)
aeroncluster_newLeadershipTerm_nextLeadershipTermId = ProtoField.int64("nextLeadershipTermId", "nextLeadershipTermId", base.DEC)
aeroncluster_newLeadershipTerm_nextTermBaseLogPosition = ProtoField.int64("nextTermBaseLogPosition", "nextTermBaseLogPosition", base.DEC)
aeroncluster_newLeadershipTerm_nextLogPosition = ProtoField.int64("nextLogPosition", "nextLogPosition", base.DEC)
aeroncluster_newLeadershipTerm_leadershipTermId = ProtoField.int64("leadershipTermId", "leadershipTermId", base.DEC)
aeroncluster_newLeadershipTerm_termBaseLogPosition = ProtoField.int64("termBaseLogPosition", "termBaseLogPosition", base.DEC)
aeroncluster_newLeadershipTerm_logPosition = ProtoField.int64("logPosition", "logPosition", base.DEC)
aeroncluster_newLeadershipTerm_leaderRecordingId = ProtoField.int64("leaderRecordingId", "leaderRecordingId", base.DEC)
aeroncluster_newLeadershipTerm_timestamp = ProtoField.int64("timestamp", "timestamp", base.DEC)
aeroncluster_newLeadershipTerm_leaderMemberId = ProtoField.int32("leaderMemberId", "leaderMemberId", base.DEC)
aeroncluster_newLeadershipTerm_logSessionId = ProtoField.int32("logSessionId", "logSessionId", base.DEC)
aeroncluster_newLeadershipTerm_appVersion = ProtoField.int32("appVersion", "appVersion", base.DEC)
aeroncluster_newLeadershipTerm_isStartup = ProtoField.int32("isStartup", "isStartup", base.DEC, aeroncluster_isStartup)
aeroncluster_appendPosition_leadershipTermId = ProtoField.int64("leadershipTermId", "leadershipTermId", base.DEC)
aeroncluster_appendPosition_logPosition = ProtoField.int64("logPosition", "logPosition", base.DEC)
aeroncluster_appendPosition_followerMemberId = ProtoField.int32("followerMemberId", "followerMemberId", base.DEC)
aeroncluster_appendPosition_flags = ProtoField.uint8("flags", "flags", base.DEC)
aeroncluster_commitPosition_leadershipTermId = ProtoField.int64("leadershipTermId", "leadershipTermId", base.DEC)
aeroncluster_commitPosition_logPosition = ProtoField.int64("logPosition", "logPosition", base.DEC)
aeroncluster_commitPosition_leaderMemberId = ProtoField.int32("leaderMemberId", "leaderMemberId", base.DEC)
aeroncluster_catchupPosition_leadershipTermId = ProtoField.int64("leadershipTermId", "leadershipTermId", base.DEC)
aeroncluster_catchupPosition_logPosition = ProtoField.int64("logPosition", "logPosition", base.DEC)
aeroncluster_catchupPosition_followerMemberId = ProtoField.int32("followerMemberId", "followerMemberId", base.DEC)
aeroncluster_catchupPosition_catchupEndpoint = ProtoField.string("catchupEndpoint", "catchupEndpoint", base.ASCII)
aeroncluster_stopCatchup_leadershipTermId = ProtoField.int64("leadershipTermId", "leadershipTermId", base.DEC)
aeroncluster_stopCatchup_followerMemberId = ProtoField.int32("followerMemberId", "followerMemberId", base.DEC)
aeroncluster_addPassiveMember_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeroncluster_addPassiveMember_memberEndpoints = ProtoField.string("memberEndpoints", "memberEndpoints", base.ASCII)
aeroncluster_clusterMembersChange_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeroncluster_clusterMembersChange_leaderMemberId = ProtoField.int32("leaderMemberId", "leaderMemberId", base.DEC)
aeroncluster_clusterMembersChange_activeMembers = ProtoField.string("activeMembers", "activeMembers", base.ASCII)
aeroncluster_clusterMembersChange_passiveMembers = ProtoField.string("passiveMembers", "passiveMembers", base.ASCII)
aeroncluster_snapshotRecordingQuery_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeroncluster_snapshotRecordingQuery_requestMemberId = ProtoField.int32("requestMemberId", "requestMemberId", base.DEC)
aeroncluster_snapshotRecordings_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeroncluster_snapshotRecordings_snapshots = ProtoField.none("snapshots", "snapshots")
aeroncluster_snapshotRecordings_snapshots_recordingId = ProtoField.int64("recordingId", "recordingId", base.DEC)
aeroncluster_snapshotRecordings_snapshots_leadershipTermId = ProtoField.int64("leadershipTermId", "leadershipTermId", base.DEC)
aeroncluster_snapshotRecordings_snapshots_termBaseLogPosition = ProtoField.int64("termBaseLogPosition", "termBaseLogPosition", base.DEC)
aeroncluster_snapshotRecordings_snapshots_logPosition = ProtoField.int64("logPosition", "logPosition", base.DEC)
aeroncluster_snapshotRecordings_snapshots_timestamp = ProtoField.int64("timestamp", "timestamp", base.DEC)
aeroncluster_snapshotRecordings_snapshots_serviceId = ProtoField.int32("serviceId", "serviceId", base.DEC)
aeroncluster_snapshotRecordings_memberEndpoints = ProtoField.string("memberEndpoints", "memberEndpoints", base.ASCII)
aeroncluster_joinCluster_leadershipTermId = ProtoField.int64("leadershipTermId", "leadershipTermId", base.DEC)
aeroncluster_joinCluster_memberId = ProtoField.int32("memberId", "memberId", base.DEC)
aeroncluster_terminationPosition_leadershipTermId = ProtoField.int64("leadershipTermId", "leadershipTermId", base.DEC)
aeroncluster_terminationPosition_logPosition = ProtoField.int64("logPosition", "logPosition", base.DEC)
aeroncluster_terminationAck_leadershipTermId = ProtoField.int64("leadershipTermId", "leadershipTermId", base.DEC)
aeroncluster_terminationAck_logPosition = ProtoField.int64("logPosition", "logPosition", base.DEC)
aeroncluster_terminationAck_memberId = ProtoField.int32("memberId", "memberId", base.DEC)
aeroncluster_backupQuery_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeroncluster_backupQuery_responseStreamId = ProtoField.int32("responseStreamId", "responseStreamId", base.DEC)
aeroncluster_backupQuery_version = ProtoField.int32("version", "version", base.DEC)
aeroncluster_backupQuery_responseChannel = ProtoField.string("responseChannel", "responseChannel", base.ASCII)
aeroncluster_backupQuery_encodedCredentials = ProtoField.string("encodedCredentials", "encodedCredentials", base.ASCII)
aeroncluster_backupResponse_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeroncluster_backupResponse_logRecordingId = ProtoField.int64("logRecordingId", "logRecordingId", base.DEC)
aeroncluster_backupResponse_logLeadershipTermId = ProtoField.int64("logLeadershipTermId", "logLeadershipTermId", base.DEC)
aeroncluster_backupResponse_logTermBaseLogPosition = ProtoField.int64("logTermBaseLogPosition", "logTermBaseLogPosition", base.DEC)
aeroncluster_backupResponse_lastLeadershipTermId = ProtoField.int64("lastLeadershipTermId", "lastLeadershipTermId", base.DEC)
aeroncluster_backupResponse_lastTermBaseLogPosition = ProtoField.int64("lastTermBaseLogPosition", "lastTermBaseLogPosition", base.DEC)
aeroncluster_backupResponse_commitPositionCounterId = ProtoField.int32("commitPositionCounterId", "commitPositionCounterId", base.DEC)
aeroncluster_backupResponse_leaderMemberId = ProtoField.int32("leaderMemberId", "leaderMemberId", base.DEC)
aeroncluster_backupResponse_memberId = ProtoField.int32("memberId", "memberId", base.DEC)
aeroncluster_backupResponse_snapshots = ProtoField.none("snapshots", "snapshots")
aeroncluster_backupResponse_snapshots_recordingId = ProtoField.int64("recordingId", "recordingId", base.DEC)
aeroncluster_backupResponse_snapshots_leadershipTermId = ProtoField.int64("leadershipTermId", "leadershipTermId", base.DEC)
aeroncluster_backupResponse_snapshots_termBaseLogPosition = ProtoField.int64("termBaseLogPosition", "termBaseLogPosition", base.DEC)
aeroncluster_backupResponse_snapshots_logPosition = ProtoField.int64("logPosition", "logPosition", base.DEC)
aeroncluster_backupResponse_snapshots_timestamp = ProtoField.int64("timestamp", "timestamp", base.DEC)
aeroncluster_backupResponse_snapshots_serviceId = ProtoField.int32("serviceId", "serviceId", base.DEC)
aeroncluster_backupResponse_clusterMembers = ProtoField.string("clusterMembers", "clusterMembers", base.ASCII)
aeroncluster_heartbeatRequest_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeroncluster_heartbeatRequest_responseStreamId = ProtoField.int32("responseStreamId", "responseStreamId", base.DEC)
aeroncluster_heartbeatRequest_responseChannel = ProtoField.string("responseChannel", "responseChannel", base.ASCII)
aeroncluster_heartbeatRequest_encodedCredentials = ProtoField.string("encodedCredentials", "encodedCredentials", base.ASCII)
aeroncluster_heartbeatResponse_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeroncluster_standbySnapshot_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeroncluster_standbySnapshot_version = ProtoField.int32("version", "version", base.DEC)
aeroncluster_standbySnapshot_responseStreamId = ProtoField.int32("responseStreamId", "responseStreamId", base.DEC)
aeroncluster_standbySnapshot_snapshots = ProtoField.none("snapshots", "snapshots")
aeroncluster_standbySnapshot_snapshots_recordingId = ProtoField.int64("recordingId", "recordingId", base.DEC)
aeroncluster_standbySnapshot_snapshots_leadershipTermId = ProtoField.int64("leadershipTermId", "leadershipTermId", base.DEC)
aeroncluster_standbySnapshot_snapshots_termBaseLogPosition = ProtoField.int64("termBaseLogPosition", "termBaseLogPosition", base.DEC)
aeroncluster_standbySnapshot_snapshots_logPosition = ProtoField.int64("logPosition", "logPosition", base.DEC)
aeroncluster_standbySnapshot_snapshots_timestamp = ProtoField.int64("timestamp", "timestamp", base.DEC)
aeroncluster_standbySnapshot_snapshots_serviceId = ProtoField.int32("serviceId", "serviceId", base.DEC)
aeroncluster_standbySnapshot_snapshots_archiveEndpoint = ProtoField.string("archiveEndpoint", "archiveEndpoint", base.ASCII)
aeroncluster_standbySnapshot_responseChannel = ProtoField.string("responseChannel", "responseChannel", base.ASCII)
aeroncluster_standbySnapshot_encodedCredentials = ProtoField.string("encodedCredentials", "encodedCredentials", base.ASCII)
aeroncluster_snapshotMarker_typeId = ProtoField.int64("typeId", "typeId", base.DEC)
aeroncluster_snapshotMarker_logPosition = ProtoField.int64("logPosition", "logPosition", base.DEC)
aeroncluster_snapshotMarker_leadershipTermId = ProtoField.int64("leadershipTermId", "leadershipTermId", base.DEC)
aeroncluster_snapshotMarker_index = ProtoField.int32("index", "index", base.DEC)
aeroncluster_mark = {
    [0] = "BEGIN",
    [1] = "SECTION",
    [2] = "END"
}
aeroncluster_snapshotMarker_mark = ProtoField.int32("mark", "mark", base.DEC, aeroncluster_mark)
aeroncluster_snapshotMarker_timeUnit = ProtoField.int32("timeUnit", "timeUnit", base.DEC, aeroncluster_timeUnit)
aeroncluster_snapshotMarker_appVersion = ProtoField.int32("appVersion", "appVersion", base.DEC)
aeroncluster_clientSession_clusterSessionId = ProtoField.int64("clusterSessionId", "clusterSessionId", base.DEC)
aeroncluster_clientSession_responseStreamId = ProtoField.int32("responseStreamId", "responseStreamId", base.DEC)
aeroncluster_clientSession_responseChannel = ProtoField.string("responseChannel", "responseChannel", base.ASCII)
aeroncluster_clientSession_encodedPrincipal = ProtoField.string("encodedPrincipal", "encodedPrincipal", base.ASCII)
aeroncluster_clusterSession_clusterSessionId = ProtoField.int64("clusterSessionId", "clusterSessionId", base.DEC)
aeroncluster_clusterSession_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeroncluster_clusterSession_openedLogPosition = ProtoField.int64("openedLogPosition", "openedLogPosition", base.DEC)
aeroncluster_clusterSession_timeOfLastActivity = ProtoField.int64("timeOfLastActivity", "timeOfLastActivity", base.DEC)
aeroncluster_clusterSession_closeReason = ProtoField.int32("closeReason", "closeReason", base.DEC, aeroncluster_closeReason)
aeroncluster_clusterSession_responseStreamId = ProtoField.int32("responseStreamId", "responseStreamId", base.DEC)
aeroncluster_clusterSession_responseChannel = ProtoField.string("responseChannel", "responseChannel", base.ASCII)
aeroncluster_timer_correlationId = ProtoField.int64("correlationId", "correlationId", base.DEC)
aeroncluster_timer_deadline = ProtoField.int64("deadline", "deadline", base.DEC)
aeroncluster_consensusModule_nextSessionId = ProtoField.int64("nextSessionId", "nextSessionId", base.DEC)
aeroncluster_consensusModule_nextServiceSessionId = ProtoField.int64("nextServiceSessionId", "nextServiceSessionId", base.DEC)
aeroncluster_consensusModule_logServiceSessionId = ProtoField.int64("logServiceSessionId", "logServiceSessionId", base.DEC)
aeroncluster_consensusModule_pendingMessageCapacity = ProtoField.int32("pendingMessageCapacity", "pendingMessageCapacity", base.DEC)
aeroncluster_clusterMembers_memberId = ProtoField.int32("memberId", "memberId", base.DEC)
aeroncluster_clusterMembers_highMemberId = ProtoField.int32("highMemberId", "highMemberId", base.DEC)
aeroncluster_clusterMembers_clusterMembers = ProtoField.string("clusterMembers", "clusterMembers", base.ASCII)
aeroncluster_pendingMessageTracker_nextServiceSessionId = ProtoField.int64("nextServiceSessionId", "nextServiceSessionId", base.DEC)
aeroncluster_pendingMessageTracker_logServiceSessionId = ProtoField.int64("logServiceSessionId", "logServiceSessionId", base.DEC)
aeroncluster_pendingMessageTracker_pendingMessageCapacity = ProtoField.int32("pendingMessageCapacity", "pendingMessageCapacity", base.DEC)
aeroncluster_pendingMessageTracker_serviceId = ProtoField.int32("serviceId", "serviceId", base.DEC)
aeroncluster_requestServiceAck_logPosition = ProtoField.int64("logPosition", "logPosition", base.DEC)
protocol_protocol_messageHeader_blockLength = ProtoField.uint16("blockLength", "blockLength", base.DEC)
protocol_templateId = {
    [32] = "ListParticipantsCommand",
    [1] = "AddParticipantCommand",
    [33] = "ParticipantList",
    [2] = "AddParticipantCommandResult",
    [3] = "ParticipantSnapshot",
    [10] = "CreateAuctionCommand",
    [11] = "CreateAuctionCommandResult",
    [12] = "NewAuctionEvent",
    [13] = "AddAuctionBidCommand",
    [14] = "AddAuctionBidCommandResult",
    [15] = "AuctionUpdateEvent",
    [16] = "AuctionSnapshot",
    [17] = "AuctionIdSnapshot",
    [20] = "EndOfSnapshot",
    [30] = "ListAuctionsCommand",
    [31] = "AuctionList"
}
protocol_protocol_messageHeader_templateId = ProtoField.uint16("templateId", "templateId", base.DEC, protocol_templateId)
protocol_protocol_messageHeader_schemaId = ProtoField.uint16("schemaId", "schemaId", base.DEC)
protocol_protocol_messageHeader_version = ProtoField.uint16("version", "version", base.DEC)
protocol_listParticipantsCommand_correlationId = ProtoField.string("correlationId", "correlationId", base.ASCII)
protocol_addParticipantCommand_participantId = ProtoField.int64("participantId", "participantId", base.DEC)
protocol_addParticipantCommand_correlationId = ProtoField.string("correlationId", "correlationId", base.ASCII)
protocol_addParticipantCommand_name = ProtoField.string("name", "name", base.UNICODE)
protocol_participantList_correlationId = ProtoField.string("correlationId", "correlationId", base.ASCII)
protocol_participantList_participants = ProtoField.none("participants", "participants")
protocol_participantList_participants_participantId = ProtoField.int64("participantId", "participantId", base.DEC)
protocol_participantList_participants_name = ProtoField.string("name", "name", base.UNICODE)
protocol_addParticipantCommandResult_correlationId = ProtoField.string("correlationId", "correlationId", base.ASCII)
protocol_addParticipantCommandResult_participantId = ProtoField.int64("participantId", "participantId", base.DEC)
protocol_participantSnapshot_participantId = ProtoField.int64("participantId", "participantId", base.DEC)
protocol_participantSnapshot_name = ProtoField.string("name", "name", base.UNICODE)
protocol_createAuctionCommand_createdByParticipantId = ProtoField.int64("createdByParticipantId", "createdByParticipantId", base.DEC)
protocol_createAuctionCommand_startTime = ProtoField.int64("startTime", "startTime", base.DEC)
protocol_createAuctionCommand_endTime = ProtoField.int64("endTime", "endTime", base.DEC)
protocol_createAuctionCommand_correlationId = ProtoField.string("correlationId", "correlationId", base.ASCII)
protocol_createAuctionCommand_name = ProtoField.string("name", "name", base.UNICODE)
protocol_createAuctionCommand_description = ProtoField.string("description", "description", base.UNICODE)
protocol_createAuctionCommandResult_auctionId = ProtoField.int64("auctionId", "auctionId", base.DEC)
protocol_result = {
    [0] = "SUCCESS",
    [1] = "UNKNOWN_PARTICIPANT",
    [2] = "INVALID_START_TIME",
    [3] = "INVALID_END_TIME",
    [4] = "INVALID_NAME",
    [5] = "INVALID_DESCRIPTION",
    [6] = "INVALID_DURATION",
    [7] = "UNKNOWN"
}
protocol_createAuctionCommandResult_result = ProtoField.int32("result", "result", base.DEC, protocol_result)
protocol_createAuctionCommandResult_correlationId = ProtoField.string("correlationId", "correlationId", base.ASCII)
protocol_newAuctionEvent_auctionId = ProtoField.int64("auctionId", "auctionId", base.DEC)
protocol_newAuctionEvent_startTime = ProtoField.int64("startTime", "startTime", base.DEC)
protocol_newAuctionEvent_endTime = ProtoField.int64("endTime", "endTime", base.DEC)
protocol_newAuctionEvent_name = ProtoField.string("name", "name", base.UNICODE)
protocol_newAuctionEvent_description = ProtoField.string("description", "description", base.UNICODE)
protocol_addAuctionBidCommand_auctionId = ProtoField.int64("auctionId", "auctionId", base.DEC)
protocol_addAuctionBidCommand_addedByParticipantId = ProtoField.int64("addedByParticipantId", "addedByParticipantId", base.DEC)
protocol_addAuctionBidCommand_price = ProtoField.int64("price", "price", base.DEC)
protocol_addAuctionBidCommand_correlationId = ProtoField.string("correlationId", "correlationId", base.ASCII)
protocol_addAuctionBidCommandResult_auctionId = ProtoField.int64("auctionId", "auctionId", base.DEC)
protocol_addAuctionBidCommandResult_result = ProtoField.int32("result", "result", base.DEC, protocol_result)
protocol_addAuctionBidCommandResult_correlationId = ProtoField.string("correlationId", "correlationId", base.ASCII)
protocol_auctionUpdateEvent_auctionId = ProtoField.int64("auctionId", "auctionId", base.DEC)
protocol_status = {
    [0] = "PRE_OPEN",
    [1] = "OPEN",
    [2] = "CLOSED",
    [3] = "UNKNOWN"
}
protocol_auctionUpdateEvent_status = ProtoField.int32("status", "status", base.DEC, protocol_status)
protocol_auctionUpdateEvent_currentPrice = ProtoField.int64("currentPrice", "currentPrice", base.DEC)
protocol_auctionUpdateEvent_bidCount = ProtoField.int32("bidCount", "bidCount", base.DEC)
protocol_auctionUpdateEvent_lastUpdate = ProtoField.int64("lastUpdate", "lastUpdate", base.DEC)
protocol_auctionUpdateEvent_winningParticipantId = ProtoField.int64("winningParticipantId", "winningParticipantId", base.DEC)
protocol_auctionUpdateEvent_correlationId = ProtoField.string("correlationId", "correlationId", base.ASCII)
protocol_auctionSnapshot_auctionId = ProtoField.int64("auctionId", "auctionId", base.DEC)
protocol_auctionSnapshot_createdByParticipantId = ProtoField.int64("createdByParticipantId", "createdByParticipantId", base.DEC)
protocol_auctionSnapshot_startTime = ProtoField.int64("startTime", "startTime", base.DEC)
protocol_auctionSnapshot_startTimeTimerCorrelation = ProtoField.int64("startTimeTimerCorrelation", "startTimeTimerCorrelation", base.DEC)
protocol_auctionSnapshot_endTime = ProtoField.int64("endTime", "endTime", base.DEC)
protocol_auctionSnapshot_endTimeTimerCorrelation = ProtoField.int64("endTimeTimerCorrelation", "endTimeTimerCorrelation", base.DEC)
protocol_auctionSnapshot_removalTimeTimerCorrelation = ProtoField.int64("removalTimeTimerCorrelation", "removalTimeTimerCorrelation", base.DEC)
protocol_auctionSnapshot_winningParticipantId = ProtoField.int64("winningParticipantId", "winningParticipantId", base.DEC)
protocol_auctionSnapshot_name = ProtoField.string("name", "name", base.UNICODE)
protocol_auctionSnapshot_description = ProtoField.string("description", "description", base.UNICODE)
protocol_auctionIdSnapshot_lastId = ProtoField.int64("lastId", "lastId", base.DEC)
protocol_listAuctionsCommand_correlationId = ProtoField.string("correlationId", "correlationId", base.ASCII)
protocol_auctionList_correlationId = ProtoField.string("correlationId", "correlationId", base.ASCII)
protocol_auctionList_auctions = ProtoField.none("auctions", "auctions")
protocol_auctionList_auctions_auctionId = ProtoField.int64("auctionId", "auctionId", base.DEC)
protocol_auctionList_auctions_createdByParticipantId = ProtoField.int64("createdByParticipantId", "createdByParticipantId", base.DEC)
protocol_auctionList_auctions_startTime = ProtoField.int64("startTime", "startTime", base.DEC)
protocol_auctionList_auctions_endTime = ProtoField.int64("endTime", "endTime", base.DEC)
protocol_auctionList_auctions_winningParticipantId = ProtoField.int64("winningParticipantId", "winningParticipantId", base.DEC)
protocol_auctionList_auctions_currentPrice = ProtoField.int64("currentPrice", "currentPrice", base.DEC)
protocol_auctionList_auctions_status = ProtoField.int32("status", "status", base.DEC, protocol_status)
protocol_auctionList_auctions_name = ProtoField.string("name", "name", base.UNICODE)

mushroom_protocol.fields = { aeronarchive_aeronarchive_messageHeader_blockLength, aeronarchive_aeronarchive_messageHeader_templateId, aeronarchive_aeronarchive_messageHeader_schemaId, aeronarchive_aeronarchive_messageHeader_version, aeronarchive_extendRecordingRequest2_controlSessionId, aeronarchive_extendRecordingRequest2_correlationId, aeronarchive_extendRecordingRequest2_recordingId, aeronarchive_extendRecordingRequest2_streamId, aeronarchive_extendRecordingRequest2_sourceLocation, aeronarchive_extendRecordingRequest2_autoStop, aeronarchive_extendRecordingRequest2_channel, aeronarchive_controlResponse_controlSessionId, aeronarchive_controlResponse_correlationId, aeronarchive_controlResponse_relevantId, aeronarchive_controlResponse_code, aeronarchive_controlResponse_version, aeronarchive_controlResponse_errorMessage, aeronarchive_stopRecordingByIdentityRequest_controlSessionId, aeronarchive_stopRecordingByIdentityRequest_correlationId, aeronarchive_stopRecordingByIdentityRequest_recordingId, aeronarchive_connectRequest_correlationId, aeronarchive_connectRequest_responseStreamId, aeronarchive_connectRequest_version, aeronarchive_connectRequest_responseChannel, aeronarchive_replicateRequest2_controlSessionId, aeronarchive_replicateRequest2_correlationId, aeronarchive_replicateRequest2_srcRecordingId, aeronarchive_replicateRequest2_dstRecordingId, aeronarchive_replicateRequest2_stopPosition, aeronarchive_replicateRequest2_channelTagId, aeronarchive_replicateRequest2_subscriptionTagId, aeronarchive_replicateRequest2_srcControlStreamId, aeronarchive_replicateRequest2_fileIoMaxLength, aeronarchive_replicateRequest2_replicationSessionId, aeronarchive_replicateRequest2_srcControlChannel, aeronarchive_replicateRequest2_liveDestination, aeronarchive_replicateRequest2_replicationChannel, aeronarchive_replicateRequest2_encodedCredentials, aeronarchive_closeSessionRequest_controlSessionId, aeronarchive_startRecordingRequest_controlSessionId, aeronarchive_startRecordingRequest_correlationId, aeronarchive_startRecordingRequest_streamId, aeronarchive_startRecordingRequest_sourceLocation, aeronarchive_startRecordingRequest_channel, aeronarchive_stopRecordingRequest_controlSessionId, aeronarchive_stopRecordingRequest_correlationId, aeronarchive_stopRecordingRequest_streamId, aeronarchive_stopRecordingRequest_channel, aeronarchive_replayRequest_controlSessionId, aeronarchive_replayRequest_correlationId, aeronarchive_replayRequest_recordingId, aeronarchive_replayRequest_position, aeronarchive_replayRequest_length, aeronarchive_replayRequest_replayStreamId, aeronarchive_replayRequest_fileIoMaxLength, aeronarchive_replayRequest_replayChannel, aeronarchive_stopReplayRequest_controlSessionId, aeronarchive_stopReplayRequest_correlationId, aeronarchive_stopReplayRequest_replaySessionId, aeronarchive_listRecordingsRequest_controlSessionId, aeronarchive_listRecordingsRequest_correlationId, aeronarchive_listRecordingsRequest_fromRecordingId, aeronarchive_listRecordingsRequest_recordCount, aeronarchive_listRecordingsForUriRequest_controlSessionId, aeronarchive_listRecordingsForUriRequest_correlationId, aeronarchive_listRecordingsForUriRequest_fromRecordingId, aeronarchive_listRecordingsForUriRequest_recordCount, aeronarchive_listRecordingsForUriRequest_streamId, aeronarchive_listRecordingsForUriRequest_channel, aeronarchive_listRecordingRequest_controlSessionId, aeronarchive_listRecordingRequest_correlationId, aeronarchive_listRecordingRequest_recordingId, aeronarchive_extendRecordingRequest_controlSessionId, aeronarchive_extendRecordingRequest_correlationId, aeronarchive_extendRecordingRequest_recordingId, aeronarchive_extendRecordingRequest_streamId, aeronarchive_extendRecordingRequest_sourceLocation, aeronarchive_extendRecordingRequest_channel, aeronarchive_recordingPositionRequest_controlSessionId, aeronarchive_recordingPositionRequest_correlationId, aeronarchive_recordingPositionRequest_recordingId, aeronarchive_truncateRecordingRequest_controlSessionId, aeronarchive_truncateRecordingRequest_correlationId, aeronarchive_truncateRecordingRequest_recordingId, aeronarchive_truncateRecordingRequest_position, aeronarchive_stopRecordingSubscriptionRequest_controlSessionId, aeronarchive_stopRecordingSubscriptionRequest_correlationId, aeronarchive_stopRecordingSubscriptionRequest_subscriptionId, aeronarchive_stopPositionRequest_controlSessionId, aeronarchive_stopPositionRequest_correlationId, aeronarchive_stopPositionRequest_recordingId, aeronarchive_findLastMatchingRecordingRequest_controlSessionId, aeronarchive_findLastMatchingRecordingRequest_correlationId, aeronarchive_findLastMatchingRecordingRequest_minRecordingId, aeronarchive_findLastMatchingRecordingRequest_sessionId, aeronarchive_findLastMatchingRecordingRequest_streamId, aeronarchive_findLastMatchingRecordingRequest_channel, aeronarchive_listRecordingSubscriptionsRequest_controlSessionId, aeronarchive_listRecordingSubscriptionsRequest_correlationId, aeronarchive_listRecordingSubscriptionsRequest_pseudoIndex, aeronarchive_listRecordingSubscriptionsRequest_subscriptionCount, aeronarchive_listRecordingSubscriptionsRequest_applyStreamId, aeronarchive_listRecordingSubscriptionsRequest_streamId, aeronarchive_listRecordingSubscriptionsRequest_channel, aeronarchive_boundedReplayRequest_controlSessionId, aeronarchive_boundedReplayRequest_correlationId, aeronarchive_boundedReplayRequest_recordingId, aeronarchive_boundedReplayRequest_position, aeronarchive_boundedReplayRequest_length, aeronarchive_boundedReplayRequest_limitCounterId, aeronarchive_boundedReplayRequest_replayStreamId, aeronarchive_boundedReplayRequest_fileIoMaxLength, aeronarchive_boundedReplayRequest_replayChannel, aeronarchive_stopAllReplaysRequest_controlSessionId, aeronarchive_stopAllReplaysRequest_correlationId, aeronarchive_stopAllReplaysRequest_recordingId, aeronarchive_catalogHeader_version, aeronarchive_catalogHeader_length, aeronarchive_catalogHeader_nextRecordingId, aeronarchive_catalogHeader_alignment, aeronarchive_catalogHeader_reserved, aeronarchive_recordingDescriptorHeader_length, aeronarchive_recordingDescriptorHeader_state, aeronarchive_recordingDescriptorHeader_checksum, aeronarchive_recordingDescriptorHeader_reserved, aeronarchive_recordingDescriptor_controlSessionId, aeronarchive_recordingDescriptor_correlationId, aeronarchive_recordingDescriptor_recordingId, aeronarchive_recordingDescriptor_startTimestamp, aeronarchive_recordingDescriptor_stopTimestamp, aeronarchive_recordingDescriptor_startPosition, aeronarchive_recordingDescriptor_stopPosition, aeronarchive_recordingDescriptor_initialTermId, aeronarchive_recordingDescriptor_segmentFileLength, aeronarchive_recordingDescriptor_termBufferLength, aeronarchive_recordingDescriptor_mtuLength, aeronarchive_recordingDescriptor_sessionId, aeronarchive_recordingDescriptor_streamId, aeronarchive_recordingDescriptor_strippedChannel, aeronarchive_recordingDescriptor_originalChannel, aeronarchive_recordingDescriptor_sourceIdentity, aeronarchive_recordingSubscriptionDescriptor_controlSessionId, aeronarchive_recordingSubscriptionDescriptor_correlationId, aeronarchive_recordingSubscriptionDescriptor_subscriptionId, aeronarchive_recordingSubscriptionDescriptor_streamId, aeronarchive_recordingSubscriptionDescriptor_strippedChannel, aeronarchive_recordingSignalEvent_controlSessionId, aeronarchive_recordingSignalEvent_correlationId, aeronarchive_recordingSignalEvent_recordingId, aeronarchive_recordingSignalEvent_subscriptionId, aeronarchive_recordingSignalEvent_position, aeronarchive_recordingSignalEvent_signal, aeronarchive_recordingStarted_recordingId, aeronarchive_recordingStarted_startPosition, aeronarchive_recordingStarted_sessionId, aeronarchive_recordingStarted_streamId, aeronarchive_recordingStarted_channel, aeronarchive_recordingStarted_sourceIdentity, aeronarchive_recordingProgress_recordingId, aeronarchive_recordingProgress_startPosition, aeronarchive_recordingProgress_position, aeronarchive_recordingStopped_recordingId, aeronarchive_recordingStopped_startPosition, aeronarchive_recordingStopped_stopPosition, aeronarchive_purgeRecordingRequest_controlSessionId, aeronarchive_purgeRecordingRequest_correlationId, aeronarchive_purgeRecordingRequest_recordingId, aeronarchive_replicateRequest_controlSessionId, aeronarchive_replicateRequest_correlationId, aeronarchive_replicateRequest_srcRecordingId, aeronarchive_replicateRequest_dstRecordingId, aeronarchive_replicateRequest_srcControlStreamId, aeronarchive_replicateRequest_srcControlChannel, aeronarchive_replicateRequest_liveDestination, aeronarchive_stopReplicationRequest_controlSessionId, aeronarchive_stopReplicationRequest_correlationId, aeronarchive_stopReplicationRequest_replicationId, aeronarchive_startPositionRequest_controlSessionId, aeronarchive_startPositionRequest_correlationId, aeronarchive_startPositionRequest_recordingId, aeronarchive_detachSegmentsRequest_controlSessionId, aeronarchive_detachSegmentsRequest_correlationId, aeronarchive_detachSegmentsRequest_recordingId, aeronarchive_detachSegmentsRequest_newStartPosition, aeronarchive_deleteDetachedSegmentsRequest_controlSessionId, aeronarchive_deleteDetachedSegmentsRequest_correlationId, aeronarchive_deleteDetachedSegmentsRequest_recordingId, aeronarchive_purgeSegmentsRequest_controlSessionId, aeronarchive_purgeSegmentsRequest_correlationId, aeronarchive_purgeSegmentsRequest_recordingId, aeronarchive_purgeSegmentsRequest_newStartPosition, aeronarchive_attachSegmentsRequest_controlSessionId, aeronarchive_attachSegmentsRequest_correlationId, aeronarchive_attachSegmentsRequest_recordingId, aeronarchive_migrateSegmentsRequest_controlSessionId, aeronarchive_migrateSegmentsRequest_correlationId, aeronarchive_migrateSegmentsRequest_srcRecordingId, aeronarchive_migrateSegmentsRequest_dstRecordingId, aeronarchive_authConnectRequest_correlationId, aeronarchive_authConnectRequest_responseStreamId, aeronarchive_authConnectRequest_version, aeronarchive_authConnectRequest_responseChannel, aeronarchive_authConnectRequest_encodedCredentials, aeronarchive_challenge_controlSessionId, aeronarchive_challenge_correlationId, aeronarchive_challenge_version, aeronarchive_challenge_encodedChallenge, aeronarchive_challengeResponse_controlSessionId, aeronarchive_challengeResponse_correlationId, aeronarchive_challengeResponse_encodedCredentials, aeronarchive_keepAliveRequest_controlSessionId, aeronarchive_keepAliveRequest_correlationId, aeronarchive_taggedReplicateRequest_controlSessionId, aeronarchive_taggedReplicateRequest_correlationId, aeronarchive_taggedReplicateRequest_srcRecordingId, aeronarchive_taggedReplicateRequest_dstRecordingId, aeronarchive_taggedReplicateRequest_channelTagId, aeronarchive_taggedReplicateRequest_subscriptionTagId, aeronarchive_taggedReplicateRequest_srcControlStreamId, aeronarchive_taggedReplicateRequest_srcControlChannel, aeronarchive_taggedReplicateRequest_liveDestination, aeronarchive_startRecordingRequest2_controlSessionId, aeronarchive_startRecordingRequest2_correlationId, aeronarchive_startRecordingRequest2_streamId, aeronarchive_startRecordingRequest2_sourceLocation, aeronarchive_startRecordingRequest2_autoStop, aeronarchive_startRecordingRequest2_channel, aeroncluster_aeroncluster_messageHeader_blockLength, aeroncluster_aeroncluster_messageHeader_templateId, aeroncluster_aeroncluster_messageHeader_schemaId, aeroncluster_aeroncluster_messageHeader_version, aeroncluster_sessionMessageHeader_leadershipTermId, aeroncluster_sessionMessageHeader_clusterSessionId, aeroncluster_sessionMessageHeader_timestamp, aeroncluster_sessionEvent_clusterSessionId, aeroncluster_sessionEvent_correlationId, aeroncluster_sessionEvent_leadershipTermId, aeroncluster_sessionEvent_leaderMemberId, aeroncluster_sessionEvent_code, aeroncluster_sessionEvent_version, aeroncluster_sessionEvent_detail, aeroncluster_sessionConnectRequest_correlationId, aeroncluster_sessionConnectRequest_responseStreamId, aeroncluster_sessionConnectRequest_version, aeroncluster_sessionConnectRequest_responseChannel, aeroncluster_sessionConnectRequest_encodedCredentials, aeroncluster_sessionCloseRequest_leadershipTermId, aeroncluster_sessionCloseRequest_clusterSessionId, aeroncluster_sessionKeepAlive_leadershipTermId, aeroncluster_sessionKeepAlive_clusterSessionId, aeroncluster_newLeaderEvent_leadershipTermId, aeroncluster_newLeaderEvent_clusterSessionId, aeroncluster_newLeaderEvent_leaderMemberId, aeroncluster_newLeaderEvent_ingressEndpoints, aeroncluster_challenge_correlationId, aeroncluster_challenge_clusterSessionId, aeroncluster_challenge_encodedChallenge, aeroncluster_challengeResponse_correlationId, aeroncluster_challengeResponse_clusterSessionId, aeroncluster_challengeResponse_encodedCredentials, aeroncluster_timerEvent_leadershipTermId, aeroncluster_timerEvent_correlationId, aeroncluster_timerEvent_timestamp, aeroncluster_sessionOpenEvent_leadershipTermId, aeroncluster_sessionOpenEvent_correlationId, aeroncluster_sessionOpenEvent_clusterSessionId, aeroncluster_sessionOpenEvent_timestamp, aeroncluster_sessionOpenEvent_responseStreamId, aeroncluster_sessionOpenEvent_responseChannel, aeroncluster_sessionOpenEvent_encodedPrincipal, aeroncluster_sessionCloseEvent_leadershipTermId, aeroncluster_sessionCloseEvent_clusterSessionId, aeroncluster_sessionCloseEvent_timestamp, aeroncluster_sessionCloseEvent_closeReason, aeroncluster_clusterActionRequest_leadershipTermId, aeroncluster_clusterActionRequest_logPosition, aeroncluster_clusterActionRequest_timestamp, aeroncluster_clusterActionRequest_action, aeroncluster_clusterActionRequest_flags, aeroncluster_newLeadershipTermEvent_leadershipTermId, aeroncluster_newLeadershipTermEvent_logPosition, aeroncluster_newLeadershipTermEvent_timestamp, aeroncluster_newLeadershipTermEvent_termBaseLogPosition, aeroncluster_newLeadershipTermEvent_leaderMemberId, aeroncluster_newLeadershipTermEvent_logSessionId, aeroncluster_newLeadershipTermEvent_timeUnit, aeroncluster_newLeadershipTermEvent_appVersion, aeroncluster_membershipChangeEvent_leadershipTermId, aeroncluster_membershipChangeEvent_logPosition, aeroncluster_membershipChangeEvent_timestamp, aeroncluster_membershipChangeEvent_leaderMemberId, aeroncluster_membershipChangeEvent_clusterSize, aeroncluster_membershipChangeEvent_changeType, aeroncluster_membershipChangeEvent_memberId, aeroncluster_membershipChangeEvent_clusterMembers, aeroncluster_adminRequest_leadershipTermId, aeroncluster_adminRequest_clusterSessionId, aeroncluster_adminRequest_correlationId, aeroncluster_adminRequest_requestType, aeroncluster_adminRequest_payload, aeroncluster_adminResponse_clusterSessionId, aeroncluster_adminResponse_correlationId, aeroncluster_adminResponse_requestType, aeroncluster_adminResponse_responseCode, aeroncluster_adminResponse_message, aeroncluster_adminResponse_payload, aeroncluster_closeSession_clusterSessionId, aeroncluster_scheduleTimer_correlationId, aeroncluster_scheduleTimer_deadline, aeroncluster_cancelTimer_correlationId, aeroncluster_serviceAck_logPosition, aeroncluster_serviceAck_timestamp, aeroncluster_serviceAck_ackId, aeroncluster_serviceAck_relevantId, aeroncluster_serviceAck_serviceId, aeroncluster_clusterMembersQuery_correlationId, aeroncluster_clusterMembersQuery_extended, aeroncluster_removeMember_memberId, aeroncluster_removeMember_isPassive, aeroncluster_joinLog_logPosition, aeroncluster_joinLog_maxLogPosition, aeroncluster_joinLog_memberId, aeroncluster_joinLog_logSessionId, aeroncluster_joinLog_logStreamId, aeroncluster_joinLog_isStartup, aeroncluster_joinLog_role, aeroncluster_joinLog_logChannel, aeroncluster_clusterMembersResponse_correlationId, aeroncluster_clusterMembersResponse_leaderMemberId, aeroncluster_clusterMembersResponse_activeMembers, aeroncluster_clusterMembersResponse_passiveFollowers, aeroncluster_serviceTerminationPosition_logPosition, aeroncluster_clusterMembersExtendedResponse_correlationId, aeroncluster_clusterMembersExtendedResponse_currentTimeNs, aeroncluster_clusterMembersExtendedResponse_leaderMemberId, aeroncluster_clusterMembersExtendedResponse_memberId, aeroncluster_clusterMembersExtendedResponse_activeMembers, aeroncluster_clusterMembersExtendedResponse_activeMembers_leadershipTermId, aeroncluster_clusterMembersExtendedResponse_activeMembers_logPosition, aeroncluster_clusterMembersExtendedResponse_activeMembers_timeOfLastAppendNs, aeroncluster_clusterMembersExtendedResponse_activeMembers_memberId, aeroncluster_clusterMembersExtendedResponse_activeMembers_ingressEndpoint, aeroncluster_clusterMembersExtendedResponse_activeMembers_consensusEndpoint, aeroncluster_clusterMembersExtendedResponse_activeMembers_logEndpoint, aeroncluster_clusterMembersExtendedResponse_activeMembers_catchupEndpoint, aeroncluster_clusterMembersExtendedResponse_activeMembers_archiveEndpoint, aeroncluster_clusterMembersExtendedResponse_passiveMembers, aeroncluster_clusterMembersExtendedResponse_passiveMembers_leadershipTermId, aeroncluster_clusterMembersExtendedResponse_passiveMembers_logPosition, aeroncluster_clusterMembersExtendedResponse_passiveMembers_timeOfLastAppendNs, aeroncluster_clusterMembersExtendedResponse_passiveMembers_memberId, aeroncluster_clusterMembersExtendedResponse_passiveMembers_ingressEndpoint, aeroncluster_clusterMembersExtendedResponse_passiveMembers_consensusEndpoint, aeroncluster_clusterMembersExtendedResponse_passiveMembers_logEndpoint, aeroncluster_clusterMembersExtendedResponse_passiveMembers_catchupEndpoint, aeroncluster_clusterMembersExtendedResponse_passiveMembers_archiveEndpoint, aeroncluster_canvassPosition_logLeadershipTermId, aeroncluster_canvassPosition_logPosition, aeroncluster_canvassPosition_leadershipTermId, aeroncluster_canvassPosition_followerMemberId, aeroncluster_canvassPosition_protocolVersion, aeroncluster_requestVote_logLeadershipTermId, aeroncluster_requestVote_logPosition, aeroncluster_requestVote_candidateTermId, aeroncluster_requestVote_candidateMemberId, aeroncluster_requestVote_protocolVersion, aeroncluster_vote_candidateTermId, aeroncluster_vote_logLeadershipTermId, aeroncluster_vote_logPosition, aeroncluster_vote_candidateMemberId, aeroncluster_vote_followerMemberId, aeroncluster_vote_vote, aeroncluster_newLeadershipTerm_logLeadershipTermId, aeroncluster_newLeadershipTerm_nextLeadershipTermId, aeroncluster_newLeadershipTerm_nextTermBaseLogPosition, aeroncluster_newLeadershipTerm_nextLogPosition, aeroncluster_newLeadershipTerm_leadershipTermId, aeroncluster_newLeadershipTerm_termBaseLogPosition, aeroncluster_newLeadershipTerm_logPosition, aeroncluster_newLeadershipTerm_leaderRecordingId, aeroncluster_newLeadershipTerm_timestamp, aeroncluster_newLeadershipTerm_leaderMemberId, aeroncluster_newLeadershipTerm_logSessionId, aeroncluster_newLeadershipTerm_appVersion, aeroncluster_newLeadershipTerm_isStartup, aeroncluster_appendPosition_leadershipTermId, aeroncluster_appendPosition_logPosition, aeroncluster_appendPosition_followerMemberId, aeroncluster_appendPosition_flags, aeroncluster_commitPosition_leadershipTermId, aeroncluster_commitPosition_logPosition, aeroncluster_commitPosition_leaderMemberId, aeroncluster_catchupPosition_leadershipTermId, aeroncluster_catchupPosition_logPosition, aeroncluster_catchupPosition_followerMemberId, aeroncluster_catchupPosition_catchupEndpoint, aeroncluster_stopCatchup_leadershipTermId, aeroncluster_stopCatchup_followerMemberId, aeroncluster_addPassiveMember_correlationId, aeroncluster_addPassiveMember_memberEndpoints, aeroncluster_clusterMembersChange_correlationId, aeroncluster_clusterMembersChange_leaderMemberId, aeroncluster_clusterMembersChange_activeMembers, aeroncluster_clusterMembersChange_passiveMembers, aeroncluster_snapshotRecordingQuery_correlationId, aeroncluster_snapshotRecordingQuery_requestMemberId, aeroncluster_snapshotRecordings_correlationId, aeroncluster_snapshotRecordings_snapshots, aeroncluster_snapshotRecordings_snapshots_recordingId, aeroncluster_snapshotRecordings_snapshots_leadershipTermId, aeroncluster_snapshotRecordings_snapshots_termBaseLogPosition, aeroncluster_snapshotRecordings_snapshots_logPosition, aeroncluster_snapshotRecordings_snapshots_timestamp, aeroncluster_snapshotRecordings_snapshots_serviceId, aeroncluster_snapshotRecordings_memberEndpoints, aeroncluster_joinCluster_leadershipTermId, aeroncluster_joinCluster_memberId, aeroncluster_terminationPosition_leadershipTermId, aeroncluster_terminationPosition_logPosition, aeroncluster_terminationAck_leadershipTermId, aeroncluster_terminationAck_logPosition, aeroncluster_terminationAck_memberId, aeroncluster_backupQuery_correlationId, aeroncluster_backupQuery_responseStreamId, aeroncluster_backupQuery_version, aeroncluster_backupQuery_responseChannel, aeroncluster_backupQuery_encodedCredentials, aeroncluster_backupResponse_correlationId, aeroncluster_backupResponse_logRecordingId, aeroncluster_backupResponse_logLeadershipTermId, aeroncluster_backupResponse_logTermBaseLogPosition, aeroncluster_backupResponse_lastLeadershipTermId, aeroncluster_backupResponse_lastTermBaseLogPosition, aeroncluster_backupResponse_commitPositionCounterId, aeroncluster_backupResponse_leaderMemberId, aeroncluster_backupResponse_memberId, aeroncluster_backupResponse_snapshots, aeroncluster_backupResponse_snapshots_recordingId, aeroncluster_backupResponse_snapshots_leadershipTermId, aeroncluster_backupResponse_snapshots_termBaseLogPosition, aeroncluster_backupResponse_snapshots_logPosition, aeroncluster_backupResponse_snapshots_timestamp, aeroncluster_backupResponse_snapshots_serviceId, aeroncluster_backupResponse_clusterMembers, aeroncluster_heartbeatRequest_correlationId, aeroncluster_heartbeatRequest_responseStreamId, aeroncluster_heartbeatRequest_responseChannel, aeroncluster_heartbeatRequest_encodedCredentials, aeroncluster_heartbeatResponse_correlationId, aeroncluster_standbySnapshot_correlationId, aeroncluster_standbySnapshot_version, aeroncluster_standbySnapshot_responseStreamId, aeroncluster_standbySnapshot_snapshots, aeroncluster_standbySnapshot_snapshots_recordingId, aeroncluster_standbySnapshot_snapshots_leadershipTermId, aeroncluster_standbySnapshot_snapshots_termBaseLogPosition, aeroncluster_standbySnapshot_snapshots_logPosition, aeroncluster_standbySnapshot_snapshots_timestamp, aeroncluster_standbySnapshot_snapshots_serviceId, aeroncluster_standbySnapshot_snapshots_archiveEndpoint, aeroncluster_standbySnapshot_responseChannel, aeroncluster_standbySnapshot_encodedCredentials, aeroncluster_snapshotMarker_typeId, aeroncluster_snapshotMarker_logPosition, aeroncluster_snapshotMarker_leadershipTermId, aeroncluster_snapshotMarker_index, aeroncluster_snapshotMarker_mark, aeroncluster_snapshotMarker_timeUnit, aeroncluster_snapshotMarker_appVersion, aeroncluster_clientSession_clusterSessionId, aeroncluster_clientSession_responseStreamId, aeroncluster_clientSession_responseChannel, aeroncluster_clientSession_encodedPrincipal, aeroncluster_clusterSession_clusterSessionId, aeroncluster_clusterSession_correlationId, aeroncluster_clusterSession_openedLogPosition, aeroncluster_clusterSession_timeOfLastActivity, aeroncluster_clusterSession_closeReason, aeroncluster_clusterSession_responseStreamId, aeroncluster_clusterSession_responseChannel, aeroncluster_timer_correlationId, aeroncluster_timer_deadline, aeroncluster_consensusModule_nextSessionId, aeroncluster_consensusModule_nextServiceSessionId, aeroncluster_consensusModule_logServiceSessionId, aeroncluster_consensusModule_pendingMessageCapacity, aeroncluster_clusterMembers_memberId, aeroncluster_clusterMembers_highMemberId, aeroncluster_clusterMembers_clusterMembers, aeroncluster_pendingMessageTracker_nextServiceSessionId, aeroncluster_pendingMessageTracker_logServiceSessionId, aeroncluster_pendingMessageTracker_pendingMessageCapacity, aeroncluster_pendingMessageTracker_serviceId, aeroncluster_requestServiceAck_logPosition, protocol_protocol_messageHeader_blockLength, protocol_protocol_messageHeader_templateId, protocol_protocol_messageHeader_schemaId, protocol_protocol_messageHeader_version, protocol_listParticipantsCommand_correlationId, protocol_addParticipantCommand_participantId, protocol_addParticipantCommand_correlationId, protocol_addParticipantCommand_name, protocol_participantList_correlationId, protocol_participantList_participants, protocol_participantList_participants_participantId, protocol_participantList_participants_name, protocol_addParticipantCommandResult_correlationId, protocol_addParticipantCommandResult_participantId, protocol_participantSnapshot_participantId, protocol_participantSnapshot_name, protocol_createAuctionCommand_createdByParticipantId, protocol_createAuctionCommand_startTime, protocol_createAuctionCommand_endTime, protocol_createAuctionCommand_correlationId, protocol_createAuctionCommand_name, protocol_createAuctionCommand_description, protocol_createAuctionCommandResult_auctionId, protocol_createAuctionCommandResult_result, protocol_createAuctionCommandResult_correlationId, protocol_newAuctionEvent_auctionId, protocol_newAuctionEvent_startTime, protocol_newAuctionEvent_endTime, protocol_newAuctionEvent_name, protocol_newAuctionEvent_description, protocol_addAuctionBidCommand_auctionId, protocol_addAuctionBidCommand_addedByParticipantId, protocol_addAuctionBidCommand_price, protocol_addAuctionBidCommand_correlationId, protocol_addAuctionBidCommandResult_auctionId, protocol_addAuctionBidCommandResult_result, protocol_addAuctionBidCommandResult_correlationId, protocol_auctionUpdateEvent_auctionId, protocol_auctionUpdateEvent_status, protocol_auctionUpdateEvent_currentPrice, protocol_auctionUpdateEvent_bidCount, protocol_auctionUpdateEvent_lastUpdate, protocol_auctionUpdateEvent_winningParticipantId, protocol_auctionUpdateEvent_correlationId, protocol_auctionSnapshot_auctionId, protocol_auctionSnapshot_createdByParticipantId, protocol_auctionSnapshot_startTime, protocol_auctionSnapshot_startTimeTimerCorrelation, protocol_auctionSnapshot_endTime, protocol_auctionSnapshot_endTimeTimerCorrelation, protocol_auctionSnapshot_removalTimeTimerCorrelation, protocol_auctionSnapshot_winningParticipantId, protocol_auctionSnapshot_name, protocol_auctionSnapshot_description, protocol_auctionIdSnapshot_lastId, protocol_listAuctionsCommand_correlationId, protocol_auctionList_correlationId, protocol_auctionList_auctions, protocol_auctionList_auctions_auctionId, protocol_auctionList_auctions_createdByParticipantId, protocol_auctionList_auctions_startTime, protocol_auctionList_auctions_endTime, protocol_auctionList_auctions_winningParticipantId, protocol_auctionList_auctions_currentPrice, protocol_auctionList_auctions_status, protocol_auctionList_auctions_name }

function mushroom_protocol.dissector(buffer, pinfo, tree)
    pinfo.desegment_len = buffer:len()
    pinfo.desegment_offset = 0
    pinfo.cols.protocol = mushroom_protocol.name
    
    local protocolRootTree = tree:add(mushroom_protocol, buffer, "mushroom_protocol")
    
    dispatch(buffer, 0, protocolRootTree)
end

function dispatch(buffer, offset, subTree)
    local schemaId = schemaId(buffer, offset)
    if schemaId == 101 then
        offset = decodeAeronarchive(buffer, offset, subTree)
    elseif schemaId == 1001 then
        offset = decodeProtocol(buffer, offset, subTree)
    elseif schemaId == 111 then
        offset = decodeAeroncluster(buffer, offset, subTree)
    end
    return offset
end

function blockLength(buffer, offset)
    return buffer(offset + 0, 2):le_uint()
end

function schemaId(buffer, offset)
    return buffer(offset + 4, 2):le_uint()
end

function templateId(buffer, offset)
    return buffer(offset + 2, 2):le_uint()
end

local function heuristic_mushroom_protocol_dissector(buffer, pinfo, tree)
    -- Check if the buffer length is at least enough for the 8-byte header
    if buffer:len() < 8 then
        return false
    end

    -- Parsing the fields from the buffer
    local blockLength = blockLength(buffer, 0)
    local schemaId = schemaId(buffer, 0)

    if buffer:len() < 8 + blockLength then
        return false
    end

    -- Check for schemaId, blockLength and version conditions
    if schemaId == 101 or schemaId == 1001 or schemaId == 111 then
        -- Call the dissector function
        mushroom_protocol.dissector(buffer, pinfo, tree)

        -- Return true to indicate this dissector successfully dissected the buffer
        return true
    end

    -- Return false if conditions are not met
    return false
end

-- Register the heuristic dissector
mushroom_protocol:register_heuristic("aeron_msg_payload", heuristic_mushroom_protocol_dissector)



function aeronarchiveSbeHeader(buffer, offset, subtree)
    subtree:add_le(aeronarchive_aeronarchive_messageHeader_blockLength, buffer(offset, 2))
    offset = offset + 2
    subtree:add_le(aeronarchive_aeronarchive_messageHeader_templateId, buffer(offset, 2))
    offset = offset + 2
    subtree:add_le(aeronarchive_aeronarchive_messageHeader_schemaId, buffer(offset, 2))
    offset = offset + 2
    subtree:add_le(aeronarchive_aeronarchive_messageHeader_version, buffer(offset, 2))
    offset = offset + 2    return offset
end

function aeronclusterSbeHeader(buffer, offset, subtree)
    subtree:add_le(aeroncluster_aeroncluster_messageHeader_blockLength, buffer(offset, 2))
    offset = offset + 2
    subtree:add_le(aeroncluster_aeroncluster_messageHeader_templateId, buffer(offset, 2))
    offset = offset + 2
    subtree:add_le(aeroncluster_aeroncluster_messageHeader_schemaId, buffer(offset, 2))
    offset = offset + 2
    subtree:add_le(aeroncluster_aeroncluster_messageHeader_version, buffer(offset, 2))
    offset = offset + 2    return offset
end

function protocolSbeHeader(buffer, offset, subtree)
    subtree:add_le(protocol_protocol_messageHeader_blockLength, buffer(offset, 2))
    offset = offset + 2
    subtree:add_le(protocol_protocol_messageHeader_templateId, buffer(offset, 2))
    offset = offset + 2
    subtree:add_le(protocol_protocol_messageHeader_schemaId, buffer(offset, 2))
    offset = offset + 2
    subtree:add_le(protocol_protocol_messageHeader_version, buffer(offset, 2))
    offset = offset + 2    return offset
end

function decodeAeronarchive(buffer, offset, subtree)
    local templateId = templateId(buffer, offset)
    local blockLength = blockLength(buffer, offset)
    local aeronarchiveHeaderSubTree = subtree:add(mushroom_protocol, buffer(), "Aeronarchive Protocol Header")
    offset = aeronarchiveSbeHeader(buffer, offset, aeronarchiveHeaderSubTree)
    offset = dispatchTableAeronarchive(buffer, offset, aeronarchiveHeaderSubTree, templateId, blockLength)
    return offset
end

function decodeAeroncluster(buffer, offset, subtree)
    local templateId = templateId(buffer, offset)
    local blockLength = blockLength(buffer, offset)
    local aeronclusterHeaderSubTree = subtree:add(mushroom_protocol, buffer(), "Aeroncluster Protocol Header")
    offset = aeronclusterSbeHeader(buffer, offset, aeronclusterHeaderSubTree)
    offset = dispatchTableAeroncluster(buffer, offset, aeronclusterHeaderSubTree, templateId, blockLength)
    return offset
end

function decodeProtocol(buffer, offset, subtree)
    local templateId = templateId(buffer, offset)
    local blockLength = blockLength(buffer, offset)
    local protocolHeaderSubTree = subtree:add(mushroom_protocol, buffer(), "Protocol Protocol Header")
    offset = protocolSbeHeader(buffer, offset, protocolHeaderSubTree)
    offset = dispatchTableProtocol(buffer, offset, protocolHeaderSubTree, templateId, blockLength)
    return offset
end

function dispatchTableAeronarchive(buffer, offset, subtree, templateId, blockLength)
    if templateId == 64 then
        offset = decode_aeronarchive_extendRecordingRequest2(buffer, offset, blockLength, subtree)
    elseif templateId == 1 then
        offset = decode_aeronarchive_controlResponse(buffer, offset, blockLength, subtree)
    elseif templateId == 65 then
        offset = decode_aeronarchive_stopRecordingByIdentityRequest(buffer, offset, blockLength, subtree)
    elseif templateId == 2 then
        offset = decode_aeronarchive_connectRequest(buffer, offset, blockLength, subtree)
    elseif templateId == 66 then
        offset = decode_aeronarchive_replicateRequest2(buffer, offset, blockLength, subtree)
    elseif templateId == 3 then
        offset = decode_aeronarchive_closeSessionRequest(buffer, offset, blockLength, subtree)
    elseif templateId == 4 then
        offset = decode_aeronarchive_startRecordingRequest(buffer, offset, blockLength, subtree)
    elseif templateId == 5 then
        offset = decode_aeronarchive_stopRecordingRequest(buffer, offset, blockLength, subtree)
    elseif templateId == 6 then
        offset = decode_aeronarchive_replayRequest(buffer, offset, blockLength, subtree)
    elseif templateId == 7 then
        offset = decode_aeronarchive_stopReplayRequest(buffer, offset, blockLength, subtree)
    elseif templateId == 8 then
        offset = decode_aeronarchive_listRecordingsRequest(buffer, offset, blockLength, subtree)
    elseif templateId == 9 then
        offset = decode_aeronarchive_listRecordingsForUriRequest(buffer, offset, blockLength, subtree)
    elseif templateId == 10 then
        offset = decode_aeronarchive_listRecordingRequest(buffer, offset, blockLength, subtree)
    elseif templateId == 11 then
        offset = decode_aeronarchive_extendRecordingRequest(buffer, offset, blockLength, subtree)
    elseif templateId == 12 then
        offset = decode_aeronarchive_recordingPositionRequest(buffer, offset, blockLength, subtree)
    elseif templateId == 13 then
        offset = decode_aeronarchive_truncateRecordingRequest(buffer, offset, blockLength, subtree)
    elseif templateId == 14 then
        offset = decode_aeronarchive_stopRecordingSubscriptionRequest(buffer, offset, blockLength, subtree)
    elseif templateId == 15 then
        offset = decode_aeronarchive_stopPositionRequest(buffer, offset, blockLength, subtree)
    elseif templateId == 16 then
        offset = decode_aeronarchive_findLastMatchingRecordingRequest(buffer, offset, blockLength, subtree)
    elseif templateId == 17 then
        offset = decode_aeronarchive_listRecordingSubscriptionsRequest(buffer, offset, blockLength, subtree)
    elseif templateId == 18 then
        offset = decode_aeronarchive_boundedReplayRequest(buffer, offset, blockLength, subtree)
    elseif templateId == 19 then
        offset = decode_aeronarchive_stopAllReplaysRequest(buffer, offset, blockLength, subtree)
    elseif templateId == 20 then
        offset = decode_aeronarchive_catalogHeader(buffer, offset, blockLength, subtree)
    elseif templateId == 21 then
        offset = decode_aeronarchive_recordingDescriptorHeader(buffer, offset, blockLength, subtree)
    elseif templateId == 22 then
        offset = decode_aeronarchive_recordingDescriptor(buffer, offset, blockLength, subtree)
    elseif templateId == 23 then
        offset = decode_aeronarchive_recordingSubscriptionDescriptor(buffer, offset, blockLength, subtree)
    elseif templateId == 24 then
        offset = decode_aeronarchive_recordingSignalEvent(buffer, offset, blockLength, subtree)
    elseif templateId == 101 then
        offset = decode_aeronarchive_recordingStarted(buffer, offset, blockLength, subtree)
    elseif templateId == 102 then
        offset = decode_aeronarchive_recordingProgress(buffer, offset, blockLength, subtree)
    elseif templateId == 103 then
        offset = decode_aeronarchive_recordingStopped(buffer, offset, blockLength, subtree)
    elseif templateId == 104 then
        offset = decode_aeronarchive_purgeRecordingRequest(buffer, offset, blockLength, subtree)
    elseif templateId == 50 then
        offset = decode_aeronarchive_replicateRequest(buffer, offset, blockLength, subtree)
    elseif templateId == 51 then
        offset = decode_aeronarchive_stopReplicationRequest(buffer, offset, blockLength, subtree)
    elseif templateId == 52 then
        offset = decode_aeronarchive_startPositionRequest(buffer, offset, blockLength, subtree)
    elseif templateId == 53 then
        offset = decode_aeronarchive_detachSegmentsRequest(buffer, offset, blockLength, subtree)
    elseif templateId == 54 then
        offset = decode_aeronarchive_deleteDetachedSegmentsRequest(buffer, offset, blockLength, subtree)
    elseif templateId == 55 then
        offset = decode_aeronarchive_purgeSegmentsRequest(buffer, offset, blockLength, subtree)
    elseif templateId == 56 then
        offset = decode_aeronarchive_attachSegmentsRequest(buffer, offset, blockLength, subtree)
    elseif templateId == 57 then
        offset = decode_aeronarchive_migrateSegmentsRequest(buffer, offset, blockLength, subtree)
    elseif templateId == 58 then
        offset = decode_aeronarchive_authConnectRequest(buffer, offset, blockLength, subtree)
    elseif templateId == 59 then
        offset = decode_aeronarchive_challenge(buffer, offset, blockLength, subtree)
    elseif templateId == 60 then
        offset = decode_aeronarchive_challengeResponse(buffer, offset, blockLength, subtree)
    elseif templateId == 61 then
        offset = decode_aeronarchive_keepAliveRequest(buffer, offset, blockLength, subtree)
    elseif templateId == 62 then
        offset = decode_aeronarchive_taggedReplicateRequest(buffer, offset, blockLength, subtree)
    elseif templateId == 63 then
        offset = decode_aeronarchive_startRecordingRequest2(buffer, offset, blockLength, subtree)
    end
    return offset
end


function dispatchTableAeroncluster(buffer, offset, subtree, templateId, blockLength)
    if templateId == 1 then
        offset = decode_aeroncluster_sessionMessageHeader(buffer, offset, blockLength, subtree)
    elseif templateId == 2 then
        offset = decode_aeroncluster_sessionEvent(buffer, offset, blockLength, subtree)
    elseif templateId == 3 then
        offset = decode_aeroncluster_sessionConnectRequest(buffer, offset, blockLength, subtree)
    elseif templateId == 4 then
        offset = decode_aeroncluster_sessionCloseRequest(buffer, offset, blockLength, subtree)
    elseif templateId == 5 then
        offset = decode_aeroncluster_sessionKeepAlive(buffer, offset, blockLength, subtree)
    elseif templateId == 6 then
        offset = decode_aeroncluster_newLeaderEvent(buffer, offset, blockLength, subtree)
    elseif templateId == 7 then
        offset = decode_aeroncluster_challenge(buffer, offset, blockLength, subtree)
    elseif templateId == 8 then
        offset = decode_aeroncluster_challengeResponse(buffer, offset, blockLength, subtree)
    elseif templateId == 20 then
        offset = decode_aeroncluster_timerEvent(buffer, offset, blockLength, subtree)
    elseif templateId == 21 then
        offset = decode_aeroncluster_sessionOpenEvent(buffer, offset, blockLength, subtree)
    elseif templateId == 22 then
        offset = decode_aeroncluster_sessionCloseEvent(buffer, offset, blockLength, subtree)
    elseif templateId == 23 then
        offset = decode_aeroncluster_clusterActionRequest(buffer, offset, blockLength, subtree)
    elseif templateId == 24 then
        offset = decode_aeroncluster_newLeadershipTermEvent(buffer, offset, blockLength, subtree)
    elseif templateId == 25 then
        offset = decode_aeroncluster_membershipChangeEvent(buffer, offset, blockLength, subtree)
    elseif templateId == 26 then
        offset = decode_aeroncluster_adminRequest(buffer, offset, blockLength, subtree)
    elseif templateId == 27 then
        offset = decode_aeroncluster_adminResponse(buffer, offset, blockLength, subtree)
    elseif templateId == 30 then
        offset = decode_aeroncluster_closeSession(buffer, offset, blockLength, subtree)
    elseif templateId == 31 then
        offset = decode_aeroncluster_scheduleTimer(buffer, offset, blockLength, subtree)
    elseif templateId == 32 then
        offset = decode_aeroncluster_cancelTimer(buffer, offset, blockLength, subtree)
    elseif templateId == 33 then
        offset = decode_aeroncluster_serviceAck(buffer, offset, blockLength, subtree)
    elseif templateId == 34 then
        offset = decode_aeroncluster_clusterMembersQuery(buffer, offset, blockLength, subtree)
    elseif templateId == 35 then
        offset = decode_aeroncluster_removeMember(buffer, offset, blockLength, subtree)
    elseif templateId == 40 then
        offset = decode_aeroncluster_joinLog(buffer, offset, blockLength, subtree)
    elseif templateId == 41 then
        offset = decode_aeroncluster_clusterMembersResponse(buffer, offset, blockLength, subtree)
    elseif templateId == 42 then
        offset = decode_aeroncluster_serviceTerminationPosition(buffer, offset, blockLength, subtree)
    elseif templateId == 43 then
        offset = decode_aeroncluster_clusterMembersExtendedResponse(buffer, offset, blockLength, subtree)
    elseif templateId == 50 then
        offset = decode_aeroncluster_canvassPosition(buffer, offset, blockLength, subtree)
    elseif templateId == 51 then
        offset = decode_aeroncluster_requestVote(buffer, offset, blockLength, subtree)
    elseif templateId == 52 then
        offset = decode_aeroncluster_vote(buffer, offset, blockLength, subtree)
    elseif templateId == 53 then
        offset = decode_aeroncluster_newLeadershipTerm(buffer, offset, blockLength, subtree)
    elseif templateId == 54 then
        offset = decode_aeroncluster_appendPosition(buffer, offset, blockLength, subtree)
    elseif templateId == 55 then
        offset = decode_aeroncluster_commitPosition(buffer, offset, blockLength, subtree)
    elseif templateId == 56 then
        offset = decode_aeroncluster_catchupPosition(buffer, offset, blockLength, subtree)
    elseif templateId == 57 then
        offset = decode_aeroncluster_stopCatchup(buffer, offset, blockLength, subtree)
    elseif templateId == 70 then
        offset = decode_aeroncluster_addPassiveMember(buffer, offset, blockLength, subtree)
    elseif templateId == 71 then
        offset = decode_aeroncluster_clusterMembersChange(buffer, offset, blockLength, subtree)
    elseif templateId == 72 then
        offset = decode_aeroncluster_snapshotRecordingQuery(buffer, offset, blockLength, subtree)
    elseif templateId == 73 then
        offset = decode_aeroncluster_snapshotRecordings(buffer, offset, blockLength, subtree)
    elseif templateId == 74 then
        offset = decode_aeroncluster_joinCluster(buffer, offset, blockLength, subtree)
    elseif templateId == 75 then
        offset = decode_aeroncluster_terminationPosition(buffer, offset, blockLength, subtree)
    elseif templateId == 76 then
        offset = decode_aeroncluster_terminationAck(buffer, offset, blockLength, subtree)
    elseif templateId == 77 then
        offset = decode_aeroncluster_backupQuery(buffer, offset, blockLength, subtree)
    elseif templateId == 78 then
        offset = decode_aeroncluster_backupResponse(buffer, offset, blockLength, subtree)
    elseif templateId == 79 then
        offset = decode_aeroncluster_heartbeatRequest(buffer, offset, blockLength, subtree)
    elseif templateId == 80 then
        offset = decode_aeroncluster_heartbeatResponse(buffer, offset, blockLength, subtree)
    elseif templateId == 81 then
        offset = decode_aeroncluster_standbySnapshot(buffer, offset, blockLength, subtree)
    elseif templateId == 100 then
        offset = decode_aeroncluster_snapshotMarker(buffer, offset, blockLength, subtree)
    elseif templateId == 102 then
        offset = decode_aeroncluster_clientSession(buffer, offset, blockLength, subtree)
    elseif templateId == 103 then
        offset = decode_aeroncluster_clusterSession(buffer, offset, blockLength, subtree)
    elseif templateId == 104 then
        offset = decode_aeroncluster_timer(buffer, offset, blockLength, subtree)
    elseif templateId == 105 then
        offset = decode_aeroncluster_consensusModule(buffer, offset, blockLength, subtree)
    elseif templateId == 106 then
        offset = decode_aeroncluster_clusterMembers(buffer, offset, blockLength, subtree)
    elseif templateId == 107 then
        offset = decode_aeroncluster_pendingMessageTracker(buffer, offset, blockLength, subtree)
    elseif templateId == 108 then
        offset = decode_aeroncluster_requestServiceAck(buffer, offset, blockLength, subtree)
    end
    return offset
end


function dispatchTableProtocol(buffer, offset, subtree, templateId, blockLength)
    if templateId == 32 then
        offset = decode_protocol_listParticipantsCommand(buffer, offset, blockLength, subtree)
    elseif templateId == 1 then
        offset = decode_protocol_addParticipantCommand(buffer, offset, blockLength, subtree)
    elseif templateId == 33 then
        offset = decode_protocol_participantList(buffer, offset, blockLength, subtree)
    elseif templateId == 2 then
        offset = decode_protocol_addParticipantCommandResult(buffer, offset, blockLength, subtree)
    elseif templateId == 3 then
        offset = decode_protocol_participantSnapshot(buffer, offset, blockLength, subtree)
    elseif templateId == 10 then
        offset = decode_protocol_createAuctionCommand(buffer, offset, blockLength, subtree)
    elseif templateId == 11 then
        offset = decode_protocol_createAuctionCommandResult(buffer, offset, blockLength, subtree)
    elseif templateId == 12 then
        offset = decode_protocol_newAuctionEvent(buffer, offset, blockLength, subtree)
    elseif templateId == 13 then
        offset = decode_protocol_addAuctionBidCommand(buffer, offset, blockLength, subtree)
    elseif templateId == 14 then
        offset = decode_protocol_addAuctionBidCommandResult(buffer, offset, blockLength, subtree)
    elseif templateId == 15 then
        offset = decode_protocol_auctionUpdateEvent(buffer, offset, blockLength, subtree)
    elseif templateId == 16 then
        offset = decode_protocol_auctionSnapshot(buffer, offset, blockLength, subtree)
    elseif templateId == 17 then
        offset = decode_protocol_auctionIdSnapshot(buffer, offset, blockLength, subtree)
    elseif templateId == 20 then
        offset = decode_protocol_endOfSnapshot(buffer, offset, blockLength, subtree)
    elseif templateId == 30 then
        offset = decode_protocol_listAuctionsCommand(buffer, offset, blockLength, subtree)
    elseif templateId == 31 then
        offset = decode_protocol_auctionList(buffer, offset, blockLength, subtree)
    end
    return offset
end


function decode_aeronarchive_extendRecordingRequest2(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local extendRecordingRequest2SubTree = subtree:add(mushroom_protocol, buffer(), "ExtendRecordingRequest2")
    extendRecordingRequest2SubTree:add_le(aeronarchive_extendRecordingRequest2_controlSessionId, buffer(offset, 8))
    offset = offset + 8
    extendRecordingRequest2SubTree:add_le(aeronarchive_extendRecordingRequest2_correlationId, buffer(offset, 8))
    offset = offset + 8
    extendRecordingRequest2SubTree:add_le(aeronarchive_extendRecordingRequest2_recordingId, buffer(offset, 8))
    offset = offset + 8
    extendRecordingRequest2SubTree:add_le(aeronarchive_extendRecordingRequest2_streamId, buffer(offset, 4))
    offset = offset + 4
    extendRecordingRequest2SubTree:add_le(aeronarchive_extendRecordingRequest2_sourceLocation, buffer(offset, 4))
    offset = offset + 4
    extendRecordingRequest2SubTree:add_le(aeronarchive_extendRecordingRequest2_autoStop, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local varLength_aeronarchive_extendRecordingRequest2_channel = buffer(offset, 4):le_uint()
    offset = offset + 4
    extendRecordingRequest2SubTree:add_le(aeronarchive_extendRecordingRequest2_channel, buffer(offset, varLength_aeronarchive_extendRecordingRequest2_channel))
    offset = offset + varLength_aeronarchive_extendRecordingRequest2_channel
    return offset
end

function decode_aeronarchive_controlResponse(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local controlResponseSubTree = subtree:add(mushroom_protocol, buffer(), "ControlResponse")
    controlResponseSubTree:add_le(aeronarchive_controlResponse_controlSessionId, buffer(offset, 8))
    offset = offset + 8
    controlResponseSubTree:add_le(aeronarchive_controlResponse_correlationId, buffer(offset, 8))
    offset = offset + 8
    controlResponseSubTree:add_le(aeronarchive_controlResponse_relevantId, buffer(offset, 8))
    offset = offset + 8
    controlResponseSubTree:add_le(aeronarchive_controlResponse_code, buffer(offset, 4))
    offset = offset + 4
    controlResponseSubTree:add_le(aeronarchive_controlResponse_version, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local varLength_aeronarchive_controlResponse_errorMessage = buffer(offset, 4):le_uint()
    offset = offset + 4
    controlResponseSubTree:add_le(aeronarchive_controlResponse_errorMessage, buffer(offset, varLength_aeronarchive_controlResponse_errorMessage))
    offset = offset + varLength_aeronarchive_controlResponse_errorMessage
    return offset
end

function decode_aeronarchive_stopRecordingByIdentityRequest(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local stopRecordingByIdentityRequestSubTree = subtree:add(mushroom_protocol, buffer(), "StopRecordingByIdentityRequest")
    stopRecordingByIdentityRequestSubTree:add_le(aeronarchive_stopRecordingByIdentityRequest_controlSessionId, buffer(offset, 8))
    offset = offset + 8
    stopRecordingByIdentityRequestSubTree:add_le(aeronarchive_stopRecordingByIdentityRequest_correlationId, buffer(offset, 8))
    offset = offset + 8
    stopRecordingByIdentityRequestSubTree:add_le(aeronarchive_stopRecordingByIdentityRequest_recordingId, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end

function decode_aeronarchive_connectRequest(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local connectRequestSubTree = subtree:add(mushroom_protocol, buffer(), "ConnectRequest")
    connectRequestSubTree:add_le(aeronarchive_connectRequest_correlationId, buffer(offset, 8))
    offset = offset + 8
    connectRequestSubTree:add_le(aeronarchive_connectRequest_responseStreamId, buffer(offset, 4))
    offset = offset + 4
    connectRequestSubTree:add_le(aeronarchive_connectRequest_version, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local varLength_aeronarchive_connectRequest_responseChannel = buffer(offset, 4):le_uint()
    offset = offset + 4
    connectRequestSubTree:add_le(aeronarchive_connectRequest_responseChannel, buffer(offset, varLength_aeronarchive_connectRequest_responseChannel))
    offset = offset + varLength_aeronarchive_connectRequest_responseChannel
    return offset
end

function decode_aeronarchive_replicateRequest2(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local replicateRequest2SubTree = subtree:add(mushroom_protocol, buffer(), "ReplicateRequest2")
    replicateRequest2SubTree:add_le(aeronarchive_replicateRequest2_controlSessionId, buffer(offset, 8))
    offset = offset + 8
    replicateRequest2SubTree:add_le(aeronarchive_replicateRequest2_correlationId, buffer(offset, 8))
    offset = offset + 8
    replicateRequest2SubTree:add_le(aeronarchive_replicateRequest2_srcRecordingId, buffer(offset, 8))
    offset = offset + 8
    replicateRequest2SubTree:add_le(aeronarchive_replicateRequest2_dstRecordingId, buffer(offset, 8))
    offset = offset + 8
    replicateRequest2SubTree:add_le(aeronarchive_replicateRequest2_stopPosition, buffer(offset, 8))
    offset = offset + 8
    replicateRequest2SubTree:add_le(aeronarchive_replicateRequest2_channelTagId, buffer(offset, 8))
    offset = offset + 8
    replicateRequest2SubTree:add_le(aeronarchive_replicateRequest2_subscriptionTagId, buffer(offset, 8))
    offset = offset + 8
    replicateRequest2SubTree:add_le(aeronarchive_replicateRequest2_srcControlStreamId, buffer(offset, 4))
    offset = offset + 4
    replicateRequest2SubTree:add_le(aeronarchive_replicateRequest2_fileIoMaxLength, buffer(offset, 4))
    offset = offset + 4
    replicateRequest2SubTree:add_le(aeronarchive_replicateRequest2_replicationSessionId, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local varLength_aeronarchive_replicateRequest2_srcControlChannel = buffer(offset, 4):le_uint()
    offset = offset + 4
    replicateRequest2SubTree:add_le(aeronarchive_replicateRequest2_srcControlChannel, buffer(offset, varLength_aeronarchive_replicateRequest2_srcControlChannel))
    offset = offset + varLength_aeronarchive_replicateRequest2_srcControlChannel
    local varLength_aeronarchive_replicateRequest2_liveDestination = buffer(offset, 4):le_uint()
    offset = offset + 4
    replicateRequest2SubTree:add_le(aeronarchive_replicateRequest2_liveDestination, buffer(offset, varLength_aeronarchive_replicateRequest2_liveDestination))
    offset = offset + varLength_aeronarchive_replicateRequest2_liveDestination
    local varLength_aeronarchive_replicateRequest2_replicationChannel = buffer(offset, 4):le_uint()
    offset = offset + 4
    replicateRequest2SubTree:add_le(aeronarchive_replicateRequest2_replicationChannel, buffer(offset, varLength_aeronarchive_replicateRequest2_replicationChannel))
    offset = offset + varLength_aeronarchive_replicateRequest2_replicationChannel
    local varLength_aeronarchive_replicateRequest2_encodedCredentials = buffer(offset, 4):le_uint()
    offset = offset + 4
    replicateRequest2SubTree:add_le(aeronarchive_replicateRequest2_encodedCredentials, buffer(offset, varLength_aeronarchive_replicateRequest2_encodedCredentials))
    offset = offset + varLength_aeronarchive_replicateRequest2_encodedCredentials
    return offset
end

function decode_aeronarchive_closeSessionRequest(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local closeSessionRequestSubTree = subtree:add(mushroom_protocol, buffer(), "CloseSessionRequest")
    closeSessionRequestSubTree:add_le(aeronarchive_closeSessionRequest_controlSessionId, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end

function decode_aeronarchive_startRecordingRequest(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local startRecordingRequestSubTree = subtree:add(mushroom_protocol, buffer(), "StartRecordingRequest")
    startRecordingRequestSubTree:add_le(aeronarchive_startRecordingRequest_controlSessionId, buffer(offset, 8))
    offset = offset + 8
    startRecordingRequestSubTree:add_le(aeronarchive_startRecordingRequest_correlationId, buffer(offset, 8))
    offset = offset + 8
    startRecordingRequestSubTree:add_le(aeronarchive_startRecordingRequest_streamId, buffer(offset, 4))
    offset = offset + 4
    startRecordingRequestSubTree:add_le(aeronarchive_startRecordingRequest_sourceLocation, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local varLength_aeronarchive_startRecordingRequest_channel = buffer(offset, 4):le_uint()
    offset = offset + 4
    startRecordingRequestSubTree:add_le(aeronarchive_startRecordingRequest_channel, buffer(offset, varLength_aeronarchive_startRecordingRequest_channel))
    offset = offset + varLength_aeronarchive_startRecordingRequest_channel
    return offset
end

function decode_aeronarchive_stopRecordingRequest(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local stopRecordingRequestSubTree = subtree:add(mushroom_protocol, buffer(), "StopRecordingRequest")
    stopRecordingRequestSubTree:add_le(aeronarchive_stopRecordingRequest_controlSessionId, buffer(offset, 8))
    offset = offset + 8
    stopRecordingRequestSubTree:add_le(aeronarchive_stopRecordingRequest_correlationId, buffer(offset, 8))
    offset = offset + 8
    stopRecordingRequestSubTree:add_le(aeronarchive_stopRecordingRequest_streamId, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local varLength_aeronarchive_stopRecordingRequest_channel = buffer(offset, 4):le_uint()
    offset = offset + 4
    stopRecordingRequestSubTree:add_le(aeronarchive_stopRecordingRequest_channel, buffer(offset, varLength_aeronarchive_stopRecordingRequest_channel))
    offset = offset + varLength_aeronarchive_stopRecordingRequest_channel
    return offset
end

function decode_aeronarchive_replayRequest(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local replayRequestSubTree = subtree:add(mushroom_protocol, buffer(), "ReplayRequest")
    replayRequestSubTree:add_le(aeronarchive_replayRequest_controlSessionId, buffer(offset, 8))
    offset = offset + 8
    replayRequestSubTree:add_le(aeronarchive_replayRequest_correlationId, buffer(offset, 8))
    offset = offset + 8
    replayRequestSubTree:add_le(aeronarchive_replayRequest_recordingId, buffer(offset, 8))
    offset = offset + 8
    replayRequestSubTree:add_le(aeronarchive_replayRequest_position, buffer(offset, 8))
    offset = offset + 8
    replayRequestSubTree:add_le(aeronarchive_replayRequest_length, buffer(offset, 8))
    offset = offset + 8
    replayRequestSubTree:add_le(aeronarchive_replayRequest_replayStreamId, buffer(offset, 4))
    offset = offset + 4
    replayRequestSubTree:add_le(aeronarchive_replayRequest_fileIoMaxLength, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local varLength_aeronarchive_replayRequest_replayChannel = buffer(offset, 4):le_uint()
    offset = offset + 4
    replayRequestSubTree:add_le(aeronarchive_replayRequest_replayChannel, buffer(offset, varLength_aeronarchive_replayRequest_replayChannel))
    offset = offset + varLength_aeronarchive_replayRequest_replayChannel
    return offset
end

function decode_aeronarchive_stopReplayRequest(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local stopReplayRequestSubTree = subtree:add(mushroom_protocol, buffer(), "StopReplayRequest")
    stopReplayRequestSubTree:add_le(aeronarchive_stopReplayRequest_controlSessionId, buffer(offset, 8))
    offset = offset + 8
    stopReplayRequestSubTree:add_le(aeronarchive_stopReplayRequest_correlationId, buffer(offset, 8))
    offset = offset + 8
    stopReplayRequestSubTree:add_le(aeronarchive_stopReplayRequest_replaySessionId, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end

function decode_aeronarchive_listRecordingsRequest(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local listRecordingsRequestSubTree = subtree:add(mushroom_protocol, buffer(), "ListRecordingsRequest")
    listRecordingsRequestSubTree:add_le(aeronarchive_listRecordingsRequest_controlSessionId, buffer(offset, 8))
    offset = offset + 8
    listRecordingsRequestSubTree:add_le(aeronarchive_listRecordingsRequest_correlationId, buffer(offset, 8))
    offset = offset + 8
    listRecordingsRequestSubTree:add_le(aeronarchive_listRecordingsRequest_fromRecordingId, buffer(offset, 8))
    offset = offset + 8
    listRecordingsRequestSubTree:add_le(aeronarchive_listRecordingsRequest_recordCount, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset

    return offset
end

function decode_aeronarchive_listRecordingsForUriRequest(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local listRecordingsForUriRequestSubTree = subtree:add(mushroom_protocol, buffer(), "ListRecordingsForUriRequest")
    listRecordingsForUriRequestSubTree:add_le(aeronarchive_listRecordingsForUriRequest_controlSessionId, buffer(offset, 8))
    offset = offset + 8
    listRecordingsForUriRequestSubTree:add_le(aeronarchive_listRecordingsForUriRequest_correlationId, buffer(offset, 8))
    offset = offset + 8
    listRecordingsForUriRequestSubTree:add_le(aeronarchive_listRecordingsForUriRequest_fromRecordingId, buffer(offset, 8))
    offset = offset + 8
    listRecordingsForUriRequestSubTree:add_le(aeronarchive_listRecordingsForUriRequest_recordCount, buffer(offset, 4))
    offset = offset + 4
    listRecordingsForUriRequestSubTree:add_le(aeronarchive_listRecordingsForUriRequest_streamId, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local varLength_aeronarchive_listRecordingsForUriRequest_channel = buffer(offset, 4):le_uint()
    offset = offset + 4
    listRecordingsForUriRequestSubTree:add_le(aeronarchive_listRecordingsForUriRequest_channel, buffer(offset, varLength_aeronarchive_listRecordingsForUriRequest_channel))
    offset = offset + varLength_aeronarchive_listRecordingsForUriRequest_channel
    return offset
end

function decode_aeronarchive_listRecordingRequest(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local listRecordingRequestSubTree = subtree:add(mushroom_protocol, buffer(), "ListRecordingRequest")
    listRecordingRequestSubTree:add_le(aeronarchive_listRecordingRequest_controlSessionId, buffer(offset, 8))
    offset = offset + 8
    listRecordingRequestSubTree:add_le(aeronarchive_listRecordingRequest_correlationId, buffer(offset, 8))
    offset = offset + 8
    listRecordingRequestSubTree:add_le(aeronarchive_listRecordingRequest_recordingId, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end

function decode_aeronarchive_extendRecordingRequest(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local extendRecordingRequestSubTree = subtree:add(mushroom_protocol, buffer(), "ExtendRecordingRequest")
    extendRecordingRequestSubTree:add_le(aeronarchive_extendRecordingRequest_controlSessionId, buffer(offset, 8))
    offset = offset + 8
    extendRecordingRequestSubTree:add_le(aeronarchive_extendRecordingRequest_correlationId, buffer(offset, 8))
    offset = offset + 8
    extendRecordingRequestSubTree:add_le(aeronarchive_extendRecordingRequest_recordingId, buffer(offset, 8))
    offset = offset + 8
    extendRecordingRequestSubTree:add_le(aeronarchive_extendRecordingRequest_streamId, buffer(offset, 4))
    offset = offset + 4
    extendRecordingRequestSubTree:add_le(aeronarchive_extendRecordingRequest_sourceLocation, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local varLength_aeronarchive_extendRecordingRequest_channel = buffer(offset, 4):le_uint()
    offset = offset + 4
    extendRecordingRequestSubTree:add_le(aeronarchive_extendRecordingRequest_channel, buffer(offset, varLength_aeronarchive_extendRecordingRequest_channel))
    offset = offset + varLength_aeronarchive_extendRecordingRequest_channel
    return offset
end

function decode_aeronarchive_recordingPositionRequest(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local recordingPositionRequestSubTree = subtree:add(mushroom_protocol, buffer(), "RecordingPositionRequest")
    recordingPositionRequestSubTree:add_le(aeronarchive_recordingPositionRequest_controlSessionId, buffer(offset, 8))
    offset = offset + 8
    recordingPositionRequestSubTree:add_le(aeronarchive_recordingPositionRequest_correlationId, buffer(offset, 8))
    offset = offset + 8
    recordingPositionRequestSubTree:add_le(aeronarchive_recordingPositionRequest_recordingId, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end

function decode_aeronarchive_truncateRecordingRequest(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local truncateRecordingRequestSubTree = subtree:add(mushroom_protocol, buffer(), "TruncateRecordingRequest")
    truncateRecordingRequestSubTree:add_le(aeronarchive_truncateRecordingRequest_controlSessionId, buffer(offset, 8))
    offset = offset + 8
    truncateRecordingRequestSubTree:add_le(aeronarchive_truncateRecordingRequest_correlationId, buffer(offset, 8))
    offset = offset + 8
    truncateRecordingRequestSubTree:add_le(aeronarchive_truncateRecordingRequest_recordingId, buffer(offset, 8))
    offset = offset + 8
    truncateRecordingRequestSubTree:add_le(aeronarchive_truncateRecordingRequest_position, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end

function decode_aeronarchive_stopRecordingSubscriptionRequest(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local stopRecordingSubscriptionRequestSubTree = subtree:add(mushroom_protocol, buffer(), "StopRecordingSubscriptionRequest")
    stopRecordingSubscriptionRequestSubTree:add_le(aeronarchive_stopRecordingSubscriptionRequest_controlSessionId, buffer(offset, 8))
    offset = offset + 8
    stopRecordingSubscriptionRequestSubTree:add_le(aeronarchive_stopRecordingSubscriptionRequest_correlationId, buffer(offset, 8))
    offset = offset + 8
    stopRecordingSubscriptionRequestSubTree:add_le(aeronarchive_stopRecordingSubscriptionRequest_subscriptionId, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end

function decode_aeronarchive_stopPositionRequest(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local stopPositionRequestSubTree = subtree:add(mushroom_protocol, buffer(), "StopPositionRequest")
    stopPositionRequestSubTree:add_le(aeronarchive_stopPositionRequest_controlSessionId, buffer(offset, 8))
    offset = offset + 8
    stopPositionRequestSubTree:add_le(aeronarchive_stopPositionRequest_correlationId, buffer(offset, 8))
    offset = offset + 8
    stopPositionRequestSubTree:add_le(aeronarchive_stopPositionRequest_recordingId, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end

function decode_aeronarchive_findLastMatchingRecordingRequest(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local findLastMatchingRecordingRequestSubTree = subtree:add(mushroom_protocol, buffer(), "FindLastMatchingRecordingRequest")
    findLastMatchingRecordingRequestSubTree:add_le(aeronarchive_findLastMatchingRecordingRequest_controlSessionId, buffer(offset, 8))
    offset = offset + 8
    findLastMatchingRecordingRequestSubTree:add_le(aeronarchive_findLastMatchingRecordingRequest_correlationId, buffer(offset, 8))
    offset = offset + 8
    findLastMatchingRecordingRequestSubTree:add_le(aeronarchive_findLastMatchingRecordingRequest_minRecordingId, buffer(offset, 8))
    offset = offset + 8
    findLastMatchingRecordingRequestSubTree:add_le(aeronarchive_findLastMatchingRecordingRequest_sessionId, buffer(offset, 4))
    offset = offset + 4
    findLastMatchingRecordingRequestSubTree:add_le(aeronarchive_findLastMatchingRecordingRequest_streamId, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local varLength_aeronarchive_findLastMatchingRecordingRequest_channel = buffer(offset, 4):le_uint()
    offset = offset + 4
    findLastMatchingRecordingRequestSubTree:add_le(aeronarchive_findLastMatchingRecordingRequest_channel, buffer(offset, varLength_aeronarchive_findLastMatchingRecordingRequest_channel))
    offset = offset + varLength_aeronarchive_findLastMatchingRecordingRequest_channel
    return offset
end

function decode_aeronarchive_listRecordingSubscriptionsRequest(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local listRecordingSubscriptionsRequestSubTree = subtree:add(mushroom_protocol, buffer(), "ListRecordingSubscriptionsRequest")
    listRecordingSubscriptionsRequestSubTree:add_le(aeronarchive_listRecordingSubscriptionsRequest_controlSessionId, buffer(offset, 8))
    offset = offset + 8
    listRecordingSubscriptionsRequestSubTree:add_le(aeronarchive_listRecordingSubscriptionsRequest_correlationId, buffer(offset, 8))
    offset = offset + 8
    listRecordingSubscriptionsRequestSubTree:add_le(aeronarchive_listRecordingSubscriptionsRequest_pseudoIndex, buffer(offset, 4))
    offset = offset + 4
    listRecordingSubscriptionsRequestSubTree:add_le(aeronarchive_listRecordingSubscriptionsRequest_subscriptionCount, buffer(offset, 4))
    offset = offset + 4
    listRecordingSubscriptionsRequestSubTree:add_le(aeronarchive_listRecordingSubscriptionsRequest_applyStreamId, buffer(offset, 4))
    offset = offset + 4
    listRecordingSubscriptionsRequestSubTree:add_le(aeronarchive_listRecordingSubscriptionsRequest_streamId, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local varLength_aeronarchive_listRecordingSubscriptionsRequest_channel = buffer(offset, 4):le_uint()
    offset = offset + 4
    listRecordingSubscriptionsRequestSubTree:add_le(aeronarchive_listRecordingSubscriptionsRequest_channel, buffer(offset, varLength_aeronarchive_listRecordingSubscriptionsRequest_channel))
    offset = offset + varLength_aeronarchive_listRecordingSubscriptionsRequest_channel
    return offset
end

function decode_aeronarchive_boundedReplayRequest(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local boundedReplayRequestSubTree = subtree:add(mushroom_protocol, buffer(), "BoundedReplayRequest")
    boundedReplayRequestSubTree:add_le(aeronarchive_boundedReplayRequest_controlSessionId, buffer(offset, 8))
    offset = offset + 8
    boundedReplayRequestSubTree:add_le(aeronarchive_boundedReplayRequest_correlationId, buffer(offset, 8))
    offset = offset + 8
    boundedReplayRequestSubTree:add_le(aeronarchive_boundedReplayRequest_recordingId, buffer(offset, 8))
    offset = offset + 8
    boundedReplayRequestSubTree:add_le(aeronarchive_boundedReplayRequest_position, buffer(offset, 8))
    offset = offset + 8
    boundedReplayRequestSubTree:add_le(aeronarchive_boundedReplayRequest_length, buffer(offset, 8))
    offset = offset + 8
    boundedReplayRequestSubTree:add_le(aeronarchive_boundedReplayRequest_limitCounterId, buffer(offset, 4))
    offset = offset + 4
    boundedReplayRequestSubTree:add_le(aeronarchive_boundedReplayRequest_replayStreamId, buffer(offset, 4))
    offset = offset + 4
    boundedReplayRequestSubTree:add_le(aeronarchive_boundedReplayRequest_fileIoMaxLength, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local varLength_aeronarchive_boundedReplayRequest_replayChannel = buffer(offset, 4):le_uint()
    offset = offset + 4
    boundedReplayRequestSubTree:add_le(aeronarchive_boundedReplayRequest_replayChannel, buffer(offset, varLength_aeronarchive_boundedReplayRequest_replayChannel))
    offset = offset + varLength_aeronarchive_boundedReplayRequest_replayChannel
    return offset
end

function decode_aeronarchive_stopAllReplaysRequest(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local stopAllReplaysRequestSubTree = subtree:add(mushroom_protocol, buffer(), "StopAllReplaysRequest")
    stopAllReplaysRequestSubTree:add_le(aeronarchive_stopAllReplaysRequest_controlSessionId, buffer(offset, 8))
    offset = offset + 8
    stopAllReplaysRequestSubTree:add_le(aeronarchive_stopAllReplaysRequest_correlationId, buffer(offset, 8))
    offset = offset + 8
    stopAllReplaysRequestSubTree:add_le(aeronarchive_stopAllReplaysRequest_recordingId, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end

function decode_aeronarchive_catalogHeader(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local catalogHeaderSubTree = subtree:add(mushroom_protocol, buffer(), "CatalogHeader")
    catalogHeaderSubTree:add_le(aeronarchive_catalogHeader_version, buffer(offset, 4))
    offset = offset + 4
    catalogHeaderSubTree:add_le(aeronarchive_catalogHeader_length, buffer(offset, 4))
    offset = offset + 4
    catalogHeaderSubTree:add_le(aeronarchive_catalogHeader_nextRecordingId, buffer(offset, 8))
    offset = offset + 8
    catalogHeaderSubTree:add_le(aeronarchive_catalogHeader_alignment, buffer(offset, 4))
    offset = offset + 4
    catalogHeaderSubTree:add_le(aeronarchive_catalogHeader_reserved, buffer(offsetToStartOfBlock + 31, 1))
    offset = offsetToStartOfBlock + 31 + 1
    offset = blockLength + initialOffset

    return offset
end

function decode_aeronarchive_recordingDescriptorHeader(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local recordingDescriptorHeaderSubTree = subtree:add(mushroom_protocol, buffer(), "RecordingDescriptorHeader")
    recordingDescriptorHeaderSubTree:add_le(aeronarchive_recordingDescriptorHeader_length, buffer(offset, 4))
    offset = offset + 4
    recordingDescriptorHeaderSubTree:add_le(aeronarchive_recordingDescriptorHeader_state, buffer(offset, 4))
    offset = offset + 4
    recordingDescriptorHeaderSubTree:add_le(aeronarchive_recordingDescriptorHeader_checksum, buffer(offset, 4))
    offset = offset + 4
    recordingDescriptorHeaderSubTree:add_le(aeronarchive_recordingDescriptorHeader_reserved, buffer(offsetToStartOfBlock + 31, 1))
    offset = offsetToStartOfBlock + 31 + 1
    offset = blockLength + initialOffset

    return offset
end

function decode_aeronarchive_recordingDescriptor(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local recordingDescriptorSubTree = subtree:add(mushroom_protocol, buffer(), "RecordingDescriptor")
    recordingDescriptorSubTree:add_le(aeronarchive_recordingDescriptor_controlSessionId, buffer(offset, 8))
    offset = offset + 8
    recordingDescriptorSubTree:add_le(aeronarchive_recordingDescriptor_correlationId, buffer(offset, 8))
    offset = offset + 8
    recordingDescriptorSubTree:add_le(aeronarchive_recordingDescriptor_recordingId, buffer(offset, 8))
    offset = offset + 8
    recordingDescriptorSubTree:add_le(aeronarchive_recordingDescriptor_startTimestamp, buffer(offset, 8))
    offset = offset + 8
    recordingDescriptorSubTree:add_le(aeronarchive_recordingDescriptor_stopTimestamp, buffer(offset, 8))
    offset = offset + 8
    recordingDescriptorSubTree:add_le(aeronarchive_recordingDescriptor_startPosition, buffer(offset, 8))
    offset = offset + 8
    recordingDescriptorSubTree:add_le(aeronarchive_recordingDescriptor_stopPosition, buffer(offset, 8))
    offset = offset + 8
    recordingDescriptorSubTree:add_le(aeronarchive_recordingDescriptor_initialTermId, buffer(offset, 4))
    offset = offset + 4
    recordingDescriptorSubTree:add_le(aeronarchive_recordingDescriptor_segmentFileLength, buffer(offset, 4))
    offset = offset + 4
    recordingDescriptorSubTree:add_le(aeronarchive_recordingDescriptor_termBufferLength, buffer(offset, 4))
    offset = offset + 4
    recordingDescriptorSubTree:add_le(aeronarchive_recordingDescriptor_mtuLength, buffer(offset, 4))
    offset = offset + 4
    recordingDescriptorSubTree:add_le(aeronarchive_recordingDescriptor_sessionId, buffer(offset, 4))
    offset = offset + 4
    recordingDescriptorSubTree:add_le(aeronarchive_recordingDescriptor_streamId, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local varLength_aeronarchive_recordingDescriptor_strippedChannel = buffer(offset, 4):le_uint()
    offset = offset + 4
    recordingDescriptorSubTree:add_le(aeronarchive_recordingDescriptor_strippedChannel, buffer(offset, varLength_aeronarchive_recordingDescriptor_strippedChannel))
    offset = offset + varLength_aeronarchive_recordingDescriptor_strippedChannel
    local varLength_aeronarchive_recordingDescriptor_originalChannel = buffer(offset, 4):le_uint()
    offset = offset + 4
    recordingDescriptorSubTree:add_le(aeronarchive_recordingDescriptor_originalChannel, buffer(offset, varLength_aeronarchive_recordingDescriptor_originalChannel))
    offset = offset + varLength_aeronarchive_recordingDescriptor_originalChannel
    local varLength_aeronarchive_recordingDescriptor_sourceIdentity = buffer(offset, 4):le_uint()
    offset = offset + 4
    recordingDescriptorSubTree:add_le(aeronarchive_recordingDescriptor_sourceIdentity, buffer(offset, varLength_aeronarchive_recordingDescriptor_sourceIdentity))
    offset = offset + varLength_aeronarchive_recordingDescriptor_sourceIdentity
    return offset
end

function decode_aeronarchive_recordingSubscriptionDescriptor(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local recordingSubscriptionDescriptorSubTree = subtree:add(mushroom_protocol, buffer(), "RecordingSubscriptionDescriptor")
    recordingSubscriptionDescriptorSubTree:add_le(aeronarchive_recordingSubscriptionDescriptor_controlSessionId, buffer(offset, 8))
    offset = offset + 8
    recordingSubscriptionDescriptorSubTree:add_le(aeronarchive_recordingSubscriptionDescriptor_correlationId, buffer(offset, 8))
    offset = offset + 8
    recordingSubscriptionDescriptorSubTree:add_le(aeronarchive_recordingSubscriptionDescriptor_subscriptionId, buffer(offset, 8))
    offset = offset + 8
    recordingSubscriptionDescriptorSubTree:add_le(aeronarchive_recordingSubscriptionDescriptor_streamId, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local varLength_aeronarchive_recordingSubscriptionDescriptor_strippedChannel = buffer(offset, 4):le_uint()
    offset = offset + 4
    recordingSubscriptionDescriptorSubTree:add_le(aeronarchive_recordingSubscriptionDescriptor_strippedChannel, buffer(offset, varLength_aeronarchive_recordingSubscriptionDescriptor_strippedChannel))
    offset = offset + varLength_aeronarchive_recordingSubscriptionDescriptor_strippedChannel
    return offset
end

function decode_aeronarchive_recordingSignalEvent(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local recordingSignalEventSubTree = subtree:add(mushroom_protocol, buffer(), "RecordingSignalEvent")
    recordingSignalEventSubTree:add_le(aeronarchive_recordingSignalEvent_controlSessionId, buffer(offset, 8))
    offset = offset + 8
    recordingSignalEventSubTree:add_le(aeronarchive_recordingSignalEvent_correlationId, buffer(offset, 8))
    offset = offset + 8
    recordingSignalEventSubTree:add_le(aeronarchive_recordingSignalEvent_recordingId, buffer(offset, 8))
    offset = offset + 8
    recordingSignalEventSubTree:add_le(aeronarchive_recordingSignalEvent_subscriptionId, buffer(offset, 8))
    offset = offset + 8
    recordingSignalEventSubTree:add_le(aeronarchive_recordingSignalEvent_position, buffer(offset, 8))
    offset = offset + 8
    recordingSignalEventSubTree:add_le(aeronarchive_recordingSignalEvent_signal, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset

    return offset
end

function decode_aeronarchive_recordingStarted(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local recordingStartedSubTree = subtree:add(mushroom_protocol, buffer(), "RecordingStarted")
    recordingStartedSubTree:add_le(aeronarchive_recordingStarted_recordingId, buffer(offset, 8))
    offset = offset + 8
    recordingStartedSubTree:add_le(aeronarchive_recordingStarted_startPosition, buffer(offset, 8))
    offset = offset + 8
    recordingStartedSubTree:add_le(aeronarchive_recordingStarted_sessionId, buffer(offset, 4))
    offset = offset + 4
    recordingStartedSubTree:add_le(aeronarchive_recordingStarted_streamId, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local varLength_aeronarchive_recordingStarted_channel = buffer(offset, 4):le_uint()
    offset = offset + 4
    recordingStartedSubTree:add_le(aeronarchive_recordingStarted_channel, buffer(offset, varLength_aeronarchive_recordingStarted_channel))
    offset = offset + varLength_aeronarchive_recordingStarted_channel
    local varLength_aeronarchive_recordingStarted_sourceIdentity = buffer(offset, 4):le_uint()
    offset = offset + 4
    recordingStartedSubTree:add_le(aeronarchive_recordingStarted_sourceIdentity, buffer(offset, varLength_aeronarchive_recordingStarted_sourceIdentity))
    offset = offset + varLength_aeronarchive_recordingStarted_sourceIdentity
    return offset
end

function decode_aeronarchive_recordingProgress(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local recordingProgressSubTree = subtree:add(mushroom_protocol, buffer(), "RecordingProgress")
    recordingProgressSubTree:add_le(aeronarchive_recordingProgress_recordingId, buffer(offset, 8))
    offset = offset + 8
    recordingProgressSubTree:add_le(aeronarchive_recordingProgress_startPosition, buffer(offset, 8))
    offset = offset + 8
    recordingProgressSubTree:add_le(aeronarchive_recordingProgress_position, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end

function decode_aeronarchive_recordingStopped(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local recordingStoppedSubTree = subtree:add(mushroom_protocol, buffer(), "RecordingStopped")
    recordingStoppedSubTree:add_le(aeronarchive_recordingStopped_recordingId, buffer(offset, 8))
    offset = offset + 8
    recordingStoppedSubTree:add_le(aeronarchive_recordingStopped_startPosition, buffer(offset, 8))
    offset = offset + 8
    recordingStoppedSubTree:add_le(aeronarchive_recordingStopped_stopPosition, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end

function decode_aeronarchive_purgeRecordingRequest(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local purgeRecordingRequestSubTree = subtree:add(mushroom_protocol, buffer(), "PurgeRecordingRequest")
    purgeRecordingRequestSubTree:add_le(aeronarchive_purgeRecordingRequest_controlSessionId, buffer(offset, 8))
    offset = offset + 8
    purgeRecordingRequestSubTree:add_le(aeronarchive_purgeRecordingRequest_correlationId, buffer(offset, 8))
    offset = offset + 8
    purgeRecordingRequestSubTree:add_le(aeronarchive_purgeRecordingRequest_recordingId, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end

function decode_aeronarchive_replicateRequest(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local replicateRequestSubTree = subtree:add(mushroom_protocol, buffer(), "ReplicateRequest")
    replicateRequestSubTree:add_le(aeronarchive_replicateRequest_controlSessionId, buffer(offset, 8))
    offset = offset + 8
    replicateRequestSubTree:add_le(aeronarchive_replicateRequest_correlationId, buffer(offset, 8))
    offset = offset + 8
    replicateRequestSubTree:add_le(aeronarchive_replicateRequest_srcRecordingId, buffer(offset, 8))
    offset = offset + 8
    replicateRequestSubTree:add_le(aeronarchive_replicateRequest_dstRecordingId, buffer(offset, 8))
    offset = offset + 8
    replicateRequestSubTree:add_le(aeronarchive_replicateRequest_srcControlStreamId, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local varLength_aeronarchive_replicateRequest_srcControlChannel = buffer(offset, 4):le_uint()
    offset = offset + 4
    replicateRequestSubTree:add_le(aeronarchive_replicateRequest_srcControlChannel, buffer(offset, varLength_aeronarchive_replicateRequest_srcControlChannel))
    offset = offset + varLength_aeronarchive_replicateRequest_srcControlChannel
    local varLength_aeronarchive_replicateRequest_liveDestination = buffer(offset, 4):le_uint()
    offset = offset + 4
    replicateRequestSubTree:add_le(aeronarchive_replicateRequest_liveDestination, buffer(offset, varLength_aeronarchive_replicateRequest_liveDestination))
    offset = offset + varLength_aeronarchive_replicateRequest_liveDestination
    return offset
end

function decode_aeronarchive_stopReplicationRequest(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local stopReplicationRequestSubTree = subtree:add(mushroom_protocol, buffer(), "StopReplicationRequest")
    stopReplicationRequestSubTree:add_le(aeronarchive_stopReplicationRequest_controlSessionId, buffer(offset, 8))
    offset = offset + 8
    stopReplicationRequestSubTree:add_le(aeronarchive_stopReplicationRequest_correlationId, buffer(offset, 8))
    offset = offset + 8
    stopReplicationRequestSubTree:add_le(aeronarchive_stopReplicationRequest_replicationId, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end

function decode_aeronarchive_startPositionRequest(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local startPositionRequestSubTree = subtree:add(mushroom_protocol, buffer(), "StartPositionRequest")
    startPositionRequestSubTree:add_le(aeronarchive_startPositionRequest_controlSessionId, buffer(offset, 8))
    offset = offset + 8
    startPositionRequestSubTree:add_le(aeronarchive_startPositionRequest_correlationId, buffer(offset, 8))
    offset = offset + 8
    startPositionRequestSubTree:add_le(aeronarchive_startPositionRequest_recordingId, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end

function decode_aeronarchive_detachSegmentsRequest(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local detachSegmentsRequestSubTree = subtree:add(mushroom_protocol, buffer(), "DetachSegmentsRequest")
    detachSegmentsRequestSubTree:add_le(aeronarchive_detachSegmentsRequest_controlSessionId, buffer(offset, 8))
    offset = offset + 8
    detachSegmentsRequestSubTree:add_le(aeronarchive_detachSegmentsRequest_correlationId, buffer(offset, 8))
    offset = offset + 8
    detachSegmentsRequestSubTree:add_le(aeronarchive_detachSegmentsRequest_recordingId, buffer(offset, 8))
    offset = offset + 8
    detachSegmentsRequestSubTree:add_le(aeronarchive_detachSegmentsRequest_newStartPosition, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end

function decode_aeronarchive_deleteDetachedSegmentsRequest(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local deleteDetachedSegmentsRequestSubTree = subtree:add(mushroom_protocol, buffer(), "DeleteDetachedSegmentsRequest")
    deleteDetachedSegmentsRequestSubTree:add_le(aeronarchive_deleteDetachedSegmentsRequest_controlSessionId, buffer(offset, 8))
    offset = offset + 8
    deleteDetachedSegmentsRequestSubTree:add_le(aeronarchive_deleteDetachedSegmentsRequest_correlationId, buffer(offset, 8))
    offset = offset + 8
    deleteDetachedSegmentsRequestSubTree:add_le(aeronarchive_deleteDetachedSegmentsRequest_recordingId, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end

function decode_aeronarchive_purgeSegmentsRequest(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local purgeSegmentsRequestSubTree = subtree:add(mushroom_protocol, buffer(), "PurgeSegmentsRequest")
    purgeSegmentsRequestSubTree:add_le(aeronarchive_purgeSegmentsRequest_controlSessionId, buffer(offset, 8))
    offset = offset + 8
    purgeSegmentsRequestSubTree:add_le(aeronarchive_purgeSegmentsRequest_correlationId, buffer(offset, 8))
    offset = offset + 8
    purgeSegmentsRequestSubTree:add_le(aeronarchive_purgeSegmentsRequest_recordingId, buffer(offset, 8))
    offset = offset + 8
    purgeSegmentsRequestSubTree:add_le(aeronarchive_purgeSegmentsRequest_newStartPosition, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end

function decode_aeronarchive_attachSegmentsRequest(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local attachSegmentsRequestSubTree = subtree:add(mushroom_protocol, buffer(), "AttachSegmentsRequest")
    attachSegmentsRequestSubTree:add_le(aeronarchive_attachSegmentsRequest_controlSessionId, buffer(offset, 8))
    offset = offset + 8
    attachSegmentsRequestSubTree:add_le(aeronarchive_attachSegmentsRequest_correlationId, buffer(offset, 8))
    offset = offset + 8
    attachSegmentsRequestSubTree:add_le(aeronarchive_attachSegmentsRequest_recordingId, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end

function decode_aeronarchive_migrateSegmentsRequest(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local migrateSegmentsRequestSubTree = subtree:add(mushroom_protocol, buffer(), "MigrateSegmentsRequest")
    migrateSegmentsRequestSubTree:add_le(aeronarchive_migrateSegmentsRequest_controlSessionId, buffer(offset, 8))
    offset = offset + 8
    migrateSegmentsRequestSubTree:add_le(aeronarchive_migrateSegmentsRequest_correlationId, buffer(offset, 8))
    offset = offset + 8
    migrateSegmentsRequestSubTree:add_le(aeronarchive_migrateSegmentsRequest_srcRecordingId, buffer(offset, 8))
    offset = offset + 8
    migrateSegmentsRequestSubTree:add_le(aeronarchive_migrateSegmentsRequest_dstRecordingId, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end

function decode_aeronarchive_authConnectRequest(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local authConnectRequestSubTree = subtree:add(mushroom_protocol, buffer(), "AuthConnectRequest")
    authConnectRequestSubTree:add_le(aeronarchive_authConnectRequest_correlationId, buffer(offset, 8))
    offset = offset + 8
    authConnectRequestSubTree:add_le(aeronarchive_authConnectRequest_responseStreamId, buffer(offset, 4))
    offset = offset + 4
    authConnectRequestSubTree:add_le(aeronarchive_authConnectRequest_version, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local varLength_aeronarchive_authConnectRequest_responseChannel = buffer(offset, 4):le_uint()
    offset = offset + 4
    authConnectRequestSubTree:add_le(aeronarchive_authConnectRequest_responseChannel, buffer(offset, varLength_aeronarchive_authConnectRequest_responseChannel))
    offset = offset + varLength_aeronarchive_authConnectRequest_responseChannel
    local varLength_aeronarchive_authConnectRequest_encodedCredentials = buffer(offset, 4):le_uint()
    offset = offset + 4
    authConnectRequestSubTree:add_le(aeronarchive_authConnectRequest_encodedCredentials, buffer(offset, varLength_aeronarchive_authConnectRequest_encodedCredentials))
    offset = offset + varLength_aeronarchive_authConnectRequest_encodedCredentials
    return offset
end

function decode_aeronarchive_challenge(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local challengeSubTree = subtree:add(mushroom_protocol, buffer(), "Challenge")
    challengeSubTree:add_le(aeronarchive_challenge_controlSessionId, buffer(offset, 8))
    offset = offset + 8
    challengeSubTree:add_le(aeronarchive_challenge_correlationId, buffer(offset, 8))
    offset = offset + 8
    challengeSubTree:add_le(aeronarchive_challenge_version, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local varLength_aeronarchive_challenge_encodedChallenge = buffer(offset, 4):le_uint()
    offset = offset + 4
    challengeSubTree:add_le(aeronarchive_challenge_encodedChallenge, buffer(offset, varLength_aeronarchive_challenge_encodedChallenge))
    offset = offset + varLength_aeronarchive_challenge_encodedChallenge
    return offset
end

function decode_aeronarchive_challengeResponse(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local challengeResponseSubTree = subtree:add(mushroom_protocol, buffer(), "ChallengeResponse")
    challengeResponseSubTree:add_le(aeronarchive_challengeResponse_controlSessionId, buffer(offset, 8))
    offset = offset + 8
    challengeResponseSubTree:add_le(aeronarchive_challengeResponse_correlationId, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset
    local varLength_aeronarchive_challengeResponse_encodedCredentials = buffer(offset, 4):le_uint()
    offset = offset + 4
    challengeResponseSubTree:add_le(aeronarchive_challengeResponse_encodedCredentials, buffer(offset, varLength_aeronarchive_challengeResponse_encodedCredentials))
    offset = offset + varLength_aeronarchive_challengeResponse_encodedCredentials
    return offset
end

function decode_aeronarchive_keepAliveRequest(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local keepAliveRequestSubTree = subtree:add(mushroom_protocol, buffer(), "KeepAliveRequest")
    keepAliveRequestSubTree:add_le(aeronarchive_keepAliveRequest_controlSessionId, buffer(offset, 8))
    offset = offset + 8
    keepAliveRequestSubTree:add_le(aeronarchive_keepAliveRequest_correlationId, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end

function decode_aeronarchive_taggedReplicateRequest(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local taggedReplicateRequestSubTree = subtree:add(mushroom_protocol, buffer(), "TaggedReplicateRequest")
    taggedReplicateRequestSubTree:add_le(aeronarchive_taggedReplicateRequest_controlSessionId, buffer(offset, 8))
    offset = offset + 8
    taggedReplicateRequestSubTree:add_le(aeronarchive_taggedReplicateRequest_correlationId, buffer(offset, 8))
    offset = offset + 8
    taggedReplicateRequestSubTree:add_le(aeronarchive_taggedReplicateRequest_srcRecordingId, buffer(offset, 8))
    offset = offset + 8
    taggedReplicateRequestSubTree:add_le(aeronarchive_taggedReplicateRequest_dstRecordingId, buffer(offset, 8))
    offset = offset + 8
    taggedReplicateRequestSubTree:add_le(aeronarchive_taggedReplicateRequest_channelTagId, buffer(offset, 8))
    offset = offset + 8
    taggedReplicateRequestSubTree:add_le(aeronarchive_taggedReplicateRequest_subscriptionTagId, buffer(offset, 8))
    offset = offset + 8
    taggedReplicateRequestSubTree:add_le(aeronarchive_taggedReplicateRequest_srcControlStreamId, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local varLength_aeronarchive_taggedReplicateRequest_srcControlChannel = buffer(offset, 4):le_uint()
    offset = offset + 4
    taggedReplicateRequestSubTree:add_le(aeronarchive_taggedReplicateRequest_srcControlChannel, buffer(offset, varLength_aeronarchive_taggedReplicateRequest_srcControlChannel))
    offset = offset + varLength_aeronarchive_taggedReplicateRequest_srcControlChannel
    local varLength_aeronarchive_taggedReplicateRequest_liveDestination = buffer(offset, 4):le_uint()
    offset = offset + 4
    taggedReplicateRequestSubTree:add_le(aeronarchive_taggedReplicateRequest_liveDestination, buffer(offset, varLength_aeronarchive_taggedReplicateRequest_liveDestination))
    offset = offset + varLength_aeronarchive_taggedReplicateRequest_liveDestination
    return offset
end

function decode_aeronarchive_startRecordingRequest2(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local startRecordingRequest2SubTree = subtree:add(mushroom_protocol, buffer(), "StartRecordingRequest2")
    startRecordingRequest2SubTree:add_le(aeronarchive_startRecordingRequest2_controlSessionId, buffer(offset, 8))
    offset = offset + 8
    startRecordingRequest2SubTree:add_le(aeronarchive_startRecordingRequest2_correlationId, buffer(offset, 8))
    offset = offset + 8
    startRecordingRequest2SubTree:add_le(aeronarchive_startRecordingRequest2_streamId, buffer(offset, 4))
    offset = offset + 4
    startRecordingRequest2SubTree:add_le(aeronarchive_startRecordingRequest2_sourceLocation, buffer(offset, 4))
    offset = offset + 4
    startRecordingRequest2SubTree:add_le(aeronarchive_startRecordingRequest2_autoStop, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local varLength_aeronarchive_startRecordingRequest2_channel = buffer(offset, 4):le_uint()
    offset = offset + 4
    startRecordingRequest2SubTree:add_le(aeronarchive_startRecordingRequest2_channel, buffer(offset, varLength_aeronarchive_startRecordingRequest2_channel))
    offset = offset + varLength_aeronarchive_startRecordingRequest2_channel
    return offset
end

function decode_aeroncluster_sessionMessageHeader(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local sessionMessageHeaderSubTree = subtree:add(mushroom_protocol, buffer(), "SessionMessageHeader")
    sessionMessageHeaderSubTree:add_le(aeroncluster_sessionMessageHeader_leadershipTermId, buffer(offset, 8))
    offset = offset + 8
    sessionMessageHeaderSubTree:add_le(aeroncluster_sessionMessageHeader_clusterSessionId, buffer(offset, 8))
    offset = offset + 8
    sessionMessageHeaderSubTree:add_le(aeroncluster_sessionMessageHeader_timestamp, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

offset = dispatch(buffer, offset, sessionMessageHeaderSubTree)
    return offset
end

function decode_aeroncluster_sessionEvent(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local sessionEventSubTree = subtree:add(mushroom_protocol, buffer(), "SessionEvent")
    sessionEventSubTree:add_le(aeroncluster_sessionEvent_clusterSessionId, buffer(offset, 8))
    offset = offset + 8
    sessionEventSubTree:add_le(aeroncluster_sessionEvent_correlationId, buffer(offset, 8))
    offset = offset + 8
    sessionEventSubTree:add_le(aeroncluster_sessionEvent_leadershipTermId, buffer(offset, 8))
    offset = offset + 8
    sessionEventSubTree:add_le(aeroncluster_sessionEvent_leaderMemberId, buffer(offset, 4))
    offset = offset + 4
    sessionEventSubTree:add_le(aeroncluster_sessionEvent_code, buffer(offset, 4))
    offset = offset + 4
    sessionEventSubTree:add_le(aeroncluster_sessionEvent_version, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local varLength_aeroncluster_sessionEvent_detail = buffer(offset, 4):le_uint()
    offset = offset + 4
    sessionEventSubTree:add_le(aeroncluster_sessionEvent_detail, buffer(offset, varLength_aeroncluster_sessionEvent_detail))
    offset = offset + varLength_aeroncluster_sessionEvent_detail
    return offset
end

function decode_aeroncluster_sessionConnectRequest(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local sessionConnectRequestSubTree = subtree:add(mushroom_protocol, buffer(), "SessionConnectRequest")
    sessionConnectRequestSubTree:add_le(aeroncluster_sessionConnectRequest_correlationId, buffer(offset, 8))
    offset = offset + 8
    sessionConnectRequestSubTree:add_le(aeroncluster_sessionConnectRequest_responseStreamId, buffer(offset, 4))
    offset = offset + 4
    sessionConnectRequestSubTree:add_le(aeroncluster_sessionConnectRequest_version, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local varLength_aeroncluster_sessionConnectRequest_responseChannel = buffer(offset, 4):le_uint()
    offset = offset + 4
    sessionConnectRequestSubTree:add_le(aeroncluster_sessionConnectRequest_responseChannel, buffer(offset, varLength_aeroncluster_sessionConnectRequest_responseChannel))
    offset = offset + varLength_aeroncluster_sessionConnectRequest_responseChannel
    local varLength_aeroncluster_sessionConnectRequest_encodedCredentials = buffer(offset, 4):le_uint()
    offset = offset + 4
    sessionConnectRequestSubTree:add_le(aeroncluster_sessionConnectRequest_encodedCredentials, buffer(offset, varLength_aeroncluster_sessionConnectRequest_encodedCredentials))
    offset = offset + varLength_aeroncluster_sessionConnectRequest_encodedCredentials
    return offset
end

function decode_aeroncluster_sessionCloseRequest(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local sessionCloseRequestSubTree = subtree:add(mushroom_protocol, buffer(), "SessionCloseRequest")
    sessionCloseRequestSubTree:add_le(aeroncluster_sessionCloseRequest_leadershipTermId, buffer(offset, 8))
    offset = offset + 8
    sessionCloseRequestSubTree:add_le(aeroncluster_sessionCloseRequest_clusterSessionId, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end

function decode_aeroncluster_sessionKeepAlive(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local sessionKeepAliveSubTree = subtree:add(mushroom_protocol, buffer(), "SessionKeepAlive")
    sessionKeepAliveSubTree:add_le(aeroncluster_sessionKeepAlive_leadershipTermId, buffer(offset, 8))
    offset = offset + 8
    sessionKeepAliveSubTree:add_le(aeroncluster_sessionKeepAlive_clusterSessionId, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end

function decode_aeroncluster_newLeaderEvent(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local newLeaderEventSubTree = subtree:add(mushroom_protocol, buffer(), "NewLeaderEvent")
    newLeaderEventSubTree:add_le(aeroncluster_newLeaderEvent_leadershipTermId, buffer(offset, 8))
    offset = offset + 8
    newLeaderEventSubTree:add_le(aeroncluster_newLeaderEvent_clusterSessionId, buffer(offset, 8))
    offset = offset + 8
    newLeaderEventSubTree:add_le(aeroncluster_newLeaderEvent_leaderMemberId, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local varLength_aeroncluster_newLeaderEvent_ingressEndpoints = buffer(offset, 4):le_uint()
    offset = offset + 4
    newLeaderEventSubTree:add_le(aeroncluster_newLeaderEvent_ingressEndpoints, buffer(offset, varLength_aeroncluster_newLeaderEvent_ingressEndpoints))
    offset = offset + varLength_aeroncluster_newLeaderEvent_ingressEndpoints
    return offset
end

function decode_aeroncluster_challenge(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local challengeSubTree = subtree:add(mushroom_protocol, buffer(), "Challenge")
    challengeSubTree:add_le(aeroncluster_challenge_correlationId, buffer(offset, 8))
    offset = offset + 8
    challengeSubTree:add_le(aeroncluster_challenge_clusterSessionId, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset
    local varLength_aeroncluster_challenge_encodedChallenge = buffer(offset, 4):le_uint()
    offset = offset + 4
    challengeSubTree:add_le(aeroncluster_challenge_encodedChallenge, buffer(offset, varLength_aeroncluster_challenge_encodedChallenge))
    offset = offset + varLength_aeroncluster_challenge_encodedChallenge
    return offset
end

function decode_aeroncluster_challengeResponse(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local challengeResponseSubTree = subtree:add(mushroom_protocol, buffer(), "ChallengeResponse")
    challengeResponseSubTree:add_le(aeroncluster_challengeResponse_correlationId, buffer(offset, 8))
    offset = offset + 8
    challengeResponseSubTree:add_le(aeroncluster_challengeResponse_clusterSessionId, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset
    local varLength_aeroncluster_challengeResponse_encodedCredentials = buffer(offset, 4):le_uint()
    offset = offset + 4
    challengeResponseSubTree:add_le(aeroncluster_challengeResponse_encodedCredentials, buffer(offset, varLength_aeroncluster_challengeResponse_encodedCredentials))
    offset = offset + varLength_aeroncluster_challengeResponse_encodedCredentials
    return offset
end

function decode_aeroncluster_timerEvent(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local timerEventSubTree = subtree:add(mushroom_protocol, buffer(), "TimerEvent")
    timerEventSubTree:add_le(aeroncluster_timerEvent_leadershipTermId, buffer(offset, 8))
    offset = offset + 8
    timerEventSubTree:add_le(aeroncluster_timerEvent_correlationId, buffer(offset, 8))
    offset = offset + 8
    timerEventSubTree:add_le(aeroncluster_timerEvent_timestamp, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end

function decode_aeroncluster_sessionOpenEvent(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local sessionOpenEventSubTree = subtree:add(mushroom_protocol, buffer(), "SessionOpenEvent")
    sessionOpenEventSubTree:add_le(aeroncluster_sessionOpenEvent_leadershipTermId, buffer(offset, 8))
    offset = offset + 8
    sessionOpenEventSubTree:add_le(aeroncluster_sessionOpenEvent_correlationId, buffer(offset, 8))
    offset = offset + 8
    sessionOpenEventSubTree:add_le(aeroncluster_sessionOpenEvent_clusterSessionId, buffer(offset, 8))
    offset = offset + 8
    sessionOpenEventSubTree:add_le(aeroncluster_sessionOpenEvent_timestamp, buffer(offset, 8))
    offset = offset + 8
    sessionOpenEventSubTree:add_le(aeroncluster_sessionOpenEvent_responseStreamId, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local varLength_aeroncluster_sessionOpenEvent_responseChannel = buffer(offset, 4):le_uint()
    offset = offset + 4
    sessionOpenEventSubTree:add_le(aeroncluster_sessionOpenEvent_responseChannel, buffer(offset, varLength_aeroncluster_sessionOpenEvent_responseChannel))
    offset = offset + varLength_aeroncluster_sessionOpenEvent_responseChannel
    local varLength_aeroncluster_sessionOpenEvent_encodedPrincipal = buffer(offset, 4):le_uint()
    offset = offset + 4
    sessionOpenEventSubTree:add_le(aeroncluster_sessionOpenEvent_encodedPrincipal, buffer(offset, varLength_aeroncluster_sessionOpenEvent_encodedPrincipal))
    offset = offset + varLength_aeroncluster_sessionOpenEvent_encodedPrincipal
    return offset
end

function decode_aeroncluster_sessionCloseEvent(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local sessionCloseEventSubTree = subtree:add(mushroom_protocol, buffer(), "SessionCloseEvent")
    sessionCloseEventSubTree:add_le(aeroncluster_sessionCloseEvent_leadershipTermId, buffer(offset, 8))
    offset = offset + 8
    sessionCloseEventSubTree:add_le(aeroncluster_sessionCloseEvent_clusterSessionId, buffer(offset, 8))
    offset = offset + 8
    sessionCloseEventSubTree:add_le(aeroncluster_sessionCloseEvent_timestamp, buffer(offset, 8))
    offset = offset + 8
    sessionCloseEventSubTree:add_le(aeroncluster_sessionCloseEvent_closeReason, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset

    return offset
end

function decode_aeroncluster_clusterActionRequest(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local clusterActionRequestSubTree = subtree:add(mushroom_protocol, buffer(), "ClusterActionRequest")
    clusterActionRequestSubTree:add_le(aeroncluster_clusterActionRequest_leadershipTermId, buffer(offset, 8))
    offset = offset + 8
    clusterActionRequestSubTree:add_le(aeroncluster_clusterActionRequest_logPosition, buffer(offset, 8))
    offset = offset + 8
    clusterActionRequestSubTree:add_le(aeroncluster_clusterActionRequest_timestamp, buffer(offset, 8))
    offset = offset + 8
    clusterActionRequestSubTree:add_le(aeroncluster_clusterActionRequest_action, buffer(offset, 4))
    offset = offset + 4
    clusterActionRequestSubTree:add_le(aeroncluster_clusterActionRequest_flags, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset

    return offset
end

function decode_aeroncluster_newLeadershipTermEvent(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local newLeadershipTermEventSubTree = subtree:add(mushroom_protocol, buffer(), "NewLeadershipTermEvent")
    newLeadershipTermEventSubTree:add_le(aeroncluster_newLeadershipTermEvent_leadershipTermId, buffer(offset, 8))
    offset = offset + 8
    newLeadershipTermEventSubTree:add_le(aeroncluster_newLeadershipTermEvent_logPosition, buffer(offset, 8))
    offset = offset + 8
    newLeadershipTermEventSubTree:add_le(aeroncluster_newLeadershipTermEvent_timestamp, buffer(offset, 8))
    offset = offset + 8
    newLeadershipTermEventSubTree:add_le(aeroncluster_newLeadershipTermEvent_termBaseLogPosition, buffer(offset, 8))
    offset = offset + 8
    newLeadershipTermEventSubTree:add_le(aeroncluster_newLeadershipTermEvent_leaderMemberId, buffer(offset, 4))
    offset = offset + 4
    newLeadershipTermEventSubTree:add_le(aeroncluster_newLeadershipTermEvent_logSessionId, buffer(offset, 4))
    offset = offset + 4
    newLeadershipTermEventSubTree:add_le(aeroncluster_newLeadershipTermEvent_timeUnit, buffer(offset, 4))
    offset = offset + 4
    newLeadershipTermEventSubTree:add_le(aeroncluster_newLeadershipTermEvent_appVersion, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset

    return offset
end

function decode_aeroncluster_membershipChangeEvent(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local membershipChangeEventSubTree = subtree:add(mushroom_protocol, buffer(), "MembershipChangeEvent")
    membershipChangeEventSubTree:add_le(aeroncluster_membershipChangeEvent_leadershipTermId, buffer(offset, 8))
    offset = offset + 8
    membershipChangeEventSubTree:add_le(aeroncluster_membershipChangeEvent_logPosition, buffer(offset, 8))
    offset = offset + 8
    membershipChangeEventSubTree:add_le(aeroncluster_membershipChangeEvent_timestamp, buffer(offset, 8))
    offset = offset + 8
    membershipChangeEventSubTree:add_le(aeroncluster_membershipChangeEvent_leaderMemberId, buffer(offset, 4))
    offset = offset + 4
    membershipChangeEventSubTree:add_le(aeroncluster_membershipChangeEvent_clusterSize, buffer(offset, 4))
    offset = offset + 4
    membershipChangeEventSubTree:add_le(aeroncluster_membershipChangeEvent_changeType, buffer(offset, 4))
    offset = offset + 4
    membershipChangeEventSubTree:add_le(aeroncluster_membershipChangeEvent_memberId, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local varLength_aeroncluster_membershipChangeEvent_clusterMembers = buffer(offset, 4):le_uint()
    offset = offset + 4
    membershipChangeEventSubTree:add_le(aeroncluster_membershipChangeEvent_clusterMembers, buffer(offset, varLength_aeroncluster_membershipChangeEvent_clusterMembers))
    offset = offset + varLength_aeroncluster_membershipChangeEvent_clusterMembers
    return offset
end

function decode_aeroncluster_adminRequest(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local adminRequestSubTree = subtree:add(mushroom_protocol, buffer(), "AdminRequest")
    adminRequestSubTree:add_le(aeroncluster_adminRequest_leadershipTermId, buffer(offset, 8))
    offset = offset + 8
    adminRequestSubTree:add_le(aeroncluster_adminRequest_clusterSessionId, buffer(offset, 8))
    offset = offset + 8
    adminRequestSubTree:add_le(aeroncluster_adminRequest_correlationId, buffer(offset, 8))
    offset = offset + 8
    adminRequestSubTree:add_le(aeroncluster_adminRequest_requestType, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local varLength_aeroncluster_adminRequest_payload = buffer(offset, 4):le_uint()
    offset = offset + 4
    adminRequestSubTree:add_le(aeroncluster_adminRequest_payload, buffer(offset, varLength_aeroncluster_adminRequest_payload))
    offset = offset + varLength_aeroncluster_adminRequest_payload
    return offset
end

function decode_aeroncluster_adminResponse(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local adminResponseSubTree = subtree:add(mushroom_protocol, buffer(), "AdminResponse")
    adminResponseSubTree:add_le(aeroncluster_adminResponse_clusterSessionId, buffer(offset, 8))
    offset = offset + 8
    adminResponseSubTree:add_le(aeroncluster_adminResponse_correlationId, buffer(offset, 8))
    offset = offset + 8
    adminResponseSubTree:add_le(aeroncluster_adminResponse_requestType, buffer(offset, 4))
    offset = offset + 4
    adminResponseSubTree:add_le(aeroncluster_adminResponse_responseCode, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local varLength_aeroncluster_adminResponse_message = buffer(offset, 4):le_uint()
    offset = offset + 4
    adminResponseSubTree:add_le(aeroncluster_adminResponse_message, buffer(offset, varLength_aeroncluster_adminResponse_message))
    offset = offset + varLength_aeroncluster_adminResponse_message
    local varLength_aeroncluster_adminResponse_payload = buffer(offset, 4):le_uint()
    offset = offset + 4
    adminResponseSubTree:add_le(aeroncluster_adminResponse_payload, buffer(offset, varLength_aeroncluster_adminResponse_payload))
    offset = offset + varLength_aeroncluster_adminResponse_payload
    return offset
end

function decode_aeroncluster_closeSession(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local closeSessionSubTree = subtree:add(mushroom_protocol, buffer(), "CloseSession")
    closeSessionSubTree:add_le(aeroncluster_closeSession_clusterSessionId, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end

function decode_aeroncluster_scheduleTimer(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local scheduleTimerSubTree = subtree:add(mushroom_protocol, buffer(), "ScheduleTimer")
    scheduleTimerSubTree:add_le(aeroncluster_scheduleTimer_correlationId, buffer(offset, 8))
    offset = offset + 8
    scheduleTimerSubTree:add_le(aeroncluster_scheduleTimer_deadline, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end

function decode_aeroncluster_cancelTimer(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local cancelTimerSubTree = subtree:add(mushroom_protocol, buffer(), "CancelTimer")
    cancelTimerSubTree:add_le(aeroncluster_cancelTimer_correlationId, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end

function decode_aeroncluster_serviceAck(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local serviceAckSubTree = subtree:add(mushroom_protocol, buffer(), "ServiceAck")
    serviceAckSubTree:add_le(aeroncluster_serviceAck_logPosition, buffer(offset, 8))
    offset = offset + 8
    serviceAckSubTree:add_le(aeroncluster_serviceAck_timestamp, buffer(offset, 8))
    offset = offset + 8
    serviceAckSubTree:add_le(aeroncluster_serviceAck_ackId, buffer(offset, 8))
    offset = offset + 8
    serviceAckSubTree:add_le(aeroncluster_serviceAck_relevantId, buffer(offset, 8))
    offset = offset + 8
    serviceAckSubTree:add_le(aeroncluster_serviceAck_serviceId, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset

    return offset
end

function decode_aeroncluster_clusterMembersQuery(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local clusterMembersQuerySubTree = subtree:add(mushroom_protocol, buffer(), "ClusterMembersQuery")
    clusterMembersQuerySubTree:add_le(aeroncluster_clusterMembersQuery_correlationId, buffer(offset, 8))
    offset = offset + 8
    clusterMembersQuerySubTree:add_le(aeroncluster_clusterMembersQuery_extended, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset

    return offset
end

function decode_aeroncluster_removeMember(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local removeMemberSubTree = subtree:add(mushroom_protocol, buffer(), "RemoveMember")
    removeMemberSubTree:add_le(aeroncluster_removeMember_memberId, buffer(offset, 4))
    offset = offset + 4
    removeMemberSubTree:add_le(aeroncluster_removeMember_isPassive, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset

    return offset
end

function decode_aeroncluster_joinLog(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local joinLogSubTree = subtree:add(mushroom_protocol, buffer(), "JoinLog")
    joinLogSubTree:add_le(aeroncluster_joinLog_logPosition, buffer(offset, 8))
    offset = offset + 8
    joinLogSubTree:add_le(aeroncluster_joinLog_maxLogPosition, buffer(offset, 8))
    offset = offset + 8
    joinLogSubTree:add_le(aeroncluster_joinLog_memberId, buffer(offset, 4))
    offset = offset + 4
    joinLogSubTree:add_le(aeroncluster_joinLog_logSessionId, buffer(offset, 4))
    offset = offset + 4
    joinLogSubTree:add_le(aeroncluster_joinLog_logStreamId, buffer(offset, 4))
    offset = offset + 4
    joinLogSubTree:add_le(aeroncluster_joinLog_isStartup, buffer(offset, 4))
    offset = offset + 4
    joinLogSubTree:add_le(aeroncluster_joinLog_role, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local varLength_aeroncluster_joinLog_logChannel = buffer(offset, 4):le_uint()
    offset = offset + 4
    joinLogSubTree:add_le(aeroncluster_joinLog_logChannel, buffer(offset, varLength_aeroncluster_joinLog_logChannel))
    offset = offset + varLength_aeroncluster_joinLog_logChannel
    return offset
end

function decode_aeroncluster_clusterMembersResponse(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local clusterMembersResponseSubTree = subtree:add(mushroom_protocol, buffer(), "ClusterMembersResponse")
    clusterMembersResponseSubTree:add_le(aeroncluster_clusterMembersResponse_correlationId, buffer(offset, 8))
    offset = offset + 8
    clusterMembersResponseSubTree:add_le(aeroncluster_clusterMembersResponse_leaderMemberId, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local varLength_aeroncluster_clusterMembersResponse_activeMembers = buffer(offset, 4):le_uint()
    offset = offset + 4
    clusterMembersResponseSubTree:add_le(aeroncluster_clusterMembersResponse_activeMembers, buffer(offset, varLength_aeroncluster_clusterMembersResponse_activeMembers))
    offset = offset + varLength_aeroncluster_clusterMembersResponse_activeMembers
    local varLength_aeroncluster_clusterMembersResponse_passiveFollowers = buffer(offset, 4):le_uint()
    offset = offset + 4
    clusterMembersResponseSubTree:add_le(aeroncluster_clusterMembersResponse_passiveFollowers, buffer(offset, varLength_aeroncluster_clusterMembersResponse_passiveFollowers))
    offset = offset + varLength_aeroncluster_clusterMembersResponse_passiveFollowers
    return offset
end

function decode_aeroncluster_serviceTerminationPosition(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local serviceTerminationPositionSubTree = subtree:add(mushroom_protocol, buffer(), "ServiceTerminationPosition")
    serviceTerminationPositionSubTree:add_le(aeroncluster_serviceTerminationPosition_logPosition, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end

function decode_aeroncluster_clusterMembersExtendedResponse(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local clusterMembersExtendedResponseSubTree = subtree:add(mushroom_protocol, buffer(), "ClusterMembersExtendedResponse")
    clusterMembersExtendedResponseSubTree:add_le(aeroncluster_clusterMembersExtendedResponse_correlationId, buffer(offset, 8))
    offset = offset + 8
    clusterMembersExtendedResponseSubTree:add_le(aeroncluster_clusterMembersExtendedResponse_currentTimeNs, buffer(offset, 8))
    offset = offset + 8
    clusterMembersExtendedResponseSubTree:add_le(aeroncluster_clusterMembersExtendedResponse_leaderMemberId, buffer(offset, 4))
    offset = offset + 4
    clusterMembersExtendedResponseSubTree:add_le(aeroncluster_clusterMembersExtendedResponse_memberId, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local activeMembersNumInGroup = buffer(offset + 2, 2):le_uint()
    local activeMembersBlockLength = buffer(offset + 0, 2):le_uint()
    offset = offset + 4
    for i=1,activeMembersNumInGroup,1 do
        offsetToStartOfBlock = offset
        local offsetToEndOfBlock = offset + activeMembersBlockLength
        local repeatingGroup = clusterMembersExtendedResponseSubTree:add_le(aeroncluster_clusterMembersExtendedResponse_activeMembers, buffer())
        repeatingGroup:set_text("activeMembers[" .. (i-1) .. "]")
        repeatingGroup:add_le(aeroncluster_clusterMembersExtendedResponse_activeMembers_leadershipTermId, buffer(offset, 8))
        offset = offset + 8
        repeatingGroup:add_le(aeroncluster_clusterMembersExtendedResponse_activeMembers_logPosition, buffer(offset, 8))
        offset = offset + 8
        repeatingGroup:add_le(aeroncluster_clusterMembersExtendedResponse_activeMembers_timeOfLastAppendNs, buffer(offset, 8))
        offset = offset + 8
        repeatingGroup:add_le(aeroncluster_clusterMembersExtendedResponse_activeMembers_memberId, buffer(offset, 4))
        offset = offset + 4
        offset = offsetToEndOfBlock
        local varLength_aeroncluster_clusterMembersExtendedResponse_activeMembers_ingressEndpoint = buffer(offset, 4):le_uint()
        offset = offset + 4
        repeatingGroup:add_le(aeroncluster_clusterMembersExtendedResponse_activeMembers_ingressEndpoint, buffer(offset, varLength_aeroncluster_clusterMembersExtendedResponse_activeMembers_ingressEndpoint))
        offset = offset + varLength_aeroncluster_clusterMembersExtendedResponse_activeMembers_ingressEndpoint
        local varLength_aeroncluster_clusterMembersExtendedResponse_activeMembers_consensusEndpoint = buffer(offset, 4):le_uint()
        offset = offset + 4
        repeatingGroup:add_le(aeroncluster_clusterMembersExtendedResponse_activeMembers_consensusEndpoint, buffer(offset, varLength_aeroncluster_clusterMembersExtendedResponse_activeMembers_consensusEndpoint))
        offset = offset + varLength_aeroncluster_clusterMembersExtendedResponse_activeMembers_consensusEndpoint
        local varLength_aeroncluster_clusterMembersExtendedResponse_activeMembers_logEndpoint = buffer(offset, 4):le_uint()
        offset = offset + 4
        repeatingGroup:add_le(aeroncluster_clusterMembersExtendedResponse_activeMembers_logEndpoint, buffer(offset, varLength_aeroncluster_clusterMembersExtendedResponse_activeMembers_logEndpoint))
        offset = offset + varLength_aeroncluster_clusterMembersExtendedResponse_activeMembers_logEndpoint
        local varLength_aeroncluster_clusterMembersExtendedResponse_activeMembers_catchupEndpoint = buffer(offset, 4):le_uint()
        offset = offset + 4
        repeatingGroup:add_le(aeroncluster_clusterMembersExtendedResponse_activeMembers_catchupEndpoint, buffer(offset, varLength_aeroncluster_clusterMembersExtendedResponse_activeMembers_catchupEndpoint))
        offset = offset + varLength_aeroncluster_clusterMembersExtendedResponse_activeMembers_catchupEndpoint
        local varLength_aeroncluster_clusterMembersExtendedResponse_activeMembers_archiveEndpoint = buffer(offset, 4):le_uint()
        offset = offset + 4
        repeatingGroup:add_le(aeroncluster_clusterMembersExtendedResponse_activeMembers_archiveEndpoint, buffer(offset, varLength_aeroncluster_clusterMembersExtendedResponse_activeMembers_archiveEndpoint))
        offset = offset + varLength_aeroncluster_clusterMembersExtendedResponse_activeMembers_archiveEndpoint
    end
    local passiveMembersNumInGroup = buffer(offset + 2, 2):le_uint()
    local passiveMembersBlockLength = buffer(offset + 0, 2):le_uint()
    offset = offset + 4
    for i=1,passiveMembersNumInGroup,1 do
        offsetToStartOfBlock = offset
        local offsetToEndOfBlock = offset + passiveMembersBlockLength
        local repeatingGroup = clusterMembersExtendedResponseSubTree:add_le(aeroncluster_clusterMembersExtendedResponse_passiveMembers, buffer())
        repeatingGroup:set_text("passiveMembers[" .. (i-1) .. "]")
        repeatingGroup:add_le(aeroncluster_clusterMembersExtendedResponse_passiveMembers_leadershipTermId, buffer(offset, 8))
        offset = offset + 8
        repeatingGroup:add_le(aeroncluster_clusterMembersExtendedResponse_passiveMembers_logPosition, buffer(offset, 8))
        offset = offset + 8
        repeatingGroup:add_le(aeroncluster_clusterMembersExtendedResponse_passiveMembers_timeOfLastAppendNs, buffer(offset, 8))
        offset = offset + 8
        repeatingGroup:add_le(aeroncluster_clusterMembersExtendedResponse_passiveMembers_memberId, buffer(offset, 4))
        offset = offset + 4
        offset = offsetToEndOfBlock
        local varLength_aeroncluster_clusterMembersExtendedResponse_passiveMembers_ingressEndpoint = buffer(offset, 4):le_uint()
        offset = offset + 4
        repeatingGroup:add_le(aeroncluster_clusterMembersExtendedResponse_passiveMembers_ingressEndpoint, buffer(offset, varLength_aeroncluster_clusterMembersExtendedResponse_passiveMembers_ingressEndpoint))
        offset = offset + varLength_aeroncluster_clusterMembersExtendedResponse_passiveMembers_ingressEndpoint
        local varLength_aeroncluster_clusterMembersExtendedResponse_passiveMembers_consensusEndpoint = buffer(offset, 4):le_uint()
        offset = offset + 4
        repeatingGroup:add_le(aeroncluster_clusterMembersExtendedResponse_passiveMembers_consensusEndpoint, buffer(offset, varLength_aeroncluster_clusterMembersExtendedResponse_passiveMembers_consensusEndpoint))
        offset = offset + varLength_aeroncluster_clusterMembersExtendedResponse_passiveMembers_consensusEndpoint
        local varLength_aeroncluster_clusterMembersExtendedResponse_passiveMembers_logEndpoint = buffer(offset, 4):le_uint()
        offset = offset + 4
        repeatingGroup:add_le(aeroncluster_clusterMembersExtendedResponse_passiveMembers_logEndpoint, buffer(offset, varLength_aeroncluster_clusterMembersExtendedResponse_passiveMembers_logEndpoint))
        offset = offset + varLength_aeroncluster_clusterMembersExtendedResponse_passiveMembers_logEndpoint
        local varLength_aeroncluster_clusterMembersExtendedResponse_passiveMembers_catchupEndpoint = buffer(offset, 4):le_uint()
        offset = offset + 4
        repeatingGroup:add_le(aeroncluster_clusterMembersExtendedResponse_passiveMembers_catchupEndpoint, buffer(offset, varLength_aeroncluster_clusterMembersExtendedResponse_passiveMembers_catchupEndpoint))
        offset = offset + varLength_aeroncluster_clusterMembersExtendedResponse_passiveMembers_catchupEndpoint
        local varLength_aeroncluster_clusterMembersExtendedResponse_passiveMembers_archiveEndpoint = buffer(offset, 4):le_uint()
        offset = offset + 4
        repeatingGroup:add_le(aeroncluster_clusterMembersExtendedResponse_passiveMembers_archiveEndpoint, buffer(offset, varLength_aeroncluster_clusterMembersExtendedResponse_passiveMembers_archiveEndpoint))
        offset = offset + varLength_aeroncluster_clusterMembersExtendedResponse_passiveMembers_archiveEndpoint
    end
    return offset
end

function decode_aeroncluster_canvassPosition(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local canvassPositionSubTree = subtree:add(mushroom_protocol, buffer(), "CanvassPosition")
    canvassPositionSubTree:add_le(aeroncluster_canvassPosition_logLeadershipTermId, buffer(offset, 8))
    offset = offset + 8
    canvassPositionSubTree:add_le(aeroncluster_canvassPosition_logPosition, buffer(offset, 8))
    offset = offset + 8
    canvassPositionSubTree:add_le(aeroncluster_canvassPosition_leadershipTermId, buffer(offset, 8))
    offset = offset + 8
    canvassPositionSubTree:add_le(aeroncluster_canvassPosition_followerMemberId, buffer(offset, 4))
    offset = offset + 4
    canvassPositionSubTree:add_le(aeroncluster_canvassPosition_protocolVersion, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset

    return offset
end

function decode_aeroncluster_requestVote(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local requestVoteSubTree = subtree:add(mushroom_protocol, buffer(), "RequestVote")
    requestVoteSubTree:add_le(aeroncluster_requestVote_logLeadershipTermId, buffer(offset, 8))
    offset = offset + 8
    requestVoteSubTree:add_le(aeroncluster_requestVote_logPosition, buffer(offset, 8))
    offset = offset + 8
    requestVoteSubTree:add_le(aeroncluster_requestVote_candidateTermId, buffer(offset, 8))
    offset = offset + 8
    requestVoteSubTree:add_le(aeroncluster_requestVote_candidateMemberId, buffer(offset, 4))
    offset = offset + 4
    requestVoteSubTree:add_le(aeroncluster_requestVote_protocolVersion, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset

    return offset
end

function decode_aeroncluster_vote(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local voteSubTree = subtree:add(mushroom_protocol, buffer(), "Vote")
    voteSubTree:add_le(aeroncluster_vote_candidateTermId, buffer(offset, 8))
    offset = offset + 8
    voteSubTree:add_le(aeroncluster_vote_logLeadershipTermId, buffer(offset, 8))
    offset = offset + 8
    voteSubTree:add_le(aeroncluster_vote_logPosition, buffer(offset, 8))
    offset = offset + 8
    voteSubTree:add_le(aeroncluster_vote_candidateMemberId, buffer(offset, 4))
    offset = offset + 4
    voteSubTree:add_le(aeroncluster_vote_followerMemberId, buffer(offset, 4))
    offset = offset + 4
    voteSubTree:add_le(aeroncluster_vote_vote, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset

    return offset
end

function decode_aeroncluster_newLeadershipTerm(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local newLeadershipTermSubTree = subtree:add(mushroom_protocol, buffer(), "NewLeadershipTerm")
    newLeadershipTermSubTree:add_le(aeroncluster_newLeadershipTerm_logLeadershipTermId, buffer(offset, 8))
    offset = offset + 8
    newLeadershipTermSubTree:add_le(aeroncluster_newLeadershipTerm_nextLeadershipTermId, buffer(offset, 8))
    offset = offset + 8
    newLeadershipTermSubTree:add_le(aeroncluster_newLeadershipTerm_nextTermBaseLogPosition, buffer(offset, 8))
    offset = offset + 8
    newLeadershipTermSubTree:add_le(aeroncluster_newLeadershipTerm_nextLogPosition, buffer(offset, 8))
    offset = offset + 8
    newLeadershipTermSubTree:add_le(aeroncluster_newLeadershipTerm_leadershipTermId, buffer(offset, 8))
    offset = offset + 8
    newLeadershipTermSubTree:add_le(aeroncluster_newLeadershipTerm_termBaseLogPosition, buffer(offset, 8))
    offset = offset + 8
    newLeadershipTermSubTree:add_le(aeroncluster_newLeadershipTerm_logPosition, buffer(offset, 8))
    offset = offset + 8
    newLeadershipTermSubTree:add_le(aeroncluster_newLeadershipTerm_leaderRecordingId, buffer(offset, 8))
    offset = offset + 8
    newLeadershipTermSubTree:add_le(aeroncluster_newLeadershipTerm_timestamp, buffer(offset, 8))
    offset = offset + 8
    newLeadershipTermSubTree:add_le(aeroncluster_newLeadershipTerm_leaderMemberId, buffer(offset, 4))
    offset = offset + 4
    newLeadershipTermSubTree:add_le(aeroncluster_newLeadershipTerm_logSessionId, buffer(offset, 4))
    offset = offset + 4
    newLeadershipTermSubTree:add_le(aeroncluster_newLeadershipTerm_appVersion, buffer(offset, 4))
    offset = offset + 4
    newLeadershipTermSubTree:add_le(aeroncluster_newLeadershipTerm_isStartup, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset

    return offset
end

function decode_aeroncluster_appendPosition(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local appendPositionSubTree = subtree:add(mushroom_protocol, buffer(), "AppendPosition")
    appendPositionSubTree:add_le(aeroncluster_appendPosition_leadershipTermId, buffer(offset, 8))
    offset = offset + 8
    appendPositionSubTree:add_le(aeroncluster_appendPosition_logPosition, buffer(offset, 8))
    offset = offset + 8
    appendPositionSubTree:add_le(aeroncluster_appendPosition_followerMemberId, buffer(offset, 4))
    offset = offset + 4
    appendPositionSubTree:add_le(aeroncluster_appendPosition_flags, buffer(offset, 1))
    offset = offset + 1
    offset = blockLength + initialOffset

    return offset
end

function decode_aeroncluster_commitPosition(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local commitPositionSubTree = subtree:add(mushroom_protocol, buffer(), "CommitPosition")
    commitPositionSubTree:add_le(aeroncluster_commitPosition_leadershipTermId, buffer(offset, 8))
    offset = offset + 8
    commitPositionSubTree:add_le(aeroncluster_commitPosition_logPosition, buffer(offset, 8))
    offset = offset + 8
    commitPositionSubTree:add_le(aeroncluster_commitPosition_leaderMemberId, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset

    return offset
end

function decode_aeroncluster_catchupPosition(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local catchupPositionSubTree = subtree:add(mushroom_protocol, buffer(), "CatchupPosition")
    catchupPositionSubTree:add_le(aeroncluster_catchupPosition_leadershipTermId, buffer(offset, 8))
    offset = offset + 8
    catchupPositionSubTree:add_le(aeroncluster_catchupPosition_logPosition, buffer(offset, 8))
    offset = offset + 8
    catchupPositionSubTree:add_le(aeroncluster_catchupPosition_followerMemberId, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local varLength_aeroncluster_catchupPosition_catchupEndpoint = buffer(offset, 4):le_uint()
    offset = offset + 4
    catchupPositionSubTree:add_le(aeroncluster_catchupPosition_catchupEndpoint, buffer(offset, varLength_aeroncluster_catchupPosition_catchupEndpoint))
    offset = offset + varLength_aeroncluster_catchupPosition_catchupEndpoint
    return offset
end

function decode_aeroncluster_stopCatchup(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local stopCatchupSubTree = subtree:add(mushroom_protocol, buffer(), "StopCatchup")
    stopCatchupSubTree:add_le(aeroncluster_stopCatchup_leadershipTermId, buffer(offset, 8))
    offset = offset + 8
    stopCatchupSubTree:add_le(aeroncluster_stopCatchup_followerMemberId, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset

    return offset
end

function decode_aeroncluster_addPassiveMember(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local addPassiveMemberSubTree = subtree:add(mushroom_protocol, buffer(), "AddPassiveMember")
    addPassiveMemberSubTree:add_le(aeroncluster_addPassiveMember_correlationId, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset
    local varLength_aeroncluster_addPassiveMember_memberEndpoints = buffer(offset, 4):le_uint()
    offset = offset + 4
    addPassiveMemberSubTree:add_le(aeroncluster_addPassiveMember_memberEndpoints, buffer(offset, varLength_aeroncluster_addPassiveMember_memberEndpoints))
    offset = offset + varLength_aeroncluster_addPassiveMember_memberEndpoints
    return offset
end

function decode_aeroncluster_clusterMembersChange(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local clusterMembersChangeSubTree = subtree:add(mushroom_protocol, buffer(), "ClusterMembersChange")
    clusterMembersChangeSubTree:add_le(aeroncluster_clusterMembersChange_correlationId, buffer(offset, 8))
    offset = offset + 8
    clusterMembersChangeSubTree:add_le(aeroncluster_clusterMembersChange_leaderMemberId, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local varLength_aeroncluster_clusterMembersChange_activeMembers = buffer(offset, 4):le_uint()
    offset = offset + 4
    clusterMembersChangeSubTree:add_le(aeroncluster_clusterMembersChange_activeMembers, buffer(offset, varLength_aeroncluster_clusterMembersChange_activeMembers))
    offset = offset + varLength_aeroncluster_clusterMembersChange_activeMembers
    local varLength_aeroncluster_clusterMembersChange_passiveMembers = buffer(offset, 4):le_uint()
    offset = offset + 4
    clusterMembersChangeSubTree:add_le(aeroncluster_clusterMembersChange_passiveMembers, buffer(offset, varLength_aeroncluster_clusterMembersChange_passiveMembers))
    offset = offset + varLength_aeroncluster_clusterMembersChange_passiveMembers
    return offset
end

function decode_aeroncluster_snapshotRecordingQuery(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local snapshotRecordingQuerySubTree = subtree:add(mushroom_protocol, buffer(), "SnapshotRecordingQuery")
    snapshotRecordingQuerySubTree:add_le(aeroncluster_snapshotRecordingQuery_correlationId, buffer(offset, 8))
    offset = offset + 8
    snapshotRecordingQuerySubTree:add_le(aeroncluster_snapshotRecordingQuery_requestMemberId, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset

    return offset
end

function decode_aeroncluster_snapshotRecordings(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local snapshotRecordingsSubTree = subtree:add(mushroom_protocol, buffer(), "SnapshotRecordings")
    snapshotRecordingsSubTree:add_le(aeroncluster_snapshotRecordings_correlationId, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset
    local snapshotsNumInGroup = buffer(offset + 2, 2):le_uint()
    local snapshotsBlockLength = buffer(offset + 0, 2):le_uint()
    offset = offset + 4
    for i=1,snapshotsNumInGroup,1 do
        offsetToStartOfBlock = offset
        local offsetToEndOfBlock = offset + snapshotsBlockLength
        local repeatingGroup = snapshotRecordingsSubTree:add_le(aeroncluster_snapshotRecordings_snapshots, buffer())
        repeatingGroup:set_text("snapshots[" .. (i-1) .. "]")
        repeatingGroup:add_le(aeroncluster_snapshotRecordings_snapshots_recordingId, buffer(offset, 8))
        offset = offset + 8
        repeatingGroup:add_le(aeroncluster_snapshotRecordings_snapshots_leadershipTermId, buffer(offset, 8))
        offset = offset + 8
        repeatingGroup:add_le(aeroncluster_snapshotRecordings_snapshots_termBaseLogPosition, buffer(offset, 8))
        offset = offset + 8
        repeatingGroup:add_le(aeroncluster_snapshotRecordings_snapshots_logPosition, buffer(offset, 8))
        offset = offset + 8
        repeatingGroup:add_le(aeroncluster_snapshotRecordings_snapshots_timestamp, buffer(offset, 8))
        offset = offset + 8
        repeatingGroup:add_le(aeroncluster_snapshotRecordings_snapshots_serviceId, buffer(offset, 4))
        offset = offset + 4
        offset = offsetToEndOfBlock

    end
    local varLength_aeroncluster_snapshotRecordings_memberEndpoints = buffer(offset, 4):le_uint()
    offset = offset + 4
    snapshotRecordingsSubTree:add_le(aeroncluster_snapshotRecordings_memberEndpoints, buffer(offset, varLength_aeroncluster_snapshotRecordings_memberEndpoints))
    offset = offset + varLength_aeroncluster_snapshotRecordings_memberEndpoints
    return offset
end

function decode_aeroncluster_joinCluster(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local joinClusterSubTree = subtree:add(mushroom_protocol, buffer(), "JoinCluster")
    joinClusterSubTree:add_le(aeroncluster_joinCluster_leadershipTermId, buffer(offset, 8))
    offset = offset + 8
    joinClusterSubTree:add_le(aeroncluster_joinCluster_memberId, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset

    return offset
end

function decode_aeroncluster_terminationPosition(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local terminationPositionSubTree = subtree:add(mushroom_protocol, buffer(), "TerminationPosition")
    terminationPositionSubTree:add_le(aeroncluster_terminationPosition_leadershipTermId, buffer(offset, 8))
    offset = offset + 8
    terminationPositionSubTree:add_le(aeroncluster_terminationPosition_logPosition, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end

function decode_aeroncluster_terminationAck(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local terminationAckSubTree = subtree:add(mushroom_protocol, buffer(), "TerminationAck")
    terminationAckSubTree:add_le(aeroncluster_terminationAck_leadershipTermId, buffer(offset, 8))
    offset = offset + 8
    terminationAckSubTree:add_le(aeroncluster_terminationAck_logPosition, buffer(offset, 8))
    offset = offset + 8
    terminationAckSubTree:add_le(aeroncluster_terminationAck_memberId, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset

    return offset
end

function decode_aeroncluster_backupQuery(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local backupQuerySubTree = subtree:add(mushroom_protocol, buffer(), "BackupQuery")
    backupQuerySubTree:add_le(aeroncluster_backupQuery_correlationId, buffer(offset, 8))
    offset = offset + 8
    backupQuerySubTree:add_le(aeroncluster_backupQuery_responseStreamId, buffer(offset, 4))
    offset = offset + 4
    backupQuerySubTree:add_le(aeroncluster_backupQuery_version, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local varLength_aeroncluster_backupQuery_responseChannel = buffer(offset, 4):le_uint()
    offset = offset + 4
    backupQuerySubTree:add_le(aeroncluster_backupQuery_responseChannel, buffer(offset, varLength_aeroncluster_backupQuery_responseChannel))
    offset = offset + varLength_aeroncluster_backupQuery_responseChannel
    local varLength_aeroncluster_backupQuery_encodedCredentials = buffer(offset, 4):le_uint()
    offset = offset + 4
    backupQuerySubTree:add_le(aeroncluster_backupQuery_encodedCredentials, buffer(offset, varLength_aeroncluster_backupQuery_encodedCredentials))
    offset = offset + varLength_aeroncluster_backupQuery_encodedCredentials
    return offset
end

function decode_aeroncluster_backupResponse(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local backupResponseSubTree = subtree:add(mushroom_protocol, buffer(), "BackupResponse")
    backupResponseSubTree:add_le(aeroncluster_backupResponse_correlationId, buffer(offset, 8))
    offset = offset + 8
    backupResponseSubTree:add_le(aeroncluster_backupResponse_logRecordingId, buffer(offset, 8))
    offset = offset + 8
    backupResponseSubTree:add_le(aeroncluster_backupResponse_logLeadershipTermId, buffer(offset, 8))
    offset = offset + 8
    backupResponseSubTree:add_le(aeroncluster_backupResponse_logTermBaseLogPosition, buffer(offset, 8))
    offset = offset + 8
    backupResponseSubTree:add_le(aeroncluster_backupResponse_lastLeadershipTermId, buffer(offset, 8))
    offset = offset + 8
    backupResponseSubTree:add_le(aeroncluster_backupResponse_lastTermBaseLogPosition, buffer(offset, 8))
    offset = offset + 8
    backupResponseSubTree:add_le(aeroncluster_backupResponse_commitPositionCounterId, buffer(offset, 4))
    offset = offset + 4
    backupResponseSubTree:add_le(aeroncluster_backupResponse_leaderMemberId, buffer(offset, 4))
    offset = offset + 4
    backupResponseSubTree:add_le(aeroncluster_backupResponse_memberId, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local snapshotsNumInGroup = buffer(offset + 2, 2):le_uint()
    local snapshotsBlockLength = buffer(offset + 0, 2):le_uint()
    offset = offset + 4
    for i=1,snapshotsNumInGroup,1 do
        offsetToStartOfBlock = offset
        local offsetToEndOfBlock = offset + snapshotsBlockLength
        local repeatingGroup = backupResponseSubTree:add_le(aeroncluster_backupResponse_snapshots, buffer())
        repeatingGroup:set_text("snapshots[" .. (i-1) .. "]")
        repeatingGroup:add_le(aeroncluster_backupResponse_snapshots_recordingId, buffer(offset, 8))
        offset = offset + 8
        repeatingGroup:add_le(aeroncluster_backupResponse_snapshots_leadershipTermId, buffer(offset, 8))
        offset = offset + 8
        repeatingGroup:add_le(aeroncluster_backupResponse_snapshots_termBaseLogPosition, buffer(offset, 8))
        offset = offset + 8
        repeatingGroup:add_le(aeroncluster_backupResponse_snapshots_logPosition, buffer(offset, 8))
        offset = offset + 8
        repeatingGroup:add_le(aeroncluster_backupResponse_snapshots_timestamp, buffer(offset, 8))
        offset = offset + 8
        repeatingGroup:add_le(aeroncluster_backupResponse_snapshots_serviceId, buffer(offset, 4))
        offset = offset + 4
        offset = offsetToEndOfBlock

    end
    local varLength_aeroncluster_backupResponse_clusterMembers = buffer(offset, 4):le_uint()
    offset = offset + 4
    backupResponseSubTree:add_le(aeroncluster_backupResponse_clusterMembers, buffer(offset, varLength_aeroncluster_backupResponse_clusterMembers))
    offset = offset + varLength_aeroncluster_backupResponse_clusterMembers
    return offset
end

function decode_aeroncluster_heartbeatRequest(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local heartbeatRequestSubTree = subtree:add(mushroom_protocol, buffer(), "HeartbeatRequest")
    heartbeatRequestSubTree:add_le(aeroncluster_heartbeatRequest_correlationId, buffer(offset, 8))
    offset = offset + 8
    heartbeatRequestSubTree:add_le(aeroncluster_heartbeatRequest_responseStreamId, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local varLength_aeroncluster_heartbeatRequest_responseChannel = buffer(offset, 4):le_uint()
    offset = offset + 4
    heartbeatRequestSubTree:add_le(aeroncluster_heartbeatRequest_responseChannel, buffer(offset, varLength_aeroncluster_heartbeatRequest_responseChannel))
    offset = offset + varLength_aeroncluster_heartbeatRequest_responseChannel
    local varLength_aeroncluster_heartbeatRequest_encodedCredentials = buffer(offset, 4):le_uint()
    offset = offset + 4
    heartbeatRequestSubTree:add_le(aeroncluster_heartbeatRequest_encodedCredentials, buffer(offset, varLength_aeroncluster_heartbeatRequest_encodedCredentials))
    offset = offset + varLength_aeroncluster_heartbeatRequest_encodedCredentials
    return offset
end

function decode_aeroncluster_heartbeatResponse(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local heartbeatResponseSubTree = subtree:add(mushroom_protocol, buffer(), "HeartbeatResponse")
    heartbeatResponseSubTree:add_le(aeroncluster_heartbeatResponse_correlationId, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end

function decode_aeroncluster_standbySnapshot(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local standbySnapshotSubTree = subtree:add(mushroom_protocol, buffer(), "StandbySnapshot")
    standbySnapshotSubTree:add_le(aeroncluster_standbySnapshot_correlationId, buffer(offset, 8))
    offset = offset + 8
    standbySnapshotSubTree:add_le(aeroncluster_standbySnapshot_version, buffer(offset, 4))
    offset = offset + 4
    standbySnapshotSubTree:add_le(aeroncluster_standbySnapshot_responseStreamId, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local snapshotsNumInGroup = buffer(offset + 2, 2):le_uint()
    local snapshotsBlockLength = buffer(offset + 0, 2):le_uint()
    offset = offset + 4
    for i=1,snapshotsNumInGroup,1 do
        offsetToStartOfBlock = offset
        local offsetToEndOfBlock = offset + snapshotsBlockLength
        local repeatingGroup = standbySnapshotSubTree:add_le(aeroncluster_standbySnapshot_snapshots, buffer())
        repeatingGroup:set_text("snapshots[" .. (i-1) .. "]")
        repeatingGroup:add_le(aeroncluster_standbySnapshot_snapshots_recordingId, buffer(offset, 8))
        offset = offset + 8
        repeatingGroup:add_le(aeroncluster_standbySnapshot_snapshots_leadershipTermId, buffer(offset, 8))
        offset = offset + 8
        repeatingGroup:add_le(aeroncluster_standbySnapshot_snapshots_termBaseLogPosition, buffer(offset, 8))
        offset = offset + 8
        repeatingGroup:add_le(aeroncluster_standbySnapshot_snapshots_logPosition, buffer(offset, 8))
        offset = offset + 8
        repeatingGroup:add_le(aeroncluster_standbySnapshot_snapshots_timestamp, buffer(offset, 8))
        offset = offset + 8
        repeatingGroup:add_le(aeroncluster_standbySnapshot_snapshots_serviceId, buffer(offset, 4))
        offset = offset + 4
        offset = offsetToEndOfBlock
        local varLength_aeroncluster_standbySnapshot_snapshots_archiveEndpoint = buffer(offset, 4):le_uint()
        offset = offset + 4
        repeatingGroup:add_le(aeroncluster_standbySnapshot_snapshots_archiveEndpoint, buffer(offset, varLength_aeroncluster_standbySnapshot_snapshots_archiveEndpoint))
        offset = offset + varLength_aeroncluster_standbySnapshot_snapshots_archiveEndpoint
    end
    local varLength_aeroncluster_standbySnapshot_responseChannel = buffer(offset, 4):le_uint()
    offset = offset + 4
    standbySnapshotSubTree:add_le(aeroncluster_standbySnapshot_responseChannel, buffer(offset, varLength_aeroncluster_standbySnapshot_responseChannel))
    offset = offset + varLength_aeroncluster_standbySnapshot_responseChannel
    local varLength_aeroncluster_standbySnapshot_encodedCredentials = buffer(offset, 4):le_uint()
    offset = offset + 4
    standbySnapshotSubTree:add_le(aeroncluster_standbySnapshot_encodedCredentials, buffer(offset, varLength_aeroncluster_standbySnapshot_encodedCredentials))
    offset = offset + varLength_aeroncluster_standbySnapshot_encodedCredentials
    return offset
end

function decode_aeroncluster_snapshotMarker(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local snapshotMarkerSubTree = subtree:add(mushroom_protocol, buffer(), "SnapshotMarker")
    snapshotMarkerSubTree:add_le(aeroncluster_snapshotMarker_typeId, buffer(offset, 8))
    offset = offset + 8
    snapshotMarkerSubTree:add_le(aeroncluster_snapshotMarker_logPosition, buffer(offset, 8))
    offset = offset + 8
    snapshotMarkerSubTree:add_le(aeroncluster_snapshotMarker_leadershipTermId, buffer(offset, 8))
    offset = offset + 8
    snapshotMarkerSubTree:add_le(aeroncluster_snapshotMarker_index, buffer(offset, 4))
    offset = offset + 4
    snapshotMarkerSubTree:add_le(aeroncluster_snapshotMarker_mark, buffer(offset, 4))
    offset = offset + 4
    snapshotMarkerSubTree:add_le(aeroncluster_snapshotMarker_timeUnit, buffer(offset, 4))
    offset = offset + 4
    snapshotMarkerSubTree:add_le(aeroncluster_snapshotMarker_appVersion, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset

    return offset
end

function decode_aeroncluster_clientSession(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local clientSessionSubTree = subtree:add(mushroom_protocol, buffer(), "ClientSession")
    clientSessionSubTree:add_le(aeroncluster_clientSession_clusterSessionId, buffer(offset, 8))
    offset = offset + 8
    clientSessionSubTree:add_le(aeroncluster_clientSession_responseStreamId, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local varLength_aeroncluster_clientSession_responseChannel = buffer(offset, 4):le_uint()
    offset = offset + 4
    clientSessionSubTree:add_le(aeroncluster_clientSession_responseChannel, buffer(offset, varLength_aeroncluster_clientSession_responseChannel))
    offset = offset + varLength_aeroncluster_clientSession_responseChannel
    local varLength_aeroncluster_clientSession_encodedPrincipal = buffer(offset, 4):le_uint()
    offset = offset + 4
    clientSessionSubTree:add_le(aeroncluster_clientSession_encodedPrincipal, buffer(offset, varLength_aeroncluster_clientSession_encodedPrincipal))
    offset = offset + varLength_aeroncluster_clientSession_encodedPrincipal
    return offset
end

function decode_aeroncluster_clusterSession(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local clusterSessionSubTree = subtree:add(mushroom_protocol, buffer(), "ClusterSession")
    clusterSessionSubTree:add_le(aeroncluster_clusterSession_clusterSessionId, buffer(offset, 8))
    offset = offset + 8
    clusterSessionSubTree:add_le(aeroncluster_clusterSession_correlationId, buffer(offset, 8))
    offset = offset + 8
    clusterSessionSubTree:add_le(aeroncluster_clusterSession_openedLogPosition, buffer(offset, 8))
    offset = offset + 8
    clusterSessionSubTree:add_le(aeroncluster_clusterSession_timeOfLastActivity, buffer(offset, 8))
    offset = offset + 8
    clusterSessionSubTree:add_le(aeroncluster_clusterSession_closeReason, buffer(offset, 4))
    offset = offset + 4
    clusterSessionSubTree:add_le(aeroncluster_clusterSession_responseStreamId, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local varLength_aeroncluster_clusterSession_responseChannel = buffer(offset, 4):le_uint()
    offset = offset + 4
    clusterSessionSubTree:add_le(aeroncluster_clusterSession_responseChannel, buffer(offset, varLength_aeroncluster_clusterSession_responseChannel))
    offset = offset + varLength_aeroncluster_clusterSession_responseChannel
    return offset
end

function decode_aeroncluster_timer(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local timerSubTree = subtree:add(mushroom_protocol, buffer(), "Timer")
    timerSubTree:add_le(aeroncluster_timer_correlationId, buffer(offset, 8))
    offset = offset + 8
    timerSubTree:add_le(aeroncluster_timer_deadline, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end

function decode_aeroncluster_consensusModule(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local consensusModuleSubTree = subtree:add(mushroom_protocol, buffer(), "ConsensusModule")
    consensusModuleSubTree:add_le(aeroncluster_consensusModule_nextSessionId, buffer(offset, 8))
    offset = offset + 8
    consensusModuleSubTree:add_le(aeroncluster_consensusModule_nextServiceSessionId, buffer(offset, 8))
    offset = offset + 8
    consensusModuleSubTree:add_le(aeroncluster_consensusModule_logServiceSessionId, buffer(offset, 8))
    offset = offset + 8
    consensusModuleSubTree:add_le(aeroncluster_consensusModule_pendingMessageCapacity, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset

    return offset
end

function decode_aeroncluster_clusterMembers(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local clusterMembersSubTree = subtree:add(mushroom_protocol, buffer(), "ClusterMembers")
    clusterMembersSubTree:add_le(aeroncluster_clusterMembers_memberId, buffer(offset, 4))
    offset = offset + 4
    clusterMembersSubTree:add_le(aeroncluster_clusterMembers_highMemberId, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset
    local varLength_aeroncluster_clusterMembers_clusterMembers = buffer(offset, 4):le_uint()
    offset = offset + 4
    clusterMembersSubTree:add_le(aeroncluster_clusterMembers_clusterMembers, buffer(offset, varLength_aeroncluster_clusterMembers_clusterMembers))
    offset = offset + varLength_aeroncluster_clusterMembers_clusterMembers
    return offset
end

function decode_aeroncluster_pendingMessageTracker(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local pendingMessageTrackerSubTree = subtree:add(mushroom_protocol, buffer(), "PendingMessageTracker")
    pendingMessageTrackerSubTree:add_le(aeroncluster_pendingMessageTracker_nextServiceSessionId, buffer(offset, 8))
    offset = offset + 8
    pendingMessageTrackerSubTree:add_le(aeroncluster_pendingMessageTracker_logServiceSessionId, buffer(offset, 8))
    offset = offset + 8
    pendingMessageTrackerSubTree:add_le(aeroncluster_pendingMessageTracker_pendingMessageCapacity, buffer(offset, 4))
    offset = offset + 4
    pendingMessageTrackerSubTree:add_le(aeroncluster_pendingMessageTracker_serviceId, buffer(offset, 4))
    offset = offset + 4
    offset = blockLength + initialOffset

    return offset
end

function decode_aeroncluster_requestServiceAck(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local requestServiceAckSubTree = subtree:add(mushroom_protocol, buffer(), "requestServiceAck")
    requestServiceAckSubTree:add_le(aeroncluster_requestServiceAck_logPosition, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end

function decode_protocol_listParticipantsCommand(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local listParticipantsCommandSubTree = subtree:add(mushroom_protocol, buffer(), "ListParticipantsCommand")
    listParticipantsCommandSubTree:add_le(protocol_listParticipantsCommand_correlationId, buffer(offset, 36))
    offset = offset + 36
    offset = blockLength + initialOffset

    return offset
end

function decode_protocol_addParticipantCommand(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local addParticipantCommandSubTree = subtree:add(mushroom_protocol, buffer(), "AddParticipantCommand")
    addParticipantCommandSubTree:add_le(protocol_addParticipantCommand_participantId, buffer(offset, 8))
    offset = offset + 8
    addParticipantCommandSubTree:add_le(protocol_addParticipantCommand_correlationId, buffer(offset, 36))
    offset = offset + 36
    offset = blockLength + initialOffset
    local varLength_protocol_addParticipantCommand_name = buffer(offset, 4):le_uint()
    offset = offset + 4
    addParticipantCommandSubTree:add_le(protocol_addParticipantCommand_name, buffer(offset, varLength_protocol_addParticipantCommand_name))
    offset = offset + varLength_protocol_addParticipantCommand_name
    return offset
end

function decode_protocol_participantList(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local participantListSubTree = subtree:add(mushroom_protocol, buffer(), "ParticipantList")
    participantListSubTree:add_le(protocol_participantList_correlationId, buffer(offset, 36))
    offset = offset + 36
    offset = blockLength + initialOffset
    local participantsNumInGroup = buffer(offset + 2, 2):le_uint()
    local participantsBlockLength = buffer(offset + 0, 2):le_uint()
    offset = offset + 4
    for i=1,participantsNumInGroup,1 do
        offsetToStartOfBlock = offset
        local offsetToEndOfBlock = offset + participantsBlockLength
        local repeatingGroup = participantListSubTree:add_le(protocol_participantList_participants, buffer())
        repeatingGroup:set_text("participants[" .. (i-1) .. "]")
        repeatingGroup:add_le(protocol_participantList_participants_participantId, buffer(offset, 8))
        offset = offset + 8
        offset = offsetToEndOfBlock
        local varLength_protocol_participantList_participants_name = buffer(offset, 4):le_uint()
        offset = offset + 4
        repeatingGroup:add_le(protocol_participantList_participants_name, buffer(offset, varLength_protocol_participantList_participants_name))
        offset = offset + varLength_protocol_participantList_participants_name
    end
    return offset
end

function decode_protocol_addParticipantCommandResult(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local addParticipantCommandResultSubTree = subtree:add(mushroom_protocol, buffer(), "AddParticipantCommandResult")
    addParticipantCommandResultSubTree:add_le(protocol_addParticipantCommandResult_correlationId, buffer(offset, 36))
    offset = offset + 36
    addParticipantCommandResultSubTree:add_le(protocol_addParticipantCommandResult_participantId, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end

function decode_protocol_participantSnapshot(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local participantSnapshotSubTree = subtree:add(mushroom_protocol, buffer(), "ParticipantSnapshot")
    participantSnapshotSubTree:add_le(protocol_participantSnapshot_participantId, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset
    local varLength_protocol_participantSnapshot_name = buffer(offset, 4):le_uint()
    offset = offset + 4
    participantSnapshotSubTree:add_le(protocol_participantSnapshot_name, buffer(offset, varLength_protocol_participantSnapshot_name))
    offset = offset + varLength_protocol_participantSnapshot_name
    return offset
end

function decode_protocol_createAuctionCommand(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local createAuctionCommandSubTree = subtree:add(mushroom_protocol, buffer(), "CreateAuctionCommand")
    createAuctionCommandSubTree:add_le(protocol_createAuctionCommand_createdByParticipantId, buffer(offset, 8))
    offset = offset + 8
    createAuctionCommandSubTree:add_le(protocol_createAuctionCommand_startTime, buffer(offset, 8))
    offset = offset + 8
    createAuctionCommandSubTree:add_le(protocol_createAuctionCommand_endTime, buffer(offset, 8))
    offset = offset + 8
    createAuctionCommandSubTree:add_le(protocol_createAuctionCommand_correlationId, buffer(offset, 36))
    offset = offset + 36
    offset = blockLength + initialOffset
    local varLength_protocol_createAuctionCommand_name = buffer(offset, 4):le_uint()
    offset = offset + 4
    createAuctionCommandSubTree:add_le(protocol_createAuctionCommand_name, buffer(offset, varLength_protocol_createAuctionCommand_name))
    offset = offset + varLength_protocol_createAuctionCommand_name
    local varLength_protocol_createAuctionCommand_description = buffer(offset, 4):le_uint()
    offset = offset + 4
    createAuctionCommandSubTree:add_le(protocol_createAuctionCommand_description, buffer(offset, varLength_protocol_createAuctionCommand_description))
    offset = offset + varLength_protocol_createAuctionCommand_description
    return offset
end

function decode_protocol_createAuctionCommandResult(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local createAuctionCommandResultSubTree = subtree:add(mushroom_protocol, buffer(), "CreateAuctionCommandResult")
    createAuctionCommandResultSubTree:add_le(protocol_createAuctionCommandResult_auctionId, buffer(offset, 8))
    offset = offset + 8
    createAuctionCommandResultSubTree:add_le(protocol_createAuctionCommandResult_result, buffer(offset, 4))
    offset = offset + 4
    createAuctionCommandResultSubTree:add_le(protocol_createAuctionCommandResult_correlationId, buffer(offset, 36))
    offset = offset + 36
    offset = blockLength + initialOffset

    return offset
end

function decode_protocol_newAuctionEvent(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local newAuctionEventSubTree = subtree:add(mushroom_protocol, buffer(), "NewAuctionEvent")
    newAuctionEventSubTree:add_le(protocol_newAuctionEvent_auctionId, buffer(offset, 8))
    offset = offset + 8
    newAuctionEventSubTree:add_le(protocol_newAuctionEvent_startTime, buffer(offset, 8))
    offset = offset + 8
    newAuctionEventSubTree:add_le(protocol_newAuctionEvent_endTime, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset
    local varLength_protocol_newAuctionEvent_name = buffer(offset, 4):le_uint()
    offset = offset + 4
    newAuctionEventSubTree:add_le(protocol_newAuctionEvent_name, buffer(offset, varLength_protocol_newAuctionEvent_name))
    offset = offset + varLength_protocol_newAuctionEvent_name
    local varLength_protocol_newAuctionEvent_description = buffer(offset, 4):le_uint()
    offset = offset + 4
    newAuctionEventSubTree:add_le(protocol_newAuctionEvent_description, buffer(offset, varLength_protocol_newAuctionEvent_description))
    offset = offset + varLength_protocol_newAuctionEvent_description
    return offset
end

function decode_protocol_addAuctionBidCommand(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local addAuctionBidCommandSubTree = subtree:add(mushroom_protocol, buffer(), "AddAuctionBidCommand")
    addAuctionBidCommandSubTree:add_le(protocol_addAuctionBidCommand_auctionId, buffer(offset, 8))
    offset = offset + 8
    addAuctionBidCommandSubTree:add_le(protocol_addAuctionBidCommand_addedByParticipantId, buffer(offset, 8))
    offset = offset + 8
    addAuctionBidCommandSubTree:add_le(protocol_addAuctionBidCommand_price, buffer(offset, 8))
    offset = offset + 8
    addAuctionBidCommandSubTree:add_le(protocol_addAuctionBidCommand_correlationId, buffer(offset, 36))
    offset = offset + 36
    offset = blockLength + initialOffset

    return offset
end

function decode_protocol_addAuctionBidCommandResult(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local addAuctionBidCommandResultSubTree = subtree:add(mushroom_protocol, buffer(), "AddAuctionBidCommandResult")
    addAuctionBidCommandResultSubTree:add_le(protocol_addAuctionBidCommandResult_auctionId, buffer(offset, 8))
    offset = offset + 8
    addAuctionBidCommandResultSubTree:add_le(protocol_addAuctionBidCommandResult_result, buffer(offset, 4))
    offset = offset + 4
    addAuctionBidCommandResultSubTree:add_le(protocol_addAuctionBidCommandResult_correlationId, buffer(offset, 36))
    offset = offset + 36
    offset = blockLength + initialOffset

    return offset
end

function decode_protocol_auctionUpdateEvent(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local auctionUpdateEventSubTree = subtree:add(mushroom_protocol, buffer(), "AuctionUpdateEvent")
    auctionUpdateEventSubTree:add_le(protocol_auctionUpdateEvent_auctionId, buffer(offset, 8))
    offset = offset + 8
    auctionUpdateEventSubTree:add_le(protocol_auctionUpdateEvent_status, buffer(offset, 4))
    offset = offset + 4
    auctionUpdateEventSubTree:add_le(protocol_auctionUpdateEvent_currentPrice, buffer(offset, 8))
    offset = offset + 8
    auctionUpdateEventSubTree:add_le(protocol_auctionUpdateEvent_bidCount, buffer(offset, 4))
    offset = offset + 4
    auctionUpdateEventSubTree:add_le(protocol_auctionUpdateEvent_lastUpdate, buffer(offset, 8))
    offset = offset + 8
    auctionUpdateEventSubTree:add_le(protocol_auctionUpdateEvent_winningParticipantId, buffer(offset, 8))
    offset = offset + 8
    auctionUpdateEventSubTree:add_le(protocol_auctionUpdateEvent_correlationId, buffer(offset, 36))
    offset = offset + 36
    offset = blockLength + initialOffset

    return offset
end

function decode_protocol_auctionSnapshot(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local auctionSnapshotSubTree = subtree:add(mushroom_protocol, buffer(), "AuctionSnapshot")
    auctionSnapshotSubTree:add_le(protocol_auctionSnapshot_auctionId, buffer(offset, 8))
    offset = offset + 8
    auctionSnapshotSubTree:add_le(protocol_auctionSnapshot_createdByParticipantId, buffer(offset, 8))
    offset = offset + 8
    auctionSnapshotSubTree:add_le(protocol_auctionSnapshot_startTime, buffer(offset, 8))
    offset = offset + 8
    auctionSnapshotSubTree:add_le(protocol_auctionSnapshot_startTimeTimerCorrelation, buffer(offset, 8))
    offset = offset + 8
    auctionSnapshotSubTree:add_le(protocol_auctionSnapshot_endTime, buffer(offset, 8))
    offset = offset + 8
    auctionSnapshotSubTree:add_le(protocol_auctionSnapshot_endTimeTimerCorrelation, buffer(offset, 8))
    offset = offset + 8
    auctionSnapshotSubTree:add_le(protocol_auctionSnapshot_removalTimeTimerCorrelation, buffer(offset, 8))
    offset = offset + 8
    auctionSnapshotSubTree:add_le(protocol_auctionSnapshot_winningParticipantId, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset
    local varLength_protocol_auctionSnapshot_name = buffer(offset, 4):le_uint()
    offset = offset + 4
    auctionSnapshotSubTree:add_le(protocol_auctionSnapshot_name, buffer(offset, varLength_protocol_auctionSnapshot_name))
    offset = offset + varLength_protocol_auctionSnapshot_name
    local varLength_protocol_auctionSnapshot_description = buffer(offset, 4):le_uint()
    offset = offset + 4
    auctionSnapshotSubTree:add_le(protocol_auctionSnapshot_description, buffer(offset, varLength_protocol_auctionSnapshot_description))
    offset = offset + varLength_protocol_auctionSnapshot_description
    return offset
end

function decode_protocol_auctionIdSnapshot(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local auctionIdSnapshotSubTree = subtree:add(mushroom_protocol, buffer(), "AuctionIdSnapshot")
    auctionIdSnapshotSubTree:add_le(protocol_auctionIdSnapshot_lastId, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end

function decode_protocol_endOfSnapshot(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local endOfSnapshotSubTree = subtree:add(mushroom_protocol, buffer(), "EndOfSnapshot")

    offset = blockLength + initialOffset

    return offset
end

function decode_protocol_listAuctionsCommand(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local listAuctionsCommandSubTree = subtree:add(mushroom_protocol, buffer(), "ListAuctionsCommand")
    listAuctionsCommandSubTree:add_le(protocol_listAuctionsCommand_correlationId, buffer(offset, 36))
    offset = offset + 36
    offset = blockLength + initialOffset

    return offset
end

function decode_protocol_auctionList(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local auctionListSubTree = subtree:add(mushroom_protocol, buffer(), "AuctionList")
    auctionListSubTree:add_le(protocol_auctionList_correlationId, buffer(offset, 36))
    offset = offset + 36
    offset = blockLength + initialOffset
    local auctionsNumInGroup = buffer(offset + 2, 2):le_uint()
    local auctionsBlockLength = buffer(offset + 0, 2):le_uint()
    offset = offset + 4
    for i=1,auctionsNumInGroup,1 do
        offsetToStartOfBlock = offset
        local offsetToEndOfBlock = offset + auctionsBlockLength
        local repeatingGroup = auctionListSubTree:add_le(protocol_auctionList_auctions, buffer())
        repeatingGroup:set_text("auctions[" .. (i-1) .. "]")
        repeatingGroup:add_le(protocol_auctionList_auctions_auctionId, buffer(offset, 8))
        offset = offset + 8
        repeatingGroup:add_le(protocol_auctionList_auctions_createdByParticipantId, buffer(offset, 8))
        offset = offset + 8
        repeatingGroup:add_le(protocol_auctionList_auctions_startTime, buffer(offset, 8))
        offset = offset + 8
        repeatingGroup:add_le(protocol_auctionList_auctions_endTime, buffer(offset, 8))
        offset = offset + 8
        repeatingGroup:add_le(protocol_auctionList_auctions_winningParticipantId, buffer(offset, 8))
        offset = offset + 8
        repeatingGroup:add_le(protocol_auctionList_auctions_currentPrice, buffer(offset, 8))
        offset = offset + 8
        repeatingGroup:add_le(protocol_auctionList_auctions_status, buffer(offset, 4))
        offset = offset + 4
        offset = offsetToEndOfBlock
        local varLength_protocol_auctionList_auctions_name = buffer(offset, 4):le_uint()
        offset = offset + 4
        repeatingGroup:add_le(protocol_auctionList_auctions_name, buffer(offset, varLength_protocol_auctionList_auctions_name))
        offset = offset + varLength_protocol_auctionList_auctions_name
    end
    return offset
end