part of 'audit_bloc.dart';

abstract class AuditEvent extends Equatable {
  const AuditEvent();
  @override
  List<Object> get props => [];
}

class AddAuditEvent extends AuditEvent {
  const AddAuditEvent() : super();

}

class GetAllAuditEvent extends AuditEvent {
  const GetAllAuditEvent();

}
