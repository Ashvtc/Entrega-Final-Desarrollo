import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_pantalla_1/aplicacion/parameter_objects/parametro_adaptador_iterable.dart';
import 'package:flutter_pantalla_1/aplicacion/servicios/servicio_obtener_info_lecciones_del_curso.dart';
import 'package:flutter_pantalla_1/dominio/agregados/curso/id_curso.dart';
import 'package:flutter_pantalla_1/dominio/agregados/leccion/leccion.dart';
import 'package:flutter_pantalla_1/infraestructura/adaptadores/json_adpter_leccion_contenido.dart';
import 'package:flutter_pantalla_1/infraestructura/data/Adaptador/adaptador_moor.dart';
import 'package:flutter_pantalla_1/modelos/patron_iterador/iterado_generico/iterable_lista.dart';
import 'package:flutter_pantalla_1/modelos/patron_iterador/iterado_generico/iterador_lista.dart';
import 'package:flutter_pantalla_1/modelos/result.dart';
import 'item_lecciones.dart';

class CarouselLecciones extends StatefulWidget {
  final IdCurso idCurso;
  final BuildContext context;
  const CarouselLecciones({required this.idCurso, required this.context, Key? key}) : super (key: key);

  @override
  State<CarouselLecciones> createState() => _CarouselLeccionesState();
}

class _CarouselLeccionesState extends State<CarouselLecciones> {
  ServicioObtenerInfoLeccionesDelCurso servicio = ServicioObtenerInfoLeccionesDelCurso();
  // Falta el servicio para guardar en local
  var isLoaded = false;
  IterableLista<Leccion>? iterableLecciones;
  IteradorLista<Leccion>? iteradorLecciones;
  int elementosIterador = 0;
  late StreamSubscription subscription;

  Future<bool> verificarConexionInternet() async {
    var result = await Connectivity().checkConnectivity();
    if ((result == ConnectivityResult.mobile) ||
        (result == ConnectivityResult.wifi)) {
      return true;
    }
    return false;
  }

  @override
  void initState() {
    print('@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@');
    getApiData();
    print(iteradorLecciones);
    print('elementos del iterador $elementosIterador');
    print('@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@');
    subscription = Connectivity().onConnectivityChanged.listen((event) async {
      if (await verificarConexionInternet()) {
        print('///////////////////////111111///////////////////////////////');
        await getApiData();
        // await storeDataLocal();
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  getApiData() async {
    Result<IterableLista<Leccion>> resultado = await servicio.execute(ApiJsonRepositoryLeccionYContenido(), widget.idCurso);
    if (resultado.satisfactorio()) {
      iterableLecciones = resultado.valor;
      prepareData();
    }
  }

  // getLocalStoreData() async {
  //   Result<IterableLista<Leccion>> resultado = await servicio.execute(/*Adaptador local */, widget.idCurso);
  //   if (resultado.satisfactorio()) {
  //     iterableLecciones = resultado.valor;
  //     prepareData();
  //   }
  // }

  // storeDataLocal() async {
  //   ParametroAdaptadorIterable<AdaptadorMoor, IterableLista<Leccion>> parametro = ParametroAdaptadorIterable(adaptador: AdaptadorMoor(), iterable: iterableLecciones!);
  //   await servicioGuardarLocal.execute(parametro);
  // }

  prepareData() {
    iteradorLecciones = iterableLecciones!.crearIterador();
    elementosIterador = iterableLecciones!.cantidadElementos();
    setState(() {
      isLoaded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isLoaded,
      replacement: const Center(
        heightFactor: 6,
        child: CircularProgressIndicator(),
      ),
      child: Center(
        child: SizedBox(
          height: 260,
          child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(
              dragDevices: {
                PointerDeviceKind.touch,
                PointerDeviceKind.mouse,
              },
            ),
            child: CarouselSlider.builder(
              options: CarouselOptions(
                enableInfiniteScroll: false,
                reverse: false,
                viewportFraction: 0.86,
                height: 260.0,
              ),
              itemCount: elementosIterador, //cantidad de 'elementos'
              itemBuilder: (context, index, realIndex) {
                return itemLecciones(widget.idCurso,
                    iteradorLecciones!.getElementoPorIndex(index), context);
              },
            ),
          ),
        ),
      ),
    );
  }
}
