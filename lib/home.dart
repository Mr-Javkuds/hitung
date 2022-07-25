import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int luaspersegipanjang = 0;
  void hitung() {
    setState(() {
      int x = int.parse(ctrsisiA.text);
      int y = int.parse(ctrsisiB.text);
      luaspersegipanjang = x * y;
    });
  }

  TextEditingController ctrsisiA = TextEditingController();
  TextEditingController ctrsisiB = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("bangun datar"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(20),
              child: const Text(
                " luas Persegi panjang",
                style: TextStyle(fontSize: 15),
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: ctrsisiA,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'sisi A',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: ctrsisiB,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'sisi B',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.center ,
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(20),
                  child: Text(luaspersegipanjang.toString()),
                ),

                ElevatedButton(
                  onPressed: hitung,
                  child: const Text("hitung"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
