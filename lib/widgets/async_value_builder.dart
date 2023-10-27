import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class AsyncValueBuilder<T> extends StatelessWidget {
  const AsyncValueBuilder({
    required this.builder,
    super.key,
    required this.value,
  });

  final Widget Function(BuildContext context, T data) builder;
  final AsyncValue<T> value;

  @override
  Widget build(BuildContext context) => value.when(
        data: (data) => builder(context, data),
        error: (err, _) => Text(err.toString()),
        loading: () => const CircularProgressIndicator(),
      );
}
