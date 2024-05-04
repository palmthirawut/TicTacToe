import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tictactoe/provider/room_data_provider.dart';
import 'package:tictactoe/resources/socket_method.dart';
import 'package:tictactoe/responsive/responsive.dart';
import 'package:tictactoe/view/scoreboard.dart';
import 'package:tictactoe/view/tictactoe_board.dart';
import 'package:tictactoe/view/waiting_lobby.dart';

class GameRoom extends StatefulWidget {
  static String routeName = '/game';
  const GameRoom({super.key});

  @override
  State<GameRoom> createState() => _GameRoomState();
}

class _GameRoomState extends State<GameRoom> {
  final SocketMethod _socketMethods = SocketMethod();

  @override
  void initState() {
    super.initState();
    _socketMethods.updateRoomListener(context);
    _socketMethods.updatePlayersStateListener(context);
    _socketMethods.pointIncreaseListener(context);
    _socketMethods.endGameListener(context);
  }

  @override
  Widget build(BuildContext context) {
    RoomDataProvider roomDataProvider = Provider.of<RoomDataProvider>(context);

    return Scaffold(
      body: roomDataProvider.roomData['isJoin']
          ? Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: const WaitingLobby())
          : SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Scoreboard(),
                  const TicTacToeBoard(),
                  Text(
                      '${roomDataProvider.roomData['turn']['nickname']}\'s turn'),
                ],
              ),
            ),
    );
  }
}
