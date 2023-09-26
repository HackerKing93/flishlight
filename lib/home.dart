import 'package:flutter/material.dart';
import 'package:torch_light/torch_light.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var isON = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlashLight App'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/image/img.jpg'), fit: BoxFit.cover)),
        child: Center(
          child: Transform.rotate(
            angle: -3.14 / 2,
            child: Transform.scale(
              scale: 3.0,
              child: Switch(
                  value: isON,
                  onChanged: (value) {
                    setState(() {
                      isON = !isON;
                      isON
                          ? TorchLight.enableTorch()
                          : TorchLight.disableTorch();
                    });
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
