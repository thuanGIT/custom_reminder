import 'package:flutter/material.dart';
import 'package:mom_reminder/dashboard.dart';

class CreateChar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new CreateCharState();
  }
}

class CreateCharState extends State<CreateChar> {
  bool pressed;

  @override
  void initState() {
    super.initState();
    pressed = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Avatar(index: 0),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black87,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MenuDashboardPage(),
              ),
            );
          },
        ),
        elevation: 0,
        title: Text(
          'New Avatar',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white10,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 90,
        width: 90,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: Colors.red[300],
            child: Icon(
              Icons.mic,
              size: 30,
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}

class Avatar extends StatefulWidget {
  final int index;
  const Avatar({Key key, this.index}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return new AvatarState();
  }
}

class AvatarState extends State<Avatar> {
  List<String> pics;

  @override
  void initState() {
    super.initState();
    pics = [
      "assets/icons/man_1.png",
      "assets/icons/man_2.png",
      "assets/icons/woman_1.png",
      "assets/icons/woman_2.png"
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(pics[widget.index]),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
