import 'package:flutter/material.dart';
class MCQMaker extends StatefulWidget {
  @override
  _MCQMakerState createState() => _MCQMakerState();
}

class _MCQMakerState extends State<MCQMaker> {
  List<Question> questions = List.generate(20, (index) => Question());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MCQ Maker'),
      ),
      body: ListView.builder(
        itemCount: questions.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Question ${index + 1}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 8.0),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Question',
                  ),
                  onChanged: (value) {
                    questions[index].question = value;
                  },
                ),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Option A',
                        ),
                        onChanged: (value) {
                          questions[index].optionA = value;
                        },
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Option B',
                        ),
                        onChanged: (value) {
                          questions[index].optionB = value;
                        },
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Option C',
                        ),
                        onChanged: (value) {
                          questions[index].optionC = value;
                        },
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Option D',
                        ),
                        onChanged: (value) {
                          questions[index].optionD = value;
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),

      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Perform export1 functionality
                  },
                  child: Text('Export 1'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Perform export2 functionality
                  },
                  child: Text('Export 2'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Perform export3 functionality
                  },
                  child: Text('Export 3'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Perform export4 functionality
                  },
                  child: Text('Export 4'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class Question {
  late String question;
  late String optionA;
  late String optionB;
  late String optionC;
  late String optionD;
}

void main() {
  runApp(MaterialApp(
    home: MCQMaker(),
  ));
}



