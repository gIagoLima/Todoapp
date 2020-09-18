import 'package:app_demonster/models/novaTarefa.dart';
import 'package:app_demonster/repositores/databaseHelper.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'tarefaConcluidasController.g.dart';

class TarefasConcluidasController = _TarefasConcluidasController
    with _$TarefasConcluidasController;

abstract class _TarefasConcluidasController with Store {
  Databasehelper db;
  _TarefasConcluidasController() {
    db = Databasehelper();
  }
  @observable
  ObservableList<Tarefa> tarefaLista = ObservableList();
  List<Tarefa> tarefaListaL;
  @action
  Future<void> todasTarefasFeitas() async {
    tarefaListaL = await db.getTarefasFeitas();
    tarefaLista.clear();
    tarefaLista = ObservableList();
    try {
      for (var counter = 0; counter < tarefaListaL.length; counter++) {
        tarefaLista.add(tarefaListaL[counter]);
      }
    } catch (e) {
      print('o erro era ki');
    }
  }

  void deletarTodasTarefas() {
    db.deletarTodasTarefa();
    todasTarefasFeitas();
  }

  void dismissibleCheck(
    String titulo,
  ) async {
    await db.deletartarefa(titulo);
    todasTarefasFeitas();
  }
}
