import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String title;
  const HomeScreen({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment : MainAxisAlignment.center,
          crossAxisAlignment : CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text('Click Me'),
              onPressed: () => showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('AlertDialog'),
                      content: const Text('This is a simple alert dailog box'),
                      actions: [
                        ElevatedButton(
                          onPressed: ()=>Navigator.pop(context),
                          child: const Text('OK'),
                        )
                      ],
                      backgroundColor: const Color.fromARGB(255, 180, 110, 110),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
