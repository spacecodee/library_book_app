import 'package:flutter_riverpod/flutter_riverpod.dart';

final checkboxProvider = StateNotifierProvider<CheckboxNotifier, bool>((ref) => CheckboxNotifier());

class CheckboxNotifier extends StateNotifier<bool> {
  CheckboxNotifier() : super(false);

  void changedCheckbox() => state = !state;
}
