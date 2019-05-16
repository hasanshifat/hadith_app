
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';




class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          //color: Colors.orange,
        ),
      ),
    );
  }
}

class Creation extends StatefulWidget {
  Creation({Key key, this.title}) : super(key: key);
  
  
  final String title;
  

  @override
  _CreationState createState() => _CreationState();
}

class _CreationState extends State<Creation> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      
        elevation: 0.0,
      ),
      
    );
  }
}

class CreationListPage extends StatefulWidget {
  @override
  _CreationListPageState createState() => _CreationListPageState();
}

class _CreationListPageState extends State<CreationListPage> {
  

  Future _data;

  Future getPost() async {

    var firestore = Firestore.instance;

    QuerySnapshot qn = await firestore.collection("creation").getDocuments();

    return qn.documents;

  }

  navigateToDetail(DocumentSnapshot post){
    Navigator.push(context, MaterialPageRoute(builder: (context) => CreationDetailPage(post: post,)));
  }

  @override
  void initState() {
    super.initState();

    _data = getPost();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text("সৃষ্টির সূচনা"),
        centerTitle: true,
      ),
          body: Container( 
        child: Card(
          child: FutureBuilder(
          future: _data,
          builder: (_, snapshot){

           if(snapshot.connectionState == ConnectionState.none)
          {
            return Center(

              child: Container(
                child: SimpleDialog(
                  title: Text("No Internet!!"),
                ),
                
              ),
            );
          }
          
          else if(snapshot.connectionState == ConnectionState.waiting){
            return Center(
             child: CircularProgressIndicator(),
              );
              
          }


          else{

            return ListView.builder(
              

              itemCount: snapshot.data.length,
              itemBuilder: (_, index)
              {
                
                return Container(
                   padding: const EdgeInsets.only(top:20),
                  alignment: Alignment(0, 0),
                  decoration: BoxDecoration(
                    //color: Colors.black38,
                    //border: Border.all(width: 1),
                    //borderRadius: BorderRadius.circular(25),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Color(0xff1BEBF9),
                        offset: Offset(120, 100),
                        blurRadius: 100
                      )
                    ]
                  ),
                  child: Card( 
                    
                    child: ListTile( 
                  title: Text( snapshot.data[index].data["title"],

                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                   ),
                  onTap: () => navigateToDetail(snapshot.data[index]),
                ),
                  ),
                );
            },
            );
          }
        }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(
            new MaterialPageRoute(
              builder: (BuildContext context) => CreationListPage()
            )
          );
        },
        backgroundColor: Colors.red,
        child: Icon(Icons.refresh,),
      ),
    );
    
  }
}

class CreationDetailPage extends StatefulWidget {

  final DocumentSnapshot post;
  CreationDetailPage({this.post});

  @override
  _CreationDetailPageState createState() => _CreationDetailPageState();
}

class _CreationDetailPageState extends State<CreationDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text(widget.post.data["title"]),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text(widget.post.data["content"],
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
                         
            ),
            )
          ],
        ),
      ),
      )
          
    );
  }
}