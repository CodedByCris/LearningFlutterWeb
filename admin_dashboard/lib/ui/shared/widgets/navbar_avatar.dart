import 'package:flutter/material.dart';

class NavBarAvatar extends StatelessWidget {
  const NavBarAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.network(
        "https://upload.wikimedia.org/wikipedia/commons/9/9e/Placeholder_Person.jpg",
        width: 30,
        height: 30,
      ),
    );
  }
}
