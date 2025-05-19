import '/flutter_flow/flutter_flow_util.dart';
import 'resetpassword_widget.dart' show ResetpasswordWidget;
import 'package:flutter/material.dart';

class ResetpasswordModel extends FlutterFlowModel<ResetpasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddressrecover widget.
  FocusNode? emailAddressrecoverFocusNode;
  TextEditingController? emailAddressrecoverTextController;
  String? Function(BuildContext, String?)?
      emailAddressrecoverTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressrecoverFocusNode?.dispose();
    emailAddressrecoverTextController?.dispose();
  }
}
