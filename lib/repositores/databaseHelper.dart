import 'dart:io';

import 'package:app_demonster/models/novaTarefa.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class Databasehelper {
  String nometabela = "tarefa";
  String estado = "estado";
  String titulo = "titulo";
  static Databasehelper _databasehelper;
  static Database _database;
  Databasehelper._createInstance();
  factory Databasehelper() {
    if (_databasehelper == null) {
      _databasehelper = Databasehelper._createInstance();
    }
    return _databasehelper;
  }
  Future<Database> get database async {
    if (_database == null) {
      _database = await initializeDatabase();
    }
    return _database;
  }

  Future<Database> initializeDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'tarefa.db';
    var tarefadatabase =
        await openDatabase(path, version: 1, onCreate: _criadb);
    return tarefadatabase;
  }

  Future<void> _criadb(Database db, int version) async {
    await db.execute('CREATE TABLE $nometabela($titulo TEXT,$estado TEXT)');
  }

  Future<int> inserttarefa(Tarefa tarefa) async {
    Database db = await this.database;
    var resultado = await db.insert(nometabela, tarefa.tomap());
    return resultado;
  }

  Future<Tarefa> gettarefasconcluidas() async {
    Database db = await this.database;
    List<Map> maps = await db.query(nometabela,
        columns: [
          estado,
          titulo,
        ],
        where: "$estado = ?",
        whereArgs: ['concluido']);
    if (maps.length > 0) {
      return Tarefa.frommap(maps.first);
    } else {
      return null;
    }
  }

  Future<List<Tarefa>> gettarefasafazer() async {
    Database db = await this.database;
    List<Tarefa> list;
    List<Map> maps = await db.query(nometabela,
        columns: [
          estado,
          titulo,
        ],
        where: "$estado = ?",
        whereArgs: ['aguardando']);
    if (maps.length > 0) {
      list = maps.isNotEmpty ? maps.map((c) => Tarefa.frommap(c)).toList() : [];
      return list;
    } else {
      return null;
    }
  }

  Future<List<Tarefa>> getTarefasFeitas() async {
    Database db = await this.database;
    List<Tarefa> list;
    List<Map> maps = await db.query(nometabela,
        columns: [
          estado,
          titulo,
        ],
        where: "$estado = ?",
        whereArgs: ['concluido']);
    if (maps.length > 0) {
      list = maps.isNotEmpty ? maps.map((c) => Tarefa.frommap(c)).toList() : [];
      return list;
    } else {
      return null;
    }
  }

  Future<int> deletartarefa(String titullo) async {
    var db = await this.database;
    int resultado =
        await db.delete(nometabela, where: '$titulo = ?', whereArgs: [titullo]);
    return resultado;
  }

  Future<int> deletarTodasTarefa() async {
    var db = await this.database;
    int resultado = await db.delete(
      nometabela,
    );
    return resultado;
  }

  Future<int> atualizartarefa(Tarefa tarefa) async {
    print('atualizou');
    var db = await this.database;
    var resultado = await db.update(nometabela, tarefa.tomap(),
        where: '$titulo = ?', whereArgs: [tarefa.titulo]);
    return resultado;
  }
}
