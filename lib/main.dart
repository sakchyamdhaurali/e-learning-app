import 'package:elearning_app/pages/sign_in/sign_in.dart';
import 'package:elearning_app/pages/welcome/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: Size(1170, 2532), // Adjust according to your design
      builder: (context, child) {
        return const ProviderScope(child: MyApp());
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),

     
      initialRoute: "/",
      routes: {
        "/": (context)=> Welcome(),
        "/signIn" : (context)=> SignIn(),
        
      },
      // home: Welcome(),  //initial route "/"
    );
  }
}

// created a provider globally as a shared state or memory where it can be accessed by all pages.
// use StateProvider instead of Provider for changing value and refliect in UI
final appCount = StateProvider<int>((ref) {
  int a = 1;
  return a;
});

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //to get the current value from the provider
    int count = ref.watch(appCount);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text("Riverpod Testing"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '${ref.read(appCount)}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            heroTag: "increase",
            onPressed: () {
              //to show/change the value of UI and notifier notify the value in UI
              ref.read(appCount.notifier).state++;
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),

          FloatingActionButton(
            heroTag: "nextpage",
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const SecondPage(),
                ),
              );
            },
            tooltip: 'Next Page',
            child: const Icon(Icons.arrow_right_alt_rounded),
          ),
        ],
      ),
    );
  }
}

class SecondPage extends ConsumerWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int count = ref.watch(appCount);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('$count', style: TextStyle(fontSize: 30))],
        ),
      ),
    );
  }
}
