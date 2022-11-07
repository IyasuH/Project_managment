import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  bool isSwitchedNotif = false;
  bool isSwitchedTheme = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 18, 15, 7),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  'My Profile',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Icon(Icons.qr_code_scanner_rounded)
              ],
            ),
            Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                CircleAvatar(
                  radius: 45.0,
                  backgroundImage: const AssetImage('assets/images/Hannah.jpg'),
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    height: 28,
                    width: 28,
                    margin: const EdgeInsets.fromLTRB(65, 63, 0, 0),
                    // padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 1.05,
                        ),
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(14)),
                    child:
                        const Icon(Icons.grade_outlined, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 17),
                const Text(
                  'Hannah Martin',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Aerospace engineer',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                Text(
                  'My Activity',
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 5),
              // color: Colors.grey,
              height: 155,
              decoration: BoxDecoration(
                color: const Color.fromARGB(223, 233, 231, 231),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 11.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(
                            Icons.circle,
                            size: 10,
                            color: Colors.green,
                          ),
                        ),
                        Text('Completed'),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(
                            Icons.circle,
                            size: 10,
                            color: Colors.amber,
                          ),
                        ),
                        Text('In progress'),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(
                            Icons.circle,
                            size: 10,
                            color: Colors.black,
                          ),
                        ),
                        Text('Upcoming'),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 3),
              height: 65,
              decoration: BoxDecoration(
                color: const Color.fromARGB(223, 233, 231, 231),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(
                      Icons.person_outlined,
                      size: 30,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Personal Information',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 3),
              height: 65,
              decoration: BoxDecoration(
                color: const Color.fromARGB(223, 233, 231, 231),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(
                      Icons.notifications_outlined,
                      size: 30,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Notifications',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(153, 20, 0, 20),
                      child: Switch(
                          value: isSwitchedNotif,
                          activeTrackColor: Colors.amber,
                          inactiveTrackColor: Colors.grey,
                          activeColor: Colors.white,
                          onChanged: (value) {
                            setState(
                              () {
                                isSwitchedNotif = value;
                              },
                            );
                          }),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 3),
              height: 65,
              decoration: BoxDecoration(
                color: const Color.fromARGB(223, 233, 231, 231),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(
                      Icons.wb_sunny_outlined,
                      size: 30,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Theme',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(195, 20, 0, 20),
                      child: Switch(
                          value: isSwitchedTheme,
                          activeTrackColor: Colors.amber,
                          inactiveTrackColor: Colors.grey,
                          activeColor: Colors.white,
                          onChanged: (value) {
                            setState(
                              () {
                                isSwitchedTheme = value;
                              },
                            );
                          }),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 3),
              height: 65,
              decoration: BoxDecoration(
                color: const Color.fromARGB(223, 233, 231, 231),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(
                      Icons.live_help_outlined,
                      size: 30,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Help & Support',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 3),
              height: 65,
              decoration: BoxDecoration(
                color: const Color.fromARGB(223, 233, 231, 231),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(
                      Icons.logout_rounded,
                      size: 30,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Log Out',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
