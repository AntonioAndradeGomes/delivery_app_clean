import 'package:delivery_app_clean_architecture/app/presentation/colors.dart';
import 'package:delivery_app_clean_architecture/app/presentation/home/home_screen.dart';
import 'package:delivery_app_clean_architecture/app/presentation/widgets/delivery_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                Positioned(
                  bottom: 45,
                  left: -50 / 2,
                  right: -50 / 2,
                  height: size.width + 50,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: const [
                          0.5,
                          1,
                        ],
                        colors: DeliveryColors.deliveryGradient,
                      ),
                      borderRadius: const BorderRadius.vertical(
                        bottom: Radius.circular(
                          200,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: CircleAvatar(
                    backgroundColor: Theme.of(context).canvasColor,
                    radius: 45,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Icon(
                        size: 50,
                        Icons.person,
                        // ignore: deprecated_member_use
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Login',
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context)
                                .inputDecorationTheme
                                .labelStyle!
                                .color,
                          ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Username',
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.caption!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context)
                                .inputDecorationTheme
                                .labelStyle!
                                .color,
                          ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person_outline,
                          color: Theme.of(context).iconTheme.color,
                        ),
                        hintText: 'username',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Password',
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.caption!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context)
                                .inputDecorationTheme
                                .labelStyle!
                                .color,
                          ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.password_outlined,
                          color: Theme.of(context).iconTheme.color,
                        ),
                        hintText: 'password',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: DeliveryButton(
              text: 'Login',
              padding: const EdgeInsets.all(14),
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (_) => const HomeScreen(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
