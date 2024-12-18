import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const colorBackground = Color(0xff039EA2);
    const ColorButton2 = Color(0xffCDFDFE);
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          backgroundColor: colorBackground,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 120),
                  child: Center(
                    child: Image.asset('assets/medinow.png'),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 75.0, top: 21),
                  child: Center(
                    child: Text(
                      "Meditate With Us!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: "PlusJakartaSans",
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: ElevatedButton(
                    onPressed: () => null,
                    child: const Padding(
                      padding: EdgeInsets.all(14.0),
                      child: Text("Sign in with Apple",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "PlusJakartaSans",
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: const StadiumBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 12),
                  child: ElevatedButton(
                    onPressed: () => null,
                    child: const Padding(
                      padding: EdgeInsets.all(14.0),
                      child: Text("Continue with Email or Phone",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "PlusJakartaSans",
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorButton2,
                      shape: const StadiumBorder(),
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () => null,
                    child: const Text(
                      "Continue With Google",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "PlusJakartaSans",
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset("assets/meditate.png"),
                  ),
                )
              ],
            ),
          )),
    );
  }
}

class Screen21 extends StatelessWidget {
  const Screen21({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: Screen2(),
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<String> ListUp = [
      'All',
      'Bible in a Year',
      'Dailies',
      'Minutes',
      'November'
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Meditate",
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              ),
            )
          ],
          elevation: 5,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: SizedBox(
                  height: 30,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: ListUp.length,
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 5,
                    ),
                    itemBuilder: ((context, index) {
                      return ChoiceChip(
                          selectedColor: const Color.fromRGBO(3, 158, 162, 1),
                          disabledColor: const Color.fromRGBO(230, 254, 255, 1),
                          label: Text(
                            ListUp[index],
                            style: TextStyle(
                                color: index == 0
                                    ? const Color.fromARGB(255, 255, 255, 255)
                                    : const Color.fromRGBO(3, 158, 162, 1)),
                          ),
                          selected: index == 0);
                    }),
                  ),
                ),
              ),
              SizedBox(
                child: Transform.scale(
                  scale: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(25)),
                          child: Image.asset("assets/verstka2.1.png"),
                        ),
                        Card(
                          elevation: 0,
                          color: Theme.of(context).scaffoldBackgroundColor,
                          margin: const EdgeInsets.all(0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10.0, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "A song of moon",
                                      maxLines: 1,
                                      overflow: TextOverflow.fade,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Start with basics",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 20),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10),
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.favorite_border,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "9 sessions",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Spacer(),
                                    Text(
                                      "Start",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 10,
                                      color: Colors.grey,
                                    )
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
              ),
              Row(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.26,
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Transform.scale(
                      scale: 0.9,
                      child: Padding(
                        padding: const EdgeInsets.all(0),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(25)),
                              child: Image.asset("assets/verstka2.2.png"),
                            ),
                            Card(
                              elevation: 0,
                              color: Theme.of(context).scaffoldBackgroundColor,
                              margin: const EdgeInsets.all(0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0, top: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "The sleep hour",
                                          maxLines: 1,
                                          overflow: TextOverflow.fade,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Asha Mukhereje",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 15),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 10),
                                    child: Row(
                                      children: const [
                                        Icon(
                                          Icons.favorite_border,
                                          color: Colors.grey,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "3 sessions",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        Spacer(),
                                        Text(
                                          "Start",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          size: 10,
                                          color: Colors.grey,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.26,
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Transform.scale(
                      scale: 0.9,
                      child: Padding(
                        padding: const EdgeInsets.all(0),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(25)),
                                child: Image.asset("assets/verstka2.3.png"),
                              ),
                              Card(
                                elevation: 0,
                                color: Theme.of(context).scaffoldBackgroundColor,
                                margin: const EdgeInsets.all(0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10.0, top: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            "Easy on the Mission",
                                            maxLines: 1,
                                            overflow: TextOverflow.fade,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Peter Mach",
                                            style: TextStyle(
                                                color: Colors.grey, fontSize: 15),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10.0, horizontal: 10),
                                      child: Row(
                                        children: const [
                                          Icon(
                                            Icons.favorite_border,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "5 minutes",
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                          Spacer(),
                                          Text(
                                            "Start",
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios,
                                            size: 10,
                                            color: Colors.grey,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.26,
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Transform.scale(
                      scale: 0.9,
                      child: Padding(
                        padding: const EdgeInsets.all(0),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(25)),
                                child: Image.asset("assets/verstka2.4.png"),
                              ),
                              Card(
                                elevation: 0,
                                color: Theme.of(context).scaffoldBackgroundColor,
                                margin: const EdgeInsets.all(0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10.0, top: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            "Sun and Energy",
                                            maxLines: 1,
                                            overflow: TextOverflow.fade,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Micheal Hiu",
                                            style: TextStyle(
                                                color: Colors.grey, fontSize: 15),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10.0, horizontal: 10),
                                      child: Row(
                                        children: const [
                                          Icon(
                                            Icons.favorite_border,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "3 sessions",
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                          Spacer(),
                                          Text(
                                            "Start",
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios,
                                            size: 10,
                                            color: Colors.grey,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.26,
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Transform.scale(
                      scale: 0.9,
                      child: Padding(
                        padding: const EdgeInsets.all(0),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(25)),
                                child: Image.asset("assets/verstka2.5.png"),
                              ),
                              Card(
                                elevation: 0,
                                color: Theme.of(context).scaffoldBackgroundColor,
                                margin: const EdgeInsets.all(0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10.0, top: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            "Relax with Me",
                                            maxLines: 1,
                                            overflow: TextOverflow.fade,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Amanda James",
                                            style: TextStyle(
                                                color: Colors.grey, fontSize: 15),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10.0, horizontal: 10),
                                      child: Row(
                                        children: const [
                                          Icon(
                                            Icons.favorite_border,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "5 minutes",
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                          Spacer(),
                                          Text(
                                            "Start",
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios,
                                            size: 10,
                                            color: Colors.grey,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    const colorBackground = Colors.white;
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: colorBackground,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 50, right: 25, left: 25, bottom: 15),
                child: Center(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(25)),
                    child: Image.asset('assets/verstka_3.1.png'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25, left: 25),
                child: Text(
                  "Peter Mach",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 17,
                    fontFamily: "PlusJakartaSans",
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 25, left: 25, top: 5),
                child: Text(
                  "Mind Deep Relax",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: "PlusJakartaSans",
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 25, left: 25, top: 10),
                child: Text(
                  "Join the Community as we prepare over 33 days to relax and feel joy with the mind and happnies session across the World.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: "PlusJakartaSans",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25, left: 25, top: 20),
                child: ElevatedButton(
                  onPressed: () => null,
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: const Color(0xff039EA2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/shape.png'),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text("Play Next Session",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "PlusJakartaSans",
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                            )),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25, left: 25, top: 20),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  title: const Text(
                    "Sweet Memories",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text(
                    'December 29 Pre-Launch',
                    style: TextStyle(color: Colors.grey),
                  ),
                  trailing: const Icon(
                    Icons.more_horiz,
                    size: 28,
                  ),
                  leading: SizedBox.square(
                    dimension: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(0),
                          backgroundColor: const Color(0xff2F80ED),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14)))),
                      onPressed: () => null,
                      child: Image.asset('assets/shape.png'),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 25, left: 25, top: 10),
                child: Divider(
                  height: 5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25, left: 25, top: 5),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  title: const Text(
                    "A Day Dream",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text(
                    'December 29 Pre-Launch',
                    style: TextStyle(color: Colors.grey),
                  ),
                  trailing: const Icon(
                    Icons.more_horiz,
                    size: 28,
                  ),
                  leading: SizedBox.square(
                    dimension: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(0),
                          backgroundColor: const Color(0xff039EA2),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14)))),
                      onPressed: () => null,
                      child: Image.asset('assets/shape.png'),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 25, left: 25, top: 10),
                child: Divider(
                  height: 5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25, left: 25, top: 5),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  title: const Text(
                    "Mind Explore",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text(
                    'December 29 Pre-Launch',
                    style: TextStyle(color: Colors.grey),
                  ),
                  trailing: const Icon(
                    Icons.more_horiz,
                    size: 28,
                  ),
                  leading: SizedBox.square(
                    dimension: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(0),
                          backgroundColor: const Color(0xffF09235),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14)))),
                      onPressed: () => null,
                      child: Image.asset('assets/shape.png'),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 25, left: 25, top: 5),
                child: Divider(
                  height: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
