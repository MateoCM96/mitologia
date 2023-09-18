import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejemplo de Widgets', 
      home: Scaffold(
        drawer: Drawer(
          child: ListView( 
            padding: EdgeInsets.zero, //
            children: <Widget>[  //<Widget> es un tipo de dato que se utiliza para indicar que la lista solo puede contener widgets
              const DrawerHeader( //DrawerHeader es un widget que se utiliza para mostrar un encabezado en el menú lateral
                decoration: BoxDecoration(
                
                  // image: DecorationImage(
                  //   image: NetworkImage(
                  //       'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                  //   fit: BoxFit.cover,
                  // ),
                  color: Colors.blue,
                ),
                child: Column(
                  children: [
                    Text('Menú Lateral'),
                    Text('Menú Lateral'),
                    Text('Menú Lateral'),
                  ],
                ),
              ),
              ListTile(
                title: const Text('Opción 1'),
                onTap: () {
                  // Acción cuando se selecciona la opción 1
                },
              ),
              ListTile(
                title: const Text('Opción 2'),
                onTap: () {
                  // Acción cuando se selecciona la opción 2
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text('Ejemplo de Widgets'),
        ),
        body: SingleChildScrollView( //SingleChildScrollView es un widget que se utiliza para que el contenido de la aplicación se pueda desplazar  
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Ejemplo de Texto',
                style: TextStyle(fontSize: 24.0),
              ),
              Image.network(
                'https://via.placeholder.com/250',
                width: 150.0,
                height: 150.0,
              ),
              Container(
                color: Colors.blue,
                padding: const EdgeInsets.all(16.0), //EdgeInsets es un widget que se utiliza para agregar espacios entre los widgets, padding es el espacio entre el contenido y el borde del contenedor
                margin: const EdgeInsets.all(16.0), //EdgeInsets es un widget que se utiliza para agregar espacios entre los widgets, margin es el espacio entre el borde del contenedor y el contenido
                //diferencia entre padding y margin
                child: const Text(
                  'Ejemplo de Container',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  TextButton(
                    onPressed: () {},
                    child: const Text('Botón 1'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Botón 2'),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('Botón 3'),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.star),
                  ),
                ],
              ),
              ListView.builder(
                shrinkWrap: true, //se utiliza para que el ListView se ajuste al contenido  
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Elemento $index'),
                  );
                },
              ),
              AppBar(
                title: const Text('Barra de Aplicación 2'),
              ),
              const TextField(
                // keyboardAppearance: Brightness.dark,
                // keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Ingrese un texto',
                ),
              ),
              AlertDialog(
                title: const Text('Diálogo de ejemplo'),
                content: const Text('Este es un cuadro de diálogo de ejemplo.'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Cerrar'),
                  ),
                ],
              ),
              const Card(
                elevation: 4.0,
                margin: EdgeInsets.all(16.0),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'Usuario Ejemplo',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          // color: Colors.blue,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Correo: usuario@example.com',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      Text(
                        'Teléfono: +1 123-456-7890',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
              ),
              // const DefaultTabController(
              //   length: 3,
              //   child: Column(
              //     children: <Widget>[
              //       TabBar(
              //         tabs: <Widget>[
              //           Tab(text: 'Tab 1'),
              //           Tab(text: 'Tab 2'),
              //           Tab(text: 'Tab 3'),
              //         ],
              //       ),
              //       TabBarView(
              //         children: <Widget>[
              //           Center(child: Text('Contenido de Tab 1')),
              //           Center(child: Text('Contenido de Tab 2')),
              //           Center(child: Text('Contenido de Tab 3')),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),

              BottomNavigationBar(
                // currentIndex: 1,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Inicio',
                    // tooltip: 'Inicio',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    label: 'Buscar',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: 'Perfil',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Cascadas bellas de Risaralda, Colombia'),
        ), 
        body: Center(
          child: Column(
            children:[ 
                Image.asset('assets/1.jpg'),
              Container(
                margin: const EdgeInsets.only(top: 15, bottom: 15, left: 15, right: 15),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                 //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Column(
                        children: [
                          Text('Chorros Don Lolo', style: TextStyle(color: Colors.black),),
                          Text('Santa Rosa, Colombia', style: TextStyle(color: Colors.grey))
                        ],
                      )
                    ],),
                   SizedBox(width: 120),
                    Row(children: [
                      Icon(Icons.star, color: Colors.red),
                      Text('4.5'),
                      ],
                        ),
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
                          Icon(Icons.phone, color: Colors.blue),
                          Text('CALL')
                        ],
                      )
                    ],
                  ), 
                  SizedBox(width: 70),
                  Row(
                    children: [
                      Column(
                        children: [
                          Icon(Icons.route, color: Colors.blue),
                          Text('ROUTE')
                        ],
                      )
                    ],
                  ),
                   SizedBox(width: 70),
                  Row(
                    children: [
                      Column(
                        children: [
                          Icon(Icons.share, color: Colors.blue),
                          Text('SHARE')
                        ],
                      )
                    ],
                  ),
                ],),
              Container(
  margin: const EdgeInsets.all(15.0),
  child: const Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Los Chorros De Don Lolo se encuentran a 1.5 kilómetros de la carretera hacia termales de San Vicente. Están ubicados en una zona boscosa donde se aprecia la belleza de la naturaleza y la inmensidad de esta cascada, que sobresale por encima de los árboles, haciéndolos ver diminutos. A cada paso que nos acercamos el sonido del bosque se desvanece cada vez más, hasta tal punto de solo escuchar el sonido del agua que cae al abismo mientras se convierte en pequeñas partículas que se asemejan a pequeñas nubes, para luego caer en los alrededores, convirtiéndose en tenue brisa. ', style: TextStyle(fontSize: 16)),
    ],
  ),
)

                ],   
          ), 
        ),        
      ),
    );
  }
}
