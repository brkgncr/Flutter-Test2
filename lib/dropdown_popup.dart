import 'package:flutter/material.dart';

class DropdownPopup extends StatelessWidget {
  const DropdownPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [PopupMenuKullanimi()],
        title: const Text("Dropdown ve Popup"),
      ),
      body: const Center(
        child: Column(
          children: [DropdownPopupKullanimi(), PopupMenuKullanimi()],
        ),
      ),
    );
  }
}

class DropdownPopupKullanimi extends StatefulWidget {
  const DropdownPopupKullanimi({super.key});

  @override
  State<DropdownPopupKullanimi> createState() => _DropdownPopupKullanimiState();
}

class _DropdownPopupKullanimiState extends State<DropdownPopupKullanimi> {
  var _secilenSehir = null;
  var _sehirler = ['Ankara', 'izmir', 'Van', 'Eskişehir'];
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      hint: Text("Şehir Seçiniz"),
      value: _secilenSehir,
      // items: [
      //   DropdownMenuItem(value: 'Ankara', child: Text('Ankara')),
      //   DropdownMenuItem(value: 'Bursa', child: Text('Bursa')),
      //   DropdownMenuItem(value: 'İzmir', child: Text('İzmir')),
      // ],
      items:
          _sehirler
              .map(
                (String sehir) =>
                    DropdownMenuItem(value: sehir, child: Text(sehir)),
              )
              .toList(),
      onChanged: (value) {
        debugPrint("Seçilen şehir: $value");
        setState(() {
          _secilenSehir = value!;
        });
      },
    );
  }
}

class PopupMenuKullanimi extends StatefulWidget {
  const PopupMenuKullanimi({super.key});

  @override
  State<PopupMenuKullanimi> createState() => _PopupMenuKullanimiState();
}

class _PopupMenuKullanimiState extends State<PopupMenuKullanimi> {
  var _sehirler = ['Ankara', 'izmir', 'Van', 'Eskişehir'];
  var _secilenSehir = "Ankara";
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      initialValue: _secilenSehir,
      // icon: Icon(Icons.add),
      // child: Text(_secilenSehir),
      itemBuilder: (context) {
        return _sehirler.map((String sehir) {
          return PopupMenuItem(value: sehir, child: Text(sehir));
        }).toList();
      },
      onSelected: (value) {
        setState(() {
          _secilenSehir = value;
        });
      },
    );
  }
}
