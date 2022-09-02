class FeedModel {
  String? sId;
  bool? privado;
  int? partidasExecutadasQtd;
  int? comentariosQtd;
  double? mediaNota;
  double? mediaAcertos;
  double? porcetagemMediaAcertos;
  double? mediaDuracao;
  double? avaliacaoNota;
  bool? statusAtivo;
  bool? finalizado;
  String? desafioId;
  String? titulo;
  String? descricao;
  String? usuarioAutor;
  String? usuarioAutorNome;
  String? usuarioAutorApelido;
  String? imagemCapa;
  String? linkVideo;
  String? numeroNic;
  String? dataCriacao;
  int? iV;
  bool? podeSerExcluido;
  String? usuarioAutorImagemPerfil;
  UsuarioAutorBorda? usuarioAutorBorda;
  UsuarioAutorIcone? usuarioAutorIcone;

  FeedModel(
      {this.sId,
      this.privado,
      this.partidasExecutadasQtd,
      this.comentariosQtd,
      this.mediaNota,
      this.mediaAcertos,
      this.porcetagemMediaAcertos,
      this.mediaDuracao,
      this.avaliacaoNota,
      this.statusAtivo,
      this.finalizado,
      this.desafioId,
      this.titulo,
      this.descricao,
      this.usuarioAutor,
      this.usuarioAutorNome,
      this.usuarioAutorApelido,
      this.imagemCapa,
      this.linkVideo,
      this.numeroNic,
      this.dataCriacao,
      this.iV,
      this.podeSerExcluido,
      this.usuarioAutorImagemPerfil,
      this.usuarioAutorBorda,
      this.usuarioAutorIcone});

  FeedModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    privado = json['privado'];
    partidasExecutadasQtd = json['partidas_executadas_qtd'];
    comentariosQtd = json['comentarios_qtd'];
    mediaNota = json['media_nota'].toDouble();
    mediaAcertos = json['media_acertos'].toDouble();
    porcetagemMediaAcertos = json['porcetagem_media_acertos'].toDouble();
    mediaDuracao = json['media_duracao'].toDouble();
    avaliacaoNota = json['avaliacao_nota'].toDouble();
    statusAtivo = json['status_ativo'];
    finalizado = json['finalizado'];
    desafioId = json['desafio_id'];
    titulo = json['titulo'];
    descricao = json['descricao'];
    usuarioAutor = json['usuario_autor'];
    usuarioAutorNome = json['usuario_autor_nome'];
    usuarioAutorApelido = json['usuario_autor_apelido'];
    imagemCapa = json['imagem_capa'];
    linkVideo = json['link_video'];
    numeroNic = json['numero_nic'];
    dataCriacao = json['data_criacao'];
    iV = json['__v'];
    podeSerExcluido = json['pode_ser_excluido'];
    usuarioAutorImagemPerfil = json['usuario_autor_imagem_perfil'];
    usuarioAutorBorda = json['usuario_autor_borda'] != null
        ? UsuarioAutorBorda.fromJson(json['usuario_autor_borda'])
        : null;
    usuarioAutorIcone = json['usuario_autor_icone'] != null
        ? UsuarioAutorIcone.fromJson(json['usuario_autor_icone'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['privado'] = privado;
    data['partidas_executadas_qtd'] = partidasExecutadasQtd;
    data['comentarios_qtd'] = comentariosQtd;
    data['media_nota'] = mediaNota;
    data['media_acertos'] = mediaAcertos;
    data['porcetagem_media_acertos'] = porcetagemMediaAcertos;
    data['media_duracao'] = mediaDuracao;
    data['avaliacao_nota'] = avaliacaoNota;
    data['status_ativo'] = statusAtivo;
    data['finalizado'] = finalizado;
    data['desafio_id'] = desafioId;
    data['titulo'] = titulo;
    data['descricao'] = descricao;
    data['usuario_autor'] = usuarioAutor;
    data['usuario_autor_nome'] = usuarioAutorNome;
    data['usuario_autor_apelido'] = usuarioAutorApelido;
    data['imagem_capa'] = imagemCapa;
    data['link_video'] = linkVideo;
    data['numero_nic'] = numeroNic;
    data['data_criacao'] = dataCriacao;
    data['__v'] = iV;
    data['pode_ser_excluido'] = podeSerExcluido;
    data['usuario_autor_imagem_perfil'] = usuarioAutorImagemPerfil;
    if (usuarioAutorBorda != null) {
      data['usuario_autor_borda'] = usuarioAutorBorda!.toJson();
    }
    if (usuarioAutorIcone != null) {
      data['usuario_autor_icone'] = usuarioAutorIcone!.toJson();
    }
    return data;
  }
}

class UsuarioAutorBorda {
  String? id;
  String? color1;
  String? color2;

  UsuarioAutorBorda({this.id, this.color1, this.color2});

  UsuarioAutorBorda.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    color1 = json['color1'];
    color2 = json['color2'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['color1'] = color1;
    data['color2'] = color2;
    return data;
  }
}

class UsuarioAutorIcone {
  String? id;
  String? url;
  int? xpAmount;

  UsuarioAutorIcone({this.id, this.url, this.xpAmount});

  UsuarioAutorIcone.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    xpAmount = json['xp_amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['url'] = url;
    data['xp_amount'] = xpAmount;
    return data;
  }
}
