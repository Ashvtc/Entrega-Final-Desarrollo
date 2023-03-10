import 'package:flutter_app_web/infraestructura/vistas/pantallas/home_content.dart';
import 'package:flutter_app_web/infraestructura/vistas/pantallas/cursos_content.dart';
import 'package:flutter_app_web/infraestructura/vistas/pantallas/cursosdelete_content.dart';
import 'package:flutter_app_web/infraestructura/vistas/pantallas/cursosupdate_content.dart';
import 'package:flutter_app_web/infraestructura/vistas/pantallas/lecciones_content.dart';
import 'package:flutter_app_web/infraestructura/vistas/pantallas/leccionesdelete_content.dart';
import 'package:flutter_app_web/infraestructura/vistas/pantallas/leccionesupdate_content.dart';
import 'package:flutter_app_web/infraestructura/vistas/componentes/navigation_bar/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

final homeKey = new GlobalKey();
final CursosKey = new GlobalKey();
final LeccionesKey = new GlobalKey();

final currentPageProvider = StateProvider<GlobalKey>((_) => homeKey);
final scrolledProvider = StateProvider<bool>((_) => false);

class AppWeb extends HookConsumerWidget {
  //ApiService apiService = ApiService();
  void onScroll(ScrollController controller, WidgetRef ref) {
    final isScrolled = ref.read(scrolledProvider);

    if (controller.position.pixels > 5 && !isScrolled) {
      ref.read(scrolledProvider.state).state = true;
    } else if (controller.position.pixels <= 5 && isScrolled) {
      ref.read(scrolledProvider.state).state = false;
    }
  }

  void scrollTo(GlobalKey key) =>
      Scrollable.ensureVisible(key.currentContext!, duration: Duration(milliseconds: 500));

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _controller = useScrollController();

    // How to set a listener: https://stackoverflow.com/a/63832263/3479489
    useEffect(() {
      _controller.addListener(() => onScroll(_controller, ref));
      return _controller.dispose;
    }, [_controller]);


    double width = MediaQuery.of(context).size.width;
    double maxWith = width > 1200 ? 1200 : width;

    ref.watch(currentPageProvider.state).addListener(scrollTo, fireImmediately: false);


    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: maxWith,
          child: Column(
            children: [
              NavBar(),
              Expanded(
                child: SingleChildScrollView(
                  controller: _controller,
                  child: Column(
                    children: <Widget>[
                      HomeContent(key: homeKey),
                      CursosContent(key: CursosKey),
                      //CursosDeleteContent(),
                      //CursosUpdateContent(),
                      LeccionesContent(key: LeccionesKey),
                      //LeccionesDeleteContent(),
                      //LeccionesUpdateContent(),
                      SizedBox(height: 50)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}