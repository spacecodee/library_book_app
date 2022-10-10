import 'package:flutter/material.dart';

class CartePrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
          this.InicioCabecera(),
          this.Info_Lec(),
      ]
    );
  }

  Widget InicioCabecera(){
    return  Stack(
        children: <Widget>[
          FadeInImage(
              fit: BoxFit.contain,
              placeholder: NetworkImage("https://img.freepik.com/foto-gratis/efecto-falla-sobre-fondo-negro_53876-108682.jpg?w=740&t=st=1665418242~exp=1665418842~hmac=b969ac6654f55f86e4686431890f85dd791c6ab5f8e81d7b17a07a0f0c07ba28"),
              image: NetworkImage("https://img.freepik.com/foto-gratis/efecto-falla-sobre-fondo-negro_53876-108682.jpg?w=740&t=st=1665418242~exp=1665418842~hmac=b969ac6654f55f86e4686431890f85dd791c6ab5f8e81d7b17a07a0f0c07ba28"),
          ),
          Column(
     children: [
        Container(
          alignment: Alignment.topLeft,
         margin: EdgeInsets.only(top: 50.0, left: 10.0),
           child: IconButton
            (onPressed: null,
              icon: Icon(Icons.chevron_left, color: Colors.white,)),
    ),
       _ProfileLect()
  ],
)
 ],
 );
  }

  Widget Info_Lec() {
  return Row (
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
    Text("SUSPENSO",style: TextStyle(color: Colors.white, fontSize: 15.0),
  ),
    Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0,),
    Text("DRAMA",style: TextStyle(color: Colors.white, fontSize: 15.0),
  ),
      Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0,),
    Text("ACCION",style: TextStyle(color: Colors.white, fontSize: 15.0),
    ),
    ],
  );
  }
}

Widget _ProfileLect(){
  return Center(
    child: Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage("https://d20f60vzbd93dl.cloudfront.net/uploads/tienda_010118/tienda_010118_7c8710ede5bef3ec0f3ea79028d6537a5d50f372_producto_large_90.jpg"),
          radius: 70.0,
        ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15.0),
             child: Text("Caballero Carmelo", style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 24.0

        ))
       ),
      ],

    ),
  );
}

