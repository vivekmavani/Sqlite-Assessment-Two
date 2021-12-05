part of 'audit_bloc.dart';

abstract class AuditState extends Equatable {
  const AuditState();
}


class Empty extends AuditState {

  @override
  List<Object?> get props => [];
}

class Loading extends AuditState {
  @override
  List<Object?> get props => [];
}

class Loaded extends AuditState {
  final GetAllTableResult? auditList;

  const Loaded({required this.auditList});

  @override
  List<Object> get props => [auditList!];
}

class Error extends AuditState {
  final String message;

  const Error({required this.message});

  @override
  List<Object?> get props => [message];
}
