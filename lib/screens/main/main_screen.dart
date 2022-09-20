import 'package:auto_route/auto_route.dart';
import 'package:bristoli/screens/main/main_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatelessWidget implements AutoRouteWrapper {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: BlocBuilder<MainCubit, MainScreenState>(
            builder: (context, state) => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Counter: ${state.counter}"),
                const SizedBox(
                  height: 16.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<MainCubit>(context).incrementCounter();
                  },
                  child: const Text("Increment counter"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => MainCubit(),
      child: this,
    );
  }
}
