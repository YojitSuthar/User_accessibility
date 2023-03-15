import 'package:flutter/material.dart';
import 'package:user_accessibility/screens/excludeSemantic.dart';

class MergeSemantic extends StatelessWidget {
  const MergeSemantic({Key? key}) : super(key: key);
  static const String id="merge";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Merge Semantic"),
      ),
      body: Column(
        children: [
          MergeSemantics(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.account_circle, semanticLabel: 'name'),
                  title: Text("John Doe", style: TextStyle(color: Colors.blue),),
                  onTap: () {
                    print("Name");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.email, semanticLabel: 'email',),
                  title: Text("johndoe@test.com", style: TextStyle(color: Colors.blue),),
                  onTap: () {
                    print("email");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.business, semanticLabel: 'company name'),
                  title: Text("ABC Inc.", style: TextStyle(color: Colors.blue),),
                  onTap: () {
                    print("Company");
                  },
                ),
              ],
            ),
          ),
          SizedBox(height:  10,),
          Container(
            color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.account_circle, semanticLabel: 'name'),
                  title: Text("John Doe", style: TextStyle(color: Colors.blue),),
                  onTap: () {
                    print("Name");
                  },
                ),
                Semantics(
                  child: ListTile(
                    leading: Icon(Icons.email, semanticLabel: 'email',),
                    title: Text("johndoe@test.com", style: TextStyle(color: Colors.blue),),
                    onTap: () {
                      print("Email");
                    },
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.business, semanticLabel: 'company name'),
                  title: Text("ABC Inc.", style: TextStyle(color: Colors.blue),),
                  onTap: () {
                    print("Company");
                  },
                ),
              ],
            ),
          ),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, ExcludeSemantic.id);
          }, child: Text("Exclude Semantics ->"),)
        ],
      ),
    );
  }
}
