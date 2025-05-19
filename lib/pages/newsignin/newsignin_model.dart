import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'newsignin_widget.dart' show NewsigninWidget;
import 'package:flutter/material.dart';

class NewsigninModel extends FlutterFlowModel<NewsigninWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailtext widget.
  FocusNode? emailtextFocusNode;
  TextEditingController? emailtextTextController;
  String? Function(BuildContext, String?)? emailtextTextControllerValidator;
  // State field(s) for passwordtext widget.
  FocusNode? passwordtextFocusNode;
  TextEditingController? passwordtextTextController;
  late bool passwordtextVisibility;
  String? Function(BuildContext, String?)? passwordtextTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordtextVisibility = false;
  }

  @override
  void dispose() {
    emailtextFocusNode?.dispose();
    emailtextTextController?.dispose();

    passwordtextFocusNode?.dispose();
    passwordtextTextController?.dispose();
  }
}
