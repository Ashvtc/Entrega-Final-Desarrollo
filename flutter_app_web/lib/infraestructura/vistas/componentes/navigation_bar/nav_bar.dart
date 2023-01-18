import 'package:flutter_app_web/src/appweb.dart';
import 'package:flutter_app_web/infraestructura/vistas/componentes/navigation_bar/nav_bar_button.dart';
import 'package:flutter_app_web/infraestructura/vistas/componentes/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NavBar extends ResponsiveWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget buildDesktop(BuildContext context) {
    return const DesktopNavBar();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return const MobileNavBar();
  }
}

class DesktopNavBar extends HookConsumerWidget {
  const DesktopNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isScrolled = ref.watch(scrolledProvider);
    final navBarColor = isScrolled ? Colors.blue : Colors.white;

    return Container(
      color: navBarColor,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          children: <Widget>[
    //        Image.asset(
    //          "assets/images/logo.png",
    //         height: 40.0,
    //        ),
            SizedBox(width: 10.0),
            Text(
              "Corsi",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.black87,
                fontSize: 32,
              ),
            ),
            Expanded(child: Container()),
            NavBarButton(
              onTap: () => ref.read(currentPageProvider.state).state = homeKey,
              text: "Inicio",
            ),
            NavBarButton(
              onTap: () =>
                  ref.read(currentPageProvider.state).state = CursosKey,
              text: "Cursos",
            ),
            NavBarButton(
              onTap: () =>
                  ref.read(currentPageProvider.state).state = LeccionesKey,
              text: "Lecciones",
            ),
          ],
        ),
      ),
    );
  }
}

class MobileNavBar extends HookConsumerWidget {
  const MobileNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final containerHeight = useState<double>(0.0);
    final isScrolled = ref.watch(scrolledProvider);

    final navBarColor = isScrolled ? Colors.blue : Colors.blueGrey;
    return Stack(
      children: [
        AnimatedContainer(
          margin: EdgeInsets.only(top: 70.0),
          duration: Duration(milliseconds: 350),
          curve: Curves.ease,
          height: containerHeight.value,
          child: SingleChildScrollView(
            child: Column(
              children: [
                NavBarButton(
                  text: "Home",
                  onTap: () {
                    ref.read(currentPageProvider.state).state = homeKey;
                    containerHeight.value = 0;
                  },
                ),
                NavBarButton(
                  text: "Cursos",
                  onTap: () {
                    ref.read(currentPageProvider.state).state = CursosKey;
                    containerHeight.value = 0;
                  },
                ),
                NavBarButton(
                  text: "Lecciones",
                  onTap: () {
                    ref.read(currentPageProvider.state).state = LeccionesKey;
                    containerHeight.value = 0;
                  },
                ),
              ],
            ),
          ),
        ),
        Container(
          color: navBarColor,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: <Widget>[
      //          Image.asset(
      //            "assets/images/logo.png",
      //            height: 30.0,
      //          ),
                SizedBox(width: 10.0),
                Text(
                  "Corsi",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black87,
                      fontSize: 32),
                ),
                Expanded(
                  child: Container(),
                ),
                Material(
                  child: InkWell(
                    splashColor: Colors.white60,
                    onTap: () {
                      final height = containerHeight.value > 0 ? 0.0 : 240.0;
                      containerHeight.value = height;
                    },
                    child: Icon(
                      Icons.menu,
                      color: Colors.black54,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
