import 'package:flutter/material.dart';
import 'package:myapp/pages/dictionary.dart';
import 'package:myapp/pages/timer.dart';
import 'package:myapp/pages/tournaments.dart';
import 'package:myapp/pages/home.dart';
import 'package:url_launcher/url_launcher.dart';

class Guide extends StatelessWidget {
  const Guide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Resources',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Resources',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timer),
            label: 'Timer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.abc),
            label: 'Dictionary',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_kabaddi_outlined),
            label: 'Tournaments',
          ),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const Home()));
              break;
            case 1:
              break;
            case 2:
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const Timer()));
              break;
            case 3:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Dictionary()));
              break;
            case 4:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Tournaments()));
              break;
          }
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'NSDA Guide',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'This is the best resource if you are just getting started with Congress. It teaches you absolutely everything you would need to know. Plus, it is the official guide published by the National Speech and Debate Association.',
              ),
              const SizedBox(height: 8),
              InkWell(
                onTap: () => launchUrl(Uri.parse(
                    'https://www.speechanddebate.org/wp-content/uploads/2017-Congressional-Debate-Guide.pdf')),
                child: const Text(
                  'https://www.speechanddebate.org/wp-content/uploads/2017-Congressional-Debate-Guide.pdf',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'How To Congress YouTube Playlist',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'This is a YouTube playlist that covers everything you need to know and more. Specifically, it teaches you how you can start winning tournaments and how it actually feels to be a competitior. Although the videos are quite long, they are excellent if you would like to start winning.',
              ),
              const SizedBox(height: 8),
              InkWell(
                onTap: () => launchUrl(Uri.parse(
                    'https://www.youtube.com/watch?v=XJ_CJ5-G3YE&list=PLtsLp1nqk_11nJrpsfWu5-mbLZuhqxbfx')),
                child: const Text(
                  'https://www.youtube.com/watch?v=XJ_CJ5-G3YE&list=PLtsLp1nqk_11nJrpsfWu5-mbLZuhqxbfx',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
