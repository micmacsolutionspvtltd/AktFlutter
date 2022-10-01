import 'package:akt/home_work_page.dart';
import 'package:akt/profile_page.dart';
import 'package:flutter/material.dart';
import 'about_us_page.dart';
import 'circular_page.dart';
import 'events_page.dart';
import 'multiple_login.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int selectedCard = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100.0), // here the desired height
          child: AppBar(
            title: Text("Dash Board"),
            automaticallyImplyLeading: false,
          )
      ),

      body: Padding(
        padding: EdgeInsets.all(10),
      child : GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
          ),
          itemCount: choices.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
                onTap: () {
                  setState(() {
                    // ontap of each card, set the defined int to the grid view index
                    selectedCard = index;
                    print(index);
                    if (index == 0){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const AboutUsPage()),
                      );
                    }else if (index ==6){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const CircularPage()),
                      );

                    }else if (index == 14){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MultipleLoginPage()),
                      );

                    }else if (index == 7){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const EventsPage()),
                      );

                    }else if (index == 2){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomeWorkPage()),
                      );

                    }
                    else{
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ProfilePage()),
                      );
                    };

                  });
                },
            child : Container(
              //color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                // SizedBox(
                //   height: 10,
                // ),
                Expanded(child: Icon(choices[index].icon, size:40.0, color: Colors.black)),
                Text(choices[index].title,
                  style: TextStyle(
                    color: Colors.black
                  ),
                )
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.orange,

              ),
            ),
            );
          }
      ),)
    );
  }
}


class ItemTile extends StatelessWidget {
  final int itemNo;

  const ItemTile(
      this.itemNo,
      );

  @override
  Widget build(BuildContext context) {
    final Color color = Colors.primaries[itemNo % Colors.primaries.length];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        tileColor: color.withOpacity(0.3),
        onTap: () {},
        leading: Container(
          width: 50,
          height: 30,
          color: color.withOpacity(0.5),
          child: Placeholder(
            color: color,
          ),
        ),
        title: Text(
          'Product $itemNo',
          key: Key('text_$itemNo'),
        ),
      ),
    );
  }
}
class Choice {
  const Choice({required this.title, required this.icon});
  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'About Us', icon: Icons.home),
  const Choice(title: 'Home Work', icon: Icons.contacts),
  const Choice(title: 'Exam', icon: Icons.map),
  const Choice(title: 'Attendance', icon: Icons.phone),
  const Choice(title: 'Gallery', icon: Icons.phone),
  const Choice(title: 'Video Gallery', icon: Icons.camera_alt),
  const Choice(title: 'Circular', icon: Icons.camera_alt),
  const Choice(title: 'Events', icon: Icons.settings),
  const Choice(title: 'Yearly Calendar', icon: Icons.photo_album),
  const Choice(title: 'Subject', icon: Icons.wifi),
  const Choice(title: 'Time Table', icon: Icons.wifi),
  const Choice(title: 'Photo Upload', icon: Icons.wifi),
  const Choice(title: 'Leave Request', icon: Icons.wifi),
  const Choice(title: 'View File', icon: Icons.wifi),
  const Choice(title: 'Multi Login', icon: Icons.wifi),
  const Choice(title: 'Log out', icon: Icons.wifi),
];

