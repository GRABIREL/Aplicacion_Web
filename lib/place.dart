import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PlacesScreen(),
    );
  }
}

class PlacesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lugares de Interes',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            elevation: 4.0, 
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0), 
            child: ListTile(
              leading: CircleAvatar(
                radius: 30, 
                backgroundImage: AssetImage('assets/landa.png'),
              ),
              title: Center(
                child: Text('Landa, un pueblo de origen'),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Landa()),
                );
              },
            ),
          ),
          Card(
            elevation: 4.0,
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: ListTile(
               leading: CircleAvatar(
                radius: 30, 
                backgroundImage: AssetImage('assets/museo.png'), 
              ),
              title: Center(
                child: Text('Museos Comunitarios'),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Museos()),
                );
              },
            ),
          ),
          Card(
            elevation: 4.0,
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: ListTile(
               leading: CircleAvatar(
                radius: 30, 
                backgroundImage: AssetImage('assets/misiones.png'),
              ), 
              title: Center(
                child: Text('Misiones Franciscanas'),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MissionDetailsScreen()),
                );
              },
            ),
          ),
          Card(
            elevation: 4.0,
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: ListTile(
               leading: CircleAvatar(
                radius: 30, 
                backgroundImage: AssetImage('assets/gastronomia.png'),
              ),
              title: Center(
                child: Text('Gastronomía local'),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Gastronomia()),
                );
              },
            ),
          ),
          // 
        ],
      ),
    );
  }
}

class Landa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Descubre Landa de Matamoros',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: 450, 
          padding: EdgeInsets.all(16.0),
          margin: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black12,
              width: 4.0,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            gradient: LinearGradient(
              colors: [Colors.deepOrange, Colors.amberAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            children: [
              Text(
                'Landa de Matamoros',
                style: TextStyle(
                  fontSize: 30.0, 
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center, 
              ),
              SizedBox(height: 20.0),

              Text(
                'Landa es un lugar de fe, belleza y cultura en el corazón de la Sierra Gorda con una variedad de climas que no podrás creer. \n\nLas raíces landenses tienen su origen en la época prehispánica, pues fue un territorio ocupado por poblaciones indígenas Pames, Otomíes y Huastecos que dejaron historia y memorias vivas.',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center, 
              ),
              SizedBox(height: 20.0), 

              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  'assets/landa_matamoros.png', 
                  width: 350, 
                  height: 250, 
                  fit: BoxFit.cover, 
                ),
              ),
              SizedBox(height: 20.0),

              ElevatedButton(
                onPressed: () {
                  // n
                },
                child: Text(
                  'El nombre de Landa tiene su origen de Lan-Há, que proviene del chichimeca y significa "lugar cenagoso" Es en 1919 cuando se le agrega el Matamoros por el insurgente Don Mariano Matamoros.',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black12,
                  onPrimary: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Museos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Descubre Nuestros Museos',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        
      ),
      body: Center(
        child: Container(
          width: 450,
          padding: EdgeInsets.all(16.0),
          margin: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black12,
              width: 4.0,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            gradient: LinearGradient(
              colors: [Colors.brown, Colors.orange],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            children: [
              Text(
                'Museo Comunitario',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center, 
              ),
              SizedBox(height: 20.0),

              Text(
                'En la cabecera municipal, puedes visitar el Museo de Arte Agropecuario, donde se exhiben antiguas fotografías, armas y utensilios de labranza que usaban antaño. \n\nLanda cuenta con dos museos comunitarios, el Museo Comunitario de Tilaco y el Museo Comunitario de Agua Zarca, que también exponen fotografías históricas y documentos sobre la historia de la región, así como herramientas que usaban las personas de la época para hacer sus labores agrícolas.',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),

              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  'assets/exibicion.png',
                  width: 350,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20.0),  
            ],
          ),
        ),
      ),
    );
  }
}


class MissionDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Descubre las Misiones Franciscanas',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        
        
      ),
      body: Center(
        child: Container(
          width: 450,
          padding: EdgeInsets.all(16.0),
          margin: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black12,
              width: 4.0, 
            ),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            gradient: LinearGradient(
              colors: [Colors.pink, Colors.orange],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            children: [
              Text(
                'Misiones Franciscanas en Landa de Matamoros',
                style: TextStyle(
                  fontSize: 30.0, 
                  fontWeight: FontWeight.bold, 
                  color: Colors.white, 
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),

              Text(
                'Landa de Matamoros alberga a dos de las cinco Misiones Franciscanas. La Misión de Landa, dedicada a la Purísima Concepción, fue construida entre 1761 y 1764 en estilo barroco, y es considerada la más hermosa y ornamentada de todas. La Misión de Tilaco, dedicada a San Francisco de Asís, se construyó entre 1754 y 1762 y es la mejor conservada, aunque su ornamentación es más austera y sutil. \n\nExplora la riqueza histórica y arquitectónica de estas misiones en un viaje a través del tiempo.',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(
                      'assets/misiones.png',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(
                      'assets/tilaco.png',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20.0),

              ElevatedButton(
                onPressed: () {
                  
                },
                child: Text(
                  'Conócelas a través de recorridos guiados con explicación acerca de los aspectos históricos, arquitectónicos y culturales para aprender su legado, su historia y sus singularidades artísticas.',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black12,
                  onPrimary: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class Gastronomia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Delicias Gastronómicas Locales',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        
      ),
      body: Center(
        child: Container(
          width: 450,
          padding: EdgeInsets.all(16.0),
          margin: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: 4.0,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            gradient: LinearGradient(
              colors: [Colors.green, Colors.orange],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            children: [
              Text(
                'Sabores Únicos de Landa de Matamoros',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),

              Text(
                'La gastronomía del municipio de Landa de Matamoros conforma un abanico de sabores y colores únicos de la región. Algunos de los platillos típicos incluyen nopales con pipián, enchiladas, gorditas de horno, bocoles, cecina, pemoches con huevo, mole rojo y verde, barbacoa, chicharrón de res y puerco, quelites, salsa borracha, chile con vinagre o pulque, pan de pulque y el inconfundible zacahuil, un tamal de gran tamaño relleno de carne de puerco, envuelto en hojas de plátano.',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),

              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  'assets/comida.png',
                  width: 250,
                  height: 200,
                  fit: BoxFit.cover, 
                ),
              ),

              SizedBox(height: 20.0),

              ElevatedButton(
                onPressed: () {
                  //
                },
                child: Text(
                  'La bebida clásica de la región es el pulque, bebida de los dioses ancestrales, pero también encontrarás variedad de licores artesanales, aguardiente, aguas frescas de fruta y atole de teja. Por último, no te quedes sin probar el café que se cultiva en la región de Agua Zarca y Neblinas; en Landa, el café es tan especial que se brinda a todas las visitas, sin importar la hora, como parte de una costumbre antigua.',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black26,
                  onPrimary: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

