import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);
  static const id = 'settings.dart';

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool val = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: const Text('Settings'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.more_vert,
              size: 35,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          ListTile(
            leading: const Text(
              'Change Language',
              style: TextStyle(fontSize: 20),
            ),
            trailing: Switch(
                value: val,
                onChanged: (var newVal) {
                  setState(() {
                    val = newVal;
                  });
                }),
          ),
          const Divider(),
          ListTile(
            leading: const Text(
              'Set auto night-mode',
              style: TextStyle(fontSize: 20),
            ),
            trailing: Switch(
                value: val,
                onChanged: (var newVal) {
                  setState(() {
                    val = newVal;
                  });
                }),
          ),
          const Divider(),
          ListTile(
            leading: const Text(
              'Bip on key press',
              style: TextStyle(fontSize: 20),
            ),
            trailing: Switch(
                value: val,
                onChanged: (var newVal) {
                  setState(() {
                    val = newVal;
                  });
                }),
          ),
          const Divider(),
          ListTile(
            leading: const Text(
              'Vibrate on key press',
              style: TextStyle(fontSize: 20),
            ),
            trailing: Switch(
                value: val,
                onChanged: (var newVal) {
                  setState(() {
                    val = newVal;
                  });
                }),
          ),
          const Divider(),
          ListTile(
            leading: const Text(
              'Enable full screen',
              style: TextStyle(fontSize: 20),
            ),
            trailing: Switch(
                value: val,
                onChanged: (var newVal) {
                  setState(() {
                    val = newVal;
                  });
                }),
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            leading: const Text(
              'Enable Double Zero',
              style: TextStyle(fontSize: 20),
            ),
            trailing: Switch(
                value: val,
                onChanged: (var newVal) {
                  setState(() {
                    val = newVal;
                  });
                }),
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            leading: const Text(
              'Enable Triple Zero',
              style: TextStyle(fontSize: 20),
            ),
            trailing: Switch(
                value: val,
                onChanged: (var newVal) {
                  setState(() {
                    val = newVal;
                  });
                }),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
