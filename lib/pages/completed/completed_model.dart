import '/flutter_flow/flutter_flow_util.dart';
import '/pages/idividualtask/idividualtask_widget.dart';
import 'completed_widget.dart' show CompletedWidget;
import 'package:flutter/material.dart';

class CompletedModel extends FlutterFlowModel<CompletedWidget> {
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
