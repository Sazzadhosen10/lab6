import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

void main() {
  runApp(const FirstUI());
}

class FirstUI extends StatelessWidget {
  const FirstUI({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.blue,
            child: ListView(
          children:[
            SizedBox(
              height: 150,
                child: DrawerHeader(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.tiktok),
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(Icons.close),
                    
                        ),
                    ],
                    
                  ),
                ),
                ),
                ListTile(
                leading: Icon(Iconsax.home),
                title: Text('home'),
                trailing: Text("40"),
                onTap: () {},
              ),
               ListTile(
                leading: Icon(Icons.close),
                title: Text('Close'),
                onTap: () {},
              ),
               ListTile(
                leading: Icon(Iconsax.home),
                title: Text('hi'),
                onTap: () {},
              ),
            ],
            ),
        ),
            appBar: AppBar(
          title: Text("Advanced UI - LAB 06 "),
          backgroundColor: const Color.fromARGB(255, 95, 2, 2),
          centerTitle: true,
        ),
        body: Column(
          children: [
            CachedNetworkImage(
              imageUrl:
                  "https://images.pexels.com/photos/2126268/pexels-photo-2126268.jpeg?cs=srgb&dl=pexels-chuck-2126268.jpg&fm=jpg",
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ],
        ),
      ),
    );
    
  }
}