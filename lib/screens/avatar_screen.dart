import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tu Avatar'),
        actions: [
          Container(
            margin: const EdgeInsets.only(
              right: 10,
            ),
            child: CircleAvatar(
              backgroundColor: Colors.brown[900],
              child: const Text('MF'),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://resizer.glanacion.com/resizer/nozZFd8Z8M3DNqqxsSN5w_eHYds=/310x0/filters:format(webp):quality(80)/cloudfront-us-east-1.images.arcpublishing.com/lanacionar/XHONLKXN4BGNDDZU625RTWDZ3A.png'),
          maxRadius: 100,
        ),
      ),
    );
  }
}
