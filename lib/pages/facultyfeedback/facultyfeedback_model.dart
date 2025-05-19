import '/flutter_flow/flutter_flow_util.dart';
import 'facultyfeedback_widget.dart' show FacultyfeedbackWidget;
import 'package:flutter/material.dart';

class FacultyfeedbackModel extends FlutterFlowModel<FacultyfeedbackWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for feedbacktextfield widget.
  FocusNode? feedbacktextfieldFocusNode;
  TextEditingController? feedbacktextfieldTextController;
  String? Function(BuildContext, String?)?
      feedbacktextfieldTextControllerValidator;
  String? _feedbacktextfieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the patients full name.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    feedbacktextfieldTextControllerValidator =
        _feedbacktextfieldTextControllerValidator;
  }

  @override
  void dispose() {
    feedbacktextfieldFocusNode?.dispose();
    feedbacktextfieldTextController?.dispose();
  }
}
