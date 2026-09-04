import 'package:flutter/material.dart';
import 'package:esh7enly_app/feature/sessions/presentation/view/widgets/sessions_header.dart';
import 'package:esh7enly_app/feature/sessions/presentation/view/widgets/sessions_list.dart';

class SessionsViewBody extends StatelessWidget {
  const SessionsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 24),
        SessionsHeader(),
        SizedBox(height: 20),
        Expanded(child: SessionsList()),
      ],
    );
  }
}
