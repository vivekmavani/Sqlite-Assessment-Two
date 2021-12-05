

import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as p;
part 'audit_db.g.dart';

@DriftDatabase(
  include: {'tables.drift'}
)
class AppDatabase extends _$AppDatabase {
  AppDatabase(QueryExecutor e)
      : super(e);

  @override
  int get schemaVersion => 1;

  Future<void> insertAuditDetailsListData(
      List<AuditDetailsListData> listData) async {
    await batch((batch) {
      batch.insertAll(auditDetailsList, listData);
    });
  }

  Future<void> insertScoringTypesData(List<ScoringType> listData) async {
    await batch((batch) {
      batch.insertAll(scoringTypes, listData);
    });
  }

  Future<void> insertScoringFormulaInfoModels(
      List<ScoringFormulaInfoModelData> listData) async {
    await batch((batch) {
      batch.insertAll(scoringFormulaInfoModel, listData);
    });
  }

  Future<void> insertauditScoring(List<AuditScoringData> listData) async {
    await batch((batch) {
      batch.insertAll(auditScoring, listData);
    });
  }

  Future<void> insertauditQuestion(List<AuditQuestionData> listData) async {
    await batch((batch) {
      batch.insertAll(auditQuestion, listData);
    });
  }

  Future<void> insertauditEntityTypes(List<AuditEntityType> listData) async {
    await batch((batch) {
      batch.insertAll(auditEntityTypes, listData);
    });
  }

  Future<void> insertauditEntityTypeQuestions(
      List<AuditEntityTypeQuestion> listData) async {
    await batch((batch) {
      batch.insertAll(auditEntityTypeQuestions, listData);
    });
  }

  Future<void> insertauditCorrectiveActions(
      List<AuditCorrectiveAction> listData) async {
    await batch((batch) {
      batch.insertAll(auditCorrectiveActions, listData);
    });
  }

  Future<void> insertauditFailureReason(
      List<AuditFailureReasonData> listData) async {
    await batch((batch) {
      batch.insertAll(auditFailureReason, listData);
    });
  }

  Future<void> insertauditAdditionalFields(
      List<AuditAdditionalField> listData) async {
    await batch((batch) {
      batch.insertAll(auditAdditionalFields, listData);
    });
  }

  Future<void> insertsize(List<SizeData> listData) async {
    await batch((batch) {
      batch.insertAll(size, listData);
    });
  }

  Future<void> insertauditTeamTask(List<AuditTeamTaskData> listData) async {
    await batch((batch) {
      batch.insertAll(auditTeamTask, listData);
    });
  }

  Future<void> insertteamDetails(List<TeamDetail> listData) async {
    await batch((batch) {
      batch.insertAll(teamDetails, listData);
    });
  }

  Future<void> insertuserDetails(List<UserDetail> listData) async {
    await batch((batch) {
      batch.insertAll(userDetails, listData);
    });
  }

  Future<void> insertuserPermission(List<UserPermissionData> listData) async {
    await batch((batch) {
      batch.insertAll(userPermission, listData);
    });
  }

  Future<void> insertoccurrenceScheduleDates(
      List<OccurrenceScheduleDate> listData) async {
    await batch((batch) {
      batch.insertAll(occurrenceScheduleDates, listData);
    });
  }

  Future<void> insertauditEnforceTimeData(
      List<AuditEnforceTimeDataData> listData) async {
    await batch((batch) {
      batch.insertAll(auditEnforceTimeData, listData);
    });
  }

  Future<void> insertauditGroups(List<AuditGroup> listData) async {
    await batch((batch) {
      batch.insertAll(auditGroups, listData);
    });
  }

  Future<void> insertresumeAuditLatestData(
      List<ResumeAuditLatestDataData> listData) async {
    await batch((batch) {
      batch.insertAll(resumeAuditLatestData, listData);
    });
  }

  Future<void> insertauditAdditionalFieldEntityTypes(
      List<AuditAdditionalFieldEntityType> listData) async {
    await batch((batch) {
      batch.insertAll(auditAdditionalFieldEntityTypes, listData);
    });
  }

  Future<void> insertauditAdditionalFieldEntityTypesValue(
      List<AuditAdditionalFieldTypeValue> listData) async {
    await batch((batch) {
      batch.insertAll(auditAdditionalFieldTypeValues, listData);
    });
  }

  Future<void> insertauditEntity(
      List<AuditEntityData> listData) async {
    await batch((batch) {
      batch.insertAll(auditEntity, listData);
    });
  }

/*  Future<void>? insertAuditEntityData(AuditEntityModel auditEntityModel) async {

    for(var i = 0;i< auditEntityModel.auditEntity.length;i++)
      {
       insertAuditEntity(
            auditEntityModel.auditEntity[i].auditEntityId,
            auditEntityModel.auditEntity[i].auditId,
            auditEntityModel.auditEntity[i].auditEntityName,
            auditEntityModel.auditEntity[i].auditEntityTypeId,
            auditEntityModel.auditEntity[i].auditParentEntityId,
            auditEntityModel.auditEntity[i].sequenceNo,
            auditEntityModel.auditEntity[i].entityEndDate,
            auditEntityModel.auditEntity[i].isLeafNode,
            auditEntityModel.auditEntity[i].barcodeNFC,
            auditEntityModel.auditEntity[i].entityLevel,
            auditEntityModel.auditEntity[i].entityException,
            auditEntityModel.auditEntity[i].scheduleOccurrenceIds);
      }
    for(var i = 0;i< auditEntityModel.auditDetailsList.length;i++)
    {
      insertAuditDetailsList(
      auditEntityModel.auditDetailsList[i].userId,
      auditEntityModel.auditDetailsList[i].auditName,
      auditEntityModel.auditDetailsList[i].auditId,
      auditEntityModel.auditDetailsList[i].failureReason,
      auditEntityModel.auditDetailsList[i].correctiveAction,
      auditEntityModel.auditDetailsList[i].auditorSignOff,
      auditEntityModel.auditDetailsList[i].secondarySignOff,
      auditEntityModel.auditDetailsList[i].entityMustAddress,
      auditEntityModel.auditDetailsList[i].scoringFormulaId,
      auditEntityModel.auditDetailsList[i].auditMasterId,
      auditEntityModel.auditDetailsList[i].autoSyncInMobile,
      auditEntityModel.auditDetailsList[i].versionId,
      auditEntityModel.auditDetailsList[i].isFailureText,
      auditEntityModel.auditDetailsList[i].isFailureList,
      auditEntityModel.auditDetailsList[i].isCorrectiveActionText,
      auditEntityModel.auditDetailsList[i].isCorrectiveActionList,
      auditEntityModel.auditDetailsList[i].defaultTaskDueDateDays,
      auditEntityModel.auditDetailsList[i].task,
      auditEntityModel.auditDetailsList[i].allowDueDate,
      auditEntityModel.auditDetailsList[i].sendTaskAlertEmail,
      auditEntityModel.auditDetailsList[i].barcodeOrNFC,
      auditEntityModel.auditDetailsList[i].canEdit,
      auditEntityModel.auditDetailsList[i].showScoreInMobile,
      auditEntityModel.auditDetailsList[i].isRecheck,
      auditEntityModel.auditDetailsList[i].isRandomization,
      auditEntityModel.auditDetailsList[i].isQuestionCategory,
      auditEntityModel.auditDetailsList[i].isNotifyAuditor,
      auditEntityModel.auditDetailsList[i].auditorDeclarationText,
      auditEntityModel.auditDetailsList[i].secondaryDeclarationText,
      auditEntityModel.auditDetailsList[i].isScheduling,
      auditEntityModel.auditDetailsList[i].isFormerData,
      auditEntityModel.auditDetailsList[i].isAuditQuestions,
      auditEntityModel.auditDetailsList[i].isEntitiesAuditable,
      auditEntityModel.auditDetailsList[i].isEnforceFormerAudit,
      auditEntityModel.auditDetailsList[i].isFlipScore,
      auditEntityModel.auditDetailsList[i].auditTracking,
      auditEntityModel.auditDetailsList[i].isMultipleLevelTeam,
      auditEntityModel.auditDetailsList[i].isTaskDistribution,
      auditEntityModel.auditDetailsList[i].approveProcessEntitiesMandatory,
      auditEntityModel.auditDetailsList[i].approvalProcess,
      auditEntityModel.auditDetailsList[i].submissionPasswordRequired,
      auditEntityModel.auditDetailsList[i].isViewOnlyFormerData,
      auditEntityModel.auditDetailsList[i].auditGroupId,
      auditEntityModel.auditDetailsList[i].auditEndDate,
      auditEntityModel.auditDetailsList[i].lastAuditResponseId,
      );
    }

    for(var i = 0;i< auditEntityModel.scoringFormulaInfoModel.length;i++)
    {
       insertScoringFormulaInfoModel(
          auditEntityModel.scoringFormulaInfoModel[i].scoringFormulaId,
          auditEntityModel.scoringFormulaInfoModel[i].scoringFormulaDetailId,
          auditEntityModel.scoringFormulaInfoModel[i].scoringtypeid,
          auditEntityModel.scoringFormulaInfoModel[i].shortCode,
          auditEntityModel.scoringFormulaInfoModel[i].sortOrder,
          auditEntityModel.scoringFormulaInfoModel[i].title,
          auditEntityModel.scoringFormulaInfoModel[i].weight,
          auditEntityModel.scoringFormulaInfoModel[i].isDefault,
          auditEntityModel.scoringFormulaInfoModel[i].hexCode,
          auditEntityModel.scoringFormulaInfoModel[i].fontHexCode,
          auditEntityModel.scoringFormulaInfoModel[i].isAuditQuestions,
          auditEntityModel.scoringFormulaInfoModel[i].initialAuditScore);
    }

    for(var i = 0;i< auditEntityModel.auditScoring.length;i++)
    {
      insertAuditScoring(
          auditEntityModel.auditScoring[i].auditScoringId,
          auditEntityModel.auditScoring[i].auditId,
          auditEntityModel.auditScoring[i].minScore,
          auditEntityModel.auditScoring[i].maxScore,
          auditEntityModel.auditScoring[i].color);
    }

    for(var i = 0;i< auditEntityModel.scoringTypes.length;i++)
    {
      insertScoringTypes(
          auditEntityModel.scoringTypes[i].scoringTypeId!,
          auditEntityModel.scoringTypes[i].scoringTypeName,
          auditEntityModel.scoringTypes[i].applicationLanguageId
      );
    }
    for(var i = 0;i< auditEntityModel.auditQuestion.length;i++)
    {
      insertAuditQuestion(
          auditEntityModel.auditQuestion[i].auditQuestionId,
          auditEntityModel.auditQuestion[i].auditId,
          auditEntityModel.auditQuestion[i].questionTitle,
          auditEntityModel.auditQuestion[i].sequenceNo,
          auditEntityModel.auditQuestion[i].description,
          auditEntityModel.auditQuestion[i].weight,
          auditEntityModel.auditQuestion[i].statusId,
          auditEntityModel.auditQuestion[i].questionCategory,
          auditEntityModel.auditQuestion[i].questionCategoryId,
          auditEntityModel.auditQuestion[i].questionImageId,
          auditEntityModel.auditQuestion[i].imageUrl
      );
    }
    for(var i = 0;i< auditEntityModel.auditEntityTypes.length;i++)
    {
      insertAuditEntityTypes(
        auditEntityModel.auditEntityTypes[i].auditId,
        auditEntityModel.auditEntityTypes[i].auditEntityTypeId,
        auditEntityModel.auditEntityTypes[i].auditEntityTypeName,
        auditEntityModel.auditEntityTypes[i].entityTypeWeight,
      );
    }
    for(var i = 0;i< auditEntityModel.auditEntityTypeQuestions.length;i++)
    {
      insertAuditEntityTypeQuestions(
        auditEntityModel.auditEntityTypeQuestions[i].auditEntityTypeId,
        auditEntityModel.auditEntityTypeQuestions[i].auditEntityTypeQuestionId,
        auditEntityModel.auditEntityTypeQuestions[i].auditQuestionId,
      );
    }
    for(var i = 0;i< auditEntityModel.auditCorrectiveActions.length;i++)
    {
      insertAuditCorrectiveActions(
        auditEntityModel.auditCorrectiveActions[i].auditCorrectiveActionId,
        auditEntityModel.auditCorrectiveActions[i].auditEntityTypeQuestionId,
        auditEntityModel.auditCorrectiveActions[i].auditQuestionCorrectiveActionId,
        auditEntityModel.auditCorrectiveActions[i].correctiveActionTitle,
        auditEntityModel.auditCorrectiveActions[i].auditId,


      );
    }
    for(var i = 0;i< auditEntityModel.auditFailureReason.length;i++)
    {
      insertAuditFailureReason(
        auditEntityModel.auditFailureReason[i].auditQuestionFailureReasonId,
        auditEntityModel.auditFailureReason[i].auditEntityTypeQuestionId,
        auditEntityModel.auditFailureReason[i].auditFailureReasonId,
        auditEntityModel.auditFailureReason[i].failureReasonTitle,
        auditEntityModel.auditFailureReason[i].auditId,

      );
    }
    for(var i = 0;i< auditEntityModel.auditAdditionalFields.length;i++)
    {
      insertAuditAdditionalFields(
          auditEntityModel.auditAdditionalFields[i].additionalFieldId,
          auditEntityModel.auditAdditionalFields[i].auditId,
          auditEntityModel.auditAdditionalFields[i].fieldName,
          auditEntityModel.auditAdditionalFields[i].fieldTypeId,
          auditEntityModel.auditAdditionalFields[i].displayPosition,
          auditEntityModel.auditAdditionalFields[i].isMandatory,
          auditEntityModel.auditAdditionalFields[i].isPreDisplay,
          auditEntityModel.auditAdditionalFields[i].levelTypeId,
          auditEntityModel.auditAdditionalFields[i].auditQuestionId,
          auditEntityModel.auditAdditionalFields[i].sequenceNo,
          auditEntityModel.auditAdditionalFields[i].isMask,
          auditEntityModel.auditAdditionalFields[i].maskPattent,
          auditEntityModel.auditAdditionalFields[i].maskPlaceholder
      );
    }
    for(var i = 0;i< auditEntityModel.auditAdditionalFieldTypeValues.length;i++)
    {
      insertAuditAdditionalFieldTypeValues(
          auditEntityModel.auditAdditionalFieldTypeValues[i].additionalFieldTypeValueId,
          auditEntityModel.auditAdditionalFieldTypeValues[i].additionalFieldId,
          auditEntityModel.auditAdditionalFieldTypeValues[i].additionalFieldValue,
      );
    }
    for(var i = 0;i< auditEntityModel.auditAdditionalFieldEntityTypes.length;i++)
    {
      insertAuditAdditionalFieldEntityTypes(
        auditEntityModel.auditAdditionalFieldEntityTypes[i].additionalFieldEntityTypeId,
        auditEntityModel.auditAdditionalFieldEntityTypes[i].additionalFieldId,
        auditEntityModel.auditAdditionalFieldEntityTypes[i].entityTypeId,
        auditEntityModel.auditAdditionalFieldEntityTypes[i].entityLevel,
      );
    }
    for(var i = 0;i< auditEntityModel.size.length;i++)
    {
      insertSize(
         auditEntityModel.size[i].androidMaxUploadFileSize,
         auditEntityModel.size[i].iosMaxUploadFileSize,
         auditEntityModel.size[i].htmL5MaxUploadFileSize,
         auditEntityModel.size[i].additionalFieldEmail,
         auditEntityModel.size[i].additionalFieldTextArea,
         auditEntityModel.size[i].additionalFieldTextBox,
         auditEntityModel.size[i].additionalFieldLocation,
         auditEntityModel.size[i].comment,
         auditEntityModel.size[i].failureNote,
         auditEntityModel.size[i].correctiveNote,
         auditEntityModel.size[i].barcode,
         auditEntityModel.size[i].taskComment,
         auditEntityModel.size[i].sessionTimeOut,
         auditEntityModel.size[i].signDeclarationTextSize,
         auditEntityModel.size[i].nfcComment,
         auditEntityModel.size[i].captureImageNote,
         auditEntityModel.size[i].nonAuditableComment,
         auditEntityModel.size[i].flipScoreTime,
         auditEntityModel.size[i].eventNumber,
         auditEntityModel.size[i].eventTitle,
         auditEntityModel.size[i].eventDescription,
         auditEntityModel.size[i].eventRiskAssociated,
         auditEntityModel.size[i].eventImmediateActionTaken,
         auditEntityModel.size[i].eventCorrectiveActions,
         auditEntityModel.size[i].eventSituationTitle,
         auditEntityModel.size[i].eventSituationDetails,
         auditEntityModel.size[i].eventKeyIssueTitle,
         auditEntityModel.size[i].eventKeyIssueActionTitle,
         auditEntityModel.size[i].injuryPersonName,
         auditEntityModel.size[i].injurySupervisiorName,
         auditEntityModel.size[i].eventInjuryComment,
         auditEntityModel.size[i].eventScheduleTitle,
         auditEntityModel.size[i].keyIssueActionComment,
         auditEntityModel.size[i].situationTitle,
         auditEntityModel.size[i].situationDetail,
         auditEntityModel.size[i].lostHours,
         auditEntityModel.size[i].initialRootCauses,
         auditEntityModel.size[i].finalClosureNotes,
         auditEntityModel.size[i].maxEventAttachment,
         auditEntityModel.size[i].maxEventInvestigationAttachment,
         auditEntityModel.size[i].defaultTaskDueDateDays,
      );
    }
    for(var i = 0;i< auditEntityModel.auditTeamTask.length;i++)
    {
      insertAuditTeamTask(
        auditEntityModel.auditTeamTask[i].auditTeamMappingId,
        auditEntityModel.auditTeamTask[i].auditId,
        auditEntityModel.auditTeamTask[i].auditEntityId,
        auditEntityModel.auditTeamTask[i].teamId,
        auditEntityModel.auditTeamTask[i].memberId,
      );
    }
    for(var i = 0;i< auditEntityModel.teamDetails.length;i++)
    {
      insertTeamDetails(
        auditEntityModel.teamDetails[i].teamId,
        auditEntityModel.teamDetails[i].teamName,
      );
    }
    for(var i = 0;i< auditEntityModel.userDetails.length;i++)
    {
      insertUserDetails(
        auditEntityModel.userDetails[i].firstName,
        auditEntityModel.userDetails[i].lastName,
        auditEntityModel.userDetails[i].memberId,
      );
    }
    for(var i = 0;i< auditEntityModel.userPermission.length;i++)
    {
      insertUserPermission(
      );
    }
    for(var i = 0;i< auditEntityModel.occurrenceScheduleDates.length;i++)
    {
      insertOccurrenceScheduleDates(
        auditEntityModel.occurrenceScheduleDates[i].occurrenceScheduleDateId,
        auditEntityModel.occurrenceScheduleDates[i].auditId,
        auditEntityModel.occurrenceScheduleDates[i].auditScheduleRuleId,
        auditEntityModel.occurrenceScheduleDates[i].scheduleOccurrenceId,
        auditEntityModel.occurrenceScheduleDates[i].scheduleRuleTitle,
        auditEntityModel.occurrenceScheduleDates[i].occurrenceTitle,
        auditEntityModel.occurrenceScheduleDates[i].occurrenceCycle,
        auditEntityModel.occurrenceScheduleDates[i].startDate,
        auditEntityModel.occurrenceScheduleDates[i].endDate,
        auditEntityModel.occurrenceScheduleDates[i].auditStatusId,
        auditEntityModel.occurrenceScheduleDates[i].userId,
        auditEntityModel.occurrenceScheduleDates[i].isEntityRule,
      );
    }
    for(var i = 0;i< auditEntityModel.auditEnforceTimeData.length;i++)
    {
      insertAuditEnforceTimeData(
        auditEntityModel.auditEnforceTimeData[i].enforceTimeId,
        auditEntityModel.auditEnforceTimeData[i].auditId,
        auditEntityModel.auditEnforceTimeData[i].fromTime,
        auditEntityModel.auditEnforceTimeData[i].toTime,
      );
    }
    for(var i = 0;i< auditEntityModel.auditGroups.length;i++)
    {
      insertAuditGroups(
        auditEntityModel.auditGroups[i].auditGroupId,
        auditEntityModel.auditGroups[i].auditGroupParentId,
        auditEntityModel.auditGroups[i].auditGroupName,
        auditEntityModel.auditGroups[i].auditGroupLevel,
        auditEntityModel.auditGroups[i].auditCount,
      );
    }

  }*/

  Future<GetAllTableResult> getTable() async{
    return getAllTable().getSingle();
  }

}
LazyDatabase openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getDatabasesPath();
    final file = File(p.join(dbFolder, 'db.sqlite'));
    return NativeDatabase(file);
  });
}