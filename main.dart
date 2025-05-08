import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black87,
          appBar: AppBar(
            backgroundColor: Colors.black87,
            title: const Text(
              "Profile",

              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Center(
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                        "https://media-maa2-2.cdn.whatsapp.net/v/t61.24694-24/350857891_796150928731664_4059860438460483203_n.jpg?ccb=11-4&oh=01_Q5Aa1QEdqvRKczNMo7L3xIZNfDtAvcMb9nnI2ivbX0Dw8f5DQw&oe=681ECD11&_nc_sid=5e03e0&_nc_cat=111",
                      ),
                    ),
                    Container(
                      width: 36,
                      height: 36,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.camera_alt_outlined,
                          size: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView(
                  children: const [
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Icon(Icons.person,color: Colors.grey,)),
                      title: Text("Name",
                      style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text("Dotee",style: TextStyle(color: Colors.grey),),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.transparent,
                          child: Icon(Icons.info_outline,color: Colors.grey,)),
                      title: Text("About",style: TextStyle(color: Colors.white),),
                      subtitle: Text("Nothing...",style: TextStyle(color: Colors.grey),),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Icon(Icons.phone,color: Colors.grey,)),
                      title: Text("Phone",style: TextStyle(color: Colors.white),),
                      subtitle: Text("+91 88485 36291",style: TextStyle(color: Colors.grey),),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}

