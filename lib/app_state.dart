import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      _todoList = prefs.getStringList('ff_todoList') ?? _todoList;
    });
    _safeInit(() {
      _classlist = prefs.getStringList('ff_classlist') ?? _classlist;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<String> _todoList = [];
  List<String> get todoList => _todoList;
  set todoList(List<String> value) {
    _todoList = value;
    prefs.setStringList('ff_todoList', value);
  }

  void addToTodoList(String value) {
    todoList.add(value);
    prefs.setStringList('ff_todoList', _todoList);
  }

  void removeFromTodoList(String value) {
    todoList.remove(value);
    prefs.setStringList('ff_todoList', _todoList);
  }

  void removeAtIndexFromTodoList(int index) {
    todoList.removeAt(index);
    prefs.setStringList('ff_todoList', _todoList);
  }

  void updateTodoListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    todoList[index] = updateFn(_todoList[index]);
    prefs.setStringList('ff_todoList', _todoList);
  }

  void insertAtIndexInTodoList(int index, String value) {
    todoList.insert(index, value);
    prefs.setStringList('ff_todoList', _todoList);
  }

  List<String> _classlist = [];
  List<String> get classlist => _classlist;
  set classlist(List<String> value) {
    _classlist = value;
    prefs.setStringList('ff_classlist', value);
  }

  void addToClasslist(String value) {
    classlist.add(value);
    prefs.setStringList('ff_classlist', _classlist);
  }

  void removeFromClasslist(String value) {
    classlist.remove(value);
    prefs.setStringList('ff_classlist', _classlist);
  }

  void removeAtIndexFromClasslist(int index) {
    classlist.removeAt(index);
    prefs.setStringList('ff_classlist', _classlist);
  }

  void updateClasslistAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    classlist[index] = updateFn(_classlist[index]);
    prefs.setStringList('ff_classlist', _classlist);
  }

  void insertAtIndexInClasslist(int index, String value) {
    classlist.insert(index, value);
    prefs.setStringList('ff_classlist', _classlist);
  }
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
