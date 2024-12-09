import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'data_view_model.dart'; // ViewModel 가져오기

class DataScreen extends StatefulWidget {
  const DataScreen({super.key});

  @override
  _DataScreenState createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
        () => Provider.of<DataViewModel>(context, listen: false).fetchData());
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<DataViewModel>(context);

    return Scaffold(
      body: Stack(
        children: [
          // 배경 Container - AppBar 포함
          // Container(
          //   color: Colors.black.withOpacity(0.5), // 배경 색상 및 투명도
          // ),

          // AppBar와 Body를 하나로 포함
          Column(
            children: [
              AppBar(
                title: const Text('MVVM 로딩 화면 예제'),
                backgroundColor: Colors.transparent, // 배경 투명
                elevation: 0, // 그림자 제거
              ),
              Expanded(
                child: Center(
                  child: viewModel.data != null
                      ? Text(
                          viewModel.data!,
                          style: const TextStyle(
                              fontSize: 20, color: Colors.white),
                        )
                      : Container(), // 데이터 로드 후 표시
                ),
              ),
            ],
          ),

          // 로딩 인디케이터
          if (viewModel.isLoading)
            Container(
              color: Colors.black.withOpacity(0.5),
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
        ],
      ),
    );
  }
}
