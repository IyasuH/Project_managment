import 'package:flutter/material.dart';
import 'package:image_stack/image_stack.dart';

class NewProject extends StatefulWidget {
  const NewProject({super.key});

  @override
  State<NewProject> createState() => _NewProjectState();
}

class _NewProjectState extends State<NewProject> {
  List<String> membersImage = [
    'https://randomuser.me/api/portraits/men/36.jpg',
    'https://randomuser.me/api/portraits/women/84.jpg',
    'https://randomuser.me/api/portraits/women/21.jpg',
    'https://randomuser.me/api/portraits/men/20.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 7),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                'Create New Project',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                'Type',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
                color: const Color.fromARGB(223, 233, 231, 231),
                borderRadius: BorderRadius.circular(14)),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Team Project',
                      style: TextStyle(fontWeight: FontWeight.w700)),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_arrow_down_rounded),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                'Topic',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
                color: const Color.fromARGB(223, 233, 231, 231),
                borderRadius: BorderRadius.circular(14)),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text('Give name to your project',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.grey)),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                'Requirements',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
                color: const Color.fromARGB(223, 233, 231, 231),
                borderRadius: BorderRadius.circular(14)),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('UI Design, 3D Design, Logo & Branding',
                      style: TextStyle(fontWeight: FontWeight.w700)),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_arrow_down_rounded),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                'Add Members',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
                color: const Color.fromARGB(223, 233, 231, 231),
                borderRadius: BorderRadius.circular(14)),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ImageStack(
                    imageList: membersImage,
                    totalCount: membersImage.length,
                    imageRadius: 35,
                    imageBorderWidth: 0,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_arrow_down_rounded),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                'Starts in',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
                color: const Color.fromARGB(223, 233, 231, 231),
                borderRadius: BorderRadius.circular(14)),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('05-April-2022',
                      style: TextStyle(fontWeight: FontWeight.w700)),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.calendar_month,
                      color: Colors.amber,
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                'Ends till(approximately)',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
                color: const Color.fromARGB(223, 233, 231, 231),
                borderRadius: BorderRadius.circular(14)),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('15-June-2022',
                      style: TextStyle(fontWeight: FontWeight.w700)),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.calendar_month,
                      color: Colors.amber,
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                'Description',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
                color: const Color.fromARGB(223, 233, 231, 231),
                borderRadius: BorderRadius.circular(14)),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Tell more about the project...',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.black),
            // ignore: prefer_const_constructors
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 140, vertical: 10),
              child: const Text(
                'Create Project',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
