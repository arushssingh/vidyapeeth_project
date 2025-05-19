import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'newcreatingacc_widget.dart' show NewcreatingaccWidget;
import 'package:flutter/material.dart';

class NewcreatingaccModel extends FlutterFlowModel<NewcreatingaccWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailcreate widget.
  FocusNode? emailcreateFocusNode;
  TextEditingController? emailcreateTextController;
  String? Function(BuildContext, String?)? emailcreateTextControllerValidator;
  // State field(s) for passwordcreate widget.
  FocusNode? passwordcreateFocusNode;
  TextEditingController? passwordcreateTextController;
  late bool passwordcreateVisibility;
  String? Function(BuildContext, String?)?
      passwordcreateTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordcreateVisibility = false;
  }

  @override
  void dispose() {
    emailcreateFocusNode?.dispose();
    emailcreateTextController?.dispose();

    passwordcreateFocusNode?.dispose();
    passwordcreateTextController?.dispose();
  }
}
