import 'package:flutter/material.dart';
import '../bloc/navigation_bloc.dart';
import '../ui/home.dart';
import '../ui/page_one.dart';
import '../ui/page_two.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';
import 'package:dart_vlc/dart_vlc.dart';


class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text("Gusanwa"),
                currentAccountPicture: CircleAvatar(child: Icon(Icons.person)),
                accountEmail: Text("gusanwaakbar@gmail.com")),
            ListTile(
              title: Text("Home"),
              onTap: () {
                Navigator.of(context).pop();
                bloc.updateNavigation("Login");
              },
            ),
            ListTile(
              title: Text("Beranda"),
              onTap: () {
                Navigator.of(context).pop();
                bloc.updateNavigation("PageOne");
              },
            ),
            ListTile(
              title: Text("Profile"),
              onTap: () {
                Navigator.of(context).pop();
                bloc.updateNavigation("PageTwo");
              },
            ),
          ],
        ),
      ),
      body: StreamBuilder(
        stream: bloc.getNavigation,
        initialData: bloc.navigationProvider.currentNavigation,
        builder: (context, snapshot) {
          if (bloc.navigationProvider.currentNavigation == "Home") {
            return Home();
          }
          if (bloc.navigationProvider.currentNavigation == "PageOne") {
            return PageOne();
          }
          if (bloc.navigationProvider.currentNavigation == "PageTwo") {
            return PageTwo();
          }

          return Home();
        }, // access the data in our Stream here
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Login',
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 30),
            )),
        Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Sign in',
              style: TextStyle(fontSize: 20),
            )),
        Container(
          padding: const EdgeInsets.all(10),
          child: TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'User Name',
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: TextField(
            obscureText: true,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            //forgot password screen
          },
          child: const Text(
            'Forgot Password',
          ),
        ),
        Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              child: const Text('Login'),
              onPressed: () {
                print("Muhammad Gusanwa Akbar");
                print(19650078);
              },
            )),
        Row(
          children: <Widget>[
            const Text('Does not have account?'),
            TextButton(
              child: const Text(
                'Sign in',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                //signup screen
              },
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    );
  }
}

class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  final String apiUrl = "https://reqres.in/api/users?per_page=15";

    

    

    



  Future<List<dynamic>> _fecthDataUsers() async {
    var result = await http.get(Uri.parse(apiUrl));
    return json.decode(result.body)['data'];
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        child: FutureBuilder<List<dynamic>>(
          future: _fecthDataUsers(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {

            Player player = Player(
            id: 0,
           // videoDimensions: const VideoDimensions(450, 430)
            );

            

            if (snapshot.hasData) {

              player.open(
              Media.file(File('/home/gusanwa/Downloads/download-file.mp4')),
              autoStart: false, // default
            );

              return ListView.builder(
                  padding: EdgeInsets.all(10),
                  //snapshot.data.length
                  itemCount: 13,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 501,
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  NetworkImage(snapshot.data[index]['avatar']),
                            ),
                            title: Text(snapshot.data[index]['first_name'] +
                                " " +
                                snapshot.data[index]['last_name']),
                            subtitle: Text(snapshot.data[index]['email']),
                          ),


                         Column(

                          
                          
       
                        children: <Widget>[
                          

                           Card(
              elevation: 4.0,
              clipBehavior: Clip.antiAlias,
              child: Video(
                player: player,
                width: 450 ,
                height:  340, 
        
                
              ),
            ),

  
                              

                            const Text(
                        "#fyp#fyp#fyp",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 40,
                        child: Row(
                         
                          children: [
                            
                            const SizedBox(
                              width: 10,
                            ),
                            
                       
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                              ),
                              padding: const EdgeInsets.all(5),
                              width: 100,
                              height: 40,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.bookmark,
                                    color: Colors.purple,
                                  ),
                                  Text(
                                    "Simpan",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                              ),
                              padding: const EdgeInsets.all(5),
                              width: 100,
                              height: 40,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.share,
                                    color: Colors.purple,
                                  ),
                                  Text(
                                    "Bagikan",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],

                        ),

                      ),
     


      ],
    ),



                        ],
                      ),
                    );
                  });
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}

class PageTwo extends StatefulWidget {
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 250,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.red, Colors.deepOrange.shade300],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: [0.5, 0.9],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.red.shade300,
                    minRadius: 35.0,
                    child: Icon(
                      Icons.call,
                      size: 30.0,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white70,
                    minRadius: 60.0,
                    child: CircleAvatar(
                      radius: 50.0,
                      backgroundImage: NetworkImage(
                          'https://www.greenscene.co.id/wp-content/uploads/2021/09/goku.jpg'),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.red.shade300,
                    minRadius: 35.0,
                    child: Icon(
                      Icons.message,
                      size: 30.0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Gusanwa Akbar',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.deepOrange.shade300,
                  child: ListTile(
                    title: Text(
                      '5000',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      'Followers',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: ListTile(
                    title: Text(
                      '5000',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      'Following',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  'Email',
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Akbar.Gusanwa@gmail.com',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                title: Text(
                  'GitHub',
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'https://github.com/leoAkbar',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                title: Text(
                  'Linkedin',
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'www.linkedin.com/in/Gusanwa-Akbar-834a1755',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
