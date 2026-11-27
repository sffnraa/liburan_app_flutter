import 'package:flutter/material.dart';
import '../data/destination_data.dart';
import '../models/destination.dart';

class DestinationProvider extends ChangeNotifier {
  // Data destinasi
  final List<Destination> _destinations = destinations;

  // State pencarian
  String _searchQuery = '';

  // State kategori
  String _selectedCategory = 'Semua';

  // Getter
  String get selectedCategory => _selectedCategory;

  List<Destination> get filteredDestinations {
    return _destinations.where((destination) {
      final matchesSearch =
          destination.name.toLowerCase().contains(
                _searchQuery.toLowerCase(),
              ) ||
              destination.location.toLowerCase().contains(
                _searchQuery.toLowerCase(),
              );

      final matchesCategory =
          _selectedCategory == 'Semua' ||
          destination.category == _selectedCategory;

      return matchesSearch &&
          matchesCategory;
    }).toList();
  }

  // Mengubah pencarian
  void setSearchQuery(String query) {
    _searchQuery = query;
    notifyListeners();
  }

  // Mengubah kategori
  void setCategory(String category) {
    _selectedCategory = category;
    notifyListeners();
  }

}