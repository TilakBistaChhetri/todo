import 'package:flutter/material.dart';
import 'package:projectapp/Pages/homepage.dart';


class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}
class _AddPageState extends State<AddPage> {
  var value;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        centerTitle: true,
        title:Text("TODO APP",style:TextStyle(fontSize:30, color:Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 70, 6, 90),
      ),
      
      
      
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              onChanged: (val) {
                  value = val;
                

              },
              decoration: InputDecoration(
                labelText: "Add Item",
              ),
        
            ),
            SizedBox(height:50),
             ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));

              },// Call saveTask when Save button is pressed
              child: Text('Save Task'),
            ),
          ],
        ),
      ),
      
    
    );
  }
}