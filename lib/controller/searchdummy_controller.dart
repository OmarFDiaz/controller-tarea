import 'package:get/get.dart';

class searchdummycontroller extends GetxController {
  final _searchText = ''.obs;
  get searchTextValue => _searchText.value;

  void updateSearchText(String newText) {
    _searchText.value = newText;
  }

  set searchText(String newtext) => _searchText.value = newtext;
}
