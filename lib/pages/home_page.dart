import 'package:flutter/material.dart';
import "package:guerrero0366/util/recuadros.dart";
import "package:guerrero0366/util/botones.dart";
import "package:guerrero0366/util/list_tile.dart";

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff053281),
        child: Icon(
          Icons.add_shopping_cart,
          color: Colors.white,
          size: 32,
        ),
        shape: CircleBorder(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          color: Color(0xffEEDEC9),
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.home, size: 30, color: Color(0xff053281)),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.settings, size: 30, color: Colors.grey),
                  ),
                ]),
          )),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // AppBar fijo
            Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Mercado",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.yellow,
                        ),
                      ),
                      Text(
                        " Libre",
                        style: TextStyle(fontSize: 26),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color(0xffD9D9D9),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.add, color: Color(0xff053281)),
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            // Contenido desplazable
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Imagen
                    Container(
                      width: 300,
                      height: 180,
                      child: PageView(
                        scrollDirection: Axis.horizontal,
                        controller: _controller,
                        children: [
                          const MyCuadro(img: "assets/images/logo1.png"),
                          const MyCuadro(img: "assets/images/mercadop.png"),
                          const MyCuadro(img: "assets/images/mercadoe.png"),
                        ],
                      ),
                    ),

                    SizedBox(height: 25),
                    // 3 botones
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyBoton(
                              icono: "assets/images/mano-robotica.png",
                              botonText: "Tech"),
                          MyBoton(
                              icono: "assets/images/hogar.png",
                              botonText: "Hogar"),
                          MyBoton(
                              icono: "assets/images/herramientas.png",
                              botonText: "Herramientas"),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),

                    // Listas
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Column(
                        children: [
                          MyListTile(
                            iconoImg: "assets/images/pagina2.jpg",
                            tituloTitulo: "Mercado Pago",
                            tituloSubtitulo: "Conocela",
                          ),
                          MyListTile(
                            iconoImg: "assets/images/pagina3.png",
                            tituloTitulo: "Mercado Shops",
                            tituloSubtitulo: "Buscanos",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
