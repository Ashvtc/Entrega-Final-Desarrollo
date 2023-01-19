import 'package:flutter/material.dart';
import '../componentes/navbar.dart';

class PantallaAcercaDe extends StatefulWidget {
  const PantallaAcercaDe({Key? key}) : super(key: key);

  @override
  State<PantallaAcercaDe> createState() => _PantallaAcercaDeState();
}

class _PantallaAcercaDeState extends State<PantallaAcercaDe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        elevation: 0,
      ), 
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            body(context),                  
            nuestroEquipo(context),       
          ],
        ),
      ),
    );
  }
}

Widget body(context) {
  Size size = MediaQuery.of(context).size;
  return Column(
    children: <Widget>[
      SizedBox(
        height: size.height * 0.1,
        child: Stack(
          children: <Widget>[
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              height: size.height - 30,
              decoration: const BoxDecoration(
                  color: Color(0xFF2196F3),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Acerca de ...',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget nuestroEquipo(context) {
  return Column(
    children: const [
            Image(
              image: NetworkImage(
                  'https://static.vecteezy.com/system/resources/thumbnails/009/779/831/small/teamwork-collaboration-fellowship-partnership-team-building-and-cooperation-technology-business-partners-colleagues-cartoon-characters-illustration-vector.jpg'
              ),
            ),
            Text(
              'Sobre nosotros',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            Text(
              'Somos el equipo Titans, conformado por:',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 83, 85, 90),
              ),
              textAlign: TextAlign.center,
            )
      ],
  );
}