import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_dio/services/data_provider.dart';

class Homescree extends ConsumerWidget {
  const Homescree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _data = ref.watch(userDataProvider);

    return Scaffold(
      body: SafeArea(
        child: _data.when(
          data: (_data) {
            return ListView.builder(
              itemCount: _data.data.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.deepPurple,
                  child: ListTile(
                    title: Text(
                      _data.data[index].addressOfDelivery,
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      _data.data[index].color,
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                    trailing: Text(
                      _data.data[index].size,
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              },
            );
          },
          error: (err, s) => Text(
            err.toString(),
          ),
          loading: (() => const Center(
                child: CircularProgressIndicator(),
              )),
        ),
      ),
    );
  }
}
