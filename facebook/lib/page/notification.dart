import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 10),
          Icon(Icons.more_vert),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // --- Section: Today ---
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Today',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),

          Expanded(
            child: ListView(
              children: const [
                // Notification 1
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/profile/prof1.jpg'),
                  ),
                  title: Text(
                    'TV Patrol! Isang bata PATAY, sinaksak ng sariling ama na tinatawag nilang si alyas JUCABAN!.',
                  ),
                  subtitle: Text('16h'),
                  trailing: Icon(Icons.more_vert),
                ),

                Divider(),

                // Notification 2
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/profile/prof2.jpg'),
                  ),
                  title: Text('John Kyle Jucaban posted a new reel : "Ako ay isang gangster na malakas ang amats ng etits.'),
                  subtitle: Text('20h'),
                  trailing: Icon(Icons.more_vert),
                ),

                // Notification 3
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/profile/prof3.jpg'),
                  ),
                  title: Text(
                    'John Kyle Jucaban posted a new reel: "Saludo ako sa lamok, handang mamatay matikman lang ako hehe:3."',
                  ),
                  subtitle: Text('2h'),
                  trailing: Icon(Icons.more_vert),
                ),

                Divider(),

                // --- Section: Earlier ---
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Text('Earlier'),
                ),

                // Notification 4
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/profile/prof4.jpg'),
                  ),
                  title: Text(
                    '9GAG posted a new reel: "White cat licks black cat".',
                  ),
                  subtitle: Text('1d'),
                  trailing: Icon(Icons.more_vert),
                ),

                // Notification 5
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/profile/prof5.jpg'),
                  ),
                  title: Text(
                    'LADbible posted a new reel: "Cat saves baby from a wild leopard 🐆".',
                  ),
                  subtitle: Text('2d'),
                  trailing: Icon(Icons.more_vert),
                ),
              ],
            ),
          ),

          // Bottom Button
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: TextButton(
                onPressed: () {},
                child: const Text('See previous notifications'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
