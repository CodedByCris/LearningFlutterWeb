import 'package:admin_dashboard/providers/sidemenu_provider.dart';
import 'package:admin_dashboard/ui/shared/widgets/logo.dart';
import 'package:admin_dashboard/ui/shared/widgets/menu_item.dart';
import 'package:admin_dashboard/ui/shared/widgets/text_separator.dart';
import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: double.infinity,
      decoration: buildBoxDecoration(),
      child: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          Logo(),
          SizedBox(height: 50),
          TextSeparator(text: "main"),
          SizedBox(height: 15),
          MenuItem(
            text: "Dashboard",
            icon: Icons.compass_calibration_outlined,
            onPressed: () => SideMenuProvider.closeMenu(),
          ),
          MenuItem(
            text: "Orders",
            icon: Icons.shopping_cart_outlined,
            onPressed: () {},
          ),
          MenuItem(
            text: "Analytics",
            icon: Icons.show_chart_outlined,
            onPressed: () {},
          ),
          MenuItem(
            text: "Categories",
            icon: Icons.layers_outlined,
            onPressed: () {},
          ),
          MenuItem(
            text: "Products",
            icon: Icons.dashboard_outlined,
            onPressed: () {},
          ),
          MenuItem(
            text: "Discounts",
            icon: Icons.attach_money_outlined,
            onPressed: () {},
          ),
          MenuItem(
            text: "Customers",
            icon: Icons.people_alt_outlined,
            onPressed: () {},
          ),
          SizedBox(height: 30),
          TextSeparator(text: "UI Elementes"),
          SizedBox(height: 15),
          MenuItem(
            text: "Icons",
            icon: Icons.list_alt_outlined,
            onPressed: () {},
          ),
          MenuItem(
            text: "Marketing",
            icon: Icons.mark_email_read_outlined,
            onPressed: () {},
          ),
          MenuItem(
            text: "Campaigns",
            icon: Icons.note_add_outlined,
            onPressed: () {},
          ),
          MenuItem(
            text: "Blank",
            icon: Icons.post_add_outlined,
            onPressed: () {},
          ),
          MenuItem(
            text: "Logout",
            icon: Icons.exit_to_app_outlined,
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => BoxDecoration(
    gradient: LinearGradient(colors: [Color(0xff092044), Color(0xff092042)]),
    boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 10)],
  );
}
