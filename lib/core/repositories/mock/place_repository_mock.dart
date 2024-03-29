import 'package:flutter_code_test_dropdown_buttons_bloc/core/repositories/place_repository.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/models/data_models/country/country.dart';
import 'package:flutter_code_test_dropdown_buttons_bloc/models/data_models/state/state.dart';

class PlaceRepositoryMock implements PlaceRepository {
  PlaceRepositoryMock();

  @override
  Future<List<Country>> getCountries() async {
    await Future<void>.delayed(const Duration(seconds: 2));
    return _mockCountries;
  }

  @override
  Future<List<State>> getStates(int countryId) async {
    await Future<void>.delayed(const Duration(seconds: 2));
    final states = _mockStates
        .where((element) => element['countryId'] == countryId)
        .map(State.fromJson)
        .toList();
    return states;
  }

  final List<Country> _mockCountries = [
    Country(id: 13, value: 'Australia'),
    Country(id: 86, value: 'Germany'),
    Country(id: 165, value: 'New Zealand'),
  ];

  final List<Map<String, dynamic>> _mockStates = [
    {
      'id': 1,
      'value': 'New South Wales',
      'countryId': 13,
    },
    {
      'id': 2,
      'value': 'Queensland',
      'countryId': 13,
    },
    {
      'id': 3,
      'value': 'South Australia',
      'countryId': 13,
    },
    {
      'id': 4,
      'value': 'Tasmania',
      'countryId': 13,
    },
    {
      'id': 5,
      'value': 'Victoria',
      'countryId': 13,
    },
    {
      'id': 6,
      'value': 'Western Australia',
      'countryId': 13,
    },
    {
      'id': 7,
      'value': 'Australian Capital Territory',
      'countryId': 13,
    },
    {
      'id': 8,
      'value': 'Northern Territory',
      'countryId': 13,
    },
    {
      'id': 9,
      'value': 'Baden-Württemberg',
      'countryId': 86,
    },
    {
      'id': 10,
      'value': 'Bavaria',
      'countryId': 86,
    },
    {
      'id': 11,
      'value': 'Berlin',
      'countryId': 86,
    },
    {
      'id': 12,
      'value': 'Brandenburg',
      'countryId': 86,
    },
    {
      'id': 13,
      'value': 'Bremen',
      'countryId': 86,
    },
    {
      'id': 14,
      'value': 'Hamburg',
      'countryId': 86,
    },
    {
      'id': 15,
      'value': 'Hesse',
      'countryId': 86,
    },
    {
      'id': 16,
      'value': 'Lower Saxony',
      'countryId': 86,
    },
    {
      'id': 17,
      'value': 'Mecklenburg-Vorpommern',
      'countryId': 86,
    },
    {
      'id': 18,
      'value': 'North Rhine-Westphalia',
      'countryId': 86,
    },
    {
      'id': 19,
      'value': 'Northland',
      'countryId': 165,
    },
    {
      'id': 20,
      'value': 'Auckland',
      'countryId': 165,
    },
    {
      'id': 21,
      'value': 'Waikato',
      'countryId': 165,
    },
    {
      'id': 22,
      'value': 'Bay of Plenty',
      'countryId': 165,
    },
    {
      'id': 23,
      'value': 'Gisborne',
      'countryId': 165,
    },
    {
      'id': 24,
      'value': "Hawke's Bay",
      'countryId': 165,
    },
    {
      'id': 25,
      'value': 'Taranaki',
      'countryId': 165,
    },
    {
      'id': 26,
      'value': 'Manawatu-Wanganui',
      'countryId': 165,
    },
    {
      'id': 27,
      'value': 'Wellington',
      'countryId': 165,
    },
    {
      'id': 28,
      'value': 'Tasman',
      'countryId': 165,
    },
    {
      'id': 29,
      'value': 'Nelson',
      'countryId': 165,
    },
    {
      'id': 30,
      'value': 'Marlborough',
      'countryId': 165,
    },
    {
      'id': 31,
      'value': 'West Coast',
      'countryId': 165,
    },
    {
      'id': 32,
      'value': 'Canterbury',
      'countryId': 165,
    },
    {
      'id': 33,
      'value': 'Otago',
      'countryId': 165,
    },
    {
      'id': 34,
      'value': 'Southland',
      'countryId': 165,
    },
  ];
}
