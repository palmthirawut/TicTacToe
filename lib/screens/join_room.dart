import 'package:flutter/material.dart';
import 'package:tictactoe/responsive/responsive.dart';
import 'package:tictactoe/utils/colors.dart';
import 'package:tictactoe/widgets/custom_button.dart';
import 'package:tictactoe/widgets/custom_text.dart';
import 'package:tictactoe/widgets/custom_textfield.dart';

class JoinRoom extends StatefulWidget {
  static String routeName = '/join';
  const JoinRoom({super.key});

  @override
  State<JoinRoom> createState() => _JoinRoomState();
}

class _JoinRoomState extends State<JoinRoom> {
  final TextEditingController _gameIdController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
          child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomText(
              shadows: [
                Shadow(
                  blurRadius: 40,
                  color: boxColor,
                ),
              ],
              text: 'Join Room',
              fontSize: 70,
            ),
            SizedBox(height: size.height * 0.08),
            CustomTextField(
              controller: _nameController,
              hintText: 'Enter your nickname',
            ),
            const SizedBox(height: 20),
            CustomTextField(
              controller: _gameIdController,
              hintText: 'Enter Game ID',
            ),
            SizedBox(height: size.height * 0.045),
            CustomButton(
              onTap: () {},
              text: 'Join',
            ),
          ],
        ),
      )),
    );
  }
}
