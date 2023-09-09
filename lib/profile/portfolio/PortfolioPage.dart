import 'package:flutter/material.dart';
import 'package:virality_new/utilities/PortfolioTile.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  @override
  _PortfolioPageState createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottomOpacity: 0,
          elevation: 0,
          leading: BackButton(
            color: Colors.black,
          ),
        ),
        body: Container(
          padding: const EdgeInsets.fromLTRB(25, 60, 25, 25),
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Text(
                    "\u{20B9} 10272.90",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      inherit: false,
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "\u{20B9} 1406.77",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        inherit: false,
                        color: Colors.greenAccent,
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "+57.62 %",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        inherit: false,
                        color: Colors.greenAccent,
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      style: ButtonStyle(
                          minimumSize:
                              MaterialStateProperty.all(const Size(150, 40)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      side: const BorderSide(
                                          color: Colors.black)))),
                      child: const Text(
                        'Buy',
                        style: TextStyle(
                          inherit: false,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => const PortfolioPage()),
                        // );
                      },
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    TextButton(
                      style: ButtonStyle(
                          minimumSize:
                              MaterialStateProperty.all(const Size(150, 40)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      side: const BorderSide(
                                          color: Colors.black)))),
                      child: const Text(
                        'Sell',
                        style: TextStyle(
                          inherit: false,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => const PortfolioPage()),
                        // );
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "My Purchase",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    inherit: false,
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const PortfolioTile(),
                const PortfolioTile(),
                const PortfolioTile(),
                const PortfolioTile(),
                const PortfolioTile(),
                const PortfolioTile(),
                const PortfolioTile(),
                const PortfolioTile(),
              ],
            ),
          ),
        ));
  }
}
