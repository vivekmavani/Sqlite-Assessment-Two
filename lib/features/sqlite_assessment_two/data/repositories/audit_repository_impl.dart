import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:sqlite_assessment_two/core/error/failures.dart';
import 'package:sqlite_assessment_two/features/sqlite_assessment_two/data/datasources/sqlite_datasbase/audit_db.dart';
import 'package:sqlite_assessment_two/features/sqlite_assessment_two/domain/entities/auditEntityModel.dart'
    as models;
import 'package:sqlite_assessment_two/features/sqlite_assessment_two/domain/repositories/audit_repository.dart';

class AuditRepositoryImpl implements AuditRepository {
  final AppDatabase appDatabase;

  AuditRepositoryImpl({required this.appDatabase});

  @override
  Future<Either<Failure, void>?>? addAudit() async {
    try {
      var jsonText = await rootBundle.loadString('assets/entity.json');
      Map<String, dynamic> map = json.decode(jsonText);
      List<dynamic> data1 = map["auditDetailsList"];
      List<dynamic> data2 = map["scoringTypes"];
      List<dynamic> data3 = map["scoringFormulaInfoModel"];
      List<dynamic> data4 = map["auditScoring"];
      List<dynamic> data5 = map["auditQuestion"];
      List<dynamic> data6 = map["auditEntityTypes"];
      List<dynamic> data7 = map["auditEntityTypeQuestions"];
      List<dynamic> data8 = map["auditCorrectiveActions"];
      List<dynamic> data9 = map["auditFailureReason"];
      List<dynamic> data10 = map["auditAdditionalFields"];
      List<dynamic> data11 = map["size"];
      List<dynamic> data12 = map["auditTeamTask"];
      List<dynamic> data13 = map["teamDetails"];
      List<dynamic> data14 = map["userDetails"];
      List<dynamic> data15 = map["userPermission"];
      List<dynamic> data16 = map["occurrenceScheduleDates"];
      List<dynamic> data17 = map["auditEnforceTimeData"];
      List<dynamic> data18 = map["auditGroups"];
      List<dynamic> data19 = map["resumeAuditLatestData"];
      List<dynamic> data20 = map["auditAdditionalFieldEntityTypes"];
      List<dynamic> data21= map["auditEntity"];
      List<dynamic> data22= map["auditAdditionalFieldTypeValues"];

      List<AuditDetailsListData> list1 =
          data1.map((e) => AuditDetailsListData.fromJson(e)).toList();
      final add1 = await appDatabase.insertAuditDetailsListData(list1);
     /* List<ScoringType> list2 =
          data2.map((e) => ScoringType.fromJson(e)).toList();
      final add2 = await appDatabase.insertScoringTypesData(list2);
      List<ScoringFormulaInfoModelData> list3 =
          data3.map((e) => ScoringFormulaInfoModelData.fromJson(e)).toList();
      final add3 = await appDatabase.insertScoringFormulaInfoModels(list3);
      List<AuditScoringData> list4 =
          data4.map((e) => AuditScoringData.fromJson(e)).toList();
      final add4 = await appDatabase.insertauditScoring(list4);
      List<AuditQuestionData> list5 =
          data5.map((e) => AuditQuestionData.fromJson(e)).toList();
      final add5 = await appDatabase.insertauditQuestion(list5);
      List<AuditEntityType> list6 =
          data6.map((e) => AuditEntityType.fromJson(e)).toList();
      final add6 = await appDatabase.insertauditEntityTypes(list6);
      List<AuditEntityTypeQuestion> list7 =
          data7.map((e) => AuditEntityTypeQuestion.fromJson(e)).toList();
      final add7 = await appDatabase.insertauditEntityTypeQuestions(list7);
      List<AuditCorrectiveAction> list8 =
          data8.map((e) => AuditCorrectiveAction.fromJson(e)).toList();
      final add8 = await appDatabase.insertauditCorrectiveActions(list8);
      List<AuditFailureReasonData> list9 =
          data9.map((e) => AuditFailureReasonData.fromJson(e)).toList();
      final add9 = await appDatabase.insertauditFailureReason(list9);
      List<AuditAdditionalField> list10 =
          data10.map((e) => AuditAdditionalField.fromJson(e)).toList();
      final add10 = await appDatabase.insertauditAdditionalFields(list10);
      List<SizeData> list11 =
          data11.map((e) => SizeData.fromJson(e)).toList();
      final add11 = await appDatabase.insertsize(list11);
      List<AuditTeamTaskData> list12 =
          data12.map((e) => AuditTeamTaskData.fromJson(e)).toList();
      final add12 = await appDatabase.insertauditTeamTask(list12);
      List<TeamDetail> list13 =
          data13.map((e) => TeamDetail.fromJson(e)).toList();
      final add13 = await appDatabase.insertteamDetails(list13);
      List<UserDetail> list14 =
          data14.map((e) => UserDetail.fromJson(e)).toList();
      final add14 = await appDatabase.insertuserDetails(list14);
      List<UserPermissionData> list15 =
          data15.map((e) => UserPermissionData.fromJson(e)).toList();
      final add15 = await appDatabase.insertuserPermission(list15);
      List<OccurrenceScheduleDate> list16 =
          data16.map((e) => OccurrenceScheduleDate.fromJson(e)).toList();
      final add16 = await appDatabase.insertoccurrenceScheduleDates(list16);
      List<AuditEnforceTimeDataData> list17 =
          data17.map((e) => AuditEnforceTimeDataData.fromJson(e)).toList();
      final add17 = await appDatabase.insertauditEnforceTimeData(list17);
      List<AuditGroup> list18 =
          data18.map((e) => AuditGroup.fromJson(e)).toList();
      final add18 = await appDatabase.insertauditGroups(list18);
      List<ResumeAuditLatestDataData> list19 =
          data19.map((e) => ResumeAuditLatestDataData.fromJson(e)).toList();
      final add19 = await appDatabase.insertresumeAuditLatestData(list19);

      List<AuditAdditionalFieldEntityType> list20 =
      data20.map((e) => AuditAdditionalFieldEntityType.fromJson(e)).toList();
      final add20 = await appDatabase.insertauditAdditionalFieldEntityTypes(list20);
      List<AuditEntityData> list21 =
      data21.map((e) => AuditEntityData.fromJson(e)).toList();
      final add21 = await appDatabase.insertauditEntity(list21);

      List<AuditAdditionalFieldTypeValue> list22 =
      data22.map((e) => AuditAdditionalFieldTypeValue.fromJson(e)).toList();
      final add22 = await appDatabase.insertauditAdditionalFieldEntityTypesValue(list22);*/

      return Right(add1);
    } catch (e) {
      return Left(LocalFailure());
    }
  }

  @override
  Future<Either<Failure, GetAllTableResult>?>? getAudit() async {
    try{
      final list = await appDatabase.getTable();
      return  Right(list);
    }catch(e){
      return Left(LocalFailure());
    }
  }
}
