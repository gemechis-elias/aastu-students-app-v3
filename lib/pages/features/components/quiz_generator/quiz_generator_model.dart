import '/backend/gemini/gemini.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'quiz_generator_widget.dart' show QuizGeneratorWidget;
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class QuizGeneratorModel extends FlutterFlowModel<QuizGeneratorWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for courseName widget.
  FocusNode? courseNameFocusNode;
  TextEditingController? courseNameTextController;
  String? Function(BuildContext, String?)? courseNameTextControllerValidator;
  // State field(s) for courseContent widget.
  FocusNode? courseContentFocusNode;
  TextEditingController? courseContentTextController;
  String? Function(BuildContext, String?)? courseContentTextControllerValidator;
  // Stores action output result for [Custom Action - pasteFromClipboard] action in Icon widget.
  String? pastedText;
  // State field(s) for numberofQuestions widget.
  FocusNode? numberofQuestionsFocusNode;
  TextEditingController? numberofQuestionsTextController;
  String? Function(BuildContext, String?)?
      numberofQuestionsTextControllerValidator;
  // Stores action output result for [Gemini - Generate Text] action in Button widget.
  String? jSONResponse;
  // Stores action output result for [Custom Action - jsonToQuestionsModel] action in Button widget.
  List<QuestionModelStruct>? generatedQuestionFromGemini;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    courseNameFocusNode?.dispose();
    courseNameTextController?.dispose();

    courseContentFocusNode?.dispose();
    courseContentTextController?.dispose();

    numberofQuestionsFocusNode?.dispose();
    numberofQuestionsTextController?.dispose();
  }
}
