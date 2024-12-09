import 'package:flutter/material.dart';

class DataViewModel extends ChangeNotifier {
  bool _isLoading = false; // 로딩 상태
  String? _data; // 네트워크에서 가져온 데이터

  bool get isLoading => _isLoading;
  String? get data => _data;

  Future<void> fetchData() async {
    _isLoading = true; // 로딩 시작
    notifyListeners();

    // 네트워크 통신 (데모용 딜레이 추가)
    await Future.delayed(const Duration(seconds: 3));
    _data = "네트워크로부터 가져온 데이터입니다.";

    _isLoading = false; // 로딩 종료
    notifyListeners();
  }
}
