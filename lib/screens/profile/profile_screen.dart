import 'package:auto_route/auto_route.dart';
import 'package:bristoli/screens/profile/profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatefulWidget implements AutoRouteWrapper {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => ProfileCubit(),
        child: this,
      );
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();

    BlocProvider.of<ProfileCubit>(context).fetchUsername();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("Profile Screen"),
              BlocBuilder<ProfileCubit, ProfileCubitState>(
                builder: (context, state) => Text(
                  'Username: ${state.userName.isEmpty ? 'searching..' : state.userName}',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
