import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  final image_url =
      "https://tse4.mm.bing.net/th?id=OIP.tvaMwK3QuFxhTYg4PSNNVAHaHa&pid=Api&P=0";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.amber,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Ayush Talpelwar"),
                accountEmail: Text("ayushtalpelwar@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(image_url),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home,color: Colors.white,),
              title: Text("Home",style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
            ListTile(
              leading: Icon(Icons.contact_mail,color: Colors.white,),
              title: Text("Contact",style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
          ],
        ),
      ),
    );
  }
}
