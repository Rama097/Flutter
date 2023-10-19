import 'package:flutter/material.dart';
import 'package:projetflutter/increment.dart';


class DecrementPage extends StatefulWidget {
  const DecrementPage({super.key, required this.title, required this.counter});

  final String title;
  final int counter;
  

  @override
  State<DecrementPage> createState() => _DecrementPageState();
}

class _DecrementPageState extends State<DecrementPage> {
  int _counter = 0;

 
  void _decrementCounter() {
    setState(() {
      
      _counter--;
    });
  }

  void _navigateToIncrementPage(BuildContext context, Widget IncrementPage){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => IncrementPage)
   );
   }
 

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
         
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
             onPressed:()=> _decrementCounter(),
             child: const Icon(Icons.remove),
             ), // This trailing comma makes auto-formatting nicer for build methods.
             SizedBox(height: 10),
                ElevatedButton(
             onPressed: ()=> _navigateToIncrementPage(context, IncrementPage(title: "Incrementation")),
               child: Text('Aller à la page incrementation'),
        ),
            
          ],
        ),
      ),
    );
  }
}
