import 'package:better_gtask/state/state.dart';
import 'package:better_gtask/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ConnectivityStatus extends ConsumerWidget implements PreferredSizeWidget {
  const ConnectivityStatus({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final status = ref.watch(connectivityProvider);
    return AsyncValueBuilder(
      builder: (context, data) => Text(data.name),
      value: status,
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 40);
}
