import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Hi, Satish!",
            style: GoogleFonts.josefinSans(
              color: Colors.grey[700],
              fontSize: 20,
            ),
          ),
          centerTitle: false,
          actions: [
            Icon(
              Icons.search,
              color: Colors.grey[900],
              size: 20,
            ),
            const SizedBox(
              width: 10,
            ),
            Icon(
              Icons.more_vert,
              color: Colors.grey[900],
              size: 22,
            )
          ],
          bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.blue[900],
              tabs: [
                Tab(
                  child: Container(
                    height: 30,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[100]!,
                              blurRadius: 5,
                              spreadRadius: 2)
                        ]),
                    child: Text(
                      "All",
                      style: GoogleFonts.josefinSans(
                          color: Colors.blue[900],
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    height: 30,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[100]!,
                              blurRadius: 5,
                              spreadRadius: 2)
                        ]),
                    child: Text(
                      "Completed",
                      style: GoogleFonts.josefinSans(
                          color: Colors.blue[900],
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    height: 30,
                    width: 90,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[100]!,
                              blurRadius: 5,
                              spreadRadius: 2)
                        ]),
                    child: Text(
                      "OnGoing",
                      style: GoogleFonts.josefinSans(
                          color: Colors.blue[900],
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    height: 30,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[100]!,
                              blurRadius: 5,
                              spreadRadius: 2)
                        ]),
                    child: Text(
                      "Pending",
                      style: GoogleFonts.josefinSans(
                          color: Colors.blue[900],
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    height: 30,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[100]!,
                              blurRadius: 5,
                              spreadRadius: 2)
                        ]),
                    child: Text(
                      "Shelved",
                      style: GoogleFonts.josefinSans(
                          color: Colors.blue[900],
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ]),
        ),
        body: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(12.0),
          child: TabBarView(
            children: [all(), complted(), ongoing(), pending(), shelved()],
          ),
        ),
      ),
    );
  }
}

all() {
  return ListView(children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Progress",
          style: GoogleFonts.josefinSans(
              color: Colors.grey[900],
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
        Text(
          "View all",
          style: GoogleFonts.josefinSans(
              color: Colors.blue[900],
              fontSize: 12,
              fontWeight: FontWeight.w600),
        )
      ],
    ),
    const SizedBox(
      height: 10,
    ),
    SizedBox(
      height: 180,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: const EdgeInsets.all(5),
            height: 150,
            width: 130,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.green[50]!,
                    Colors.blue[50]!,
                  ],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(1.0, 0.0),
                  stops: const [0.0, 1.0],
                  tileMode: TileMode.clamp),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.done_all,
                          size: 20,
                          color: Colors.green[700],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Completed \ntasks",
                      style: GoogleFonts.josefinSans(
                          color: Colors.green[700],
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 30,
                    width: 110,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.green[50]!,
                            Colors.red[50]!,
                          ],
                          begin: const FractionalOffset(0.0, 0.0),
                          end: const FractionalOffset(1.0, 0.0),
                          stops: const [0.0, 1.0],
                          tileMode: TileMode.clamp),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 5),
                          height: 20,
                          width: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            "See more",
                            style: GoogleFonts.josefinSans(
                                color: Colors.green[700],
                                fontSize: 8,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.red[100],
                                size: 10,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.red[300],
                                size: 11,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.red[500],
                                size: 12,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(5),
            height: 150,
            width: 130,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.blue[50]!,
                      Colors.red[50]!,
                    ],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(1.0, 0.0),
                    stops: const [0.0, 1.0],
                    tileMode: TileMode.clamp),
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.directions_run,
                          size: 20,
                          color: Colors.blue[700],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "On Going \nTaks",
                      style: GoogleFonts.josefinSans(
                          color: Colors.blue[700],
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 30,
                    width: 110,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.blue[50]!,
                            Colors.green[50]!,
                          ],
                          begin: const FractionalOffset(0.0, 0.0),
                          end: const FractionalOffset(1.0, 0.0),
                          stops: const [0.0, 1.0],
                          tileMode: TileMode.clamp),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 5),
                          height: 20,
                          width: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            "See more",
                            style: GoogleFonts.josefinSans(
                                color: Colors.blue[700],
                                fontSize: 8,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.cyan[100],
                                size: 10,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.cyan[300],
                                size: 11,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.cyan[500],
                                size: 12,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(5),
            height: 150,
            width: 130,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.red[50]!,
                      Colors.cyan[50]!,
                    ],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(1.0, 0.0),
                    stops: const [0.0, 1.0],
                    tileMode: TileMode.clamp),
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.pending_actions,
                          size: 20,
                          color: Colors.redAccent,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Pending \nTasks",
                      style: GoogleFonts.josefinSans(
                          color: Colors.redAccent,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 30,
                    width: 110,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.red[50]!,
                            Colors.amber[50]!,
                          ],
                          begin: const FractionalOffset(0.0, 0.0),
                          end: const FractionalOffset(1.0, 0.0),
                          stops: const [0.0, 1.0],
                          tileMode: TileMode.clamp),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 5),
                          height: 20,
                          width: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            "See more",
                            style: GoogleFonts.josefinSans(
                                color: Colors.redAccent,
                                fontSize: 8,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.blue[100],
                                size: 10,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.blue[300],
                                size: 11,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.blue[500],
                                size: 12,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ),
    const SizedBox(
      height: 10,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Departments",
          style: GoogleFonts.josefinSans(
              color: Colors.grey[900],
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
        const Icon(Icons.more_horiz)
      ],
    ),
    const SizedBox(
      height: 5,
    ),
    Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(color: Colors.blue[50]!),
          boxShadow: [
            BoxShadow(color: Colors.grey[100]!, blurRadius: 5, spreadRadius: 1)
          ]),
      child: ListTile(
        leading: Lottie.asset("assets/ui.json"),
        title: Text(
          "Design",
          style: GoogleFonts.josefinSans(
              color: Colors.grey[900],
              fontSize: 12,
              fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          "UI/UX Development \n\nTotal 12 modules",
          style: GoogleFonts.josefinSans(
              color: Colors.grey[900],
              fontSize: 10,
              fontWeight: FontWeight.w400),
        ),
        isThreeLine: true,
        trailing: Column(
          children: [
            CircularStepProgressIndicator(
                totalSteps: 100,
                currentStep: 80,
                stepSize: 5,
                selectedColor: Colors.blueAccent,
                unselectedColor: Colors.blue[50],
                padding: 0,
                width: 50,
                height: 50,
                selectedStepSize: 5,
                // arcSize: math.pi * 2 / 3 * 2,
                roundedCap: (_, __) => true,
                child: Center(
                    child: Text(
                  "80%",
                  style: GoogleFonts.josefinSans(
                      color: Colors.grey[900],
                      fontSize: 10,
                      fontWeight: FontWeight.w400),
                ))),
          ],
        ),
      ),
    ),
    const SizedBox(
      height: 5,
    ),
    Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(color: Colors.amber[50]!),
          boxShadow: [
            BoxShadow(color: Colors.grey[100]!, blurRadius: 5, spreadRadius: 1)
          ]),
      child: ListTile(
        leading: Lottie.asset("assets/server.json"),
        title: Text(
          "Backend",
          style: GoogleFonts.josefinSans(
              color: Colors.grey[900],
              fontSize: 12,
              fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          "Node.js and Solidity \n\nTotal 12 modules",
          style: GoogleFonts.josefinSans(
              color: Colors.grey[900],
              fontSize: 10,
              fontWeight: FontWeight.w400),
        ),
        isThreeLine: true,
        trailing: Column(
          children: [
            CircularStepProgressIndicator(
                totalSteps: 100,
                currentStep: 59,
                stepSize: 5,
                selectedColor: Colors.amber,
                unselectedColor: Colors.amber[50],
                padding: 0,
                width: 50,
                height: 50,
                selectedStepSize: 5,
                // arcSize: math.pi * 2 / 3 * 2,
                roundedCap: (_, __) => true,
                child: Center(
                    child: Text(
                  "59%",
                  style: GoogleFonts.josefinSans(
                      color: Colors.grey[900],
                      fontSize: 10,
                      fontWeight: FontWeight.w400),
                ))),
          ],
        ),
      ),
    ),
    const SizedBox(
      height: 5,
    ),
    Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(color: Colors.pink[50]!),
          boxShadow: [
            BoxShadow(color: Colors.grey[100]!, blurRadius: 5, spreadRadius: 1)
          ]),
      child: ListTile(
        leading: Lottie.asset("assets/web.json"),
        title: Text(
          "Web",
          style: GoogleFonts.josefinSans(
              color: Colors.grey[900],
              fontSize: 12,
              fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          "Web development \n\nTotal 12 modules",
          style: GoogleFonts.josefinSans(
              color: Colors.grey[900],
              fontSize: 10,
              fontWeight: FontWeight.w400),
        ),
        isThreeLine: true,
        trailing: Column(
          children: [
            CircularStepProgressIndicator(
                totalSteps: 100,
                currentStep: 34,
                stepSize: 5,
                selectedColor: Colors.pinkAccent,
                unselectedColor: Colors.pink[50],
                padding: 0,
                width: 50,
                height: 50,
                selectedStepSize: 5,
                // arcSize: math.pi * 2 / 3 * 2,
                roundedCap: (_, __) => true,
                child: Center(
                    child: Text(
                  "34%",
                  style: GoogleFonts.josefinSans(
                      color: Colors.grey[900],
                      fontSize: 10,
                      fontWeight: FontWeight.w400),
                ))),
          ],
        ),
      ),
    ),
    const SizedBox(
      height: 5,
    ),
    Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(color: Colors.green[50]!),
          boxShadow: [
            BoxShadow(color: Colors.grey[100]!, blurRadius: 5, spreadRadius: 1)
          ]),
      child: ListTile(
        leading: Lottie.asset("assets/mobile.json"),
        title: Text(
          "Mobile",
          style: GoogleFonts.josefinSans(
              color: Colors.grey[900],
              fontSize: 12,
              fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          "Android & IOS Development \n\nTotal 12 modules",
          style: GoogleFonts.josefinSans(
              color: Colors.grey[900],
              fontSize: 10,
              fontWeight: FontWeight.w400),
        ),
        isThreeLine: true,
        trailing: Column(
          children: [
            CircularStepProgressIndicator(
                totalSteps: 100,
                currentStep: 27,
                stepSize: 5,
                selectedColor: Colors.greenAccent,
                unselectedColor: Colors.green[50],
                padding: 0,
                width: 50,
                height: 50,
                selectedStepSize: 5,
                // arcSize: math.pi * 2 / 3 * 2,
                roundedCap: (_, __) => true,
                child: Center(
                    child: Text(
                  "27%",
                  style: GoogleFonts.josefinSans(
                      color: Colors.grey[900],
                      fontSize: 10,
                      fontWeight: FontWeight.w400),
                ))),
          ],
        ),
      ),
    ),
    const SizedBox(
      height: 10,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Free View",
          style: GoogleFonts.josefinSans(
              color: Colors.grey[900],
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
        const Icon(Icons.more_horiz)
      ],
    ),
    const SizedBox(
      height: 5,
    ),
    Container(
      height: 130,
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.orange[50]!),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey[100]!, blurRadius: 5, spreadRadius: 1)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircularStepProgressIndicator(
              totalSteps: 100,
              currentStep: 50,
              stepSize: 15,
              selectedColor: Colors.orangeAccent,
              unselectedColor: Colors.orange[50],
              padding: 0,
              width: 100,
              height: 100,
              selectedStepSize: 10,
              // arcSize: math.pi * 2 / 3 * 2,
              roundedCap: (_, __) => true,
              child: Center(
                  child: Text(
                "50%",
                style: GoogleFonts.josefinSans(
                    color: Colors.grey[900],
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ))),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Average Progress",
                style: GoogleFonts.josefinSans(
                    color: Colors.grey[900],
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "50.0",
                style: GoogleFonts.josefinSans(
                    color: Colors.orange,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "In 30 Days",
                style: GoogleFonts.josefinSans(
                    color: Colors.orange[200],
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              )
            ],
          )
        ],
      ),
    ),
    const SizedBox(
      height: 5,
    ),
    Container(
      height: 130,
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.red[50]!),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey[100]!, blurRadius: 5, spreadRadius: 1)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Great Progress",
                style: GoogleFonts.josefinSans(
                    color: Colors.grey[900],
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "27+",
                style: GoogleFonts.josefinSans(
                    color: Colors.redAccent,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "In 30 Days",
                style: GoogleFonts.josefinSans(
                    color: Colors.red[200],
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Lottie.asset("assets/graph.json"),
        ],
      ),
    )
  ]);
}

complted() {
  return const Center(child: Text("Completed"));
}

ongoing() {
  return const Center(child: Text("On Going"));
}

pending() {
  return const Center(child: Text("Pending"));
}

shelved() {
  return const Center(child: Text("Shelved"));
}
