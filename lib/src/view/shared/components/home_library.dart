import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverList(
            delegate: SliverChildListDelegate([
          Stack(
            children: [
              FadeInImage(
                fit: BoxFit.contain,
                placeholder: NetworkImage(
                    "https://img.freepik.com/foto-gratis/efecto-falla-sobre-fondo-negro_53876-108682.jpg?w=740&t=st=1665418242~exp=1665418842~hmac=b969ac6654f55f86e4686431890f85dd791c6ab5f8e81d7b17a07a0f0c07ba28"),
                image: NetworkImage(
                    "https://img.freepik.com/foto-gratis/efecto-falla-sobre-fondo-negro_53876-108682.jpg?w=740&t=st=1665418242~exp=1665418842~hmac=b969ac6654f55f86e4686431890f85dd791c6ab5f8e81d7b17a07a0f0c07ba28"),
              ),
              Column(
                children: [
                  Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 15.0, left: 0.5),
                      child: IconButton(
                          icon: Icon(
                            Icons.chevron_left,
                            color: Colors.white,
                            size: 40.0,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          })),
                  _profile(),
                  _cat(),
                  _iconstab(),
                ],
              ),
            ],
          )
        ])),
        SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            sliver: SliverGrid.count(
              crossAxisCount: 2,
              crossAxisSpacing: 20.0,
              mainAxisSpacing: 10.0,
              children: [_library1(), _library2(), _library3(), _library4()],
            ))
      ],
    ));
  }
}

Widget _profile() {
  return Center(
    child: Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
              "https://img.freepik.com/vector-premium/escena-teatro-personajes-dibujos-animados_29937-8267.jpg?w=2000"),
          radius: 80.0,
        ),
        Container(
            margin: const EdgeInsets.symmetric(vertical: 15.0),
            child: const Text("Caperucita Roja",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 24.0))),
        Container(
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            child: const Text("Charles Perrault",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 17.0))),
      ],
    ),
  );
}

Widget _cat() {
  return Container(
    color: Color.fromRGBO(0, 0, 0, 0.2),
    padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text(
              "Suspenso",
              style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1.0), fontSize: 17.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.blueAccent,
          size: 15.0,
        ),
        Column(
          children: [
            Text(
              "Drama",
              style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1.0), fontSize: 17.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.blueAccent,
          size: 15.0,
        ),
        Column(
          children: [
            Text(
              "Accion",
              style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1.0), fontSize: 17.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _iconstab() {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
            icon: Icon(
              Icons.picture_in_picture,
              size: 30.0,
              color: Colors.blue,
            ),
            onPressed: () {}),
        IconButton(
            icon: Icon(
              Icons.play_arrow,
              size: 30.0,
              color: Colors.blue,
            ),
            onPressed: () {}),
        IconButton(
          icon: Icon(
            Icons.data_saver_on,
            size: 30.0,
            color: Colors.blue,
          ),
          onPressed: () {},
        )
      ],
    ),
  );
}

Widget _library1() {
  return Container(
      child: ClipRRect(
    borderRadius: BorderRadius.circular(10.0),
    child: Image(
      width: 600,
      height: 500,
      fit: BoxFit.cover,
      image: NetworkImage(
          "https://d20f60vzbd93dl.cloudfront.net/uploads/tienda_010118/tienda_010118_7c8710ede5bef3ec0f3ea79028d6537a5d50f372_producto_large_90.jpg"),
    ),
  ));
}

Widget _library2() {
  return Container(
      child: ClipRRect(
    borderRadius: BorderRadius.circular(10.0),
    child: Image(
      width: 600,
      height: 500,
      fit: BoxFit.cover,
      image: NetworkImage(
          "https://2.bp.blogspot.com/-wpw4zvn60ws/W9kCX3J8VzI/AAAAAAAAKLw/jj6m7L5DTNgoPucCzelNm_Q5evIhpN5AgCLcBGAs/s1600/LAS%2BTRADICIONES%2BPERUANAS.jpg"),
    ),
  ));
}

Widget _library3() {
  return Container(
      child: ClipRRect(
    borderRadius: BorderRadius.circular(10.0),
    child: Image(
      width: 600,
      height: 500,
      fit: BoxFit.cover,
      image:
          NetworkImage("https://hubinformacion.continental.edu.pe/sitio/wp-content/uploads/2020/05/portadaObras01.png"),
    ),
  ));
}

Widget _library4() {
  return Container(
      child: ClipRRect(
    borderRadius: BorderRadius.circular(10.0),
    child: Image(
      width: 600,
      height: 500,
      fit: BoxFit.cover,
      image: NetworkImage(
          "https://peru21.pe/resizer/9uMnkt-9e9z8TjAxwlvzY7Ap1Aw=/620x0/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/CIQ3VNYGAVDO3NPFOIFE4ZQFDM.jpg"),
    ),
  ));
}
