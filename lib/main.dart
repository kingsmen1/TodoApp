import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/utils/theme.dart';
import 'package:todo_app/utils/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(392.72727272727275, 813.0909090909091),
        builder: ((context, child) {
          return Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 250, 172, 56),
                  Color.fromARGB(255, 247, 38, 23),
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              //extendBodyBehindAppBar: true,
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                title: const Text('TODO'),
                centerTitle: true,
                actions: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search))
                ],
              ),
              drawer: const Drawer(),
              body: Padding(
                padding: const EdgeInsets.only(left: 40, top: 20, bottom: 20),
                child: SizedBox(
                  // margin: const EdgeInsets.only(top: 70),
                  width: double.infinity,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Sheight(20),
                        const CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage('assets/images/images.jpg'),
                        ),
                        Sheight(20),
                        Text('Hello, Jane',
                            style: Theme.of(context).textTheme.headline1!),
                        Sheight(10),
                        Text(
                            'Looks like feel good\nYou have 3 task to do today',
                            style: Theme.of(context).textTheme.bodyText2!),
                        Sheight(50),
                        Text('TODAY:SEPTEMBER 12 , 2017',
                            style: Theme.of(context).textTheme.bodyText1!),
                        Sheight(15),
                        SizedBox(
                          height: (ScreenUtil().screenHeight / 2) + 20,
                          child: ListView.builder(
                              clipBehavior: Clip.none,
                              scrollDirection: Axis.horizontal,
                              itemCount: 3,
                              padding: EdgeInsets.only(
                                top: 10,
                                bottom: 10,
                              ),
                              itemBuilder: ((context, index) {
                                return Container(
                                  margin: EdgeInsets.only(right: 20.w),
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.20),
                                          offset: const Offset(
                                            0.0,
                                            4.0,
                                          ),
                                          blurRadius: 2.0,
                                          spreadRadius: 5.0,
                                        ),
                                        const BoxShadow(
                                          color: Colors.white,
                                          offset: Offset(0.0, 0.0),
                                          blurRadius: 0.0,
                                          spreadRadius: 0.0,
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.white),
                                  height: (ScreenUtil().screenHeight / 2),
                                  width: ScreenUtil().screenWidth - 100,
                                  child: Column(children: const []),
                                );
                              })),
                        ),
                      ]),
                ),
              ),
            ),
          );
        }));
  }
}
