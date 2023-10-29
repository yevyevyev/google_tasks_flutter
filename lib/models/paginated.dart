import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated.freezed.dart';

@freezed
class Paginated<T, Key> with _$Paginated {
  factory Paginated({
    required List<T> items,
    required Key? offset,
  }) = _Paginated;
}
