import 'package:flutter/material.dart';
import 'package:untitled37/detaySayfa.dart';

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
      body: SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: ulkeler.length,
            itemBuilder: (context,index)
            {

            return GestureDetector(
              onTap: ()
              {
                //Navigator.push(context, MaterialPageRoute(builder: (context) => detaySayfa(ulke:ulkeler[index])));
                print('${ulkeler[index]}');
                  },
              child: SizedBox(
                width: 120,
                child: Card(

                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 50,
                      child: Row(


                        children: [
                          Text(ulkeler[index]),
                          Spacer(),
                          PopupMenuButton(
                            child: Icon(Icons.more_vert),
                            itemBuilder: (context) =>
                            [
                              PopupMenuItem(
                                value: 1,
                                child: Text("Sil",style: TextStyle(color: Colors.red),),
                              ),
                              PopupMenuItem(
                                value: 2,
                                child: Text("Güncelle",style: TextStyle(color: Colors.indigo),),
                              ),
                              PopupMenuItem(
                                value: 3,
                                child: Text("Git",style: TextStyle(color: Colors.indigo),),
                              ),
                            ],
                            onCanceled: ()
                            {
                              print('Seçim iptal edildi.');
                            },
                            onSelected: (menuItemValue)
                            {
                              switch(menuItemValue)
                              {
                                case 1:
                                  print('Sil seçildi.');
                                  setState(() {
                                    ulkeler.removeAt(index);
                                  });

                                  break;
                                case 2:
                                  print('Güncelle seçildi.');
                                  break;

                                case 3:
                                Navigator.push(context, MaterialPageRoute(builder: (context) => detaySayfa(ulke:ulkeler[index])));
                                  //print('Güncelle seçildi.');
                                  break;

                              }
                            },


                          ),
                        ],

                      ),
                    ),
                  ),


                ),
              ),
            );
            }


        ),
      )



    );
  }
}
