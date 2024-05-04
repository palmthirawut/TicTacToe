import 'package:flutter/material.dart';
import 'package:tictactoe/responsive/responsive.dart';
import 'package:tictactoe/screens/create_room.dart';
import 'package:tictactoe/screens/join_room.dart';
import 'package:tictactoe/widgets/custom_button.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  static String routeName = '/';

  void createRoom(BuildContext context) {
    Navigator.pushNamed(context, CreateRoom.routeName);
  }

  void joinRoom(BuildContext context) {
    Navigator.pushNamed(context, JoinRoom.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Responsive(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            width < 600
                ? Image.asset(
                    'assets/tictactoe.png',
                    fit: BoxFit.fitWidth,
                    width: width * 0.6,
                  )
                : Image.asset(
                    'assets/tictactoe.png',
                    fit: BoxFit.fitWidth,
                    width: width * 0.2,
                  ),
            const SizedBox(height: 30),
            CustomButton(
              onTap: () => createRoom(context),
              text: 'Create Room',
            ),
            const SizedBox(height: 10),
            CustomButton(
              onTap: () => joinRoom(context),
              text: 'Join Room',
            ),
          ],
        ),
      ),
    );
  }
}
