import 'package:dartz/dartz.dart';
import 'package:sqlite_assessment_two/core/error/failures.dart';
import 'package:sqlite_assessment_two/features/sqlite_assessment_two/data/datasources/sqlite_datasbase/audit_db.dart';

abstract class AuditRepository {
  Future<Either<Failure, GetAllTableResult>?>? getAudit();
  Future<Either<Failure, void>?>? addAudit();
}
