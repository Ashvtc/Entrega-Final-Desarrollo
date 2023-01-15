import 'package:flutter_app_web/infraestructura/vistas/componentes/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

const googlePlayURL =
    'https://play.google.com/store/apps/details?id=com.google.android.youtube';
const appStoreURL = 'https://apps.apple.com/tw/app/youtube/id544007664';

class HomeContent extends ResponsiveWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget buildDesktop(BuildContext context) => DesktopHomeContent();

  @override
  Widget buildMobile(BuildContext context) => MobileHomeContent();
}

class DesktopHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height * .65,
      child: Row(
        children: [
          Container(
            width: width * .3,
          ),
          SizedBox(width: 24),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Bienvenido a Corsi",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
                SizedBox(height: 24),
                  Text(
                    'Corsi, El Mejor sitio para ser Autodidacta',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Text(
                  'A Continuacion podra Añadir, eliminar y Modificar Tanto Cursos como Lecciones',
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 24),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MobileHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Bienvenido a Corsi",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
          ),
          SizedBox(height: 24),
          Text(
            'Corsi, El Mejor sitio para ser Autodidacta',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Text(
            'A Continuacion podra Añadir, eliminar y Modificar Tanto Cursos como Lecciones',
          ),
        ],
      ),
    );
  }
}
