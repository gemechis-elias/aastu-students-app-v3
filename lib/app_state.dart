import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _generatedQuestions = prefs
              .getStringList('ff_generatedQuestions')
              ?.map((x) {
                try {
                  return QuestionModelStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _generatedQuestions;
    });
    _safeInit(() {
      _generateCourseTitle =
          prefs.getString('ff_generateCourseTitle') ?? _generateCourseTitle;
    });
    _safeInit(() {
      _NoteAdded = prefs.getBool('ff_NoteAdded') ?? _NoteAdded;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<MyGPAStruct> _MyGPAList = [
    MyGPAStruct.fromSerializableMap(jsonDecode(
        '{\"course\":\"Course 1\",\"creditHour\":\"4\",\"grade\":\"A\"}')),
    MyGPAStruct.fromSerializableMap(jsonDecode(
        '{\"course\":\"Course 2\",\"creditHour\":\"4\",\"grade\":\"A\"}')),
    MyGPAStruct.fromSerializableMap(jsonDecode(
        '{\"course\":\"Course 3\",\"creditHour\":\"4\",\"grade\":\"A\"}'))
  ];
  List<MyGPAStruct> get MyGPAList => _MyGPAList;
  set MyGPAList(List<MyGPAStruct> value) {
    _MyGPAList = value;
  }

  void addToMyGPAList(MyGPAStruct value) {
    MyGPAList.add(value);
  }

  void removeFromMyGPAList(MyGPAStruct value) {
    MyGPAList.remove(value);
  }

  void removeAtIndexFromMyGPAList(int index) {
    MyGPAList.removeAt(index);
  }

  void updateMyGPAListAtIndex(
    int index,
    MyGPAStruct Function(MyGPAStruct) updateFn,
  ) {
    MyGPAList[index] = updateFn(_MyGPAList[index]);
  }

  void insertAtIndexInMyGPAList(int index, MyGPAStruct value) {
    MyGPAList.insert(index, value);
  }

  int _gradeIndex = 4;
  int get gradeIndex => _gradeIndex;
  set gradeIndex(int value) {
    _gradeIndex = value;
  }

  List<QuestionModelStruct> _generatedQuestions = [];
  List<QuestionModelStruct> get generatedQuestions => _generatedQuestions;
  set generatedQuestions(List<QuestionModelStruct> value) {
    _generatedQuestions = value;
    prefs.setStringList(
        'ff_generatedQuestions', value.map((x) => x.serialize()).toList());
  }

  void addToGeneratedQuestions(QuestionModelStruct value) {
    generatedQuestions.add(value);
    prefs.setStringList('ff_generatedQuestions',
        _generatedQuestions.map((x) => x.serialize()).toList());
  }

  void removeFromGeneratedQuestions(QuestionModelStruct value) {
    generatedQuestions.remove(value);
    prefs.setStringList('ff_generatedQuestions',
        _generatedQuestions.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromGeneratedQuestions(int index) {
    generatedQuestions.removeAt(index);
    prefs.setStringList('ff_generatedQuestions',
        _generatedQuestions.map((x) => x.serialize()).toList());
  }

  void updateGeneratedQuestionsAtIndex(
    int index,
    QuestionModelStruct Function(QuestionModelStruct) updateFn,
  ) {
    generatedQuestions[index] = updateFn(_generatedQuestions[index]);
    prefs.setStringList('ff_generatedQuestions',
        _generatedQuestions.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInGeneratedQuestions(int index, QuestionModelStruct value) {
    generatedQuestions.insert(index, value);
    prefs.setStringList('ff_generatedQuestions',
        _generatedQuestions.map((x) => x.serialize()).toList());
  }

  String _generateCourseTitle = 'Last Generated Questions';
  String get generateCourseTitle => _generateCourseTitle;
  set generateCourseTitle(String value) {
    _generateCourseTitle = value;
    prefs.setString('ff_generateCourseTitle', value);
  }

  TaskColorsStruct _taskColors = TaskColorsStruct.fromSerializableMap(jsonDecode(
      '{\"assignement\":\"#735bf1\",\"test\":\"#00e5ff\",\"other\":\"#ff4181\"}'));
  TaskColorsStruct get taskColors => _taskColors;
  set taskColors(TaskColorsStruct value) {
    _taskColors = value;
  }

  void updateTaskColorsStruct(Function(TaskColorsStruct) updateFn) {
    updateFn(_taskColors);
  }

  bool _NoteAdded = false;
  bool get NoteAdded => _NoteAdded;
  set NoteAdded(bool value) {
    _NoteAdded = value;
    prefs.setBool('ff_NoteAdded', value);
  }

  final _userDocQueryManager = FutureRequestManager<UsersRecord>();
  Future<UsersRecord> userDocQuery({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<UsersRecord> Function() requestFn,
  }) =>
      _userDocQueryManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUserDocQueryCache() => _userDocQueryManager.clear();
  void clearUserDocQueryCacheKey(String? uniqueKey) =>
      _userDocQueryManager.clearRequest(uniqueKey);

  final _academicCalendarCacheManager =
      FutureRequestManager<List<ConstantsRecord>>();
  Future<List<ConstantsRecord>> academicCalendarCache({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<ConstantsRecord>> Function() requestFn,
  }) =>
      _academicCalendarCacheManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearAcademicCalendarCacheCache() =>
      _academicCalendarCacheManager.clear();
  void clearAcademicCalendarCacheCacheKey(String? uniqueKey) =>
      _academicCalendarCacheManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
