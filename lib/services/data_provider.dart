import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_dio/model/modelclass.dart';

import 'services.dart';

final userDataProvider = FutureProvider<ItemsInventory>((ref) async {
  return ref.watch(userProvider).getUsers();
});
