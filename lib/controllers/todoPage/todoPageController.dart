import 'package:app_demonster/models/novaTarefa.dart';
import 'package:app_demonster/views/tarefa/tarefaPage.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'todoPageController.g.dart';

class TodoController = _TodoController with _$TodoController;

abstract class _TodoController with Store {
  @observable
  int indexNavBar = 0;

  @action
  void alteraIndex(int atualIndex) {
    indexNavBar = atualIndex;
  }

  @observable
  Widget atualBody = TarefaPage();
}
