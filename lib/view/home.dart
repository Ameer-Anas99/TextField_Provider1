import 'package:a/controller/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("TextFormField")),
      ),
      body: Expanded(
        child: Consumer<AddProvider>(
          builder: (context, pro, child) => Column(
            children: [
              TextFormField(
                controller: pro.textcontroller,
                decoration: InputDecoration(
                    hintText: "Text...",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: pro.textconroller1,
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
                    pro.add();
                  },
                  child: const Text("Add")),
              Expanded(
                child: ListView.builder(
                  itemCount: pro.addlist.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(pro.addlist[index]),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
