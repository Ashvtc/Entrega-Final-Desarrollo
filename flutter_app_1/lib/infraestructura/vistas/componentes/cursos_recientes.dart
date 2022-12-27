import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'item_cursos_recientes.dart';
import '../../../dominio/parameters_objects/info_curso_con_profesor.dart';
import '../../../modelos/patron_iterador/iterado_generico/iterable_lista.dart';
import '../../../modelos/patron_iterador/iterado_generico/iterador_lista.dart';
import '../../../aplicacion/servicios/servicio_info_curso_profesor.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../adaptadores/json_adapter_curso_profesores.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import '../../adaptadores/db_adapter_curso_profesores.dart';
import '../../../aplicacion/servicios/servicio_info_curso_profesor_db.dart';
import '../../data/Adaptador/adaptador_moor.dart';

class CarouselCursosRecientes extends StatefulWidget {
  const CarouselCursosRecientes({Key? key}) : super(key: key);

  @override
  State<CarouselCursosRecientes> createState() =>
      _CarouselCursosRecientesState();
}

class _CarouselCursosRecientesState extends State<CarouselCursosRecientes> {
  ServicioInfoCursoProfesor servicio = ServicioInfoCursoProfesor();
  ServicioGuardarInfoCursoProfesorDB servicioGuardarLocal =
      ServicioGuardarInfoCursoProfesorDB();
  IterableLista<InfoCursoConProfesor>? iterableCursos;
  IteradorLista<InfoCursoConProfesor>? iteradorCursos;
  int elementosIterador = 0;
  var isLoaded = false;
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
    getLocalStoredData();
    subscription = Connectivity().onConnectivityChanged.listen((event) async {
      if (await verificarConexionInternet()) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Conexión a internet establecida'),
          ),
        );
        await getApiData();
        await storeDataLocal();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Sin conexión a internet'),
          ),
        );
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
    iterableCursos =
        await servicio.getTodosLosCursosConProfesores(ApiJsonRepository());
    if (iterableCursos != null) {
      prepareData();
    }
  }

  getLocalStoredData() async {
    iterableCursos =
        await servicio.getTodosLosCursosConProfesores(ApiBDRepository());
    if (iterableCursos != null) {
      prepareData();
    }
  }

  storeDataLocal() async {
    await servicioGuardarLocal.guardarTodosLosCursosConProfesores(
        AdaptadorMoor(), iterableCursos);
  }

  prepareData() {
    iteradorCursos = iterableCursos!.crearIterador();
    elementosIterador = iteradorCursos!.cantidadElementos();
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
                return itemCursosRecientes(
                    iteradorCursos!.getElementoPorIndex(index), context);
              },
            ),
          ),
        ),
      ),
    );
  }
}
