import 'package:flutter/material.dart';
import 'package:flutter_temelleri_bolum2_app/buton_turleri.dart';
import 'package:flutter_temelleri_bolum2_app/dropdown_popup.dart';
import 'package:flutter_temelleri_bolum2_app/resim_widgetlari.dart';

void main(List<String> args) {
  debugPrint("Main metodu tetiklendi");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("MyApp build metodu tetiklendi");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
        ),
        textTheme: TextTheme(
          labelLarge: TextStyle(color: Colors.red, fontSize: 24),
        ),
        useMaterial3: false,
      ),
      home: DropdownPopup(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _sayac = 0;

  void _sayaciArttir() {
    setState(() {
      _sayac++;
    });
    debugPrint("Sayacın şu anki değeri $_sayac");
  }

  void _sayaciAzalt() {
    setState(() {
      _sayac--;
    });
    debugPrint("Sayacın şu anki değeri $_sayac");
  }

  void _sayacSifirla() {
    setState(() {
      _sayac = 0;
    });
    debugPrint("Sayaç sıfırlandı!");
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("Honepage build metodu tetiklendi");

    return Scaffold(
      appBar: AppBar(title: Text("Bölüm 2")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Basılma Sayısı",
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Text(
              _sayac.toString(),
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                color: _sayac < 0 ? Colors.red : Colors.green,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              _sayacSifirla();
            },
            child: Icon(Icons.refresh),
          ),
          SizedBox(height: 4),
          FloatingActionButton(
            backgroundColor: Theme.of(context).colorScheme.primary,
            onPressed: () {
              _sayaciArttir();
            },
            child: Icon(Icons.add),
          ),
          SizedBox(height: 4),
          FloatingActionButton(
            onPressed: () {
              _sayaciAzalt();
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
