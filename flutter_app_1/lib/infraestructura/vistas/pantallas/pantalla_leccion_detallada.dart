import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PantallaDetalleLeccion extends StatefulWidget{
  final String tituloLeccion;
  final String descripcionLeccion;
  const PantallaDetalleLeccion(this.tituloLeccion, this.descripcionLeccion, {Key? key}) : super(key: key);

  @override
  State<PantallaDetalleLeccion> createState() => _PantallaDetalleLeccionState();
}

class _PantallaDetalleLeccionState extends State<PantallaDetalleLeccion> {
  late YoutubePlayerController controller;
  
  @override
  void initState() {
    super.initState();

    String url = 'https://www.youtube.com/watch?v=rPYMbhR-8RU';

    controller = YoutubePlayerController(initialVideoId: YoutubePlayer.convertUrlToId(url)!,
    flags: const YoutubePlayerFlags(
      mute: false,
      loop: false,
      autoPlay: false,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: controller,
      ),
      builder: (context, player) {
        return Scaffold(
          backgroundColor: const Color(0xFF2196F3),
          appBar: widgetAppBar(widget.tituloLeccion, context),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                player,
                body(widget.tituloLeccion, widget.descripcionLeccion, context), //Se muestra la información detallada del curso
              ],
            ),
          ),
        );
      }
    );
  }
}

PreferredSizeWidget? widgetAppBar(String tituloCurso, BuildContext context) {
  return AppBar(
    backgroundColor: const Color(0xFF2196F3),
    elevation: 0,
    automaticallyImplyLeading: false,
    leading: IconButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      icon: const Icon(Icons.arrow_back_ios),
    ),
    // actions: [
    //   like(false),
    // ],
  );
}


//Informacion detallada de la leccion
Widget body(String tituloLeccion, String descripcionLeccion, BuildContext context) { 
  Size size = MediaQuery.of(context).size;
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        SizedBox(
          height: 800, //size.height,
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: size.height * 0.3),
                height: 600,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 12, right: 12, top: 10.0, bottom: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      tituloLeccion,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    Text(
                      descripcionLeccion,
                      style: Theme.of(context).textTheme.subtitle1,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}