import 'package:auto_route/auto_route.dart';
import 'package:bristoli/core/routes/routes.gr.dart';
import 'package:flutter/material.dart';

class MyTasksScreen extends StatelessWidget {
  const MyTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("My Tasks Screen"),
              const SizedBox(
                height: 16.0,
              ),
              ElevatedButton(
                onPressed: () {
                  AutoRouter.of(context).push(
                    TaskDetailsRoute(taskId: 42),
                  );
                },
                child: const Text("Go to task #42"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
