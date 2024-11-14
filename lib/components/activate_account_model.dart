import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'dart:math';
import '/flutter_flow/custom_functions.dart' as functions;
import 'activate_account_widget.dart' show ActivateAccountWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ActivateAccountModel extends FlutterFlowModel<ActivateAccountWidget> {
  ///  Local state fields for this component.

  bool isValidEmail = false;

  String responseMessage = 'Enter email and click the check mark';

  bool emailSent = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for aastuEmail widget.
  FocusNode? aastuEmailFocusNode;
  TextEditingController? aastuEmailTextController;
  String? Function(BuildContext, String?)? aastuEmailTextControllerValidator;
  // Stores action output result for [Backend Call - API (Send Confirmation Code)] action in emailNotSent widget.
  ApiCallResponse? apiResultloe;
  // State field(s) for activationCode widget.
  FocusNode? activationCodeFocusNode;
  TextEditingController? activationCodeTextController;
  String? Function(BuildContext, String?)?
      activationCodeTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? userLoaded;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    aastuEmailFocusNode?.dispose();
    aastuEmailTextController?.dispose();

    activationCodeFocusNode?.dispose();
    activationCodeTextController?.dispose();
  }
}
