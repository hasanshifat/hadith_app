import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'main.dart';
import 'jakat.dart';
import 'hajj.dart';
import 'fitna.dart';
import 'tawhid.dart';
import 'creation.dart';





class Catagory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          
        ),
      ),
    );
  }
}


class Cata extends StatefulWidget {
  @override
  _CataState createState() => _CataState();
}

class _CataState extends State<Cata> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("প্রতিদিন হাদিস",
        style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              //color: Colors.white,
              ),
        ),
        centerTitle: true,

      ),
      backgroundColor: Color(0xff808080),
      

    body: Container(

      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/back.jpg"),fit: BoxFit.cover
           )
      ),

      child: StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 30,
        mainAxisSpacing: 25,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20),
           alignment: Alignment(0, 0),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
          
              //0xffFFB301 silo color
              borderRadius: BorderRadius.circular(10),
               boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(2, 2),
                    blurRadius: 2
                  )
              ],
              
            ),
            child: GestureDetector(
              child: Text("ঈমান",
              textAlign: TextAlign.center,
              style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              ),
              ),
              
              onTap: () => Navigator.of(context).push(
                new MaterialPageRoute(
                  builder: (BuildContext context) => new ListPage()
                )
              )
            ),
          ),

          Container(
            padding: const EdgeInsets.all(20),
           alignment: Alignment(0, 0),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(10),
               boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(2, 2),
                    blurRadius: 2
                  )
              ],
            ),
            child: GestureDetector(
              child: Text("যাকাত",
              textAlign: TextAlign.center,
              style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              ),
              ),
              
              onTap: () => Navigator.of(context).push(
                new MaterialPageRoute(
                  builder: (BuildContext context) => new JakatListPage()
                )
              )
            ),
          ),

           Container(
            alignment: Alignment(0, 0),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(10),
               boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(2, 2),
                    blurRadius: 2
                  )
              ],
            ),
            child: GestureDetector(
              child: Text("হাজ্জ",
              textAlign: TextAlign.center,
              style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.white
              ,
              ),
              ),
              onTap: () => Navigator.of(context).push(
                new MaterialPageRoute(
                  builder: (BuildContext context) => new HajjListPage()
                )
              )
            ),

          ),

          Container(
            padding: const EdgeInsets.all(20),
           alignment: Alignment(0, 0),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(10),
               boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(2, 2),
                    blurRadius: 2
                  )
              ],
              
            ),
            child: GestureDetector(
              child: Text("ফিতনা",
              textAlign: TextAlign.center,
              style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              ),
              ),
              
              onTap: () => Navigator.of(context).push(
                new MaterialPageRoute(
                  builder: (BuildContext context) => new FitnaListPage()
                )
              )
            ),
          ),

           Container(
            padding: const EdgeInsets.all(20),
           alignment: Alignment(0, 0),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(10),
               boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(2, 2),
                    blurRadius: 2
                  )
              ],
              
            ),
            child: GestureDetector(
              child: Text("তাওহীদ",
              textAlign: TextAlign.center,
              style: TextStyle(
              fontSize: 33,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              ),
              ),
              
              onTap: () => Navigator.of(context).push(
                new MaterialPageRoute(
                  builder: (BuildContext context) => new TawhidListPage()
                )
              )
            ),
          ),
          

          Container(
            padding: const EdgeInsets.all(20),
           alignment: Alignment(0, 0),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(10),
               boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(2, 2),
                    blurRadius: 2
                  )
              ],
              
            ),
            
            child: GestureDetector(
              child: Text("সৃষ্টির সূচনা",
              textAlign: TextAlign.center,
              style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              ),
              ),
              
              onTap: () => Navigator.of(context).push(
                new MaterialPageRoute(
                  builder: (BuildContext context) => new CreationListPage()
                )
              )
            ),
          ),

        ],
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        staggeredTiles: [
          StaggeredTile.extent(1, 150),
          StaggeredTile.extent(1, 200),
          StaggeredTile.extent(1, 250),
          StaggeredTile.extent(1, 150),
          StaggeredTile.extent(1, 250),
          StaggeredTile.extent(1, 200),
        ],

    ),
    )
      
      );
    
  
  }

}



