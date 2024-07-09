import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Pruebas de Widget';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const Center(
          child:SingleChildScrollView(
            child: Column(
              children: [ 
                  TitleSection(
                  name: 'Panecillo', 
                  location: 'Quito,Plaza Grande',
                  ),ImageSection(image: 'images/Panecillo.jpg'),ButtonSection(),
                   TextSection(description: "El Panecillo es una escultura de aluminio que capta la atención desde casi cualquier parte de Quito, debido a su ubicación. La Virgen del Panecillo es una escultura de aluminio que capta la atención desde casi cualquier parte de Quito, al estar ubicada en una de las zonas más altas de la ciudad"),
                    
                   TitleSection(
                  name: 'La ronda', 
                  location: 'Quito,24 de Mayo',
                  ),ImageSection(image: 'images/Laronda.jpg'),ButtonSection(),
                  TextSection(description: "La Ronda, calle empedrada, larga y estrecha, recorre una encantadora arquitectura colonial, típica del Centro Histórico de Quito. Años atrás fue conocida como el puente de los “gallinazos” (Ullaguanga-yacu) o El Chaquiñan porque conectaba una de las chorreras del Pichincha y recorría la Quebrada de los Gallinazos."),
                    
                   TitleSection(
                  name: 'Galapagos', 
                  location: 'Ecuador,Isla santa cruz',
                  ),ImageSection(image: 'images/Galapagos.png'),ButtonSection(),
                  TextSection(description: "La isla se caracteriza por su paisaje geológico y la variedad de su vegetación, distinguiendo 7 zonas de vegetación en su altitud de 864 m sobre el nivel del mar. La isla esta llena de encantos naturales, hermosas playas, especies animales únicas, vegetación exuberante, cráteres y túneles de lava."),
                 
                   TitleSection(
                  name: 'Guayaquil', 
                  location: 'Malecon,Pedro carbo y 10 de Agosto',
                  ), ImageSection(image: 'images/Guayaquil.png'),
                  ButtonSection(),
                  TextSection(description: "El Malecón 2000 tiene una extensión de 2,5 km. Su recorrido empieza por el ala sur donde está el Palacio de Cristal y la Plaza Olmedo; y termina en las faldas del Cerro Santa Ana y Barrio Las Peñas. Si te sientes aventurero, puedes recorrerla de extremo a extremo.")
              ],      
                       ),
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22),
      child: Row(
        children: [
          Expanded(
            //1/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //2/
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          //3/
          Icon(
            Icons.directions_car_sharp,
            color: Color.fromARGB(255, 244, 171, 54),
          ),
          const Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color,
            icon: Icons.call,
            label: 'Comunicate',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.route,
            label: 'Ruta',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.share_location_outlined,
            label: 'Compartir',
          ),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}
class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}