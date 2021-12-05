import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqlite_assessment_two/features/sqlite_assessment_two/presentation/bloc/audit_bloc.dart';
import 'package:sqlite_assessment_two/features/sqlite_assessment_two/presentation/widgets/audit_entity_display.dart';
import 'package:sqlite_assessment_two/features/sqlite_assessment_two/presentation/widgets/loading_widget.dart';
import 'package:sqlite_assessment_two/features/sqlite_assessment_two/presentation/widgets/message_display.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: const Text('Audit Tables'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(child: _buildState(context)),
          ],
        ));
  }
}

Widget _buildState(BuildContext context) {
  BlocProvider.of<AuditBloc>(context)
      .add(const AddAuditEvent());
  return BlocBuilder<AuditBloc, AuditState>(
    builder: (context, state) {
      if (state is Empty) {
        return const MessageDisplay(
          message: 'Start now!',
        );
      } else if (state is Loading) {
        return const LoadingWidget();
      } else if (state is Loaded) {
        return AuditEntityDisplay(
          auditEntitiesList: [state.auditList!],
        );
      } else if (state is Error) {
        return MessageDisplay(
          message: state.message,
        );
      }
      return Container();
    },
  );
}
