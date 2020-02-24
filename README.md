# Planets
## Autor

Héctor Henríquez Cabrera

Correo: [hector.henriquez101@alu.ulpgc.es](mailto:hector.henriquez101@alu.ulpgc.es)

Asignatura: Creando Interfaces de Usuario (CIU)

## Introducción

En esta tercera práctica se ha creado una aplicación mediante **processing3** un sistema solar. En dicho sistema se ha dispuesto un sol que contiene varios astros orbitando sobre él, estos mismo tienen la misma posibilidad de tener otros astros orbitando sobre ellos. Por lo que se dispuso una estructura de clases para representar dicho sistema. Además se dispuso de la funcionalidad de poder inclinar el sistema para visualizarlo desde otro ángulo.

## Demo



En la demo se puede apreciar el la rotación de cada planeta alrededor del Sol que se encuentra en el centro del sistema, además de que algunos plantes poseen lunas que orbitan alrededor de ellos.

## Implementación

### Librerías

Para la implementación de esta aplicación se ha usado **GifAnimation**. Pero esta no es necesario para su reproducción en otro sistema ya que  solo se uso para  la inclusión del gif, que serviría de demo, pero a  la hora de probar la aplicación no es necesario tenerlo instalado debido a que no ejecuta nada actualmente (en caso de querer generar un gif nuevo descomentar las líneas de esta librería) .

### Diseño

Para el diseño de esta aplicación se optó por añadir la menor cantidad de elementos que dificultarán la visualización del sistema, debido a que la funcionalidad principal era mostrar un sistema solar, por lo que se si sobrecargaba esta funcionalidad se habría quedado en segundo plano.

### Funcionalidades

Además de cubrir las funcionalidades principales se ha añadido la funcionalidad de poder cambiar la inclinación de todo el sistema para tener una mejor perspectiva del mismo. Para controlar esto se hace uso  de las teclas UP y DOWN del teclado.

### Controles

Todas las interrupciones manejadas en este programa han sido mediante   teclado, por lo que se han manejado las interrupciones generadas  mediante la función **keyPressed** y la función **keyReleased**. Las teclas y acciones consecuentes que las activan son:

| Tecla | Uso                              |
| :---: | -------------------------------- |
|   ↑   | Inclinar el sistema hacia arriba |
|   ↓   | Inclinar el sistema hacia abajo  |

## Bibliografía

- [Guion de prácticas](https://cv-aep.ulpgc.es/cv/ulpgctp20/pluginfile.php/126724/mod_resource/content/22/CIU_Pr_cticas.pdf)
- [processing.org](https://processing.org/)