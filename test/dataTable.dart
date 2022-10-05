import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Expanded(
            child: Text(
              '메인메뉴',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              '사이드 메뉴 1',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              '사이드 메뉴 2',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ),
      ],
      rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text('월요일')),
            DataCell(Text('제육볶음')),
            DataCell(Text('미역국')),
            DataCell(Text('감자전')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('월요일')),
            DataCell(Text('제육볶음')),
            DataCell(Text('미역국')),
            DataCell(Text('감자전')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('월요일')),
            DataCell(Text('제육볶음')),
            DataCell(Text('미역국')),
            DataCell(Text('감자전')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('월요일')),
            DataCell(Text('제육볶음')),
            DataCell(Text('미역국')),
            DataCell(Text('감자전')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('월요일')),
            DataCell(Text('제육볶음')),
            DataCell(Text('미역국')),
            DataCell(Text('감자전')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('월요일')),
            DataCell(Text('제육볶음')),
            DataCell(Text('미역국')),
            DataCell(Text('감자전')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('월요일')),
            DataCell(Text('제육볶음')),
            DataCell(Text('미역국')),
            DataCell(Text('감자전')),
          ],
        ),
      ],
    );
  }
}
