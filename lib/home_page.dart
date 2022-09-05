import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool button1 = false;
  bool button2 = false;
  bool button3 = false;
  bool button4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Mc Flutter'),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.black)),
                      child: Column(children: [
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.account_circle_rounded, size: 50),
                                Column(
                                  children: [
                                    Text(
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        'Flutter McFlutter'),
                                    Text(
                                        style: TextStyle(color: Colors.blue),
                                        'Experienced App Developer')
                                  ],
                                )
                              ]),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('123 Main Street'),
                              Text('(415) 555-0198')
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                IconButton(
                                    icon: Icon(Icons.accessibility,
                                        color: button1
                                            ? Colors.indigo
                                            : Colors.black),
                                    onPressed: () {
                                      button1 = !button1;
                                      button2 = false;
                                      button3 = false;
                                      button4 = false;
                                      setState(() {});
                                      ScaffoldMessenger.of(context)
                                        ..hideCurrentSnackBar()
                                        ..showSnackBar(SnackBar(
                                            content: Text(
                                                'Unete a un club con otras personas')));
                                    }),
                                IconButton(
                                  icon: Icon(Icons.timer,
                                      color:
                                          button2 ? Colors.indigo : Colors.black),
                                  onPressed: () {
                                    button1 = false;
                                    button2 = !button2;
                                    button3 = false;
                                    button4 = false;
                                    setState(() {});

                                    ScaffoldMessenger.of(context)
                                      ..hideCurrentSnackBar()
                                      ..showSnackBar(SnackBar(
                                          content: Text(
                                              'Cuenta regresiva para el evento: 31 dias')));
                                  },
                                ),
                                IconButton(
                                  icon: Icon(Icons.phone_android,
                                      color:
                                          button3 ? Colors.indigo : Colors.black),
                                  onPressed: () {
                                    button1 = false;
                                    button2 = false;
                                    button3 = !button3;
                                    button4 = false;
                                    setState(() {});
                                    ScaffoldMessenger.of(context)
                                      ..hideCurrentSnackBar()
                                      ..showSnackBar(SnackBar(
                                          content: Text(
                                              'Llama al numero 4155550198')));
                                  },
                                ),
                                IconButton(
                                  icon: Icon(Icons.phone_iphone,
                                      color:
                                          button4 ? Colors.indigo : Colors.black),
                                  onPressed: () {
                                    button1 = false;
                                    button2 = false;
                                    button3 = false;
                                    button4 = !button4;
                                    setState(() {});
                                    ScaffoldMessenger.of(context)
                                      ..hideCurrentSnackBar()
                                      ..showSnackBar(SnackBar(
                                          content: Text(
                                              'Llama al celular 3317865113')));
                                  },
                                ),
                              ]),
                        )
                      ]),
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
