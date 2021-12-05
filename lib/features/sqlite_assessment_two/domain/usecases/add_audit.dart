
import 'package:dartz/dartz.dart';
import 'package:sqlite_assessment_two/core/error/failures.dart';
import 'package:sqlite_assessment_two/core/usecases/usecase.dart';
import 'package:sqlite_assessment_two/features/sqlite_assessment_two/domain/repositories/audit_repository.dart';

class AddAudit extends UseCase<void, NoParams> {
  final AuditRepository repository;

  AddAudit(this.repository);

  @override
  Future<Either<Failure, void>?>? call(NoParams params) async {
    return await repository.addAudit();
  }
}
