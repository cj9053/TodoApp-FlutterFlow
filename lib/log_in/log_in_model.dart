import '/flutter_flow/flutter_flow_util.dart';
import 'log_in_widget.dart' show LogInWidget;
import 'package:flutter/material.dart';

class LogInModel extends FlutterFlowModel<LogInWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for SignUpEmail widget.
  FocusNode? signUpEmailFocusNode;
  TextEditingController? signUpEmailTextController;
  String? Function(BuildContext, String?)? signUpEmailTextControllerValidator;
  String? _signUpEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for SignUPPass widget.
  FocusNode? signUPPassFocusNode;
  TextEditingController? signUPPassTextController;
  late bool signUPPassVisibility;
  String? Function(BuildContext, String?)? signUPPassTextControllerValidator;
  String? _signUPPassTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for SignUpConfirm widget.
  FocusNode? signUpConfirmFocusNode;
  TextEditingController? signUpConfirmTextController;
  late bool signUpConfirmVisibility;
  String? Function(BuildContext, String?)? signUpConfirmTextControllerValidator;
  String? _signUpConfirmTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Login-Email widget.
  FocusNode? loginEmailFocusNode;
  TextEditingController? loginEmailTextController;
  String? Function(BuildContext, String?)? loginEmailTextControllerValidator;
  String? _loginEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for LogIn-Pass widget.
  FocusNode? logInPassFocusNode;
  TextEditingController? logInPassTextController;
  late bool logInPassVisibility;
  String? Function(BuildContext, String?)? logInPassTextControllerValidator;
  String? _logInPassTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    signUpEmailTextControllerValidator = _signUpEmailTextControllerValidator;
    signUPPassVisibility = false;
    signUPPassTextControllerValidator = _signUPPassTextControllerValidator;
    signUpConfirmVisibility = false;
    signUpConfirmTextControllerValidator =
        _signUpConfirmTextControllerValidator;
    loginEmailTextControllerValidator = _loginEmailTextControllerValidator;
    logInPassVisibility = false;
    logInPassTextControllerValidator = _logInPassTextControllerValidator;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    signUpEmailFocusNode?.dispose();
    signUpEmailTextController?.dispose();

    signUPPassFocusNode?.dispose();
    signUPPassTextController?.dispose();

    signUpConfirmFocusNode?.dispose();
    signUpConfirmTextController?.dispose();

    loginEmailFocusNode?.dispose();
    loginEmailTextController?.dispose();

    logInPassFocusNode?.dispose();
    logInPassTextController?.dispose();
  }
}
