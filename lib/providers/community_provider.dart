import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/community_model.dart';

class CommunityProvider extends ChangeNotifier {
  List<String> _selectedIds = [];

  List<String> get selectedIds => _selectedIds;

  List<Community> get selectedCommunities => AppData.communities
      .where((c) => _selectedIds.contains(c.id))
      .toList();

  Community? get primaryCommunity =>
      selectedCommunities.isNotEmpty ? selectedCommunities.first : null;

  Future<void> loadFromStorage() async {
    final prefs = await SharedPreferences.getInstance();
    _selectedIds = prefs.getStringList('selected_communities') ?? [];
    notifyListeners();
  }

  Future<void> saveCommunities(List<String> ids) async {
    _selectedIds = ids;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('selected_communities', ids);
    notifyListeners();
  }

  bool get hasSelectedCommunity => _selectedIds.isNotEmpty;
}