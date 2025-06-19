import 'package:flutter/material.dart';

class ResimWidgetlari extends StatelessWidget {
  ResimWidgetlari({super.key});
  var _url =
      "https://images.pexels.com/photos/2071882/pexels-photo-2071882.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Resim Widgetları")),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 300,
                    height: 300,
                    color: Colors.blue.shade300,
                    child: Image.asset(
                      'assets/images/cat.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 300,
                    height: 300,
                    color: Colors.blue.shade300,
                    child: Image.network(_url, fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            Expanded(
              child: FadeInImage.assetNetwork(
                fit: BoxFit.contain,
                placeholder: 'assets/images/cat.jpg',
                image: _url,
              ),
            ),
            const Expanded(child: Placeholder(color: Colors.amber)),
            Expanded(
              child: Row(
                children: [
                  const Expanded(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/cat.jpg'),
                      radius: 100,
                    ),
                  ),
                  Expanded(
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(_url),
                      radius: 100,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
