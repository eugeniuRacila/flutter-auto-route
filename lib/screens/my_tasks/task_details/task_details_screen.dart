import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class TaskDetailsScreen extends StatelessWidget {
  final int taskId;

  const TaskDetailsScreen({
    @PathParam('taskId') required this.taskId,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("Task $taskId details screen"),
        ),
      ),
    );
  }
}
