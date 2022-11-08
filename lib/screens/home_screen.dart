import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_managment/models/projects_model.dart';
import 'package:project_managment/screens/daily_tasks.dart';
import 'package:project_managment/screens/messages.dart';
import 'package:project_managment/screens/new_project.dart';
import 'package:project_managment/widgets/home_tab.dart';

import 'my_profile.dart';

class ProjectsType extends StatefulWidget {
  const ProjectsType({super.key});

  @override
  State<ProjectsType> createState() => _ProjectsTypeState();
}

class _ProjectsTypeState extends State<ProjectsType> {
  @override
  Widget build(BuildContext context) {
    int upcomingP = 0;
    int inprogresP = 0;
    int completedP = 0;
    final inProgressLit =
        projects.where((element) => element.status == 'In progress');
    // ignore: unused_local_variable
    for (Project p in inProgressLit) {
      inprogresP += 1;
    }
    final upcomingLists =
        projects.where((element) => element.status == 'Upcoming');
    // ignore: unused_local_variable
    for (Project p in upcomingLists) {
      upcomingP += 1;
    }
    final completed =
        projects.where((element) => element.status == 'Completed');
    // ignore: unused_local_variable
    for (Project p in completed) {
      completedP += 1;
    }
    int totalP = 0;
    totalP = upcomingP + inprogresP + completedP;

    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.fromLTRB(7, 15, 7, 6),
          height: 80,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 232, 230, 230),
              borderRadius: BorderRadius.circular(16)),
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.motion_photos_on_outlined,
                    color: Colors.white,
                    size: 34,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 17.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Upcomings',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '$upcomingP Projects',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.fromLTRB(175, 20, 15, 20),
                child: const Icon(Icons.more_vert_rounded),
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 7),
          height: 80,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 254, 254, 239),
              borderRadius: BorderRadius.circular(16)),
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.amber,
                  child: Icon(
                    Icons.construction_rounded,
                    color: Colors.white,
                    size: 34,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 17.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'In progress',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '$inprogresP Projects',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.fromLTRB(175, 20, 15, 20),
                child: const Icon(Icons.more_vert_rounded),
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 7),
          height: 80,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 232, 230, 230),
              borderRadius: BorderRadius.circular(16)),
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.check_circle_outline_rounded,
                    color: Colors.white,
                    size: 34,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 17),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Completed',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '$completedP Projects',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.fromLTRB(175, 20, 15, 20),
                child: const Icon(Icons.more_vert_rounded),
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 7),
          height: 80,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 254, 254, 239),
              borderRadius: BorderRadius.circular(16)),
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.amber,
                  child: Icon(
                    Icons.data_usage_rounded,
                    color: Colors.white,
                    size: 34,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 17),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Total',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '$totalP Projects',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.fromLTRB(175, 20, 15, 20),
                child: const Icon(Icons.more_vert_rounded),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  String today = DateFormat("MMMM dd, EEEEE").format(DateTime.now());
  _searchContainer() {
    return Container(
      height: 40,
      margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 20.0),
      padding: const EdgeInsets.fromLTRB(10, 0, 0, 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              cursorHeight: 20.0,
              textCapitalization: TextCapitalization.sentences,
              onChanged: (value) {},
              style: const TextStyle(
                fontSize: 16,
              ),
              // ignore: prefer_const_constructors
              decoration: InputDecoration.collapsed(
                hintText: 'Search in your projects..',
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_rounded),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.fromLTRB(12, 14, 12, 7),
        children: <Widget>[
          Column(
            // ignore: prefer_const_constructors
            children: <Widget>[
              // ignore: prefer_const_constructors
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.menu_rounded, size: 28),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.crop_square_rounded, size: 28),
                    onPressed: () {},
                  ),
                ],
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 15.0,
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  const CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage('assets/images/Hannah.jpg'),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      // ignore: prefer_const_constructors
                      Text(
                        'Hey Hannah!',
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      // ignore: prefer_const_constructors
                      Text(
                        today,
                        style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  )
                ],
              ),
              // ignore: prefer_const_constructors
              _searchContainer(),
              // ignore: prefer_const_constructors
              MyProjectHome(),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Projects Status',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
              ProjectsType(),
            ],
          )
        ],
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentTab = 0;
  String today = DateFormat("MMMM dd, EEEEE").format(DateTime.now());
  final tabs = [
    HomeTab(),
    DailyTasks(),
    NewProject(),
    Message(),
    MyProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        iconSize: 28,
        onTap: (index) {
          setState(() {
            _currentTab = index;
          });
        },
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          // ignore: prefer_const_constructors
          BottomNavigationBarItem(
            label: 'Home',
            // backgroundColor: Colors.blue,
            icon: const Icon(
              Icons.grid_view_rounded,
            ),
            // title: SizedBox.shrink(),
          ),
          const BottomNavigationBarItem(
            label: 'Tasks',
            icon: Icon(
              Icons.edit_calendar_rounded,
            ),
          ),
          const BottomNavigationBarItem(
            label: 'New',
            icon: Icon(
              Icons.add_box_rounded,
            ),
          ),
          const BottomNavigationBarItem(
            label: 'Message',
            icon: Icon(
              Icons.question_answer_outlined,
            ),
          ),
          const BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(
              Icons.person,
            ),
          )
        ],
      ),
    );
  }
}
