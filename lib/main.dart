import 'package:better_gtask/app.dart';
import 'package:better_gtask/state/state.dart';
import 'package:better_gtask/util/util.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:better_gtask/models/models.dart';

const deleteData = true;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final dir = await getApplicationDocumentsDirectory();

  final isar = Isar.open(
    schemas: [TaskListSchema, TasksSchema],
    directory: dir.path,
  );

  if (deleteData) {
    isar.write((isar) {
      final all = isar.taskLists.where().findAll();
      isar.taskLists.deleteAll(all.map((e) => e.id).toList());
    });
  }

  runApp(
    ProviderScope(
      overrides: [isarProvider.overrideWithValue(isar)],
      observers: [AppProviderObserver()],
      child: const App(),
    ),
  );
}
