import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Historia mitológica',
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
             children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                 color: Colors.black,
                  image: DecorationImage(
                   image: NetworkImage(''),
                    fit: BoxFit.cover
                  )
                ),
                child: Column(
                  children: [
                    Text('Mitologia Nordica', style: TextStyle(color: Colors.blue, fontSize: 30)),
                    Text('Mitologia Griega', style: TextStyle(color: Colors.red,fontSize: 25)),
                    Text('Mitologia Egipcia', style: TextStyle(color: Colors.yellow, fontSize: 20),),
                  ],
                ),
              ),
              ListTile(
                title:const Text('Mitologia Nordica'),
                onTap: () {
                  // Acción cuando se selecciona la opción 1
                },
              ),
              ListTile(
                title:const Text('Mitologia Griega'),
                onTap: () {
                  // Acción cuando se selecciona la opción 1
                },
              ),
              ListTile(
                title:const Text('Mitologia  Egipcia'),
                  onTap: () {
                  // Acción cuando se selecciona la opción 1
                },
              ),
          ],
          ),
        ),
        appBar: AppBar(
          title: const Text('Historias mitológicas'),
        ),
        body: SingleChildScrollView(
         child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround, //Centra el contenido de la columna  
            children: [
              Row(
                children: [
                  Image.network(
                   'https://todomitologia.com/wp-content/uploads/Pintura-mitologia-griega.jpg', // Reemplaza la URL con la URL de tu imagen en la web
                    width: 390, // Ancho de la imagen
                    height: 390, // Alto de la imagen
                  ),
                ],
              ),
              Row(
                mainAxisAlignment:  MainAxisAlignment.center, //Centra el contenido de la fila
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(20),
                    width: 80,
                    height: 30,
                    color: Colors.blue,
                    child: const Text('Nordica', style: TextStyle(color: Colors.white), textAlign: TextAlign.center),
                    
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(20),
                    width: 80,
                    height: 30,
                    color: Colors.red,
                    child: const Text('Griega', style: TextStyle(color: Colors.white), textAlign: TextAlign.center),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(20),
                    width: 80,
                    height: 30,
                    color: Colors.yellow,
                    child: const Text('Egipcia', style: TextStyle(color: Colors.white), textAlign: TextAlign.center),
                  )
                ],
              ),
                Container(
                margin: const EdgeInsets.all(15.0),
                  child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         Text(
                           'Mitología Nórdica: La mitología nórdica, también conocida como la mitología escandinava, es un conjunto de creencias y leyendas de los antiguos pueblos vikingos y germánicos. Destacan deidades como Odín, Thor y Freyja, junto con el épico Ragnarök, un conflicto cósmico que marca el fin del mundo y el renacimiento de un nuevo ciclo de la vida.\n \n Mitología Griega: La mitología griega es un rico tapiz de historias míticas que se desarrollaron en la antigua Grecia. Entre sus protagonistas se encuentran los poderosos dioses del Olimpo, como Zeus, Hera y Apolo, así como héroes legendarios como Aquiles y Heracles. Estas historias tratan de la condición humana, la aventura y el destino, y han influido profundamente en la cultura occidental.\n \n Mitología Egipcia: La mitología egipcia es una antigua y compleja tradición religiosa del antiguo Egipto. Destaca por sus dioses como Ra, el dios del sol, y Osiris, el dios de la resurrección. La creencia en la vida después de la muerte y la construcción de las pirámides son aspectos esenciales de esta mitología, que refleja la relación de los egipcios con el ciclo de la vida, la muerte y la eternidad.', style: TextStyle(fontSize: 16, color: Colors.black)   
                          )
                        ],   
                  ),
        ),
              const Row( 
                  mainAxisAlignment: MainAxisAlignment.center,       
                  children: [         
                  Row(
                    children: [
                      Column(
                        children: [
                          Icon(Icons.air, color: Colors.black),               
                        ],
                      )
                    ],
                  ), 
                  SizedBox(width: 70),
                  Row(
                    children: [
                      Column(
                        children: [
                          Icon(Icons.thunderstorm, color: Colors.black),
                        ],
                      )
                    ],
                  ),
                   SizedBox(width: 70),
                  Row(
                    children: [
                      Column(
                        children: [
                          Icon(Icons.remove_red_eye, color: Colors.black),
                        ],
                      )
                    ],
                  ),
                  ],
                ),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    
                    margin: const EdgeInsets.all(5),
                    width: 90, //ancho del boton
                    height: 60,
                    child:
                     TextButton(
                    onPressed: () {},
                    child: const Text('Odin', style: TextStyle(color: Colors.green, fontSize: 20), textAlign: TextAlign.center)
                    )
                  )
                  ,
                  Container(
                    
                    margin: const EdgeInsets.all(5),
                    width: 90,
                    height: 60,
                    child: TextButton(
                    onPressed: () {},
                    child: const Text('Zeus', style: TextStyle(color: Colors.green, fontSize: 20), textAlign: TextAlign.center) 
                    )
                  ),
                  
                  Container(
                     
                    margin: const EdgeInsets.all(5), //es para el exterior del boton
                    width: 90,
                    height: 60,
                    child:
                      TextButton(
                    onPressed: () {},
                    child: 
                    const Text('Osiris', style: TextStyle(color: Colors.green, fontSize: 20), textAlign: TextAlign.center)
                    )
                  )
                ],
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Odin, el dios de la guerra, la muerte y la sabiduría. \n ', style: TextStyle(color: Colors.blue, fontSize: 20)),
                  Text('Zeus, el dios del cielo y el trueno, rey del olimpo.\n ', style: TextStyle(color: Colors.yellow, fontSize: 20)),
                  Text('Osiris, el dios de la resurrección y la vida después de la muerte.\n ' , style: TextStyle(color: Colors.red, fontSize: 20)),
                ],
              ),
              Container(
                margin: const EdgeInsets.all(15.0),
                  child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         Text(
                           'La mitología es un conjunto de creencias, leyendas y relatos que han surgido en diversas culturas a lo largo de la historia. Estas narrativas a menudo involucran a dioses, héroes y criaturas míticas, y desempeñan un papel importante en la explicación de fenómenos naturales, la moralidad humana y la identidad cultural. Cada cultura tiene su propia mitología única, que refleja sus valores, tradiciones y cosmovisión. Las mitologías, como la nórdica, la griega y la egipcia, continúan fascinando a las personas de todo el mundo debido a sus historias épicas y su influencia en la literatura, el arte y la filosofía a lo largo de los siglos.', style: TextStyle(fontSize: 16, color: Colors.black)   
                          )
                        ],   
                  ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                   '3 Historias de Mitología', style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                ],
              )

            ]
            ,
          ),
          ),
        ),
    );
  }
}