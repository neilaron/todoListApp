

import 'dart:js_util';

import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  List<String>todoItems = [];

  void addItem(){
    todoItems.add(item.text);
    setState(() {
      
    });
  }


  var item = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                  Expanded(
                    flex: 2,
                    child: TextField(
                      controller: item,
                    decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: const Text('to do list'),
                    ),
                    ),
                    ),
                const SizedBox(width: 5,),
                Expanded(
                  flex: 1,
                  child: ElevatedButton.icon(
                    onPressed: 
                      addItem,
                    icon: Icon(Icons.add), 
                    label: Text('Add'),
                ),
                ),
          ],
          ),
          Expanded(
            child:ListView.builder(itemCount: todoItems.length, 
            itemBuilder:(context, index) => TodoItem(index + 1,todoItems[index]),
            )
          ),
              ],
            ),
           
          ),
            
        ),
      );
  }
}

class TodoItem extends StatelessWidget {
  TodoItem(this.index,this.item,{super.key});
  
  int index;
  String item;
  

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: ListTile(
        title: Text(item),
        //subtitle: Text(data),
        leading: CircleAvatar(child: Text('$index'),),
        trailing: IconButton(onPressed: (){}, icon: Icon(Icons.delete_forever,color: Colors.red,))
      )
    );
  }
}