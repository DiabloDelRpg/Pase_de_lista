import 'package:flutter/material.dart';
import 'package:pase_de_lista/code.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key, required this.title});

  final String title;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1, 
            child: Center(
              child: Image.asset(
                'images/mifoto.png',
                 height: 300, 
                 width: 300,
              ),
            ),
          ),
          Expanded(
            flex: 1, 
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20), 
              child: Column( 
                mainAxisAlignment: MainAxisAlignment.center, 
                children: <Widget>[
                  Text(
                    'German',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: const [
                      Icon(Icons.numbers, size: 20),
                      SizedBox(width: 10), 
                      Text(
                        '23311015',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(Icons.email, size: 20),
                      SizedBox(width: 10),
                      Text(
                        'a23311015@uthermosillo.edu.mx',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(Icons.phone, size: 20),
                      SizedBox(width: 10),
                      Text(
                        '(662) 2828035',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(Icons.room, size: 20),
                      SizedBox(width: 10),
                      Text(
                        'TICDSM 5-1',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: ElevatedButton(
            child: Icon(Icons.person),
            onPressed: () {
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context) => 
                  const CodePage(title: "Codigo QR"),
                  ),
                );
             },
           ),
          label: "Perfil", ),
        
        
        
        
        BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: "Código"),
      ]),
    );
  }
}
