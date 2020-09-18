import 'dart:async';

import 'package:app_demonster/models/novaTarefa.dart';
import 'package:app_demonster/repositores/databaseHelper.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'tarefaPageController.g.dart';

class TarefaController = _TarefaController with _$TarefaController;

abstract class _TarefaController with Store {
  Databasehelper db;
  Tarefa tarefa;
  _TarefaController() {
    db = Databasehelper();
    tarefa = Tarefa();
    tarefaListaL = [];
  }
  @observable
  String textTodo;
  @observable
  bool validaTextTarefa;
  @observable
  ObservableList<Tarefa> tarefaLista = ObservableList();
  List<Tarefa> tarefaListaL;
  @action
  Future<void> todasTarefasAFazer() async {
    tarefaListaL = await db.gettarefasafazer();
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

  @action
  void verificaTextoTarefa() {
    print(textTodo);
    if (textTodo.length > 0) {
      print('aqui dentro');
      tarefa.estado = 'aguardando';
      tarefa.titulo = textTodo;
      insertTarefa(tarefa);
    } else {
      validaTextTarefa = false;
      Timer(Duration(seconds: 1), () {
        validaTextTarefa = true;
      });
    }
  }

  void insertTarefa(Tarefa trf) {
    db.inserttarefa(trf);
    todasTarefasAFazer();
  }

  @action
  void valorParaOTexto(String texto) {
    textTodo = texto;
  }

  void deletarTodasTarefas() {
    db.deletarTodasTarefa();
    todasTarefasAFazer();
  }

  void dismissibleCheck(
      int index, String titulo, DismissDirection direct) async {
    if (direct == DismissDirection.startToEnd) {
      await db.deletartarefa(titulo);
      todasTarefasAFazer();
    }
    if (direct == DismissDirection.endToStart) {
      tarefaLista[index].estado = 'concluido';
      db.atualizartarefa(tarefaLista[index]);
      todasTarefasAFazer();
    }
  }
}
