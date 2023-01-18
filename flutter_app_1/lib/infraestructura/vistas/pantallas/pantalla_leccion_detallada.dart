import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PantallaDetalleLeccion extends StatefulWidget{
  final String tituloLeccion;
  final String descripcionLeccion;
  final String urlVideo;
  const PantallaDetalleLeccion(this.tituloLeccion, this.descripcionLeccion, this.urlVideo, {Key? key}) : super(key: key);

  @override
  State<PantallaDetalleLeccion> createState() => _PantallaDetalleLeccionState();
}

class _PantallaDetalleLeccionState extends State<PantallaDetalleLeccion> {
  late YoutubePlayerController controller;
  
  @override
  void initState() {
    super.initState();

    // String url = 'https://www.youtube.com/watch?v=rPYMbhR-8RU';

    controller = YoutubePlayerController(initialVideoId: YoutubePlayer.convertUrlToId(widget.urlVideo)!,
    flags: const YoutubePlayerFlags(
      mute: false,
      loop: false,
      autoPlay: false,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2196F3),
      appBar: widgetAppBar(widget.tituloLeccion, context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            video(controller),
            body(widget.tituloLeccion, widget.descripcionLeccion, context), //Se muestra la información detallada del curso
          ],
        ),
      ),
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

Widget video(YoutubePlayerController controller) {
  return YoutubePlayer(controller: controller);
}

//Informacion detallada de la leccion
Widget body(String tituloLeccion, String descripcionLeccion, BuildContext context) { 
  Size size = MediaQuery.of(context).size;
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        SizedBox(
          height: 600, //size.height,
          child: Column(
            children: <Widget>[
              Container(
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
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  padding: const EdgeInsets.only(
                      left: 12, right: 12, top: 15.0, bottom: 10.0),
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                        descripcionLeccion,
                        style: Theme.of(context).textTheme.subtitle1,
                        textAlign: TextAlign.justify,
                      ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}