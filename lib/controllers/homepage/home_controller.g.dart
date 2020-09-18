// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ControllerHome on _HomeController, Store {
  final _$sizeRowContainerLogoAtom =
      Atom(name: '_HomeController.sizeRowContainerLogo');

  @override
  double get sizeRowContainerLogo {
    _$sizeRowContainerLogoAtom.reportRead();
    return super.sizeRowContainerLogo;
  }

  @override
  set sizeRowContainerLogo(double value) {
    _$sizeRowContainerLogoAtom.reportWrite(value, super.sizeRowContainerLogo,
        () {
      super.sizeRowContainerLogo = value;
    });
  }

  final _$heightContainerLogoAtom =
      Atom(name: '_HomeController.heightContainerLogo');

  @override
  double get heightContainerLogo {
    _$heightContainerLogoAtom.reportRead();
    return super.heightContainerLogo;
  }

  @override
  set heightContainerLogo(double value) {
    _$heightContainerLogoAtom.reportWrite(value, super.heightContainerLogo, () {
      super.heightContainerLogo = value;
    });
  }

  final _$widthContainerLogoAtom =
      Atom(name: '_HomeController.widthContainerLogo');

  @override
  double get widthContainerLogo {
    _$widthContainerLogoAtom.reportRead();
    return super.widthContainerLogo;
  }

  @override
  set widthContainerLogo(double value) {
    _$widthContainerLogoAtom.reportWrite(value, super.widthContainerLogo, () {
      super.widthContainerLogo = value;
    });
  }

  final _$colorBackgroundWidgetAtom =
      Atom(name: '_HomeController.colorBackgroundWidget');

  @override
  bool get colorBackgroundWidget {
    _$colorBackgroundWidgetAtom.reportRead();
    return super.colorBackgroundWidget;
  }

  @override
  set colorBackgroundWidget(bool value) {
    _$colorBackgroundWidgetAtom.reportWrite(value, super.colorBackgroundWidget,
        () {
      super.colorBackgroundWidget = value;
    });
  }

  final _$emailTextAtom = Atom(name: '_HomeController.emailText');

  @override
  String get emailText {
    _$emailTextAtom.reportRead();
    return super.emailText;
  }

  @override
  set emailText(String value) {
    _$emailTextAtom.reportWrite(value, super.emailText, () {
      super.emailText = value;
    });
  }

  final _$senhaTextAtom = Atom(name: '_HomeController.senhaText');

  @override
  String get senhaText {
    _$senhaTextAtom.reportRead();
    return super.senhaText;
  }

  @override
  set senhaText(String value) {
    _$senhaTextAtom.reportWrite(value, super.senhaText, () {
      super.senhaText = value;
    });
  }

  final _$loginAprovateAtom = Atom(name: '_HomeController.loginAprovate');

  @override
  bool get loginAprovate {
    _$loginAprovateAtom.reportRead();
    return super.loginAprovate;
  }

  @override
  set loginAprovate(bool value) {
    _$loginAprovateAtom.reportWrite(value, super.loginAprovate, () {
      super.loginAprovate = value;
    });
  }

  final _$loginAwaitAtom = Atom(name: '_HomeController.loginAwait');

  @override
  bool get loginAwait {
    _$loginAwaitAtom.reportRead();
    return super.loginAwait;
  }

  @override
  set loginAwait(bool value) {
    _$loginAwaitAtom.reportWrite(value, super.loginAwait, () {
      super.loginAwait = value;
    });
  }

  final _$passwordViewAtom = Atom(name: '_HomeController.passwordView');

  @override
  bool get passwordView {
    _$passwordViewAtom.reportRead();
    return super.passwordView;
  }

  @override
  set passwordView(bool value) {
    _$passwordViewAtom.reportWrite(value, super.passwordView, () {
      super.passwordView = value;
    });
  }

  final _$emailErrorAtom = Atom(name: '_HomeController.emailError');

  @override
  bool get emailError {
    _$emailErrorAtom.reportRead();
    return super.emailError;
  }

  @override
  set emailError(bool value) {
    _$emailErrorAtom.reportWrite(value, super.emailError, () {
      super.emailError = value;
    });
  }

  final _$deformContainerAsyncAction =
      AsyncAction('_HomeController.deformContainer');

  @override
  Future<void> deformContainer() {
    return _$deformContainerAsyncAction.run(() => super.deformContainer());
  }

  final _$_HomeControllerActionController =
      ActionController(name: '_HomeController');

  @override
  void reconstructContainer() {
    final _$actionInfo = _$_HomeControllerActionController.startAction(
        name: '_HomeController.reconstructContainer');
    try {
      return super.reconstructContainer();
    } finally {
      _$_HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setViewPassword() {
    final _$actionInfo = _$_HomeControllerActionController.startAction(
        name: '_HomeController.setViewPassword');
    try {
      return super.setViewPassword();
    } finally {
      _$_HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void emailInserText(dynamic text) {
    final _$actionInfo = _$_HomeControllerActionController.startAction(
        name: '_HomeController.emailInserText');
    try {
      return super.emailInserText(text);
    } finally {
      _$_HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void senhaInsertText(dynamic text) {
    final _$actionInfo = _$_HomeControllerActionController.startAction(
        name: '_HomeController.senhaInsertText');
    try {
      return super.senhaInsertText(text);
    } finally {
      _$_HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateText() {
    final _$actionInfo = _$_HomeControllerActionController.startAction(
        name: '_HomeController.validateText');
    try {
      return super.validateText();
    } finally {
      _$_HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
sizeRowContainerLogo: ${sizeRowContainerLogo},
heightContainerLogo: ${heightContainerLogo},
widthContainerLogo: ${widthContainerLogo},
colorBackgroundWidget: ${colorBackgroundWidget},
emailText: ${emailText},
senhaText: ${senhaText},
loginAprovate: ${loginAprovate},
loginAwait: ${loginAwait},
passwordView: ${passwordView},
emailError: ${emailError}
    ''';
  }
}
