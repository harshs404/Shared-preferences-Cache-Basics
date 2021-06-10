import 'package:basicappflutter/core/notifiers/cache_notifier.dart';
import 'package:basicappflutter/meta/views/Login_View/loginView.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// HomeView(always comment the class being declared below it)
class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    var _cacheNotifier = Provider.of<CacheNotifier>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Home View"),
      ),
      body: Center(
        child: MaterialButton(
            color: Colors.blue,
            child: Text("Log Out"),
            onPressed: () {
              _cacheNotifier.deleteCache(key: "login").whenComplete(
                    () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => LoginView(),
                      ),
                    ),
                  );
            }),
      ),
    );
  }
}
