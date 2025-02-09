import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,      
        children:[
           Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.blue),
              ),
              onPressed: (){
                launchUrl(Uri.parse("https://www.github.com/misterbrown3404/stage_zero"));
              },
              child: const Text('Github Link', style: TextStyle(color: Colors.black, fontSize: 15)),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.green),
              ),
              onPressed: (){
                  launchUrl(Uri.parse("https://www.hng.tech/hire/flutter-developers"));
              },
              child: const Text('HNG12 Link', style: TextStyle(color: Colors.black, fontSize: 15)),
            ),
          ],
        ),
        ],
      ),
    );
  }
}
