import 'package:admin_dashboard/ui/layouts/auth/widgets/background_twitter.dart';
import 'package:flutter/material.dart';

class AuthLayout extends StatelessWidget {
  const AuthLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //Desktop
          _DesktopBody(),
          //Mobile

          //LinksBar
        ],
      ),
    );
  }
}

class _DesktopBody extends StatelessWidget {
  const _DesktopBody();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return SizedBox(
      height: size.height,
      width: size.width,
      child: Row(
        children: [
          //Twitter background
          BackgroundTwitter(),

          //View container
          Container(
            width: 600,
            height: double.infinity,
            color: Colors.black,
            child: Center(),
          ),
        ],
      ),
    );
  }
}
