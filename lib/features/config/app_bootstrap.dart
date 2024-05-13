import 'package:challange/features/domain/repository/test_repository.dart';
import 'package:challange/features/presentation/providers/test_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppBootstrap extends StatelessWidget {
  final Widget child;
  const AppBootstrap({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<TestProvider>(
          create: (context) =>
              TestProvider(context, testRepository: TestRepository()),
        ),
      ],
      child: child,
    );
  }
}
