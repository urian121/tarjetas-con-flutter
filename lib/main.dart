import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    String titulo = 'Flutter Demo Home Page';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: titulo,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mis tarjetas'),
        ),
        body: Card(
          color: Colors
              .transparent, // El color de fondo de la tarjeta es transparente
          elevation: 0, // No hay sombra o elevación (efecto plano)
          child: Column(
            // Coloca los widgets hijos en una columna (uno debajo del otro)
            children: [
              Container(
                // Primer contenedor que define el tamaño y los bordes de la imagen
                height: 200, // Altura del contenedor
                width: 200, // Ancho del contenedor
                padding: const EdgeInsets.all(5), // Espaciado interno de 5 píxeles alrededor del contenido
                decoration: BoxDecoration(
                  // Decoración del contenedor
                  borderRadius: BorderRadius.circular(10), // Bordes redondeados con un radio de 10 píxeles
                  color: Colors.white, // Fondo blanco para el contenedor
                ),
                child: Container(
                  // Contenedor anidado para la imagen
                  padding: const EdgeInsets.all(10), // Espaciado interno de 10 píxeles
                  foregroundDecoration: BoxDecoration(
                    // Decoración en el primer plano del contenedor
                    borderRadius: BorderRadius.circular(10), // Bordes redondeados nuevamente
                    image: const DecorationImage(
                      // Imagen decorativa dentro del contenedor
                      image: AssetImage('assets/img/logo.jpg'), // Ruta de la imagen almacenada localmente
                      fit: BoxFit.cover, // La imagen se ajusta para cubrir todo el contenedor
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10.0), // Espacio vacío de 10 píxeles debajo del contenedor de la imagen
              Container(
                width:300,
                height: 200,
               // width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue, // El color debe estar aquí dentro del BoxDecoration
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8), // Opcional, si quieres bordes redondeados
                      child: Image.network(
                        'https://es.web.img3.acsta.net/c_310_420/pictures/13/12/13/08/50/378271.jpg',
                        height: double.infinity, // Ocupa todo el alto disponible
                        fit: BoxFit.cover, // La imagen se ajusta para cubrir todo el espacio
                      ),
                    ),
                  
                    title: const Text(
                      '01:05 A.M.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    subtitle: const Text(
                      'Viernes 17 de Junio',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    //tileColor: Colors.red, // Color de fondo del ListTile
                    textColor: Colors.white, // Color del texto
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


/**
 * Explicación detallada:

    Card: Es un widget que proporciona un contenedor con una sombra o "elevación" para dar una sensación de profundidad. En este caso, la Card tiene una sombra desactivada (elevation: 0) y su color de fondo es transparente.

    Column: Se usa para organizar varios widgets hijos en una disposición vertical. Aquí contiene dos elementos: el Container para la imagen y un SizedBox para crear un pequeño espacio vertical.

    Primer Container:
        Define un área de 200x200 píxeles con bordes redondeados (especificados por borderRadius).
        Tiene un color de fondo blanco.
        Dentro, tiene otro Container que contiene la imagen.

    Segundo Container (anidado):
        Añade un margen interior (padding) de 10 píxeles.
        La imagen se agrega usando foregroundDecoration y se ajusta con BoxFit.cover, lo que asegura que la imagen cubra todo el contenedor sin distorsión, recortando si es necesario.
        La imagen se toma de los activos locales (assets/img/logo.jpg).

    SizedBox: Crea un espacio vacío de 10 píxeles después del contenedor de la imagen, separando visualmente los elementos en la columna.
 */