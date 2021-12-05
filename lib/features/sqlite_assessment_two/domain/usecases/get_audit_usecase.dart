import 'package:dartz/dartz.dart';
import 'package:sqlite_assessment_two/core/error/failures.dart';
import 'package:sqlite_assessment_two/core/usecases/usecase.dart';
import 'package:sqlite_assessment_two/features/sqlite_assessment_two/data/datasources/sqlite_datasbase/audit_db.dart';
import 'package:sqlite_assessment_two/features/sqlite_assessment_two/domain/repositories/audit_repository.dart';

class GetAudit extends UseCase<GetAllTableResult, NoParams> {
  final AuditRepository repository;

  GetAudit(this.repository);

  @override
  Future<Either<Failure, GetAllTableResult>?>? call(NoParams params) async {
    return await repository.getAudit();
  }
}
