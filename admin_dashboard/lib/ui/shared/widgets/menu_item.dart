import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuItem extends StatefulWidget {
  final String text;
  final IconData icon;
  final bool isActive;
  final VoidCallback onPressed;
  const MenuItem({
    super.key,
    required this.text,
    required this.icon,
    required this.isActive,
    required this.onPressed,
  });

  @override
  State<MenuItem> createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 250),
      color:
          isHovering
              ? Colors.white.withOpacity(0.1)
              : !widget.isActive
              ? Colors.transparent
              : Colors.white.withOpacity(0.1),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: widget.isActive ? null : () => widget.onPressed,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: MouseRegion(
              onEnter: (_) => setState(() => isHovering = true),
              onExit: (_) => setState(() => isHovering = false),
              child: Row(
                children: [
                  Icon(widget.icon, color: Colors.white.withOpacity(0.3)),
                  SizedBox(width: 10),
                  Text(
                    widget.text,
                    style: GoogleFonts.roboto(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
