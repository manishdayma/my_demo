import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mydemo/models/user_model.dart';

import '../../providers/user_list_provider.dart';

class HomePage extends StatefulHookConsumerWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {

  @override
  void initState() {
    super.initState();
    ref.read(userListProvider.notifier).getLocalUserList();
  }
  @override
  Widget build(BuildContext context) {
    List<UserModel> users = ref.watch(userListProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("User List"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                var item  = users[index];
                return ListTile(
                  title: Text("${item.name.title} ${item.name.first} ${item.name.last} "),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
