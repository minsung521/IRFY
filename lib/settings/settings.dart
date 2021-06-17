import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // SliverAppBar(
          //   title: Text("설정"),
          //   floating: true,
          //   flexibleSpace: Placeholder(),
          //   expandedHeight: 200,
          // ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  padding: EdgeInsets.fromLTRB(16, 60, 0, 40),
                  child: ListTile(
                    leading: Text(
                      "설정",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: const Color(0xff265ABF),
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.blueGrey,
                ),
                ListTile(
                  title: Text(
                    "   만든 사람들",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {},
                  ),
                ),
                Divider(
                  color: Colors.blueGrey,
                ),
                ListTile(
                  title: Text(
                    "   사용자 정보 수정",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {},
                  ),
                ),
                Divider(
                  color: Colors.blueGrey,
                ),
                ListTile(
                  title: Text(
                    "   알림",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {},
                  ),
                ),
                Divider(
                  color: Colors.blueGrey,
                ),
                ListTile(
                  title: Text(
                    "   앱 버전",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {},
                  ),
                ),
                Divider(
                  color: Colors.blueGrey,
                ),
                ListTile(
                  title: Text(
                    "   로그아웃",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {},
                  ),
                ),
                Divider(
                  color: Colors.blueGrey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}