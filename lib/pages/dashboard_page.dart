import 'package:flutter/material.dart';
import 'package:tugas3/sidemenu.dart';

class DashboardPage extends StatelessWidget {
  final List<Map<String, String>> todaySchedule = [
    {'time': '08:00', 'event': 'Text Mining'},
    {'time': '10:30', 'event': 'Keamanan Informasi'},
    {'time': '14:00', 'event': 'Praktikum Pemrograman Mobile'},
    {'time': '19:00', 'event': 'Rapat'},
    {'time': '21:00', 'event': 'Nugas'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Schedule',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue.shade700, // Warna biru muda
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Welcome
            Text(
              'Jadwal Hari Ini',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade700,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Senin, 23 September 2024',
              style: TextStyle(fontSize: 18, color: Colors.blue.shade700),
            ),
            SizedBox(height: 20),

            // Jadwal Hari Ini
            Expanded(
              child: ListView.builder(
                itemCount: todaySchedule.length,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 4,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      leading: Icon(
                        Icons.event,
                        color: Colors.lightBlue[700],
                      ),
                      title: Text(
                        todaySchedule[index]['event']!,
                        style: TextStyle(fontSize: 18, color: Colors.black87),
                      ),
                      subtitle: Text(
                        todaySchedule[index]['time']!,
                        style: TextStyle(color: Colors.grey[700]),
                      ),
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
