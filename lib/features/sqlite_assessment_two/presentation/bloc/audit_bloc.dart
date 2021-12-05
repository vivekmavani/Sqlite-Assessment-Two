import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:sqlite_assessment_two/core/error/failures.dart';
import 'package:sqlite_assessment_two/core/usecases/usecase.dart';
import 'package:sqlite_assessment_two/features/sqlite_assessment_two/data/datasources/sqlite_datasbase/audit_db.dart';
import 'package:sqlite_assessment_two/features/sqlite_assessment_two/domain/usecases/add_audit.dart';
import 'package:sqlite_assessment_two/features/sqlite_assessment_two/domain/usecases/get_audit_usecase.dart';

part 'audit_event.dart';
part 'audit_state.dart';

class AuditBloc extends Bloc<AuditEvent, AuditState> {
  final GetAudit getAudit;
  final AddAudit addAudit;
  AuditBloc(this.getAudit, this.addAudit) : super(Empty());

  @override
  Stream<AuditState> mapEventToState(
    AuditEvent event,
  ) async* {
    if (event is GetAllAuditEvent) {
      yield* _getAllSavedArticles();
    }
    if (event is AddAuditEvent) {
      yield Loading();
      await addAudit(NoParams());
      yield* _getAllSavedArticles();
    }
  }
  Stream<AuditState> _getAllSavedArticles() async* {
    yield Loading();
    final getAuditEntitiesList = await getAudit(NoParams());
    yield* _eitherLoadedOrErrorState(getAuditEntitiesList);
  }
  Stream<AuditState> _eitherLoadedOrErrorState(
      Either<Failure, GetAllTableResult?>? either,
      ) async* {
    if(either != null)
    {
      yield either.fold(
            (failure) => Error(message: _mapFailureToMessage(failure)),
            (list) => Loaded(auditList: list),
      );
    }
  }
  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case LocalFailure:
        return 'Local Failure';
      default:
        return 'Unexpected Error';
    }
  }
}
