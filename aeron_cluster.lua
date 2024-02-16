aeron_cluster_protocol = Proto("aeron_cluster", "aeron_cluster_protocol")


aeroncluster_aeroncluster_messageHeader_blockLength = ProtoField.uint16("blockLength", "blockLength", base.DEC)
aeroncluster_aeroncluster_messageHeader_templateId = ProtoField.uint16("templateId", "templateId", base.DEC)
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
messageLength = ProtoField.int16("messageLength", "messageLength", base.DEC)

aeron_cluster_protocol.fields = { aeroncluster_aeroncluster_messageHeader_blockLength, aeroncluster_aeroncluster_messageHeader_templateId, aeroncluster_aeroncluster_messageHeader_schemaId, aeroncluster_aeroncluster_messageHeader_version, aeroncluster_sessionMessageHeader_leadershipTermId, aeroncluster_sessionMessageHeader_clusterSessionId, aeroncluster_sessionMessageHeader_timestamp, aeroncluster_sessionEvent_clusterSessionId, aeroncluster_sessionEvent_correlationId, aeroncluster_sessionEvent_leadershipTermId, aeroncluster_sessionEvent_leaderMemberId, aeroncluster_sessionEvent_code, aeroncluster_sessionEvent_version, aeroncluster_sessionEvent_detail, aeroncluster_sessionConnectRequest_correlationId, aeroncluster_sessionConnectRequest_responseStreamId, aeroncluster_sessionConnectRequest_version, aeroncluster_sessionConnectRequest_responseChannel, aeroncluster_sessionConnectRequest_encodedCredentials, aeroncluster_sessionCloseRequest_leadershipTermId, aeroncluster_sessionCloseRequest_clusterSessionId, aeroncluster_sessionKeepAlive_leadershipTermId, aeroncluster_sessionKeepAlive_clusterSessionId, aeroncluster_newLeaderEvent_leadershipTermId, aeroncluster_newLeaderEvent_clusterSessionId, aeroncluster_newLeaderEvent_leaderMemberId, aeroncluster_newLeaderEvent_ingressEndpoints, aeroncluster_challenge_correlationId, aeroncluster_challenge_clusterSessionId, aeroncluster_challenge_encodedChallenge, aeroncluster_challengeResponse_correlationId, aeroncluster_challengeResponse_clusterSessionId, aeroncluster_challengeResponse_encodedCredentials, aeroncluster_timerEvent_leadershipTermId, aeroncluster_timerEvent_correlationId, aeroncluster_timerEvent_timestamp, aeroncluster_sessionOpenEvent_leadershipTermId, aeroncluster_sessionOpenEvent_correlationId, aeroncluster_sessionOpenEvent_clusterSessionId, aeroncluster_sessionOpenEvent_timestamp, aeroncluster_sessionOpenEvent_responseStreamId, aeroncluster_sessionOpenEvent_responseChannel, aeroncluster_sessionOpenEvent_encodedPrincipal, aeroncluster_sessionCloseEvent_leadershipTermId, aeroncluster_sessionCloseEvent_clusterSessionId, aeroncluster_sessionCloseEvent_timestamp, aeroncluster_sessionCloseEvent_closeReason, aeroncluster_clusterActionRequest_leadershipTermId, aeroncluster_clusterActionRequest_logPosition, aeroncluster_clusterActionRequest_timestamp, aeroncluster_clusterActionRequest_action, aeroncluster_clusterActionRequest_flags, aeroncluster_newLeadershipTermEvent_leadershipTermId, aeroncluster_newLeadershipTermEvent_logPosition, aeroncluster_newLeadershipTermEvent_timestamp, aeroncluster_newLeadershipTermEvent_termBaseLogPosition, aeroncluster_newLeadershipTermEvent_leaderMemberId, aeroncluster_newLeadershipTermEvent_logSessionId, aeroncluster_newLeadershipTermEvent_timeUnit, aeroncluster_newLeadershipTermEvent_appVersion, aeroncluster_membershipChangeEvent_leadershipTermId, aeroncluster_membershipChangeEvent_logPosition, aeroncluster_membershipChangeEvent_timestamp, aeroncluster_membershipChangeEvent_leaderMemberId, aeroncluster_membershipChangeEvent_clusterSize, aeroncluster_membershipChangeEvent_changeType, aeroncluster_membershipChangeEvent_memberId, aeroncluster_membershipChangeEvent_clusterMembers, aeroncluster_adminRequest_leadershipTermId, aeroncluster_adminRequest_clusterSessionId, aeroncluster_adminRequest_correlationId, aeroncluster_adminRequest_requestType, aeroncluster_adminRequest_payload, aeroncluster_adminResponse_clusterSessionId, aeroncluster_adminResponse_correlationId, aeroncluster_adminResponse_requestType, aeroncluster_adminResponse_responseCode, aeroncluster_adminResponse_message, aeroncluster_adminResponse_payload, aeroncluster_closeSession_clusterSessionId, aeroncluster_scheduleTimer_correlationId, aeroncluster_scheduleTimer_deadline, aeroncluster_cancelTimer_correlationId, aeroncluster_serviceAck_logPosition, aeroncluster_serviceAck_timestamp, aeroncluster_serviceAck_ackId, aeroncluster_serviceAck_relevantId, aeroncluster_serviceAck_serviceId, aeroncluster_clusterMembersQuery_correlationId, aeroncluster_clusterMembersQuery_extended, aeroncluster_removeMember_memberId, aeroncluster_removeMember_isPassive, aeroncluster_joinLog_logPosition, aeroncluster_joinLog_maxLogPosition, aeroncluster_joinLog_memberId, aeroncluster_joinLog_logSessionId, aeroncluster_joinLog_logStreamId, aeroncluster_joinLog_isStartup, aeroncluster_joinLog_role, aeroncluster_joinLog_logChannel, aeroncluster_clusterMembersResponse_correlationId, aeroncluster_clusterMembersResponse_leaderMemberId, aeroncluster_clusterMembersResponse_activeMembers, aeroncluster_clusterMembersResponse_passiveFollowers, aeroncluster_serviceTerminationPosition_logPosition, aeroncluster_clusterMembersExtendedResponse_correlationId, aeroncluster_clusterMembersExtendedResponse_currentTimeNs, aeroncluster_clusterMembersExtendedResponse_leaderMemberId, aeroncluster_clusterMembersExtendedResponse_memberId, aeroncluster_clusterMembersExtendedResponse_activeMembers, aeroncluster_clusterMembersExtendedResponse_activeMembers_leadershipTermId, aeroncluster_clusterMembersExtendedResponse_activeMembers_logPosition, aeroncluster_clusterMembersExtendedResponse_activeMembers_timeOfLastAppendNs, aeroncluster_clusterMembersExtendedResponse_activeMembers_memberId, aeroncluster_clusterMembersExtendedResponse_activeMembers_ingressEndpoint, aeroncluster_clusterMembersExtendedResponse_activeMembers_consensusEndpoint, aeroncluster_clusterMembersExtendedResponse_activeMembers_logEndpoint, aeroncluster_clusterMembersExtendedResponse_activeMembers_catchupEndpoint, aeroncluster_clusterMembersExtendedResponse_activeMembers_archiveEndpoint, aeroncluster_clusterMembersExtendedResponse_passiveMembers, aeroncluster_clusterMembersExtendedResponse_passiveMembers_leadershipTermId, aeroncluster_clusterMembersExtendedResponse_passiveMembers_logPosition, aeroncluster_clusterMembersExtendedResponse_passiveMembers_timeOfLastAppendNs, aeroncluster_clusterMembersExtendedResponse_passiveMembers_memberId, aeroncluster_clusterMembersExtendedResponse_passiveMembers_ingressEndpoint, aeroncluster_clusterMembersExtendedResponse_passiveMembers_consensusEndpoint, aeroncluster_clusterMembersExtendedResponse_passiveMembers_logEndpoint, aeroncluster_clusterMembersExtendedResponse_passiveMembers_catchupEndpoint, aeroncluster_clusterMembersExtendedResponse_passiveMembers_archiveEndpoint, aeroncluster_canvassPosition_logLeadershipTermId, aeroncluster_canvassPosition_logPosition, aeroncluster_canvassPosition_leadershipTermId, aeroncluster_canvassPosition_followerMemberId, aeroncluster_canvassPosition_protocolVersion, aeroncluster_requestVote_logLeadershipTermId, aeroncluster_requestVote_logPosition, aeroncluster_requestVote_candidateTermId, aeroncluster_requestVote_candidateMemberId, aeroncluster_requestVote_protocolVersion, aeroncluster_vote_candidateTermId, aeroncluster_vote_logLeadershipTermId, aeroncluster_vote_logPosition, aeroncluster_vote_candidateMemberId, aeroncluster_vote_followerMemberId, aeroncluster_vote_vote, aeroncluster_newLeadershipTerm_logLeadershipTermId, aeroncluster_newLeadershipTerm_nextLeadershipTermId, aeroncluster_newLeadershipTerm_nextTermBaseLogPosition, aeroncluster_newLeadershipTerm_nextLogPosition, aeroncluster_newLeadershipTerm_leadershipTermId, aeroncluster_newLeadershipTerm_termBaseLogPosition, aeroncluster_newLeadershipTerm_logPosition, aeroncluster_newLeadershipTerm_leaderRecordingId, aeroncluster_newLeadershipTerm_timestamp, aeroncluster_newLeadershipTerm_leaderMemberId, aeroncluster_newLeadershipTerm_logSessionId, aeroncluster_newLeadershipTerm_appVersion, aeroncluster_newLeadershipTerm_isStartup, aeroncluster_appendPosition_leadershipTermId, aeroncluster_appendPosition_logPosition, aeroncluster_appendPosition_followerMemberId, aeroncluster_appendPosition_flags, aeroncluster_commitPosition_leadershipTermId, aeroncluster_commitPosition_logPosition, aeroncluster_commitPosition_leaderMemberId, aeroncluster_catchupPosition_leadershipTermId, aeroncluster_catchupPosition_logPosition, aeroncluster_catchupPosition_followerMemberId, aeroncluster_catchupPosition_catchupEndpoint, aeroncluster_stopCatchup_leadershipTermId, aeroncluster_stopCatchup_followerMemberId, aeroncluster_addPassiveMember_correlationId, aeroncluster_addPassiveMember_memberEndpoints, aeroncluster_clusterMembersChange_correlationId, aeroncluster_clusterMembersChange_leaderMemberId, aeroncluster_clusterMembersChange_activeMembers, aeroncluster_clusterMembersChange_passiveMembers, aeroncluster_snapshotRecordingQuery_correlationId, aeroncluster_snapshotRecordingQuery_requestMemberId, aeroncluster_snapshotRecordings_correlationId, aeroncluster_snapshotRecordings_snapshots, aeroncluster_snapshotRecordings_snapshots_recordingId, aeroncluster_snapshotRecordings_snapshots_leadershipTermId, aeroncluster_snapshotRecordings_snapshots_termBaseLogPosition, aeroncluster_snapshotRecordings_snapshots_logPosition, aeroncluster_snapshotRecordings_snapshots_timestamp, aeroncluster_snapshotRecordings_snapshots_serviceId, aeroncluster_snapshotRecordings_memberEndpoints, aeroncluster_joinCluster_leadershipTermId, aeroncluster_joinCluster_memberId, aeroncluster_terminationPosition_leadershipTermId, aeroncluster_terminationPosition_logPosition, aeroncluster_terminationAck_leadershipTermId, aeroncluster_terminationAck_logPosition, aeroncluster_terminationAck_memberId, aeroncluster_backupQuery_correlationId, aeroncluster_backupQuery_responseStreamId, aeroncluster_backupQuery_version, aeroncluster_backupQuery_responseChannel, aeroncluster_backupQuery_encodedCredentials, aeroncluster_backupResponse_correlationId, aeroncluster_backupResponse_logRecordingId, aeroncluster_backupResponse_logLeadershipTermId, aeroncluster_backupResponse_logTermBaseLogPosition, aeroncluster_backupResponse_lastLeadershipTermId, aeroncluster_backupResponse_lastTermBaseLogPosition, aeroncluster_backupResponse_commitPositionCounterId, aeroncluster_backupResponse_leaderMemberId, aeroncluster_backupResponse_memberId, aeroncluster_backupResponse_snapshots, aeroncluster_backupResponse_snapshots_recordingId, aeroncluster_backupResponse_snapshots_leadershipTermId, aeroncluster_backupResponse_snapshots_termBaseLogPosition, aeroncluster_backupResponse_snapshots_logPosition, aeroncluster_backupResponse_snapshots_timestamp, aeroncluster_backupResponse_snapshots_serviceId, aeroncluster_backupResponse_clusterMembers, aeroncluster_heartbeatRequest_correlationId, aeroncluster_heartbeatRequest_responseStreamId, aeroncluster_heartbeatRequest_responseChannel, aeroncluster_heartbeatRequest_encodedCredentials, aeroncluster_heartbeatResponse_correlationId, aeroncluster_standbySnapshot_correlationId, aeroncluster_standbySnapshot_version, aeroncluster_standbySnapshot_responseStreamId, aeroncluster_standbySnapshot_snapshots, aeroncluster_standbySnapshot_snapshots_recordingId, aeroncluster_standbySnapshot_snapshots_leadershipTermId, aeroncluster_standbySnapshot_snapshots_termBaseLogPosition, aeroncluster_standbySnapshot_snapshots_logPosition, aeroncluster_standbySnapshot_snapshots_timestamp, aeroncluster_standbySnapshot_snapshots_serviceId, aeroncluster_standbySnapshot_snapshots_archiveEndpoint, aeroncluster_standbySnapshot_responseChannel, aeroncluster_standbySnapshot_encodedCredentials, aeroncluster_snapshotMarker_typeId, aeroncluster_snapshotMarker_logPosition, aeroncluster_snapshotMarker_leadershipTermId, aeroncluster_snapshotMarker_index, aeroncluster_snapshotMarker_mark, aeroncluster_snapshotMarker_timeUnit, aeroncluster_snapshotMarker_appVersion, aeroncluster_clientSession_clusterSessionId, aeroncluster_clientSession_responseStreamId, aeroncluster_clientSession_responseChannel, aeroncluster_clientSession_encodedPrincipal, aeroncluster_clusterSession_clusterSessionId, aeroncluster_clusterSession_correlationId, aeroncluster_clusterSession_openedLogPosition, aeroncluster_clusterSession_timeOfLastActivity, aeroncluster_clusterSession_closeReason, aeroncluster_clusterSession_responseStreamId, aeroncluster_clusterSession_responseChannel, aeroncluster_timer_correlationId, aeroncluster_timer_deadline, aeroncluster_consensusModule_nextSessionId, aeroncluster_consensusModule_nextServiceSessionId, aeroncluster_consensusModule_logServiceSessionId, aeroncluster_consensusModule_pendingMessageCapacity, aeroncluster_clusterMembers_memberId, aeroncluster_clusterMembers_highMemberId, aeroncluster_clusterMembers_clusterMembers, aeroncluster_pendingMessageTracker_nextServiceSessionId, aeroncluster_pendingMessageTracker_logServiceSessionId, aeroncluster_pendingMessageTracker_pendingMessageCapacity, aeroncluster_pendingMessageTracker_serviceId, aeroncluster_requestServiceAck_logPosition, messageLength }

function aeron_cluster_protocol.dissector(buffer, pinfo, tree)
    pinfo.desegment_len = buffer:len()
    pinfo.desegment_offset = 0
    pinfo.cols.protocol = aeron_cluster_protocol.name

    local protocolRootTree = tree:add(aeron_cluster_protocol, buffer, "aeron_cluster_protocol")

    dispatch(buffer, 0, protocolRootTree)
end

-- Heuristic dissector function for SBE with specific conditions
local function heuristic_sbe_dissector(buffer, pinfo, tree)
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
    if schemaId == 111 and blockLength > 0 then
        -- Call the dissector function
        aeron_cluster_protocol.dissector(buffer, pinfo, tree)

        -- Return true to indicate this dissector successfully dissected the buffer
        return true
    end

    -- Return false if conditions are not met
    return false
end

-- Register the heuristic dissector
aeron_cluster_protocol:register_heuristic("aeron_msg_payload", heuristic_sbe_dissector)

function dispatch(buffer, offset, subTree)
    local schemaId = schemaId(buffer, offset)
    if schemaId == 111 then
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


local tcp_port = DissectorTable.get("tcp.port")
tcp_port:add(999, aeron_cluster_protocol)

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

function decodeAeroncluster(buffer, offset, subtree)
    local templateId = templateId(buffer, offset)
    local blockLength = blockLength(buffer, offset)
    local aeronclusterHeaderSubTree = subtree:add(aeron_cluster_protocol, buffer(), "Aeroncluster Protocol Header")
    offset = aeronclusterSbeHeader(buffer, offset, aeronclusterHeaderSubTree)
    offset = dispatchTableAeroncluster(buffer, offset, aeronclusterHeaderSubTree, templateId, blockLength)
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


function decode_aeroncluster_sessionMessageHeader(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local sessionMessageHeaderSubTree = subtree:add(aeron_cluster_protocol, buffer(), "SessionMessageHeader")
    sessionMessageHeaderSubTree:add_le(aeroncluster_sessionMessageHeader_leadershipTermId, buffer(offset, 8))
    offset = offset + 8
    sessionMessageHeaderSubTree:add_le(aeroncluster_sessionMessageHeader_clusterSessionId, buffer(offset, 8))
    offset = offset + 8
    sessionMessageHeaderSubTree:add_le(aeroncluster_sessionMessageHeader_timestamp, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end

function decode_aeroncluster_sessionEvent(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local sessionEventSubTree = subtree:add(aeron_cluster_protocol, buffer(), "SessionEvent")
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
    local sessionConnectRequestSubTree = subtree:add(aeron_cluster_protocol, buffer(), "SessionConnectRequest")
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
    local sessionCloseRequestSubTree = subtree:add(aeron_cluster_protocol, buffer(), "SessionCloseRequest")
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
    local sessionKeepAliveSubTree = subtree:add(aeron_cluster_protocol, buffer(), "SessionKeepAlive")
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
    local newLeaderEventSubTree = subtree:add(aeron_cluster_protocol, buffer(), "NewLeaderEvent")
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
    local challengeSubTree = subtree:add(aeron_cluster_protocol, buffer(), "Challenge")
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
    local challengeResponseSubTree = subtree:add(aeron_cluster_protocol, buffer(), "ChallengeResponse")
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
    local timerEventSubTree = subtree:add(aeron_cluster_protocol, buffer(), "TimerEvent")
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
    local sessionOpenEventSubTree = subtree:add(aeron_cluster_protocol, buffer(), "SessionOpenEvent")
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
    local sessionCloseEventSubTree = subtree:add(aeron_cluster_protocol, buffer(), "SessionCloseEvent")
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
    local clusterActionRequestSubTree = subtree:add(aeron_cluster_protocol, buffer(), "ClusterActionRequest")
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
    local newLeadershipTermEventSubTree = subtree:add(aeron_cluster_protocol, buffer(), "NewLeadershipTermEvent")
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
    local membershipChangeEventSubTree = subtree:add(aeron_cluster_protocol, buffer(), "MembershipChangeEvent")
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
    local adminRequestSubTree = subtree:add(aeron_cluster_protocol, buffer(), "AdminRequest")
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
    local adminResponseSubTree = subtree:add(aeron_cluster_protocol, buffer(), "AdminResponse")
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
    local closeSessionSubTree = subtree:add(aeron_cluster_protocol, buffer(), "CloseSession")
    closeSessionSubTree:add_le(aeroncluster_closeSession_clusterSessionId, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end

function decode_aeroncluster_scheduleTimer(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local scheduleTimerSubTree = subtree:add(aeron_cluster_protocol, buffer(), "ScheduleTimer")
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
    local cancelTimerSubTree = subtree:add(aeron_cluster_protocol, buffer(), "CancelTimer")
    cancelTimerSubTree:add_le(aeroncluster_cancelTimer_correlationId, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end

function decode_aeroncluster_serviceAck(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local serviceAckSubTree = subtree:add(aeron_cluster_protocol, buffer(), "ServiceAck")
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
    local clusterMembersQuerySubTree = subtree:add(aeron_cluster_protocol, buffer(), "ClusterMembersQuery")
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
    local removeMemberSubTree = subtree:add(aeron_cluster_protocol, buffer(), "RemoveMember")
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
    local joinLogSubTree = subtree:add(aeron_cluster_protocol, buffer(), "JoinLog")
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
    local clusterMembersResponseSubTree = subtree:add(aeron_cluster_protocol, buffer(), "ClusterMembersResponse")
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
    local serviceTerminationPositionSubTree = subtree:add(aeron_cluster_protocol, buffer(), "ServiceTerminationPosition")
    serviceTerminationPositionSubTree:add_le(aeroncluster_serviceTerminationPosition_logPosition, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end

function decode_aeroncluster_clusterMembersExtendedResponse(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local clusterMembersExtendedResponseSubTree = subtree:add(aeron_cluster_protocol, buffer(), "ClusterMembersExtendedResponse")
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
    local canvassPositionSubTree = subtree:add(aeron_cluster_protocol, buffer(), "CanvassPosition")
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
    local requestVoteSubTree = subtree:add(aeron_cluster_protocol, buffer(), "RequestVote")
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
    local voteSubTree = subtree:add(aeron_cluster_protocol, buffer(), "Vote")
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
    local newLeadershipTermSubTree = subtree:add(aeron_cluster_protocol, buffer(), "NewLeadershipTerm")
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
    local appendPositionSubTree = subtree:add(aeron_cluster_protocol, buffer(), "AppendPosition")
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
    local commitPositionSubTree = subtree:add(aeron_cluster_protocol, buffer(), "CommitPosition")
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
    local catchupPositionSubTree = subtree:add(aeron_cluster_protocol, buffer(), "CatchupPosition")
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
    local stopCatchupSubTree = subtree:add(aeron_cluster_protocol, buffer(), "StopCatchup")
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
    local addPassiveMemberSubTree = subtree:add(aeron_cluster_protocol, buffer(), "AddPassiveMember")
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
    local clusterMembersChangeSubTree = subtree:add(aeron_cluster_protocol, buffer(), "ClusterMembersChange")
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
    local snapshotRecordingQuerySubTree = subtree:add(aeron_cluster_protocol, buffer(), "SnapshotRecordingQuery")
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
    local snapshotRecordingsSubTree = subtree:add(aeron_cluster_protocol, buffer(), "SnapshotRecordings")
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
    local joinClusterSubTree = subtree:add(aeron_cluster_protocol, buffer(), "JoinCluster")
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
    local terminationPositionSubTree = subtree:add(aeron_cluster_protocol, buffer(), "TerminationPosition")
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
    local terminationAckSubTree = subtree:add(aeron_cluster_protocol, buffer(), "TerminationAck")
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
    local backupQuerySubTree = subtree:add(aeron_cluster_protocol, buffer(), "BackupQuery")
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
    local backupResponseSubTree = subtree:add(aeron_cluster_protocol, buffer(), "BackupResponse")
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
    local heartbeatRequestSubTree = subtree:add(aeron_cluster_protocol, buffer(), "HeartbeatRequest")
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
    local heartbeatResponseSubTree = subtree:add(aeron_cluster_protocol, buffer(), "HeartbeatResponse")
    heartbeatResponseSubTree:add_le(aeroncluster_heartbeatResponse_correlationId, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end

function decode_aeroncluster_standbySnapshot(buffer, initialOffset, blockLength, subtree)
    local offsetToStartOfBlock = initialOffset
    local offset = initialOffset
    local standbySnapshotSubTree = subtree:add(aeron_cluster_protocol, buffer(), "StandbySnapshot")
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
    local snapshotMarkerSubTree = subtree:add(aeron_cluster_protocol, buffer(), "SnapshotMarker")
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
    local clientSessionSubTree = subtree:add(aeron_cluster_protocol, buffer(), "ClientSession")
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
    local clusterSessionSubTree = subtree:add(aeron_cluster_protocol, buffer(), "ClusterSession")
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
    local timerSubTree = subtree:add(aeron_cluster_protocol, buffer(), "Timer")
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
    local consensusModuleSubTree = subtree:add(aeron_cluster_protocol, buffer(), "ConsensusModule")
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
    local clusterMembersSubTree = subtree:add(aeron_cluster_protocol, buffer(), "ClusterMembers")
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
    local pendingMessageTrackerSubTree = subtree:add(aeron_cluster_protocol, buffer(), "PendingMessageTracker")
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
    local requestServiceAckSubTree = subtree:add(aeron_cluster_protocol, buffer(), "requestServiceAck")
    requestServiceAckSubTree:add_le(aeroncluster_requestServiceAck_logPosition, buffer(offset, 8))
    offset = offset + 8
    offset = blockLength + initialOffset

    return offset
end