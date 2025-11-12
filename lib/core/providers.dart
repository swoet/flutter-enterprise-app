import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Theme mode provider (system by default)
final themeModeProvider = StateProvider<ThemeMode>((ref) => ThemeMode.system);

// Example notification toggle provider
final notificationsEnabledProvider = StateProvider<bool>((ref) => true);
