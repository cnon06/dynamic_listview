import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var ulkeler = ["Almanya","Fransa","Kanada","Yunanistan","Kenya"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: ListView.builder(

        itemCount: ulkeler.length,
          itemBuilder: (context,index)
          {

          return Card(

            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                child: Row(


                  children: [
                    Text(ulkeler[index]),
                  ],

                ),
              ),
            ),


          );
          }


      )



    );
  }
}
