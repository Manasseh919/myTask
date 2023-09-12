import 'package:flutter/material.dart';

class DrawerNavigation extends StatefulWidget {
  const DrawerNavigation({super.key});

  @override
  State<DrawerNavigation> createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://media.licdn.com/dms/image/C4E03AQFj4z4wM66esg/profile-displayphoto-shrink_400_400/0/1638364938015?e=1700092800&v=beta&t=46LunhbCFrnt-j2PJ3TgIlrjJxbFRoPvnIKa1P7RnLA"),
              ),
              accountName: Text("Manasseh"),
              accountEmail: Text("manasseh919@gmail.com"),
              decoration: BoxDecoration(color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
