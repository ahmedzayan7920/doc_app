import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/cubit/sign_up_cubit.dart';

class SignUpGenderSection extends StatefulWidget {
  const SignUpGenderSection({super.key});

  @override
  State<SignUpGenderSection> createState() => _SignUpGenderSectionState();
}

class _SignUpGenderSectionState extends State<SignUpGenderSection> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListTile(
            title: const Text('Male'),
            leading: Radio<int>(
              value: 0,
              groupValue: context.read<SignUpCubit>().gender,
              onChanged: (int? value) {
                setState(() {
                  context.read<SignUpCubit>().gender = value!;
                });
              },
            ),
          ),
        ),
        Expanded(
          child: ListTile(
            title: const Text('Female'),
            leading: Radio<int>(
              value: 1,
              groupValue: context.read<SignUpCubit>().gender,
              onChanged: (int? value) {
                setState(() {
                  context.read<SignUpCubit>().gender = value!;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
