import '/flutter_flow/flutter_flow_util.dart';
import '/pages/idividualtask/idividualtask_widget.dart';
import '/index.dart';
import 'tasks_widget.dart' show TasksWidget;
import 'package:flutter/material.dart';

class TasksModel extends FlutterFlowModel<TasksWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for Idividualtask dynamic component.
  late FlutterFlowDynamicModels<IdividualtaskModel> idividualtaskModels;

  @override
  void initState(BuildContext context) {
    idividualtaskModels = FlutterFlowDynamicModels(() => IdividualtaskModel());
  }

  @override
  void dispose() {
    idividualtaskModels.dispose();
  }
}
