import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tictactoe/provider/room_data_provider.dart';
import 'package:tictactoe/screens/create_room.dart';
import 'package:tictactoe/screens/game_room.dart';
import 'package:tictactoe/screens/join_room.dart';
import 'package:tictactoe/screens/main_manu.dart';
import 'package:tictactoe/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RoomDataProvider(),
      child: MaterialApp(
        title: 'TicTacToe',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: bgColor,
        ),
        routes: {
          MainMenu.routeName: (_) => const MainMenu(),
          JoinRoom.routeName: (_) => const JoinRoom(),
          CreateRoom.routeName: (_) => const CreateRoom(),
          GameRoom.routeName: (_) => const GameRoom()
        },
        initialRoute: MainMenu.routeName,
      ),
    );
  }
}
