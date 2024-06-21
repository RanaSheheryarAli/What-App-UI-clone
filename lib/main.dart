import 'package:flutter/material.dart';

import 'Homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Home_Screen(),
    );
  }
}

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          backgroundColor: Colors.teal,
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text('Chats'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Calls'),
              )
            ],
            indicatorColor: Colors.white,
            labelColor: Colors.white,
          ),
          actions: [
            const Icon(Icons.search),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(
                icon: Icon(Icons.more_vert_outlined),
                itemBuilder: (
                  context,
                ) =>
                    const [
                      PopupMenuItem(value: '1', child: Text('New Group')),
                      PopupMenuItem(value: '2', child: Text('New broadcast')),
                      PopupMenuItem(value: '3', child: Text('Linked Devices')),
                      PopupMenuItem(value: '4', child: Text('Starred message')),
                      PopupMenuItem(value: '5', child: Text('New Group')),
                      PopupMenuItem(value: '6', child: Text('Setting')),
                      PopupMenuItem(value: '7', child: Text('Logout')),
                    ]),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        body: TabBarView(
          children: [
            ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/haseeb.png'),
                      ),
                      title: Text('Haseeb'),
                      subtitle: Text('OS ki sari video dakh li'),
                      trailing: Text('6:49 pm'),
                    );
                  } else if (index == 1) {
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/mohsin.png'),
                      ),
                      title: Text('Mohsin'),
                      subtitle: Text('ok'),
                      trailing: Text('03:05 pm'),
                    );
                  } else if (index == 2) {
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/moiz.jpg'),
                      ),
                      title: Text('Moiz'),
                      subtitle: Text('Tabyiat kasi ha ab'),
                      trailing: Text('12:05 pm'),
                    );
                  } else if (index == 3) {
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/group.png'),
                      ),
                      title: Text('4Chat'),
                      subtitle:
                          Text('you:  Ma ny puch ha operation karwaya k ni'),
                      trailing: Text('8:05 pm'),
                    );
                  }
                }),
            ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return ListTile(
                      leading: Container(
                        width: 40,
                        height: 40,
                        child: const CircleAvatar(
                          backgroundImage: AssetImage('assets/mm.png'),
                        ),
                      ),
                      title: Text('My Status'),
                      subtitle: Text('Tap to add Status Update'),
                    );
                  } else if (index == 1) {
                    return const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text('Recently Updates')],
                      ),
                    );
                  } else if (index == 2) {
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.teal,
                              width: 3,
                            )),
                        child: const CircleAvatar(
                          backgroundImage: AssetImage('assets/mohsin.png'),
                        ),
                      ),
                      title: Text('Mohsin'),
                      subtitle: Text('one Hour Ago'),
                    );
                  } else if (index == 3) {
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.teal,
                              width: 3,
                            )),
                        child: const CircleAvatar(
                          backgroundImage: AssetImage('assets/haseeb.png'),
                        ),
                      ),
                      title: Text('Haseeb'),
                      subtitle: Text('38 minutes ago'),
                    );
                  } else if (index == 4) {
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.teal,
                              width: 3,
                            )),
                        child: const CircleAvatar(
                          backgroundImage: AssetImage('assets/moiz.jpg'),
                        ),
                      ),
                      title: Text('Moiz'),
                      subtitle: Text('Yesterday'),
                    );
                  }
                }),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(index % 2 == 0
                          ? 'assets/haseeb.png'
                          : 'assets/moiz.jpg'),
                    ),
                    title: Text(index % 2 == 0 ? 'Haseeb' : 'Moiz'),
                    subtitle: Text(
                      'Yesterday 6:49 pm',
                      style: TextStyle(
                        color: index % 2 == 1 ? Colors.red : null,
                      ),
                    ),
                    iconColor: Colors.teal,
                    trailing:
                        Icon(index % 2 == 0 ? Icons.call : Icons.video_call),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
