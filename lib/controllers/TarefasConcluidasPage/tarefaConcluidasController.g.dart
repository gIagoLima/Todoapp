// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tarefaConcluidasController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TarefasConcluidasController on _TarefasConcluidasController, Store {
  final _$tarefaListaAtom =
      Atom(name: '_TarefasConcluidasController.tarefaLista');

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

  final _$todasTarefasFeitasAsyncAction =
      AsyncAction('_TarefasConcluidasController.todasTarefasFeitas');

  @override
  Future<void> todasTarefasFeitas() {
    return _$todasTarefasFeitasAsyncAction
        .run(() => super.todasTarefasFeitas());
  }

  @override
  String toString() {
    return '''
tarefaLista: ${tarefaLista}
    ''';
  }
}
