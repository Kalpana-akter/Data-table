import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.start,
            children: [
              Center(
                child: DataTable(
                  columns: [
                    DataColumn(label: Text('Name'),),
                    DataColumn(label: Text('Age'),),
                    DataColumn(label: Text('Profession'),),
                    DataColumn(label: Text('CounTry'),),
                    DataColumn(label: Text('State'),),
                    DataColumn(label: Text('Contact'),),
                    DataColumn(label: Text('Height'),),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('Anwar')),
                      DataCell(Text('34')),
                      DataCell(Text('Banker')),
                      DataCell(Text('Bangladesh')),
                      DataCell(Text('Dhaka')),
                      DataCell(Text('01818952668')),
                      DataCell(Text('5.3inch')),
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

