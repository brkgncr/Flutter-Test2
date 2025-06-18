import 'package:flutter/material.dart';

class ButonTurleri extends StatelessWidget {
  const ButonTurleri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Buton Türleri")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.access_alarm),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {},
              onLongPress: () {
                debugPrint("Uzun basıldı");
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.red),
              ),
              child: Text('Text Button'),
            ),
            TextButton.icon(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.resolveWith((states) {
                  if (states.contains(WidgetState.pressed)) {
                    return Colors.red;
                  }
                  if (states.contains(WidgetState.hovered)) {
                    return Colors.green;
                  }
                }),
              ),
              icon: Icon(Icons.add),
              label: Text("Text Button With Icon"),
            ),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.amber,
              ),
              child: Text('Elevated Button'),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text('Elevated Button With Icon'),
            ),

            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.all(16),
                shape: StadiumBorder(),
                side: BorderSide(color: Colors.purple, width: 4),
                backgroundColor: Colors.pink.withOpacity(0.5),
                foregroundColor: Colors.white,
              ),
              child: Text('Elevated Button'),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.refresh),
              style: OutlinedButton.styleFrom(
                side: BorderSide(width: 4, color: Colors.black26),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              label: Text('Outlined Button With Icon'),
            ),
          ],
        ),
      ),
    );
  }
}
