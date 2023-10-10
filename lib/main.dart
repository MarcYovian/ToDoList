import 'package:flutter/material.dart';
import 'package:to_do_list/praktikum04/to_do_list_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyList4(),
    );
  }
}

// class TodoList extends StatefulWidget {
//   @override
//   _TodoListState createState() => _TodoListState();
// }

// class _TodoListState extends State<TodoList> {
//   List<String> tasks = [];
//   TextEditingController taskController = TextEditingController();

//   void addTask(String task) {
//     setState(() {
//       tasks.add(task);
//       taskController.clear();
//     });
//   }

//   void removeTask(int index) {
//     setState(() {
//       tasks.removeAt(index);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(child: Text('To-Do List Sederhana')),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.only(
//           left: 10,
//           right: 10,
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextField(
//                 controller: taskController,
//                 decoration: InputDecoration(
//                   labelText: 'Tambahkan tugas baru',
//                 ),
//               ),
//             ),
//             ElevatedButton(
//               child: Text("Tambah"),
//               onPressed: () {
//                 if (taskController.text.isNotEmpty) {
//                   addTask(taskController.text);
//                 }
//               },
//             ),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: tasks.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text(tasks[index]),
//                     trailing: IconButton(
//                       icon: Icon(Icons.delete),
//                       onPressed: () {
//                         removeTask(index);
//                       },
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
