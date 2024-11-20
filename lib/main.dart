import 'package:flutter/material.dart';

void main() {
runApp(
	MaterialApp(
	    home: Scaffold(
		        appBar: AppBar(
		            title: const Text('Menu bar'),backgroundColor: Colors.greenAccent[400],
		
                // leading: IconButton(icon: const Icon(Icons.menu),    // add icon on the left
	      	    	// tooltip: 'Menu',
			          //  onPressed: () {},

                leading: Builder(
                 builder: (BuildContext context) {
                           return IconButton(

                           icon: const Icon(Icons.arrow_drop_down_outlined),
                             onPressed: () { Scaffold.of(context).openDrawer(); },
                            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,);
                             
                             },
                         ),

      
                    


		
             actions: <Widget>[

                      TextButton(onPressed: (){}, child: const Text("Options",),),
                        TextButton(onPressed: (){}, child: const Text("Payment"),),
                          TextButton(onPressed: (){}, child: const Text("Order"),),

			            IconButton( icon: const Icon(Icons.comment),
			            tooltip: 'Your comment',     // put the mouse on, display 'comment'
			        onPressed: () {},
			              ), //IconButton
		              ],
		          ), //AppBar
		
        body: Center(
		      child: CircleAvatar(backgroundColor:  Colors.pink, radius: 200,   // radius to make the avatar larger
			         // child: const Text(' I am circle Avatar', style: TextStyle(fontSize: 25, color: Colors.white),), //Text
               
                child: Image.asset('images/girl1.jpg'), )
                
		            ), //CircleAvatar
            
                  
                  
                  ),
               // ],
//              ], //Center
	
      //  ), //Scaffold

	debugShowCheckedModeBanner: false,
	
    ), //MaterialApp
  );   // run App
}    // void main
