import 'package:mobx/mobx.dart';
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
part 'home_controller.g.dart';

class ControllerHome = _HomeController with _$ControllerHome;

abstract class _HomeController with Store {
  _HomeController(
    this.heightContainerLogo,
    this.widthContainerLogo,
    this.sizeRowContainerLogo,
    this.colorBackgroundWidget,
  );
  //AQUI COMEÇA A GESTÃO DO ESTADO DO BOTÃO INTERATIVO SUPERIOR
  @observable
  double sizeRowContainerLogo;
  @observable
  double heightContainerLogo;
  @observable
  double widthContainerLogo;
  @observable
  bool colorBackgroundWidget;
  @action
  void reconstructContainer() {
    //heightContainerLogo += 80.0;
    //widthContainerLogo -= 20.0;
  }

  @action
  Future<void> deformContainer() async {
    if (sizeRowContainerLogo < 12) {
      //heightContainerLogo -= 80.0;
      //widthContainerLogo += 20.0;
      sizeRowContainerLogo += 12.0;

      colorBackgroundWidget = true;
      Timer(Duration(milliseconds: 420), () {
        //reconstructContainer();
      });
    } else {
      //heightContainerLogo -= 80.0;
      //widthContainerLogo += 20.0;
      sizeRowContainerLogo -= 12.0;
      colorBackgroundWidget = false;

      Timer(Duration(milliseconds: 420), () {
        //reconstructContainer();
      });
    }
    // F  IM DA IMPLEMENTAÇÃO (BOTÃO INTERATIVO )

    // Inicio da Verificação De Login (Local)
  }

  @observable
  var emailText = '';
  @observable
  var senhaText = '';
  @observable
  bool loginAprovate = false;
  @observable
  bool loginAwait = false;
  @observable
  bool passwordView = false;
  @observable
  bool emailError = false;
  @action
  void setViewPassword() {
    if (passwordView == true) {
      passwordView = false;
    } else {
      passwordView = true;
    }
  }

  @action
  void emailInserText(var text) {
    emailText = text;
  }

  @action
  void senhaInsertText(var text) {
    senhaText = text;
  }

  @action
  void validateText() {
    if (emailText.contains('@') && senhaText.length > 4) {
      loginAwait = true;
      print(loginAwait);
      print(emailText);
      Timer(Duration(seconds: 2), () {
        loginAwait = false;
        loginAprovate = true;
      });
    } else {
      emailError = true;
    }
  }
}
