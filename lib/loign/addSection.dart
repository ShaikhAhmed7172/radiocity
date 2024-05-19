import 'dart:async';
import 'package:flutter/material.dart';

class VideoSection extends StatefulWidget {
  @override
  _VideoSectionState createState() => _VideoSectionState();
}

class _VideoSectionState extends State<VideoSection> {
  late Timer _timer;
  int _start = 5;
  bool _showSkipButton = false;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            _showSkipButton = true;
          });
          _timer.cancel();
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height *
          0.45, // Fixed height to ensure proper constraints
      color: Colors.black,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              'https://middaycdn.s.llnwi.net/Radiocity-images/images/uploads/web-stories/sid-sriram-birthday-playlist-may17-1_ws.png',
              fit: BoxFit.cover,
              // height: MediaQuery.of(context).size.height * 0.65,
              errorBuilder: (context, error, stackTrace) {
                return Center(child: Icon(Icons.error));
              },
            ),
          ),
          Positioned(
            top: 16,
            right: 16,
            child: _showSkipButton
                ? ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        side: BorderSide(color: Colors.grey, width: 2)),
                    child: const Text(
                      'Skip',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  )
                : Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.black54,
                    child: Text(
                      '$_start',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
