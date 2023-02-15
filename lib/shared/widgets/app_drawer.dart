import 'package:flutter/material.dart';
import 'package:ibuild_dash/src/routes/routes_model.dart';


String userName = '';
String userAvatar = '';

class DrawerDefault extends StatelessWidget {
  const DrawerDefault({Key? key}) : super(key: key);
  //Recebe store da HomePage para conseguir obter os métodos Mobx
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: LayoutBuilder(builder: (context, constraints) {
        return Container(
          height: double.maxFinite,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              DrawerHeader(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text("espaço para img")
                    //  Image(
                    //   image: AssetImage('lib/assets/images/logo.jpeg'),
                    // ), 
                  ],
                ),
                decoration: const BoxDecoration(color: Colors.white),
              ),
              ListTile(
                leading: Icon(Icons.home_outlined,
                    size: constraints.maxWidth * .08,
                    color: Colors.blue),
                title: Text('Analitcs',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.blue,
                      fontWeight: FontWeight.w300,
                    )),
                onTap: () {
                    //navKey.currentState?.pushNamedAndRemoveUntil(Routes.home, (route) => false);
                },
              ),

              ListTile(
                leading: Icon(Icons.subscriptions_outlined,
                    size: constraints.maxWidth * .08, color: Colors.blue),
                title: const Text('Assinantes Externos',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.blue,
                      fontWeight: FontWeight.w300,
                    )),
                onTap: () {
                  navKey.currentState?.pushNamed(Routes.externalSubscribers);
                }
              ),
                 ListTile(
                leading: Icon(Icons.person_add_alt,
                    size: constraints.maxWidth * .08,
                    color: Colors.blue),
                title: Text('Novos',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.blue,
                      fontWeight: FontWeight.w300,
                    )),
                onTap: () {
                  //navKey.currentState?.pushNamed(Routes.notifications);
                },
              ),
              ListTile(
                leading: Icon(Icons.people_outline,
                    size: constraints.maxWidth * .08,
                    color: Colors.blue),
                title: Text('Parceiros',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.blue,
                      fontWeight: FontWeight.w300,
                    )),
                onTap: () {
                 // navKey.currentState?.pushNamed(Routes.parameters);
                },
              ),
               ListTile(
                leading: Icon(Icons.comment_outlined,
                    size: constraints.maxWidth * .08,
                    color: Colors.blue),
                title: Text('Comentários',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.blue,
                      fontWeight: FontWeight.w300,
                    )),
                onTap: () {
                 // navKey.currentState?.pushNamed(Routes.parameters);
                },
              ),

             ListTile(
                leading: Icon(Icons.people_alt_outlined,
                    size: constraints.maxWidth * .08,
                    color: Colors.blue),
                title: Text('Alterações',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.blue,
                      fontWeight: FontWeight.w300,
                    )),
                onTap: () {
                 // navKey.currentState?.pushNamed(Routes.parameters);
                },
              ),

                ListTile(
                leading: Icon(Icons.assignment,
                    size: constraints.maxWidth * .08,
                    color: Colors.blue),
                title: Text('Pedidos',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.blue,
                      fontWeight: FontWeight.w300,
                    )),
                onTap: () {
                 // navKey.currentState?.pushNamed(Routes.parameters);
                },
              ),

                ListTile(
                leading: Icon(Icons.assignment_add,
                    size: constraints.maxWidth * .08,
                    color: Colors.blue),
                title: Text('Caixa de entrada de pedidos',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.blue,
                      fontWeight: FontWeight.w300,
                    )),
                onTap: () {
                 // navKey.currentState?.pushNamed(Routes.parameters);
                },
              ),

                ListTile(
                leading: Icon(Icons.emoji_people,
                    size: constraints.maxWidth * .08,
                    color: Colors.blue),
                title: Text('Colaboradores',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.blue,
                      fontWeight: FontWeight.w300,
                    )),
                onTap: () {
                 // navKey.currentState?.pushNamed(Routes.parameters);
                },
              ),


                              ListTile(
                leading: Icon(Icons.notification_add_outlined,
                    size: constraints.maxWidth * .08,
                    color: Colors.blue),
                title: Text('Envio de notificações',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.blue,
                      fontWeight: FontWeight.w300,
                    )),
                onTap: () {
                 // navKey.currentState?.pushNamed(Routes.parameters);
                },
              ),


                ListTile(
                leading: Icon(Icons.rule_sharp,
                    size: constraints.maxWidth * .08,
                    color: Colors.blue),
                title: Text('Regras',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.blue,
                      fontWeight: FontWeight.w300,
                    )),
                onTap: () {
                 // navKey.currentState?.pushNamed(Routes.parameters);
                },
              ),
              ListTile(
                  leading: Icon(
                    Icons.exit_to_app,
                    size: constraints.maxWidth * .08,
                    color: Colors.blue,
                  ),
                  title: Text('Sair',
                      style: TextStyle(
                      fontSize: 19,
                      color: Colors.blue,
                      fontWeight: FontWeight.w300,
                    )),
                  onTap: () async {
                    // SharedPreferences prefs =
                    //     await SharedPreferences.getInstance();
                    // await prefs.remove(StorageKeys.isLogged);
                    // await prefs.remove(StorageKeys.tokenBearer);
                    // await prefs.remove(StorageKeys.cpf);
                    // await prefs.remove(StorageKeys.deviceRegister);
                    // await prefs.remove(StorageKeys.email);
                    // await prefs.remove(StorageKeys.password);
                    // await prefs.remove(StorageKeys.tokenFirebase);
                    // await prefs.remove(StorageKeys.userId);
                    // navKey.currentState?.pushReplacementNamed(Routes.login);
                  }),
            ],
          ),
        );
      }),
    );
  }
}
