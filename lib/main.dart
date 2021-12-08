import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: MyApp(),debugShowCheckedModeBanner: false,));
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliver', style: TextStyle(
          fontSize: 25
        ),),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Abc',style: TextStyle(
                fontSize: 20,
              ),
              ),
              background: Image.network('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
              fit: BoxFit.cover,),
            ),
            expandedHeight: 200,
            pinned: true,
            backgroundColor: Colors.redAccent,
            leading: Icon(Icons.menu),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.search)),
              IconButton(onPressed: (){}, icon: Icon(Icons.eighteen_mp)),
            ],
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
            (context, index){
              return Card(
               //shape: Border.all(width: 5),
                child: Image.network('https://upload.wikimedia.org/wikipedia/commons/c/c8/Altja_j%C3%B5gi_Lahemaal.jpg'),
              );
            }
          ),
          ),
        ],
      ),
    );
  }
}
