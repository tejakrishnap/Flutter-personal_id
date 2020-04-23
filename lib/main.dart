import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: PersonalId(),
));

class PersonalId extends StatefulWidget {
  @override
  _PersonalIdState createState() => _PersonalIdState();
}

class _PersonalIdState extends State<PersonalId> {
  int programmingLevel = 24;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text(
          'Personal ID',
          style: TextStyle(
            color: Colors.yellow[100]
          )
        ),
        centerTitle: true,
        backgroundColor: Colors.teal[400],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar.jpg'),
                radius: 60.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.grey,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.amber[500],
                letterSpacing: 2.0
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'William Wallace',
              style: TextStyle(
                  color: Colors.amber[100],
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'AGE',
              style: TextStyle(
                  color: Colors.amber[500],
                  letterSpacing: 2.0
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$programmingLevel',
              style: TextStyle(
                  color: Colors.amber[100],
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.mail,
                  color: Colors.amber[500],
                ),
                SizedBox(width: 10.0),
                Text(
                  'williamwallace@live.com',
                  style: TextStyle(
                      color: Colors.amber[100],
                      letterSpacing: 2.0,
                      fontSize: 16.0
                  ),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton:  FloatingActionButton(
        onPressed: () {
          setState(() {
            programmingLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.pink[400],
      ),
    );
  }
}
