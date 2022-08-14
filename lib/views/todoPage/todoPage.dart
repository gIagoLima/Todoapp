import 'package:app_demonster/controllers/todoPage/todoPageController.dart';
import 'package:app_demonster/views/tarefa/tarefaPage.dart';
import 'package:app_demonster/views/tarefasConcluidas/concluidas.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

class TodoPage extends StatefulWidget {
  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  TodoController controllerTodo = TodoController();
  var title = '';
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    reaction((_) => controllerTodo.indexNavBar, (index) {
      if (index == 0) {
        controllerTodo.atualBody = TarefaPage();
        setState(() {
          title = 'Tarefas a fazer';
        });
      }
      if (index == 1) {
        controllerTodo.atualBody = TarefasConcluidas();
        setState(() {
          title = 'Tarefas Feitas';
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(title,
              style: TextStyle(
                color: Colors.white,
              )),
          elevation: 0,
          backgroundColor: Colors.grey[800],
        ),
        bottomNavigationBar: Observer(builder: (_) {
          return BottomNavigationBar(
              selectedLabelStyle: TextStyle(fontFamily: 'titan'),
              currentIndex: controllerTodo.indexNavBar,
              onTap: controllerTodo.alteraIndex,
              showSelectedLabels: true,
              showUnselectedLabels: false,
              unselectedLabelStyle: TextStyle(color: Colors.white),
              backgroundColor: Colors.black,
              selectedItemColor: Colors.purple[800],
              unselectedIconTheme: IconThemeData(color: Colors.white),
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  label: 'Tarefas',
                  icon: Icon(Icons.wb_incandescent),
                ),
                BottomNavigationBarItem(
                    label:'Concluídas', icon: Icon(Icons.border_color)),
              ]);
        }),
        body: Observer(builder: (_) {
          return controllerTodo.atualBody;
        }));
  }
}
