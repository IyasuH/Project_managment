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

final Contacts clarence =
    Contacts(id: 1, name: 'Clarence', imageUrl: 'assets/Clarence_Gonzales.jpg');

final Contacts cody =
    Contacts(id: 2, name: 'Cody', imageUrl: 'assets/Cody_Walters.jpg');

final Contacts dora =
    Contacts(id: 0, name: 'Dora', imageUrl: 'assets/Dora_Brown.jpg');

final Contacts edwin =
    Contacts(id: 3, name: 'Edwin', imageUrl: 'assets/Edwin_Holmes.jpg');

final Contacts kristen =
    Contacts(id: 5, name: 'Kristen', imageUrl: 'assets/Kristen_Stevens.jpg');

final Contacts olivia =
    Contacts(id: 6, name: 'Olivia', imageUrl: 'assets/Olivia_Cruz.jpg');

List<Project> projects = [
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
