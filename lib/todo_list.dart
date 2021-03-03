import 'package:flutter/material.dart';

class MyListItem {
  String title = "";
  String sign = "signature";

  MyListItem(String title, String sign) {
    this.title = title;
    this.sign = sign;
  }

}

List<ListTile> getWidgetsList(List<MyListItem> listItems) {
  List<ListTile> widgets = [];
  for (int i=0; i<listItems.length; i++) {
    widgets.add(ListTile(title: Text(listItems[i].title),));
  }
  return widgets;
}

class TodoListScreen extends StatefulWidget {
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {

  List<MyListItem> listItems = [MyListItem("title","sign" ), MyListItem("title", "sign")];
  TextEditingController textController = TextEditingController();

  void addNewItemToList(String title, String sign) {
    setState(() {
      listItems.add(MyListItem(title, sign));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DevClub TODO List App"),
      ),
      body: ListView(
        children: <Widget> [
          TextField(
            controller: textController,
            // onChanged: (String newText) {
            //   val = newText;
            // },
          )
        ] + getWidgetsList(listItems),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Add",
        child: Icon(Icons.add),
        onPressed: () {
          addNewItemToList(textController.text, "subtitle");
          textController.text = "";
        },

      ),


    );
  }
}


