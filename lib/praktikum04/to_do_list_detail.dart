// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:to_do_list/praktikum04/class_person.dart';

class MyList4 extends StatefulWidget {
  const MyList4({super.key});

  @override
  State<MyList4> createState() => _MyList4State();
}

class _MyList4State extends State<MyList4> {
  // List<String> data = <String>[];
  List<Person> data = <Person>[];

  final NameController = TextEditingController(),
      PlaceController = TextEditingController(),
      PhoneController = TextEditingController();

  addData(String name, String place, String phone) {
    setState(() {
      data.add(Person(name, place, phone));
      NameController.clear();
      PlaceController.clear();
      PhoneController.clear();
    });
  }

  deleteData(int index) {
    setState(() {
      data.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To Do List Detail"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, right: 15, left: 15),
        child: Column(children: [
          TextField(
            controller: NameController,
            decoration: const InputDecoration(labelText: "Nama Lengkap"),
          ),
          TextField(
            controller: PlaceController,
            decoration: const InputDecoration(labelText: "Tempat Tinggal"),
          ),
          TextField(
            controller: PhoneController,
            decoration: const InputDecoration(labelText: "No Telp"),
          ),
          ElevatedButton(
              onPressed: () {
                addData(NameController.text, PlaceController.text,
                    PhoneController.text);
              },
              child: const Text("Tambah")),
          Expanded(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                return PersonTile(
                    person: data[index], onDelete: () => deleteData(index));
              },
            ),
          )
        ]),
      ),
    );
  }
}

class PersonTile extends StatelessWidget {
  final Person person;
  final VoidCallback onDelete;

  const PersonTile({super.key, required this.person, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const FlutterLogo(size: 50),
      title: Text(person.getName ?? ""),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(person.getPlace ?? ""),
          Text(person.getPhone ?? ""),
        ],
      ),
      trailing: IconButton(
        onPressed: onDelete,
        icon: const Icon(Icons.delete_forever),
      ),
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailList(
            Name: person.getName,
            Place: person.getPlace,
            Phone: person.getPhone,
          ),
        ),
      ),
    );
  }
}

class DetailList extends StatelessWidget {
  final String? Name;
  final String? Place;
  final String? Phone;

  const DetailList({super.key, this.Name, this.Place, this.Phone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Nama Lengkap   : $Name"),
            Text("Tempat Tinggal : $Place"),
            Text("Nomor Telepon  : $Phone"),
          ],
        ),
      ),
    );
  }
}
