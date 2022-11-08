import 'package:project_managment/models/contacts_model.dart';

class Project {
  int id;
  String name;
  String type; //Solo Project, Team Project
  List<String>
      requirements; //material, equipment or WBS(Work Break Down Structure), requirements for the project
  List<Contacts> members;
  String status; //Upcoming, Inprogress, Completed
  int progress;
  List<String> startEndTimes;
  String description;

  Project({
    required this.id,
    required this.name,
    required this.type,
    required this.requirements,
    required this.members,
    required this.status,
    required this.progress,
    required this.startEndTimes,
    required this.description,
  });
}

final Contacts clarence = Contacts(
    id: 1,
    name: 'Clarence Gonzales',
    imageUrl: 'assets/images/Clarence_Gonzales.jpg');

final Contacts cody = Contacts(
    id: 2, name: 'Cody Walters', imageUrl: 'assets/images/Cody_Walters.jpg');

final Contacts dora = Contacts(
    id: 0, name: 'Dora Brown', imageUrl: 'assets/images/Dora_Brown.jpg');

final Contacts edwin = Contacts(
    id: 3, name: 'Edwin Holmes', imageUrl: 'assets/images/Edwin_Holmes.jpg');

final Contacts kristen = Contacts(
    id: 5,
    name: 'Kristen Stevens',
    imageUrl: 'assets/images/Kristen_Stevens.jpg');

final Contacts olivia = Contacts(
    id: 6, name: 'Olivia Cruz', imageUrl: 'assets/images/Olivia_Cruz.jpg');

// Groups

// here I added up groups as contacts but for the future groups will have their own type with different
// additional info including (number of members, admin users, mute / unmute ...)

final Contacts technologyBoxs = Contacts(
    id: 7,
    name: 'Technology Boxs',
    imageUrl: 'assets/images/Technology_Box.jpg');

final Contacts creedorian = Contacts(
    id: 8, name: 'Creedorian', imageUrl: 'assets/images/credorian.png');

final Contacts subZeroSoftware = Contacts(
    id: 9, name: 'SubZero Software', imageUrl: 'assets/images/subZero.jpg');

final List<Project> projects = [
  Project(
    id: 1,
    name: 'Blok Games Project',
    type: 'Solo Project',
    requirements: ['UI Design', '3D Design', 'Logo & Branding'],
    members: [],
    status: 'In progress',
    progress: 67,
    startEndTimes: ['02 April 2022', '03 April 2022'],
    description: '',
  ),
  Project(
    id: 2,
    name: 'Food Delivery App Project',
    type: 'Team Project',
    requirements: ['UI Design', 'Back end', 'Logo & Branding'],
    members: [cody, olivia, dora],
    status: 'Upcoming',
    progress: 0,
    startEndTimes: ['07 November 2022', '21 December 2022'],
    description: '',
  ),
  Project(
    id: 3,
    name: 'Arduino based teaching aid',
    type: 'Team Project',
    requirements: [
      'Electonics Hardware',
      'Embeded Software',
      'Graphic User Interface',
      'Hardware'
    ],
    members: [dora, edwin, clarence],
    status: 'Completed',
    progress: 100,
    startEndTimes: ['07 November 2021', '21 May 2022'],
    description: '',
  ),
];
