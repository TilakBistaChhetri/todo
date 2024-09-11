import 'package:flutter/material.dart';
import 'package:projectapp/Pages/detailspage.dart';
import 'package:projectapp/Pages/addpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var value;
  var listTODO =[ '  '];
  addToDo(String item) {
    setState(() {
      listTODO.add(item);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 172, 136, 180),
      appBar: AppBar(
        centerTitle: true,
        title:Text("TODO APP",style:TextStyle(fontSize:30, color:Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 70, 6, 90),
      ),
      floatingActionButton:FloatingActionButton(
      onPressed:() {
        Navigator.push(context, MaterialPageRoute(builder: (context) => AddPage(),
        
        )
        );
      } ,
      child:Icon(Icons.add),
      ),
      

       body:
       ListView.builder(
          itemCount: listTODO.length,
          itemBuilder:(context, index) {
            return ListTile(
              leading:Icon(Icons.work),
              title:Text("${listTODO[index]}", style:TextStyle(fontWeight:FontWeight.bold)),
            );
          }
          ),
          
       
       
    
      

    );
 
  }
}
