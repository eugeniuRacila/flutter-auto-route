import 'package:auto_route/auto_route.dart';
import 'package:bristoli/screens/main/main_cubit.dart';
import 'package:bristoli_ui/bristoli_ui.dart';
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
                AppText.h1(
                  'Counter page',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 16.0,
                ),
                AppText.body15("Counter: ${state.counter}"),
                const SizedBox(
                  height: 16.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: AppButton.primary(
                    'Increment counter',
                    onTap: () {
                      BlocProvider.of<MainCubit>(context).incrementCounter();
                    },
                  ),
                )
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
