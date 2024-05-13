import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/providerapp/providerz/decrement_provider.dart';
import 'package:statemanagement/providerapp/providerz/increment_provider.dart';

class ProviderApp extends StatelessWidget {
  const ProviderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => DecrementProvider()),
        ChangeNotifierProvider(create: (context) => IncrementProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        home: const ProviderHomePage(),
      ),
    );
  }
}

class ProviderHomePage extends StatefulWidget {
  const ProviderHomePage({super.key});

  @override
  State<ProviderHomePage> createState() => _ProviderHomePageState();
}

class _ProviderHomePageState extends State<ProviderHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<IncrementProvider>(builder: (context, counter, child) {
              return Text(
                '${counter.count}',
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              );
            }),
            const SizedBox(height: 50),
            ElevatedButton(
                onPressed: () {
                  Provider.of<IncrementProvider>(context, listen: false)
                      .increment();
                  final value =
                      Provider.of<IncrementProvider>(context, listen: false)
                          .count;
                  Provider.of<DecrementProvider>(context, listen: false)
                      .decrement(value);
                },
                child: const Icon(
                  Icons.add,
                  size: 30,
                )),
            SizedBox(
              height: 100,
            ),
            Consumer<DecrementProvider>(builder: (context, decrement, child) {
              return Consumer<DecrementProvider>(
                  builder: (context, decrement, child) {
                return Text(
                  decrement.getGross.toString(),
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                );
              });
            })
          ],
        ),
      ),
    );
  }
}
