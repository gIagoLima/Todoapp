import 'package:app_demonster/controllers/TarefasConcluidasPage/tarefaConcluidasController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class TarefasConcluidas extends StatefulWidget {
  @override
  _TarefasConcluidasState createState() => _TarefasConcluidasState();
}

class _TarefasConcluidasState extends State<TarefasConcluidas> {
  TarefasConcluidasController concluidasControll =
      TarefasConcluidasController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    concluidasControll.todasTarefasFeitas();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[200],
        child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        showDialog(
                            builder: (_) {
                              return WillPopScope(
                                  child: AlertDialog(
                                    actions: <Widget>[
                                      FlatButton(
                                          onPressed: () async {
                                            concluidasControll
                                                .deletarTodasTarefas();
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('Sim')),
                                      FlatButton(
                                          onPressed: () =>
                                              Navigator.of(context).pop(),
                                          child: Text('Não'))
                                    ],
                                    title: Text('Deletar todas tarefas'),
                                  ),
                                  onWillPop: () async => false);
                            },
                            context: context);
                      },
                      child: Icon(
                        Icons.delete,
                        color: Colors.purple[800],
                      ))
                ],
              ),
              Card(
                child: Container(
                  height: 440,
                  child: Observer(builder: (_) {
                    return ListView.builder(
                        itemCount: concluidasControll.tarefaLista.length,
                        itemBuilder: (_, counter) {
                          //print(controllTarefa.tarefaLista.length);
                          return Dismissible(
                            background: Container(
                              color: Colors.red,
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Text(
                                        'Deletar',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ))
                                ],
                              ),
                            ),
                            secondaryBackground: Container(
                              color: Colors.green,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Text(
                                        'Concluído',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ))
                                ],
                              ),
                            ),
                            key: Key(
                                concluidasControll.tarefaLista[counter].titulo),
                            onDismissed: (direct) {
                              concluidasControll.dismissibleCheck(
                                concluidasControll.tarefaLista[counter].titulo,
                              );
                            },
                            child: ListTile(
                              title: Text(concluidasControll
                                  .tarefaLista[counter].titulo),
                            ),
                          );
                        });
                  }),
                ),
              ),
            ])));
  }
}
