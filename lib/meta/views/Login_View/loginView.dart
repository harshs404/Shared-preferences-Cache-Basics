import 'package:basicappflutter/core/notifiers/cache_notifier.dart';
import 'package:basicappflutter/meta/views/home_view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final passwordController = TextEditingController();
    var _cacheNotifier = Provider.of<CacheNotifier>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Login View"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "Enter Name",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                  color: Colors.blue,
                  child: Text("Login"),
                  onPressed: () {
                    _cacheNotifier
                        .writeCache(
                            key: "login", value: passwordController.text)
                        .whenComplete(() {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => HomeView(),
                        ),
                      );
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
