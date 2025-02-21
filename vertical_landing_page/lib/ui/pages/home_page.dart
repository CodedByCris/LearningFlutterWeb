import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vertical_landing_page/providers/page_provider.dart';
import 'package:vertical_landing_page/ui/shared/custom_app_menu.dart';
import 'package:vertical_landing_page/ui/views/about_view.dart';
import 'package:vertical_landing_page/ui/views/contact_view.dart';
import 'package:vertical_landing_page/ui/views/home_view.dart';
import 'package:vertical_landing_page/ui/views/location_view.dart';
import 'package:vertical_landing_page/ui/views/pricing_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: _buildBoxDecoration(),
        child: Stack(
          children: <Widget>[
            _HomeBody(),
            Positioned(top: 20, right: 20, child: CustomAppMenu()),
          ],
        ),
      ),
    );
  }

  BoxDecoration _buildBoxDecoration() => BoxDecoration(
    gradient: LinearGradient(
      colors: [Colors.pink, Colors.purpleAccent],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.5, 1],
    ),
  );
}

class _HomeBody extends StatelessWidget {
  const _HomeBody();

  @override
  Widget build(BuildContext context) {
    final pageProvider =
        Provider.of<PageProvider>(context, listen: false).scrollController;
    return PageView(
      controller: pageProvider,
      scrollDirection: Axis.vertical,
      children: [
        HomeView(),
        AboutView(),
        LocationView(),
        ContactView(),
        PricingView(),
      ],
    );
  }
}
