import 'package:flutter/material.dart';
import 'package:tugas3/sidemenu.dart';

class TaskPage extends StatelessWidget {
  final List<Map<String, String>> todoList = [
    {'task': 'Tugas Praktikum', 'deadline': '2024-09-24'},
    {'task': 'Laporan KP', 'deadline': '2024-09-25'},
    {'task': 'Proposal Pemob', 'deadline': '2024-09-30'},
    {'task': 'Projek MPI', 'deadline': '2024-09-30'},
    {'task': 'Tugas Boothcamp', 'deadline': '2024-10-01'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Task',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue.shade700,
      ),
      // backgroundColor: Colors.lightBlue[50], // Background biru muda
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Settings
            Text(
              'Tugas Terdekat',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade700,
              ),
            ),
            SizedBox(height: 20),

            // To-Do List
            Expanded(
              child: ListView.builder(
                itemCount: todoList.length,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 4,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      title: Text(
                        todoList[index]['task']!,
                        style: TextStyle(fontSize: 18, color: Colors.black87),
                      ),
                      subtitle: Text(
                        'Deadline: ${todoList[index]['deadline']}',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      trailing: Icon(Icons.check_circle_outline,
                          color: Colors.lightBlue[700]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      drawer: SideMenu(), // Drawer dengan SideMenu
    );
  }
}
