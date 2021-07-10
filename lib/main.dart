import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0, // SOMBRA
            title: Text(
              "BAZAAR",
              style: TextStyle(
                // PARA ALTERAR ESTILIZAÇÃO NO TEXT
                color: Colors.grey,
              ),
            ),
            centerTitle: true, // CENTRALIZAR O TITLE
            leading: Icon(
              // WIDGETS A ESQUERDA DO APPBAR
              Icons.search,
              color: Colors.grey,
              size: 30,
            ),
            actions: [
              // WIDGETS A DIREITA DO APPBAR
              Icon(
                Icons.notifications_none,
                color: Colors.grey,
                size: 30,
              )
            ],
          ),
          body: Container(
            // ADICIONAR MARGIN NA COLUMN
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment
                  .start, // ALINHAMENTO DOS COMPONENTES A PARTIR DO INICIO
              children: [
                Text("New Arrival",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 25,
                    )),
                Container(
                    decoration: BoxDecoration(
                      // ADICIONANDO IMAGEM VIA URL
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(
                          10), // ADICIONAR BORDA NO CONTAINER
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://images.pexels.com/photos/1599005/pexels-photo-1599005.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
                        fit: BoxFit
                            .cover, // PREENCHER A IMAGEM NO CONTAINER INTEIRO
                      ),
                    ),
                    height: 150,
                    width: double.infinity,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Super Flash Sale",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25)),
                          Text("50% off",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25))
                        ],
                      ),
                    ))
              ],
            ),
          )),
    );
  }
}
