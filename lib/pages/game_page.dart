import 'package:flutter/material.dart';
import 'package:flutter_app2/utilities/drawer.dart';

class GamePage extends StatefulWidget {
  final String p1;
  GamePage({required this.p1}) {
    print(p1);
  }

  @override
  State<StatefulWidget> createState() {
    print(p1);
    return _GamePageState();
  }
}

class _GamePageState extends State<GamePage> {
  List<String> Display = ['', '', '', '', '', '', '', '', ''];
  bool initial_display = true;
  int winO_score = 0;
  int winX_score = 0;
  int display_filled = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text("Lets Play!"),
      ),
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Expanded(
                child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    color: Colors.white,
                    // child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // children: [
                              //   Center(
                              //     child: Text(
                              //       "Player 'O'",
                              //       style: TextStyle(
                              //         color: Colors.deepOrange,
                              //         fontSize: 30,
                              //       ),
                              //     ),
                              //   ),
                              //   Text(
                              //     winO_score.toString(),
                              //     style: TextStyle(
                              //       color: (winO_score == winX_score)
                              //           ? Colors.yellow
                              //           : ((winO_score > winX_score)
                              //               ? Colors.green
                              //               : Colors.red),
                              //       fontSize: 30,
                              //     ),
                              //   ),
                              // ],
                              children: [
                                Text(
                                  "Player 'O'",
                                  style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 20,
                                  ),
                                ),
                                Center(
                                  // child: Text(

                                  //   style: TextStyle(
                                  //     color: Colors.deepOrange,
                                  //     fontSize: 20,
                                  //   ),
                                  // ),
                                  child: Text(
                                    "Name : Pawan",
                                    // p1,
                                    style: TextStyle(
                                      color: Colors.deepOrange,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Score : ",
                                      style: TextStyle(
                                        color: Colors.indigo,
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text(
                                      winO_score.toString(),
                                      style: TextStyle(
                                        color: (winO_score == winX_score)
                                            ? Colors.yellow
                                            : ((winO_score > winX_score)
                                                ? Colors.green
                                                : Colors.red),
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // children: [
                            //   Text(
                            //     "   Player 'X'",
                            //     style: TextStyle(
                            //       color: Colors.deepOrange,
                            //       fontSize: 30,
                            //     ),
                            //   ),
                            //   Text(
                            //   winX_score.toString(),
                            //   style: TextStyle(
                            //     color: (winO_score == winX_score)
                            //         ? Colors.yellow
                            //         : ((winO_score < winX_score)
                            //             ? Colors.green
                            //             : Colors.red),
                            //     fontSize: 30,
                            //   ),
                            // ),
                            // ],
                            children: [
                              Text(
                                "Player 'X'",
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontSize: 20,
                                ),
                              ),
                              Center(
                                child: Text(
                                  "Name : Rahul",
                                  style: TextStyle(
                                    color: Colors.deepOrange,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Score : ",
                                    style: TextStyle(
                                      color: Colors.indigo,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    winX_score.toString(),
                                    style: TextStyle(
                                      color: (winO_score == winX_score)
                                          ? Colors.yellow
                                          : ((winO_score < winX_score)
                                              ? Colors.green
                                              : Colors.red),
                                      fontSize: 20,
                                    ),
                                  ),
                                  // winX_score.toString(),
                                  // style: TextStyle(
                                  //   color: (winO_score == winX_score)
                                  //       ? Colors.yellow
                                  //       : ((winO_score > winX_score)
                                  //           ? Colors.green
                                  //           : Colors.red),
                                  //   fontSize: 20,
                                  // ),
                                  // ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        // Container(
                        //   child: Text(
                        //     "-----SCORECARD-----",
                        //     style: TextStyle(
                        //         backgroundColor: Colors.deepOrange,
                        //         color: Colors.white,
                        //         fontSize: 30),
                        //   ),
                        // ),
                      ],
                    ),
                    // )
                  ),
                ),
              ),
            )),
            Expanded(
              flex: 3,
              child: GridView.builder(
                  itemCount: 9,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        _tapped(index);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.deepOrange)),
                          child: Center(
                              child: Text(
                            Display[index],
                            style: TextStyle(
                              color: Colors.deepOrange,
                              fontSize: 30,
                            ),
                          )),
                        ),
                      ),
                    );
                  }),
            ),
            // Expanded(
            //     flex: 1,
            //     child: Container(
            //       color: Colors.white,
            //     )),
          ],
        ),
      ),
    );
  }

  //indices
  // 0  1  2
  // 3  4  5
  // 6  7  8

  void _tapped(int index) {
    setState(() {
      if (initial_display && Display[index] == '') {
        Display[index] = 'O';
        display_filled += 1;
      } else if (!initial_display && Display[index] == '') {
        Display[index] = 'X';
        display_filled += 1;
      }
      initial_display = !initial_display;
      _winner();
    });
  }

  void _winner() {
    int n = 0;
    // 1st row
    if (Display[0] == Display[1] &&
        Display[0] == Display[2] &&
        Display[0] != '') {
      n++;
      _showWinnerInfo(Display[0]);
    }

    // 2nd row
    if (Display[3] == Display[4] &&
        Display[3] == Display[5] &&
        Display[3] != '') {
      n++;
      _showWinnerInfo(Display[3]);
    }

    // 3rd row
    if (Display[6] == Display[7] &&
        Display[6] == Display[8] &&
        Display[6] != '') {
      n++;
      _showWinnerInfo(Display[6]);
    }

    // 1st column
    if (Display[0] == Display[3] &&
        Display[0] == Display[6] &&
        Display[0] != '') {
      n++;
      _showWinnerInfo(Display[0]);
    }

    // 2nd column
    if (Display[1] == Display[4] &&
        Display[1] == Display[7] &&
        Display[1] != '') {
      n++;
      _showWinnerInfo(Display[1]);
    }

    // 3rd column
    if (Display[2] == Display[5] &&
        Display[2] == Display[8] &&
        Display[2] != '') {
      n++;
      _showWinnerInfo(Display[2]);
    }

    // principal diaogonal
    if (Display[0] == Display[4] &&
        Display[0] == Display[8] &&
        Display[0] != '') {
      n++;
      _showWinnerInfo(Display[0]);
    }

    // alternate diaogonal
    if (Display[2] == Display[4] &&
        Display[2] == Display[6] &&
        Display[2] != '') {
      n++;
      _showWinnerInfo(Display[2]);
    }

    //if none won   - DRAW condition
    else if (display_filled == 9 && n == 0) {
      DisplayDrawScreen();
    }
  }

  void DisplayDrawScreen() {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.deepOrange,
            title: Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 8.0),
                    child: Center(
                      child: Text(
                        "Game Draw",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            actions: <Widget>[
              FlatButton(
                child: Center(
                  child: Text(
                    "Play Again",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                onPressed: () {
                  _clearScreen();
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }

  void _showWinnerInfo(String bajigar) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.deepOrange,
            title: Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 8.0),
                    child: Center(
                      child: Text(
                        "🥳Congratulatios🥳\nWinner is player " + bajigar,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                // ElevatedButton( child: Center(
                //   child: Text("Play Again",
                //       style: TextStyle(
                //       color: Colors.white,
                //       fontWeight: FontWeight.bold,
                //       ),
                //   ),
                // ),
                // onPressed: _clearScreen)
              ],
            ),
            actions: <Widget>[
              FlatButton(
                child: Center(
                  child: Text(
                    "Play Again",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                onPressed: () {
                  _clearScreen();
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
    if (bajigar == 'O') {
      winO_score += 1;
    } else if (bajigar == 'X') {
      winX_score += 1;
    }
  }

  void _clearScreen() {
    setState(() {
      for (int i = 0; i < 9; i++) {
        Display[i] = '';
      }
    });
    display_filled = 0;
  }
}
