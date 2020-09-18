// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tarefaPageController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TarefaController on _TarefaController, Store {
  final _$textTodoAtom = Atom(name: '_TarefaController.textTodo');

  @override
  String get textTodo {
    _$textTodoAtom.reportRead();
    return super.textTodo;
  }

  @override
  set textTodo(String value) {
    _$textTodoAtom.reportWrite(value, super.textTodo, () {
      super.textTodo = value;
    });
  }

  final _$validaTextTarefaAtom =
      Atom(name: '_TarefaController.validaTextTarefa');

  @override
  bool get validaTextTarefa {
    _$validaTextTarefaAtom.reportRead();
    return super.validaTextTarefa;
  }

  @override
  set validaTextTarefa(bool value) {
    _$validaTextTarefaAtom.reportWrite(value, super.validaTextTarefa, () {
      super.validaTextTarefa = value;
    });
  }

  final _$tarefaListaAtom = Atom(name: '_TarefaController.tarefaLista');

  @override
  ObservableList<Tarefa> get tarefaLista {
    _$tarefaListaAtom.reportRead();
    return super.tarefaLista;
  }

  @override
  set tarefaLista(ObservableList<Tarefa> value) {
    _$tarefaListaAtom.reportWrite(value, super.tarefaLista, () {
      super.tarefaLista = value;
    });
  }

  final _$todasTarefasAFazerAsyncAction =
      AsyncAction('_TarefaController.todasTarefasAFazer');

  @override
  Future<void> todasTarefasAFazer() {
    return _$todasTarefasAFazerAsyncAction
        .run(() => super.todasTarefasAFazer());
  }

  final _$_TarefaControllerActionController =
      ActionController(name: '_TarefaController');

  @override
  void verificaTextoTarefa() {
    final _$actionInfo = _$_TarefaControllerActionController.startAction(
        name: '_TarefaController.verificaTextoTarefa');
    try {
      return super.verificaTextoTarefa();
    } finally {
      _$_TarefaControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void valorParaOTexto(String texto) {
    final _$actionInfo = _$_TarefaControllerActionController.startAction(
        name: '_TarefaController.valorParaOTexto');
    try {
      return super.valorParaOTexto(texto);
    } finally {
      _$_TarefaControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
textTodo: ${textTodo},
validaTextTarefa: ${validaTextTarefa},
tarefaLista: ${tarefaLista}
    ''';
  }
}
