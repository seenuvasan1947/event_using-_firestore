// ignore_for_file: avoid_print, unused_local_variable

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}







class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
// final event = FirebaseFirestore.instance.collection("events").get();

// tamil computing
//
adddata() async{
FirebaseFirestore.instance.collection("events").doc("data").set(
  {
'name':"seenu",
'age':"21",
  }
);

}

deleteusr ()async {
FirebaseFirestore.instance.collection("events").doc("data").delete();

}
  fetchdata() async {

    // CollectionReference dataget = FirebaseFirestore.instance.collection("events");
    // final snap = await dataget.doc("tamil computing").get();
    // final unitdata = snap.data() as Map<String,dynamic>;
    // print(unitdata);
    // print(unitdata['grade']);
    // print(unitdata['id ']);
    /* tamil */
    final dataget = FirebaseFirestore.instance.collection("events").where("name", isEqualTo: "seenu");
    final snap = await dataget.get();
snap.docs.forEach((doc){
// print(doc['name']);
print(doc.id);
print(doc.data());
});

    // print(snap.runtimeType);
    // final unitdata = snap.data() as Map<String,dynamic>;
    
    // print(snap['grade']);
    // print(snap['id ']);
  }
  
  @override
  Widget build(BuildContext context) {


    // CollectionReference dataa = FirebaseFirestore.instance.collection("events");
    // final snap = dataa.doc("tamil computing").get();
    
//     final event = FirebaseFirestore.instance.collection("events").doc("tamil computing").get().then(
//   (DocumentSnapshot doc) {
//     final data = doc.data() ;

//     print(data.runtimeType);

//   },
//   onError: (e) => print("Error getting document: $e"),
// );

// final event = FirebaseFirestore.instance.collection("events").doc("tamil computing").get().then(
//   (DocumentSnapshot doc) {
//     final data = doc.data() as Map<String,dynamic>;
// Map<String,dynamic> datum =doc.data() as Map<String,dynamic>;
   

//     print( "${data['id']}");
//     // print( datum['place']);
//  print(data.toString());
//   },
//   onError: (e) => print("Error getting document: $e"),
// );

    // var data;
    // final event =
    //     FirebaseFirestore.instance.collection("events").snapshots();


    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: adddata, child: const Text('add')),
            ElevatedButton(onPressed: fetchdata, child: const Text('get')),
            // deleteusr
             ElevatedButton(onPressed: deleteusr, child: const Text('delete')),
// fetchdata()
//             Expanded(child:
// StreamBuilder(
//           stream: FirebaseFirestore.instance.collection("events").snapshots(),
//           builder:
//               (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
//             if (!snapshot.hasData) {
//               return const Text('loading hhhdata');
//             } else if (snapshot.hasData) {
// //               return ListView.builder(
// //                 itemCount: snapshot.data!.docs.length,
// //                 itemBuilder: (BuildContext context, int index) {
// //                   // return Text(snapshot.data!.docs[index].toString());
// // var doc = snapshot.data!.docs[index];
// //   var data = doc.data() as Map;
// //   return Text(data as String);

// //                 },
// //               );
            
//             return ListView(
//           children: snapshot.data!.docs
//               .map((DocumentSnapshot document) {
//                 Map<String, dynamic> data =
//                     document.data()! as Map<String, dynamic>;
//                 return ListTile(
//                   title: Text(data['name']),
//                   subtitle: Text(data['company']),
//                 );
//               })
//               .toList()
//               .cast(),
//         );



//             }

//             return const Text('somethng\'s wrong');
//           }),
//         ),
         
          ],
        ),
      ),
    );
  }
  
  
}

// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();

//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: SingleChildScrollView(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               // const Text(
//               //   'You have pushed the button this many times:',
//               // ),
//               // Text(
//               //   '\$_counter',
//               //   style: Theme.of(context).textTheme.headlineMedium,
//               // ),

//               StreamBuilder<QuerySnapshot>(
//                   stream:
//                       FirebaseFirestore.instance.collection("events").snapshots(),
//                   builder: (BuildContext context,
//                       AsyncSnapshot<QuerySnapshot> snapshot) {
//                         if(snapshot.hasData){
//                           final snap = snapshot.data!.docs;
//                           return ListView.builder(itemCount : snap.length ,itemBuilder:(context,index) {
//                             return Text(snap[index]['name']);
//                           });
//                         }
//                         else{
//                           return const SizedBox();
//                         }
//                       })
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
