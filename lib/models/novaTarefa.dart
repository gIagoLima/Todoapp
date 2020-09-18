class Tarefa {
  String estado;
  String titulo;

  Tarefa({
    this.estado,
    this.titulo,
  });
  Map<String, dynamic> tomap() {
    var map = <String, dynamic>{
      'estado': estado,
      'titulo': titulo,
    };
    return map;
  }

  Tarefa.frommap(Map<String, dynamic> map) {
    estado = map['estado'];
    titulo = map['titulo'];
  }
}
