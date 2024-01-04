import 'package:basketball/cubit/counter_cubit.dart';
import 'package:basketball/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(pointsCounter());
}

class pointsCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CounterCubit(),
        child:
            MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  int teamAPoints = 0;
  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
        builder: (context, state) => Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.orange,
                title: Text('Point Counter'),
              ),
              body: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Team A',
                            style: TextStyle(fontSize: 35),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).teamApoint}',
                            style: TextStyle(fontSize: 150),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(team: 'A', buttonNumber: 1);
                            },
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(100, 50),
                                backgroundColor: Colors.orange),
                            child: Text(
                              'Add 1 point',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(team: 'A', buttonNumber: 2);
                            },
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(100, 50),
                                backgroundColor: Colors.orange),
                            child: Text(
                              'Add 2 point',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(team: 'A', buttonNumber: 3);
                            },
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(100, 50),
                                backgroundColor: Colors.orange),
                            child: Text(
                              'Add 3 point',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 350,
                        child: VerticalDivider(
                          color: Colors.grey,
                          thickness: 2,
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            'Team B',
                            style: TextStyle(fontSize: 35),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).teamBpoint}',
                            style: TextStyle(fontSize: 150),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(team: 'B', buttonNumber: 1);
                            },
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(100, 50),
                                backgroundColor: Colors.orange),
                            child: Text(
                              'Add 1 point',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(team: 'B', buttonNumber: 2);
                            },
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(100, 50),
                                backgroundColor: Colors.orange),
                            child: Text(
                              'Add 2 point',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(team: 'B', buttonNumber: 3);
                            },
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(100, 50),
                                backgroundColor: Colors.orange),
                            child: Text(
                              'Add 3 point',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<CounterCubit>(context).teamApoint;
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(100, 50),
                        backgroundColor: Colors.orange),
                    child: Text(
                      'Reset',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
        listener: (context, state) {
          if (state is CounterAIncrementState) {
            teamAPoints = BlocProvider.of<CounterCubit>(context).teamApoint;
          } else {
            teamBPoints = BlocProvider.of<CounterCubit>(context).teamBpoint;
          }
        });
  }
}
