import 'package:flutter/material.dart';

class CartePrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
          this.InicioCabecera(),
    ]  );
  }

  Widget InicioCabecera() {
    return Stack(
      children: <Widget>[

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
              margin: const EdgeInsets.only(top: 50.0, left: 10.0),
              child: const IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.chevron_left,
                    color: Colors.white,
                  )),
            ),
            _profileLect(),
            _cat(),
            _iconstab(),
          ],
        )
      ],
    );
  }
}

Widget _profileLect() {
  return Center(
    child: Column(
      children: [
        const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://d20f60vzbd93dl.cloudfront.net/uploads/tienda_010118/tienda_010118_7c8710ede5bef3ec0f3ea79028d6537a5d50f372_producto_large_90.jpg"),
          radius: 70.0,
        ),
        Container(
            margin: const EdgeInsets.symmetric(vertical: 15.0),
            child: const Text("Caballero Carmelo",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 24.0))),

        Container(

            child: const Text("Abraham Valdelomar",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 17.0))),
      ],
    ),
  );
}

Widget _cat(){
return Container(
  color: Color.fromRGBO(0, 0, 0, 0.2),
  padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 35.0),
  child: Row    (
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Column(
        children: [
          Text("Suspenso",style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1.0),
          fontSize: 17.0,
            fontWeight: FontWeight.bold
          ),
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
          Text("Drama",style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1.0),
              fontSize: 17.0,
              fontWeight: FontWeight.bold
          ),
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
          Text("Accion",style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1.0),
              fontSize: 17.0,
              fontWeight: FontWeight.bold
          ),
          ),
        ],
      ),
    ],
  ),
);
}

Widget _iconstab() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 0.5, vertical: 0.3),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
      IconButton(
        onPressed: null,
        icon: Icon(Icons.picture_in_picture, size: 30.0, color: Colors.white,)
        , ),
        IconButton(
          onPressed: null,
          icon: Icon(Icons.play_arrow, size: 30.0, color: Colors.white,)
          , ),
        IconButton(
          onPressed: null,
          icon: Icon(Icons.data_saver_on, size: 30.0, color: Colors.white,)
          , )
  ],
  ),
  );

}

Widget _library(){
return Container(
  child: Text ("Hola"),
);
}
