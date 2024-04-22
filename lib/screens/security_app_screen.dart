import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class SecurityAppScreen extends StatelessWidget {
  const SecurityAppScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Santa Monica'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
      ),
      body: const _BodyWidget(),
    );
  }
}

class _BodyWidget extends StatelessWidget {
  const _BodyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 1.7,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(vertical: 15),
          color: Colors.green,
          child: const _ListOfCamerasWidget(),
        ),
        Expanded(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const _BottomControlBarWidget(),
          ),
        ),
      ],
    );
  }
}

class _ListOfCamerasWidget extends StatelessWidget {
  const _ListOfCamerasWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: _CameraViewWidget(),
    );
  }
}

class _CameraViewWidget extends StatelessWidget {
  const _CameraViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 40,
      height: 500,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 71, 73, 94),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.all(30),
                width: 90,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.circular(30),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(33, 244, 67, 54),
                      radius: 12,
                      child: Icon(
                        Icons.circle,
                        color: Colors.red,
                        size: 15,
                      ),
                    ),
                    Text(
                      'Live',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.circular(30),
                ),
              ),
            ],
          ),
          Image.asset('security_room.jpg'),
        ],
      ),
    );
  }
}

// Table(
//         border: TableBorder.all(width: 7, color: Colors.transparent),
//         children: [
//           TableRow(
//             children: [

//             ],
//           ),
//           // TableRow(
//           //   children: [
//           //     _LightControlWidget(),
//           //   ],
//           // ),
//         ],
//       ),

class _BottomControlBarWidget extends StatelessWidget {
  const _BottomControlBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _OpenCloseControlWidget(
                closed: true,
                place: 'Front door',
              ),
              _OpenCloseControlWidget(
                closed: false,
                place: 'Backyard',
              ),
            ],
          ),
          _LightControlWidget(),
        ],
      ),
    );
  }
}

class _OpenCloseControlWidget extends StatelessWidget {
  final String place;
  final bool closed;
  const _OpenCloseControlWidget(
      {super.key, required this.closed, required this.place});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140, //TODO !!!!!!!!!!!!!!
      width: MediaQuery.of(context).size.width / 2 - 25,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 71, 73, 94),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              maxRadius: 17,
              backgroundColor: closed ? Colors.red : Colors.green,
              child: Icon(
                closed ? Icons.lock : Icons.lock_open,
                color: Colors.white,
              ),
            ),
            Text(
              closed ? 'CLOSED' : 'OPENED',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
            Text(
              place,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _LightControlWidget extends StatelessWidget {
  const _LightControlWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 71, 73, 94),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 7),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  const Icon(
                    size: 35,
                    Icons.sunny,
                    color: Colors.yellow,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(
                      child: Text(
                    'Light',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  )),
                  Switch(
                    value: false,
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
            Slider(
              value: 0.5,
              onChanged: (value) {},
            )
          ],
        ),
      ),
    );
  }
}
