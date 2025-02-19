import 'package:bases_web/locator.dart';
import 'package:bases_web/services/navigation_service.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (_, BoxConstraints constraints) => constraints.maxWidth > 520
            ? _TableDesktopMenu()
            : _MobileDesktopMenu());
  }
}

class _TableDesktopMenu extends StatelessWidget {
  const _TableDesktopMenu();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          CustomFlatButton(
            text: "Contador Stateful",
            // onPressed: () => Navigator.pushNamed(context, "/stateful"),
            onPressed: () =>
                locator<NavigationService>().navigateTo(routeName: "/stateful"),
            color: Colors.black,
          ),
          SizedBox(width: 10),
          CustomFlatButton(
            text: "Contador Provider",
            // onPressed: () => Navigator.pushNamed(context, "/provider"),
            onPressed: () =>
                locator<NavigationService>().navigateTo(routeName: "/provider"),
            color: Colors.black,
          ),
          SizedBox(width: 10),
          CustomFlatButton(
            text: "Otra página",
            // onPressed: () => Navigator.pushNamed(context, "/ruta123"),
            onPressed: () =>
                locator<NavigationService>().navigateTo(routeName: "/ruta123"),
            color: Colors.black,
          )
        ],
      ),
    );
  }
}

class _MobileDesktopMenu extends StatelessWidget {
  const _MobileDesktopMenu();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          CustomFlatButton(
            text: "Contador Stateful",
            // onPressed: () => Navigator.pushNamed(context, "/stateful"),
            onPressed: () =>
                locator<NavigationService>().navigateTo(routeName: "/stateful"),
            color: Colors.black,
          ),
          SizedBox(width: 10),
          CustomFlatButton(
            text: "Contador Provider",
            // onPressed: () => Navigator.pushNamed(context, "/provider"),
            onPressed: () =>
                locator<NavigationService>().navigateTo(routeName: "/provider"),
            color: Colors.black,
          ),
          SizedBox(width: 10),
          CustomFlatButton(
            text: "Otra página",
            // onPressed: () => Navigator.pushNamed(context, "/ruta123"),
            onPressed: () =>
                locator<NavigationService>().navigateTo(routeName: "/ruta123"),
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
