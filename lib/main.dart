import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() => runApp(Mobile());

class Mobile extends StatefulWidget {
  @override
  _MobileState createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Basic Mobile Apps"),
            actions: <Widget>[
              Icon(Icons.group,color: Colors.white, size: 30.0,),                                       
            ],
            bottom: TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.favorite),),                              
                Tab(icon: Icon(Icons.group),),                              
                Tab(icon: Icon(Icons.share),),                              
                Tab(icon: Icon(Icons.search),),                              
              ],
            ),
          ),
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  child: Center(
                    child: CircleAvatar(
                      radius: 60.0,
                      backgroundImage: NetworkImage(
                          "https://imagevars.gulfnews.com/2019/06/10/Portugal-s-forward-Cristiano-Ronaldo_16b414d57ae_large.jpg"),
                    ),
                  ),
                  decoration: BoxDecoration(color: Colors.green),
                ),
                ListTile(
                  title: Text("Home",
                    style: TextStyle( fontSize: 20.0,),                                        
                  ),
                  leading: Icon(Icons.home),
                ),
                ListTile(
                  title: Text("About",
                  style: TextStyle(fontSize: 20.0),                                                   
                  ),
                  leading: Icon(Icons.person,),
                ),
                ListTile(
                  title: Text("Phone",
                    style: TextStyle( fontSize: 20.0,),                
                  ),
                  leading: Icon(Icons.phone),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Image.network(
                "https://imagevars.gulfnews.com/2019/06/10/Portugal-s-forward-Cristiano-Ronaldo_16b414d57ae_large.jpg",
                fit: BoxFit.cover,
                // width: double.infinity,
                height: double.infinity,
              ),
              Image.network("https://pbs.twimg.com/media/DNpAbF5WAAAObA8.jpg",
                fit: BoxFit.cover,
                height: double.infinity,
              ),
              Image.network("https://editorial01.shutterstock.com/wm-preview-1500/9973892u/c32dc67e/ac-milan-vs-juventus-fc-italy-shutterstock-editorial-9973892u.jpg",
                fit: BoxFit.fill,
                height: double.infinity,
                width: double.infinity,
              ),
              Image.network("https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2Fb994eef0529742a39ebbb68930f08c49%2F960x0.jpg%3Ffit%3Dscale",
                fit: BoxFit.cover,
                height: double.infinity,
              ),
            ],
          ),
          floatingActionButton: SpeedDial(
            animatedIcon: AnimatedIcons.menu_close,
            animatedIconTheme: IconThemeData(size: 22.0),
            overlayColor: Colors.pink[200],
            overlayOpacity: 0.3,
            shape: CircleBorder(),
            children: [
              SpeedDialChild(
                child: Icon(Icons.message),
                backgroundColor: Colors.red,
                label: 'Message',
                labelStyle: TextStyle(fontSize: 18.0,color: Colors.white,),
                labelBackgroundColor: Colors.red,
              ),
              SpeedDialChild(
                child: Icon(Icons.share),
                backgroundColor: Colors.pink,
                label: 'Sharing',
                labelStyle: TextStyle(fontSize: 18.0,color: Colors.white,),
                labelBackgroundColor: Colors.pink,
              ),
              SpeedDialChild(
                child: Icon(Icons.attach_file),
                backgroundColor: Colors.green,
                label: 'Attach file',
                labelStyle: TextStyle(fontSize: 18.0,color: Colors.white,),
                labelBackgroundColor: Colors.green,
              ),
              SpeedDialChild(
                child: Icon(Icons.favorite),
                backgroundColor: Colors.blue,
                label: 'Love You',
                labelStyle: TextStyle(fontSize: 18.0,color: Colors.white,),
                labelBackgroundColor: Colors.blue,
              ),
              SpeedDialChild(
                child: Icon(Icons.person),
                backgroundColor: Colors.red, 
                label: 'Friends',
                labelStyle: TextStyle(fontSize: 18.0,color: Colors.white,),
                labelBackgroundColor: Colors.red,
              ),
            ],
          ),
          bottomNavigationBar: BottomAppBar(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.home,color: Colors.green, size: 30.0,),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.thumb_up, color: Colors.red,size:30.0,),                                    
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon( Icons.thumb_down, color: Colors.red,size: 30.0,),                                                         
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon( Icons.share, color: Colors.blue, size: 30.0,),                                                            
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ); 
  }
}