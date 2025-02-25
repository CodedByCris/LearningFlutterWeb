import 'package:admin_dashboard/providers/sidemenu_provider.dart';
import 'package:admin_dashboard/ui/shared/navbar.dart';
import 'package:admin_dashboard/ui/shared/sidebar.dart';
import 'package:flutter/material.dart';

class DashboardLayout extends StatefulWidget {
  final Widget child;

  const DashboardLayout({super.key, required this.child});

  @override
  State<DashboardLayout> createState() => _DashboardLayoutState();
}

class _DashboardLayoutState extends State<DashboardLayout>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SideMenuProvider.menuController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    SideMenuProvider.menuController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Color(0xffEDF1F2),
      body: Stack(
        children: [
          Row(
            children: [
              if (size.width > 700) Sidebar(),
              Expanded(
                child: Column(
                  children: [
                    //Navbar
                    Navbar(),

                    //View
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: widget.child,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (size.width <= 700)
            AnimatedBuilder(
              animation: SideMenuProvider.menuController,
              builder:
                  (context, _) => Stack(
                    children: [
                      //
                      if (SideMenuProvider.isOpen)
                        AnimatedOpacity(
                          opacity: SideMenuProvider.opacity.value,
                          duration: Duration(milliseconds: 200),
                          child: GestureDetector(
                            onTap: SideMenuProvider.closeMenu,
                            child: Container(
                              width: size.width,
                              height: size.height,
                              color: Colors.black26,
                            ),
                          ),
                        ),

                      Transform.translate(
                        offset: Offset(SideMenuProvider.movement.value, 0),
                        child: Sidebar(),
                      ),
                    ],
                  ),
            ),
        ],
      ),
    );
  }
}
