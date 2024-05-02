import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/bloc/todo_bloc.dart';
import 'package:todo/bloc/todo_state.dart';
import 'package:todo/screens/add_item.dart';
import 'package:todo/widgets/item_container.dart';

import '../bloc/todo_event.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<BlocTodo>(context);
    bloc.add(TodoFetched());
    return Scaffold(
      backgroundColor: const Color(0xFFF1F5F9),
      appBar: AppBar(
        backgroundColor: const Color(0xFF240A34),
        centerTitle: true,
        title: Text(
          DateTime.now().toString().split(' ')[0],
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color(0xFFF1F5F9),
              width: double.infinity,
              height: 400,
              child: Stack(
                children: [
                  Container(
                    color: const Color(0xFF240A34),
                    height: 200,
                    width: double.infinity,
                    child: const Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          'TODO LIST',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w900),
                        )),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      margin: const EdgeInsets.only(top: 100),
                      width: 350,
                      height: 300,
                      child: BlocBuilder<BlocTodo, TodoState>(
                        builder: (context, state) {
                          if (state is TodoLoaded) {
                            final itemsList = state.list
                                .where((element) => element.isDone == 0)
                                .toList();
                            if (itemsList.isEmpty) {
                              return Center(
                                child: Text(
                                  'Nothing to do',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              );
                            } else {
                              return ListView.builder(
                                itemCount: itemsList.length,
                                itemBuilder: (context, item) {
                                  return ItemContainer(
                                    todo: itemsList[item],
                                  );
                                },
                              );
                            }
                          } else {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'completed',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              width: 350,
              height: 200,
              child: BlocBuilder<BlocTodo, TodoState>(
                builder: (context, state) {
                  if (state is TodoLoaded) {
                    final itemsDoneList = state.list
                        .where((element) => element.isDone == 1)
                        .toList();
                    if (itemsDoneList.isEmpty) {
                      return Center(
                        child: Text(
                          "0 Completed Task",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    }
                    return ListView.builder(
                      itemCount: itemsDoneList.length,
                      itemBuilder: (context, index) {
                        return ItemContainer(todo: itemsDoneList[index]);
                      },
                    );
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xFF240A34))),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => AddItems()));
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          "ADD NEW ITEM",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                      ))),
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
