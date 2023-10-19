import 'package:flutter/material.dart';
import 'package:projetflutter/decrement.dart';

class IncrementPage extends StatefulWidget {
  const IncrementPage({super.key, required this.title, required this.counter});

  // This widget is the home page of your application. It is stateful, meaning
 
  final String title;
  final int counter;

  @override
  State<IncrementPage> createState() => _IncrementPageState();
}

class _IncrementPageState extends State<IncrementPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      
      _counter++;
    });
  }

   
   void _navigateToDecrementPage(BuildContext context, Widget DecrementPage){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => DecrementPage)

    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context)=> DecrementPage)
    );
   }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
       
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
       
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        
        child: Column(
          // Column is also a layout widget. It takes a list of children and
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Vous avez appuyé sur le bouton autant de fois :',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            
               ElevatedButton(
            onPressed: ()=> _incrementCounter(),
            child: const Icon(Icons.add),
            ),

            SizedBox(height: 10),
            ElevatedButton(
             onPressed: ()=> _navigateToDecrementPage(context, DecrementPage(title: "Decrementation")),
               child: Text('Aller à la page de décrémentation'),
        ),
           
            
          ],
        ),
      ),
    );
  }
}
