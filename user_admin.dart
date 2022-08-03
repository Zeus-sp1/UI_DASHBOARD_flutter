import 'package:flutter/material.dart';

class user_admin extends StatefulWidget {
  const user_admin({key}) : super(key: key);

  @override
  _user_adminState createState() => _user_adminState();
}

class _user_adminState extends State<user_admin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[250],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Row(
                    //Greetings row
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(4, 30, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hello',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16.0,
                              ),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              'Zeus',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black45),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25.0,
            ),

            //Blue box

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue[600],
                  borderRadius: BorderRadius.circular(18.0),
                ),
                padding: EdgeInsets.all(30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Free Assessment',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                              'Take a free test today and\n get to know your strength and weaknesses',
                              style: TextStyle(
                                fontSize: 8.0,
                              )),
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Try it Now'),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.lightGreen,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 8),
                              textStyle: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ],
                    ),
                    Container(
                      child: Image.asset(
                        'assets/download1.jpg',
                        width: 90,
                        height: 80,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),

            Expanded(
              child: Container(
                padding: EdgeInsets.all(18.0),
                color: Colors.grey[200],
                child: Center(
                  child: Column(
                    children: [
                      //Exercise Heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Available Bundles',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                          Divider(
                            color: Colors.green, //color of divider
                            height: 20, //height spacing of divider
                            thickness: 30, //thickness of divier line
                            indent: 25, //spacing at the start of divider
                            endIndent: 25, //spacing at the end of divider
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      //ListView of Exercises
                      Expanded(
                        child: ListView(
                          children: [
                            Expanded(
                                child: Column(
                              children: [
                                buildBasicCard(),
                                buildBasicCard(),
                                buildBasicCard(),
                                buildBasicCard(),
                              ],
                            ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildBasicCard() {
  return Card(
    child: Row(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(10, 12, 70, 10),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 65, 0),
                child: Text(
                  'JHS | Bundle',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(6, 0, 35, 0),
                child: Text('All subject under NHS1',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.blueGrey,
                    )),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 12, 0, 0),
          child: Text('GHS 200',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.blue,
              )),
        ),
      ],
    ),
  );
}
