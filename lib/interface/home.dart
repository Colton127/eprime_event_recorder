import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../settings.dart';
import 'generate_page.dart';
import 'record_page.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size windowSize = MediaQuery.of(context).size;
    print('Current Window size: $windowSize');
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(Settings.appTitle),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.podcasts)),
              Tab(icon: Icon(Icons.list)),
            ],
          ),
        ),
        body: const TabBarView(children: [RecordPage(), GeneratePage()]),
      ),
    );
  }
}
