import 'package:cl_draw/screens/settings_screen.dart';
import 'package:cl_draw/screens/tour_type_screen.dart';

import 'package:flutter/material.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Color buttonColor = Color.fromARGB(255, 15, 2, 20);
    return Container(
      // color: const Color.fromARGB(255, 113, 45, 58),
      color: Theme.of(context).primaryColor,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Ball Icon
            // const Icon(
            //   Icons.sports_soccer_sharp,
            //   color: Colors.black,
            //   size: 300,
            //   shadows: [
            //     Shadow(color: Colors.deepPurpleAccent, blurRadius: 300),
            //     Shadow(color: Colors.amberAccent, blurRadius: 300),
            //   ],
            // ),
            Image.asset('assets/images/cl.png'),
            Container(
              padding: const EdgeInsets.only(top: 50, bottom: 30),
              child: Text(
                'Football Draw Simulation',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              margin: const EdgeInsets.only(
                right: 50,
                left: 50,
              ),
              child: OutlinedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const TournamentTypeScreen();
                  }));
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: buttonColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  padding: const EdgeInsets.all(12),
                  foregroundColor: (Colors.white),
                ),
                icon: const Icon(Icons.play_arrow),
                label: const Text(
                  "Enter     ",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              margin: const EdgeInsets.only(
                right: 50,
                left: 50,
              ),
              child: OutlinedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const SettingsScreen();
                  }));
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: buttonColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  padding: const EdgeInsets.all(12),
                  foregroundColor: (Colors.white),
                ),
                icon: const Icon(Icons.settings),
                label: const Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
