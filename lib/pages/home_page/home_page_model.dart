import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for signupe widget.
  FocusNode? signupeFocusNode;
  TextEditingController? signupeTextController;
  String? Function(BuildContext, String?)? signupeTextControllerValidator;
  // State field(s) for signupp widget.
  FocusNode? signuppFocusNode;
  TextEditingController? signuppTextController;
  late bool signuppVisibility;
  String? Function(BuildContext, String?)? signuppTextControllerValidator;
  // State field(s) for signuppp widget.
  FocusNode? signupppFocusNode;
  TextEditingController? signupppTextController;
  late bool signupppVisibility;
  String? Function(BuildContext, String?)? signupppTextControllerValidator;
  // State field(s) for logine widget.
  FocusNode? logineFocusNode;
  TextEditingController? logineTextController;
  String? Function(BuildContext, String?)? logineTextControllerValidator;
  // State field(s) for loginp widget.
  FocusNode? loginpFocusNode;
  TextEditingController? loginpTextController;
  late bool loginpVisibility;
  String? Function(BuildContext, String?)? loginpTextControllerValidator;

  @override
  void initState(BuildContext context) {
    signuppVisibility = false;
    signupppVisibility = false;
    loginpVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    signupeFocusNode?.dispose();
    signupeTextController?.dispose();

    signuppFocusNode?.dispose();
    signuppTextController?.dispose();

    signupppFocusNode?.dispose();
    signupppTextController?.dispose();

    logineFocusNode?.dispose();
    logineTextController?.dispose();

    loginpFocusNode?.dispose();
    loginpTextController?.dispose();
  }
}
