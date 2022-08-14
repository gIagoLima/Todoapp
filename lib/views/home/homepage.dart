import 'package:app_demonster/controllers/homepage/home_controller.dart';
import 'package:app_demonster/views/todoPage/todoPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ControllerHome controllerHome = ControllerHome(
    100,
    100,
    0,
    false,
  );
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    reaction((_) => controllerHome.loginAprovate, (login) {
      if (login == true) {
        Navigator.popAndPushNamed(context, '/todopage');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.grey[200],
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(width: 8, color: Colors.purple[800])),
                child: Center(
                  child: Text(
                    'App Demonster',
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'titan', fontSize: 28),
                  ),
                ),
                height: 200,
              ),
              Container(
                color: Colors.grey[200],
                child: Container(
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          trailing: Icon(Icons.add_alert),
                          title: Text('Item'),
                          subtitle: Text('Suntotle desciption'),
                        ),
                        ListTile(
                          trailing: Icon(Icons.add_alert),
                          title: Text('Item'),
                          subtitle: Text('Suntotle desciption'),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Observer(builder: (_) {
        return BottomAppBar(
          color: controllerHome.emailError ? Colors.red : Colors.blue,
          child: Observer(builder: (_) {
            return Container(
                height: 32,
                child: Center(
                    child: controllerHome.emailError == true
                        ? Text('Preencha corretamente',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white))
                        : Text('Iago Guimarães',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white))));
          }),
        );
      }),
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.grey[200],
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: ListView(
            children: <Widget>[
              Observer(builder: (_) {
                return AnimatedContainer(
                  height: 120,
                  decoration: BoxDecoration(
                      color: controllerHome.colorBackgroundWidget == true
                          ? Colors.purple[800]
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(32)),
                  duration: Duration(milliseconds: 200),
                  child: Row(
                    children: <Widget>[
                      AnimatedContainer(
                          child: controllerHome.colorBackgroundWidget == true
                              ? Container(
                                  child: Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width: 56,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(4.0),
                                                child: Text('Email',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    )),
                                              ),
                                              Icon(
                                                Icons.email,
                                                size: 40,
                                                color: Colors.white,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(4.0),
                                                  child: Text('Ajuda',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      )),
                                                ),
                                                Icon(
                                                  Icons.help,
                                                  size: 40,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(4.0),
                                                child: Text('Conta',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    )),
                                              ),
                                              Icon(
                                                Icons.account_circle,
                                                size: 40,
                                                color: Colors.white,
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              : Container(),
                          duration: Duration(
                            milliseconds: 200,
                          )),
                      Observer(builder: (_) {
                        return AnimatedContainer(
                            duration: Duration(milliseconds: 620),
                            height: 10,
                            width: controllerHome.sizeRowContainerLogo);
                      }),
                      GestureDetector(
                        onTap: () {
                          controllerHome.deformContainer();
                          print(controllerHome.heightContainerLogo);
                        },
                        child: Observer(builder: (_) {
                          return AnimatedContainer(
                            duration: Duration(milliseconds: 400),
                            width: controllerHome.widthContainerLogo,
                            height: controllerHome.heightContainerLogo,
                            child: controllerHome.colorBackgroundWidget == true
                                ? Center(
                                    child: Icon(
                                    Icons.arrow_back,
                                    size: 40,
                                  ))
                                : Center(
                                    child: Text(
                                    "A",
                                    style: TextStyle(
                                      fontFamily: 'titan',
                                      color: Colors.white,
                                      fontSize: 40,
                                    ),
                                  )),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(26),
                                color: Colors.redAccent[400]),
                          );
                        }),
                      )
                    ],
                  ),
                );
              }),
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Text('Login',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 40))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 4, color: Colors.black),
                        borderRadius: BorderRadius.circular(32)),
                    width: 280,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TextField(
                        onChanged: controllerHome.emailInserText,
                        decoration: InputDecoration(hintText: 'Email'),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Observer(builder: (_) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 4, color: Colors.black),
                          borderRadius: BorderRadius.circular(32)),
                      width: 280,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextField(
                          obscureText: controllerHome.passwordView,
                          onChanged: (text) {
                            controllerHome.senhaText = text;
                          },
                          decoration: InputDecoration(
                            icon: controllerHome.senhaText.length > 0
                                ? GestureDetector(
                                    onTap: controllerHome.setViewPassword,
                                    child: Icon(Icons.remove_red_eye,
                                        color: Colors.purple[800]))
                                : null,
                            hintText: 'Senha',
                          ),
                        ),
                      ),
                    )
                  ],
                );
              }),
              SizedBox(
                height: 20,
              ),
              Observer(builder: (_) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return TodoPage();
                            }));
                          },
                          child: Container(
                            width: 140,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    controllerHome.loginAwait == true
                                        ? CircularProgressIndicator()
                                        : Text(
                                            'Fazer Login',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                                color: Colors.purple[800]),
                                          )
                                  ]),
                            ),
                          ),
                        ),
                        Text("(próxima tela)")
                      ],
                    ),
                  ],
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
