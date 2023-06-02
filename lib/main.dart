import 'package:flutter/material.dart';

void main() => runApp(const Ola());

class Ola extends StatelessWidget {
  const Ola({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'Act2',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      // A widget which will be started on application startup
      home: const MyHomePage(title: 'Mi perfil'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perfil"),
        actions: <Widget>[
          //IconButton
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Setting Icon',
            onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('!Ola!'),
                content: const Text('Ola ola oLa olA'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Ola();
                    })),
                    child: const Text('Ok'),
                  ),
                ],
              ),
            ),
          ), //IconButton
        ], //<Widget>[]
        backgroundColor: Colors.lightGreen,
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              // <-- SEE HERE
              decoration: BoxDecoration(color: Colors.lightGreen),
              accountName: Text(
                "Aaron Mota",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "AaronMR@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://scontent.fcjs2-1.fna.fbcdn.net/v/t39.30808-6/322865288_922587129102578_8522152108666014410_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFzbvY1OKBHW32ymAEwKf1dYBHTkAR1bzRgEdOQBHVvNHbgHCTKzbnoIuBbpPFYlxTEq4xmZU5lsr_xyx_t7E1S&_nc_ohc=vAN4bhPvd5IAX9wuWHy&_nc_ht=scontent.fcjs2-1.fna&oh=00_AfC2GXL0CBSOnIfseo3cjMl2RXxSBkEizGTnVPj_ZemajQ&oe=64681C95'),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.people,
              ),
              title: Text('UIII Act 2 Diseño y tu foto FlutLab'),
            ),
          ],
        ),
      ), //AppBar
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 25, left: 60, right: 60),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border.all(width: 6, color: Colors.lightGreen),
              borderRadius: const BorderRadius.all(Radius.circular(25)),
            ),
            child: const Text(
              "Jesus Aaron Mota Reyes",
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          const Divider(
            height: 80,
            color: Colors.lightGreen,
            thickness: 7,
            indent: 100,
            endIndent: 100,
          ),
          Container(
            margin: const EdgeInsets.only(left: 60, right: 60),
            decoration: BoxDecoration(
              border: Border.all(width: 5, color: Colors.lightGreen),
            ),
            height: 200,
            width: 200,
            child: Image.network(
                'https://scontent.fcjs2-1.fna.fbcdn.net/v/t39.30808-6/322865288_922587129102578_8522152108666014410_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFzbvY1OKBHW32ymAEwKf1dYBHTkAR1bzRgEdOQBHVvNHbgHCTKzbnoIuBbpPFYlxTEq4xmZU5lsr_xyx_t7E1S&_nc_ohc=vAN4bhPvd5IAX9wuWHy&_nc_ht=scontent.fcjs2-1.fna&oh=00_AfC2GXL0CBSOnIfseo3cjMl2RXxSBkEizGTnVPj_ZemajQ&oe=64681C95'),
          ),
          const Divider(
            height: 80,
            color: Colors.lightGreen,
            thickness: 7,
            indent: 100,
            endIndent: 100,
          ),
          Container(
            margin: const EdgeInsets.only(top: 25, left: 60, right: 60),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border.all(width: 5, color: Colors.lightGreen),
            ),
            child: const Text(
              "Especialidad: Programacion     Grupo: 6-I",
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  const SizedBox(height: 40.0),
                  DefaultTabController(
                      length: 3, // length of tabs
                      initialIndex: 0,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Container(
                              child: TabBar(
                                labelColor: Colors.green,
                                unselectedLabelColor: Colors.black,
                                tabs: [
                                  const Tab(icon: Icon(Icons.people)),
                                  const Tab(icon: Icon(Icons.apple)),
                                  const Tab(icon: Icon(Icons.train)),
                                ],
                              ),
                            ),
                            Container(
                                height: 400, //height of TabBarView
                                decoration: const BoxDecoration(
                                    border: Border(
                                        top: BorderSide(
                                            color: Colors.grey, width: 0.5))),
                                child: TabBarView(children: <Widget>[
                                  Container(
                                    child: const Center(
                                      child: Tab(icon: Icon(Icons.people)),
                                    ),
                                  ),
                                  Container(
                                    child: const Center(
                                      child: Tab(icon: Icon(Icons.apple)),
                                    ),
                                  ),
                                  Container(
                                    child: const Center(
                                      child: Tab(icon: Icon(Icons.train)),
                                    ),
                                  ),
                                ]))
                          ])),
                ]),
          ),
        ],
      ),
    );
  }
}
