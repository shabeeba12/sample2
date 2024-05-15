import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo/models/task.dart';

void main() {
  runApp( TaskScreen());
}

// ignore: must_be_immutable
class TaskScreen extends StatelessWidget {
   TaskScreen({Key? key}):super(key: key);

  List<Task> tasksList = [
    Task(title: 'Task1'),
    Task(title: 'Task2'),
    Task(title: 'Task3'),
  ];

 
  @override
  Widget build(BuildContext context) {
    var taskList;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task App"),
        actions: [
          IconButton(
            onPressed: () {},
             icon: const Icon(Icons.add),
             )
        ],

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
          const Center(
            child: Chip(label: Text("Tasks")),
          ),
      Expanded
      (
            child: ListView.builder(
              itemCount: taskList.length,
              itemBuilder: (context,index){
                var task = taskList[index];
                return ListTile(
            title: Text(task.title),
            trailing: Checkbox(
              value: task.isDone,
              onChanged: (value) {},
              ),
                );
              }),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Add Task',
      
        )
    );
  }
}