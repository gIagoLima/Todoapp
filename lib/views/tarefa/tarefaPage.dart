import 'dart:async';

import 'package:app_demonster/controllers/tarefaPage/tarefaPageController.dart';
import 'package:app_demonster/models/novaTarefa.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

class TarefaPage extends StatefulWidget {
  @override
  _TarefaPageState createState() => _TarefaPageState();
}

class _TarefaPageState extends State<TarefaPage> {
  TarefaController controllTarefa = TarefaController();
  TextEditingController tarefaText = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controllTarefa.todasTarefasAFazer();
    Timer(Duration(seconds: 2), (){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Arraste para os lados os itens que inserir, para interagir")));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      height: MediaQuery.maybeOf(context).size.height,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: LayoutBuilder(
          builder:(context, constraints) =>  Column(
            children: <Widget>[
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
                                            controllTarefa.deletarTodasTarefas();
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
                  height: constraints.maxHeight * 0.6,
                  child: Observer(builder: (_) {
                    return ListView.builder(
                        itemCount: controllTarefa.tarefaLista.length,
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
                            key: Key(controllTarefa.tarefaLista[counter].titulo),
                            onDismissed: (direct) {
                              controllTarefa.dismissibleCheck(
                                  counter,
                                  controllTarefa.tarefaLista[counter].titulo,
                                  direct);
                            },
                            child: ListTile(
                              title: Text(
                                  controllTarefa.tarefaLista[counter].titulo),
                            ),
                          );
                        });
                  }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 52,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      border: Border.all(width: 2, color: Colors.black)),
                  width: 280,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 224,
                          child: TextField(
                            controller: tarefaText,
                            onChanged: controllTarefa.valorParaOTexto,
                            decoration: InputDecoration(
                                border: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.purple[800]))),
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        GestureDetector(
                          onTap: (){controllTarefa.verificaTextoTarefa();
                           tarefaText.clear();
                          },
                          child: Icon(
                            Icons.send,
                            color: Colors.purple[800],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
