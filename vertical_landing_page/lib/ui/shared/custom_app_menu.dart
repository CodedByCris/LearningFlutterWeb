import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:vertical_landing_page/providers/page_provider.dart';
import 'package:vertical_landing_page/ui/shared/custom_menu_item.dart';

class CustomAppMenu extends StatefulWidget {
  const CustomAppMenu({super.key});

  @override
  State<CustomAppMenu> createState() => _CustomAppMenuState();
}

class _CustomAppMenuState extends State<CustomAppMenu>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  bool _isOpen = false;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    );
  }

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          _isOpen ? controller.reverse() : controller.forward();
          setState(() {
            _isOpen = !_isOpen;
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          width: 150,
          height: _isOpen ? 308 : 50,
          color: Colors.black,
          child: Column(
            children: [
              _MenuTitle(isOpen: _isOpen, controller: controller),

              if (_isOpen) ...[
                CustomMenuItem(
                  text: "Home",
                  onPressed: () => pageProvider.goTo(0),
                ),
                CustomMenuItem(
                  text: "About",
                  onPressed: () => pageProvider.goTo(1),
                  delay: 50,
                ),
                CustomMenuItem(
                  text: "Location",
                  onPressed: () => pageProvider.goTo(2),
                  delay: 100,
                ),
                CustomMenuItem(
                  text: "Contact",
                  onPressed: () => pageProvider.goTo(3),
                  delay: 150,
                ),
                CustomMenuItem(
                  text: "Pricing",
                  onPressed: () => pageProvider.goTo(4),
                  delay: 200,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class _MenuTitle extends StatelessWidget {
  const _MenuTitle({required bool isOpen, required this.controller})
    : _isOpen = isOpen;

  final bool _isOpen;
  final AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 50,
      child: Row(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 200),
            curve: Curves.easeIn,
            width: _isOpen ? 25 : 0,
          ),
          Text(
            "Menu",
            style: GoogleFonts.roboto(color: Colors.white, fontSize: 18),
          ),
          Spacer(),
          AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: controller,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
