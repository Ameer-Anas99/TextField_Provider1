import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final textcontroller = TextEditingController();
  final textconroller1 = TextEditingController();
  List<String> addlist = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("TextFormField")),
      ),
      body: Expanded(
        child: Column(
          children: [
            TextFormField(
              controller: textcontroller,
              decoration: InputDecoration(
                  hintText: "Text...",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: textconroller1,
              decoration: InputDecoration(
                  hintText: "Text...",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    add();
                  });
                },
                child: const Text("Add")),
            Expanded(
              child: ListView.builder(
                itemCount: addlist.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(addlist[index]),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  void add() {
    final name = textcontroller.text.trim();
    final name1 = textconroller1.text.trim();
    if (name.isNotEmpty && name1.isNotEmpty) {
      setState(() {
        addlist.add("$name$name1");
        textcontroller.clear();
        textconroller1.clear();
      });
    }
  }
}
