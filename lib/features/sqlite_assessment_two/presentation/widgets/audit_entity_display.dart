import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqlite_assessment_two/features/sqlite_assessment_two/data/datasources/sqlite_datasbase/audit_db.dart';
import 'package:sqlite_assessment_two/features/sqlite_assessment_two/presentation/bloc/audit_bloc.dart';


class AuditEntityDisplay extends StatefulWidget {
  const AuditEntityDisplay({required this.auditEntitiesList, Key? key}) : super(key: key);
  final List<GetAllTableResult?> auditEntitiesList;

  @override
  State<AuditEntityDisplay> createState() => _AuditEntityDisplayState();
}

class _AuditEntityDisplayState extends State<AuditEntityDisplay> {
  @override
  Widget build(BuildContext context) {
    if (widget.auditEntitiesList.isEmpty) {
      _onAddAuditEntity(context);
    }
    return ListView.builder(
      itemCount: widget.auditEntitiesList.length,
      itemBuilder: (_, index) {
        final itemAuditEntity = widget.auditEntitiesList[index];
        return _buildListItem(context,itemAuditEntity);
      },
    );
  }

  Widget _buildListItem(BuildContext context,GetAllTableResult? auditEntities) {
    return Card(
      elevation: 2.0,
      child: Column(
        children: [
          ListTile(
            title: Text('AdditionalFieldTypeValues',style: Theme.of(context).textTheme.headline6,overflow: TextOverflow.ellipsis,),
            subtitle: Text(auditEntities!.countAuditAdditionalFieldTypeValues.toString(),style: Theme.of(context).textTheme.subtitle1,)
          ),
          ListTile(
              title: Text('AuditAdditionalFieldEntityTypes',style: Theme.of(context).textTheme.headline6,overflow: TextOverflow.ellipsis,),
              subtitle: Text(auditEntities.countAuditAdditionalFieldEntityTypes.toString(),style: Theme.of(context).textTheme.subtitle1,)
          ),
          ListTile(
              title: Text('AuditAdditionalFields',style: Theme.of(context).textTheme.headline6,overflow: TextOverflow.ellipsis,),
              subtitle: Text(auditEntities.countAuditAdditionalFields.toString(),style: Theme.of(context).textTheme.subtitle1,)
          ),
          ListTile(
              title: Text('AuditCorrectiveActions',style: Theme.of(context).textTheme.headline6,overflow: TextOverflow.ellipsis,),
              subtitle: Text(auditEntities.countAuditCorrectiveActions.toString(),style: Theme.of(context).textTheme.subtitle1,)
          ),
          ListTile(
              title: Text('AuditDetails',style: Theme.of(context).textTheme.headline6,overflow: TextOverflow.ellipsis,),
              subtitle: Text(auditEntities.countAuditDetails.toString(),style: Theme.of(context).textTheme.subtitle1,)
          ),
          ListTile(
              title: Text('AuditCorrectiveActions',style: Theme.of(context).textTheme.headline6,overflow: TextOverflow.ellipsis,),
              subtitle: Text(auditEntities.countAuditCorrectiveActions.toString(),style: Theme.of(context).textTheme.subtitle1,)
          ),
          ListTile(
              title: Text('AuditEnforceTimeData',style: Theme.of(context).textTheme.headline6,overflow: TextOverflow.ellipsis,),
              subtitle: Text(auditEntities.countAuditEnforceTimeData.toString(),style: Theme.of(context).textTheme.subtitle1,)
          ),
          ListTile(
              title: Text('AuditEntity',style: Theme.of(context).textTheme.headline6,overflow: TextOverflow.ellipsis,),
              subtitle: Text(auditEntities.countAuditEntity.toString(),style: Theme.of(context).textTheme.subtitle1,)
          ),
          ListTile(
              title: Text('AuditEntityTypeQuestions',style: Theme.of(context).textTheme.headline6,overflow: TextOverflow.ellipsis,),
              subtitle: Text(auditEntities.countAuditEntityTypeQuestions.toString(),style: Theme.of(context).textTheme.subtitle1,)
          ),
          ListTile(
              title: Text('AuditEntityTypes',style: Theme.of(context).textTheme.headline6,overflow: TextOverflow.ellipsis,),
              subtitle: Text(auditEntities.countAuditEntityTypes.toString(),style: Theme.of(context).textTheme.subtitle1,)
          ),
          ListTile(
              title: Text('AuditFailureReason',style: Theme.of(context).textTheme.headline6,overflow: TextOverflow.ellipsis,),
              subtitle: Text(auditEntities.countAuditFailureReason.toString(),style: Theme.of(context).textTheme.subtitle1,)
          ),
          ListTile(
              title: Text('AuditGroups',style: Theme.of(context).textTheme.headline6,overflow: TextOverflow.ellipsis,),
              subtitle: Text(auditEntities.countAuditGroups.toString(),style: Theme.of(context).textTheme.subtitle1,)
          ),
          ListTile(
              title: Text('AuditQuestion',style: Theme.of(context).textTheme.headline6,overflow: TextOverflow.ellipsis,),
              subtitle: Text(auditEntities.countAuditQuestion.toString(),style: Theme.of(context).textTheme.subtitle1,)
          ),
          ListTile(
              title: Text('AuditScoring',style: Theme.of(context).textTheme.headline6,overflow: TextOverflow.ellipsis,),
              subtitle: Text(auditEntities.countAuditScoring.toString(),style: Theme.of(context).textTheme.subtitle1,)
          ),
          ListTile(
              title: Text('AuditTeamTask',style: Theme.of(context).textTheme.headline6,overflow: TextOverflow.ellipsis,),
              subtitle: Text(auditEntities.countAuditTeamTask.toString(),style: Theme.of(context).textTheme.subtitle1,)
          ),
          ListTile(
              title: Text('OccurrenceScheduleDates',style: Theme.of(context).textTheme.headline6,overflow: TextOverflow.ellipsis,),
              subtitle: Text(auditEntities.countOccurrenceScheduleDates.toString(),style: Theme.of(context).textTheme.subtitle1,)
          ),
          ListTile(
              title: Text('ScoringFormulaInfo',style: Theme.of(context).textTheme.headline6,overflow: TextOverflow.ellipsis,),
              subtitle: Text(auditEntities.countScoringFormulaInfo.toString(),style: Theme.of(context).textTheme.subtitle1,)
          ),
          ListTile(
              title: Text('ScoringTypes',style: Theme.of(context).textTheme.headline6,overflow: TextOverflow.ellipsis,),
              subtitle: Text(auditEntities.countScoringTypes.toString(),style: Theme.of(context).textTheme.subtitle1,)
          ),
          ListTile(
              title: Text('Size',style: Theme.of(context).textTheme.headline6,overflow: TextOverflow.ellipsis,),
              subtitle: Text(auditEntities.countSize.toString(),style: Theme.of(context).textTheme.subtitle1,)
          ),
          ListTile(
              title: Text('TeamDetails',style: Theme.of(context).textTheme.headline6,overflow: TextOverflow.ellipsis,),
              subtitle: Text(auditEntities.countTeamDetails.toString(),style: Theme.of(context).textTheme.subtitle1,)
          ),
          ListTile(
              title: Text('UserPermission',style: Theme.of(context).textTheme.headline6,overflow: TextOverflow.ellipsis,),
              subtitle: Text(auditEntities.countUserPermission.toString(),style: Theme.of(context).textTheme.subtitle1,)
          ),
          ListTile(
              title: Text('resumeAuditLatestData',style: Theme.of(context).textTheme.headline6,overflow: TextOverflow.ellipsis,),
              subtitle: Text(auditEntities.resumeAuditLatestData.toString(),style: Theme.of(context).textTheme.subtitle1,)
          ),
        ],
      ),
    );
  }

  void _onAddAuditEntity(BuildContext context) {
    BlocProvider.of<AuditBloc>(context)
        .add(const AddAuditEvent());
  }
}
