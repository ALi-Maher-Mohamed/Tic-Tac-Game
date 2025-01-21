import 'package:flutter/material.dart';

import '../widgets/home_footer.dart';
import '../widgets/home_header.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool ohTurn = true;
  int filledBoxes = 0;
  int ohScore = 0, exScore = 0;
  List<String> showExOh = ['', '', '', '', '', '', '', '', ''];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1D1D1D),
        body: Column(children: [
          HomeHeaders(ohTurn: ohTurn),
          Expanded(
            flex: 5,
            child: GridView.builder(
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    _tap(index);
                  },
                  child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          showExOh[index],
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      )),
                );
              },
              itemCount: 9,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
            ),
          ),
          HomeFooter(ohScore: ohScore, exScore: exScore),
          Expanded(
              flex: 1,
              child: TextButton(
                  onPressed: () => _resetScore(),
                  child: Text('Reset Score',
                      style: TextStyle(color: Colors.white, fontSize: 30))))
        ]));
  }

  void _tap(int index) {
    setState(() {
      if (ohTurn && showExOh[index] == '') {
        showExOh[index] = 'O';
        filledBoxes++;
      } else if (!ohTurn && showExOh[index] == '') {
        showExOh[index] = 'X';
        filledBoxes++;
      }
      ohTurn = !ohTurn;
      _checkWin();
    });
  }

  void _checkWin() {
    if (showExOh[0] == showExOh[1] &&
        showExOh[0] == showExOh[2] &&
        showExOh[0] != '') {
      _displayWin(showExOh[0]);
    }
    if (showExOh[3] == showExOh[4] &&
        showExOh[3] == showExOh[5] &&
        showExOh[3] != '') {
      _displayWin(showExOh[3]);
    }
    if (showExOh[6] == showExOh[7] &&
        showExOh[6] == showExOh[8] &&
        showExOh[6] != '') {
      _displayWin(showExOh[6]);
    }
    if (showExOh[0] == showExOh[3] &&
        showExOh[0] == showExOh[6] &&
        showExOh[0] != '') {
      _displayWin(showExOh[0]);
    }
    if (showExOh[1] == showExOh[4] &&
        showExOh[1] == showExOh[7] &&
        showExOh[1] != '') {
      _displayWin(showExOh[1]);
    }
    if (showExOh[2] == showExOh[5] &&
        showExOh[2] == showExOh[8] &&
        showExOh[2] != '') {
      _displayWin(showExOh[2]);
    }
    if (showExOh[0] == showExOh[4] &&
        showExOh[0] == showExOh[8] &&
        showExOh[0] != '') {
      _displayWin(showExOh[0]);
    }
    if (showExOh[2] == showExOh[4] &&
        showExOh[2] == showExOh[6] &&
        showExOh[2] != '') {
      _displayWin(showExOh[2]);
    } else if (filledBoxes == 9) {
      _displayDraw();
    }
  }

  void _displayDraw() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Text('Draw'),
        actions: [
          TextButton(
            child: const Text('Play Again'),
            onPressed: () {
              _clearBoard();
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }

  void _displayWin(String winner) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Text('Winner is : $winner'),
        actions: [
          TextButton(
            child: const Text('Play Again'),
            onPressed: () {
              _clearBoard();
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );

    if (winner == 'O') {
      ohScore++;
    } else if (winner == 'X') {
      exScore++;
    }
  }

  void _clearBoard() {
    setState(() {
      showExOh = ['', '', '', '', '', '', '', '', ''];
    });
    filledBoxes = 0;
  }

  void _resetScore() {
    setState(() {
      ohScore = 0;
      exScore = 0;
    });
  }
}
