import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'add.dart';
import 'edit.dart';

class ViewScreen extends StatefulWidget
{
  const ViewScreen({super.key});

  @override
  State<ViewScreen> createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen>
{
  final Stream<QuerySnapshot> studentRecords = FirebaseFirestore.instance.collection('Students8').snapshots();
  CollectionReference delUser = FirebaseFirestore.instance.collection('Students8');

  Future<void> _delete(id) {
    return delUser
        .doc(id)
        .delete()
        .then((value) => print('User Deleted'))
        .catchError((_) => print('Something Error In Deleted User'));
  }
  @override
  Widget build(BuildContext context)
  {

    return StreamBuilder<QuerySnapshot>(
        stream: studentRecords,

        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot)
      {
      if (snapshot.hasError)
      {
        print('Something Wrong in HomePage');
      }
      if (snapshot.connectionState == ConnectionState.waiting)
      {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }

    final List firebaseData = [];
    snapshot.data?.docs.map((DocumentSnapshot documentSnapshot) {
      Map store = documentSnapshot.data() as Map<String, dynamic>;
      firebaseData.add(store);
      store['id'] = documentSnapshot.id;
    }).toList();

    return Scaffold
      (
        appBar: AppBar(title: Text("View Detail"),),
        body:
        Container
        (
          margin: const EdgeInsets.all(8),
          child: SingleChildScrollView
            (
              child: Table
                (
                    border: TableBorder.all(),
                    columnWidths: const <int, TableColumnWidth>
                    {
                      1: FixedColumnWidth(150),
                    },
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children:
                    [
                        TableRow
                          (
                            children:
                            [

                              TableCell(
                                child: Container(
                                  color: Colors.greenAccent,
                                  child: Center(
                                    child: Text(
                                      'Name',
                                      // style: txt,
                                    ),
                                  ),
                                ),
                              ),


                              TableCell(
                                child: Container(
                                  color: Colors.greenAccent,
                                  child: Center(
                                    child: Text(
                                      'Email',
                                      // style: txt,
                                    ),
                                  ),
                                ),
                              ),

                              TableCell(
                                child: Container(
                                  color: Colors.greenAccent,
                                  child: Center(
                                    child: Text(
                                      'Action',
                                      // style: txt,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                      for (var i = 0; i < firebaseData.length; i++)...
                      [
                                  TableRow
                                    (
                                    children:
                                    [
                                      TableCell(
                                        child: SizedBox(
                                          child: Center(
                                            child: Text(
                                              firebaseData[i]['Name'],
                                              // style: txt2,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: SizedBox(
                                          child: Center(
                                            child: Text(
                                              firebaseData[i]['Email'],
                                              // style: txt2,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: SizedBox(
                                          child: Row
                                            (
                                            children:
                                            [
                                              IconButton(onPressed: ()
                                              {
                                                Navigator.push(context, MaterialPageRoute
                                                  (
                                                  builder: (context) => EditPage(docID: firebaseData[i]['id'],),
                                                ),
                                                );
                                              }, icon: Icon(Icons.edit)),
                                              IconButton(onPressed: ()
                                              {
                                                _delete(firebaseData[i]['id']);
                                               // print(firebaseData);

                                              }, icon: Icon(Icons.delete))
                                            ],
                                          ),
                                        ),
                                      ),


                                    ]
                                    )
                      ]



                    ],

                )
            ),
        ) ,
      floatingActionButton: FloatingActionButton
        (
        onPressed: ()
        {
          Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => AddScreen()));
        },
        child: Icon(Icons.add),
      ),

    );
      });
  }
}
