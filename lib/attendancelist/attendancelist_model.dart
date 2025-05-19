import '/flutter_flow/flutter_flow_util.dart';
import 'attendancelist_widget.dart' show AttendancelistWidget;
import 'package:flutter/material.dart';

class AttendancelistModel extends FlutterFlowModel<AttendancelistWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
