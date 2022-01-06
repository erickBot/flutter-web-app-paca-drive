import 'package:flutter/material.dart';
import 'package:flutter_application_web_1/src/utils/colors.dart';

class TerminosYcondiciones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final text1 =
        'Al descargar o usar la aplicación, estos términos se aplicarán automáticamente a usted; por lo tanto, debe asegurarse de leerlos detenidamente antes de usar la aplicación. No se le permite copiar o modificar la aplicación, ninguna parte de la aplicación o nuestras marcas comerciales de ninguna manera. No puedes intentar extraer el código fuente de la aplicación y tampoco debes intentar traducir la aplicación a otros idiomas o hacer versiones derivadas. La aplicación en sí, y todas las marcas comerciales, derechos de autor, derechos de bases de datos y otros derechos de propiedad intelectual relacionados con ella, aún pertenecen a Erick Pasache.\n';
    final text2 =
        'Erick Pasache se compromete a garantizar que la aplicación sea lo más útil y eficiente posible. Por ese motivo, nos reservamos el derecho de realizar cambios en la aplicación o de cobrar por sus servicios, en cualquier momento y por cualquier motivo. Nunca le cobraremos por la aplicación o sus servicios sin dejarle muy claro exactamente por qué está pagando.\n';

    final text3 =
        'La aplicación “Paca drive” y “Paca drive conductor” almacena y procesa los datos personales que nos ha proporcionado para proporcionar mi Servicio. Es su responsabilidad mantener su teléfono y el acceso a la aplicación seguros. Por lo tanto, le recomendamos que no haga jailbreak ni rootee su teléfono, que es el proceso de eliminar las restricciones y limitaciones de software impuestas por el sistema operativo oficial de su dispositivo. Podría hacer que su teléfono sea vulnerable a programa maligno / virus / programas maliciosos, comprometer las funciones de seguridad de su teléfono y podría significar que la aplicación Paca Drive no funcionará correctamente o no funcionará en absoluto.\n\n';

    final text4 =
        'Debe tener en cuenta que hay ciertas cosas de las que Erick Pasache no se responsabiliza. Ciertas funciones de la aplicación requerirán que la aplicación tenga una conexión a Internet activa. La conexión puede ser Wi-Fi o provista por su proveedor de red móvil, pero Erick Pasache no puede asumir la responsabilidad de que la aplicación no funcione con todas sus funciones si no tiene acceso a Wi-Fi y no tiene ninguno de sus asignaciones de datos a la izquierda.\n';

    final text5 =
        'Si está utilizando la aplicación fuera de un área con Wi-Fi, debe recordar que los términos del acuerdo con su proveedor de red móvil se seguirán aplicando. Como resultado, su proveedor de telefonía móvil puede cobrarle el costo de los datos durante la duración de la conexión mientras accede a la aplicación, u otros cargos de terceros. Al usar la aplicación, acepta la responsabilidad de dichos cargos, incluidos los cargos por datos de roaming si usa la aplicación fuera de su territorio de origen (es decir, región o país) sin desactivar el roaming de datos. Si no es el pagador de facturas del dispositivo en el que está utilizando la aplicación, tenga en cuenta que asumimos que ha recibido el permiso del pagador de facturas para utilizar la aplicación.\n';

    final text6 =
        'En la misma línea, Erick Pasache no siempre puede asumir la responsabilidad de la forma en que usa la aplicación, es decir, debe asegurarse de que su dispositivo permanezca cargado, si se queda sin batería y no puede encenderlo para hacer uso del Servicio, Erick Pasache no puede aceptar responsabilidad.\n';

    final text7 =
        'Con respecto a la responsabilidad de Erick Pasache por el uso que usted haga de la aplicación, cuando esté usando la aplicación, es importante tener en cuenta que, aunque nos esforzamos por asegurarnos de que esté actualizada y sea correcta en todo momento, confiamos en terceros para proporcionarnos información para que podamos ponerla a su disposición. Erick Pasache no acepta ninguna responsabilidad por cualquier pérdida, directa o indirecta, que experimente como resultado de confiar completamente en esta funcionalidad de la aplicación.\n';

    final text8 =
        'En algún momento, es posible que deseemos actualizar la aplicación. La aplicación está disponible actualmente en Android: los requisitos para el sistema (y para cualquier sistema adicional al que decidamos extender la disponibilidad de la aplicación). Erick Pasache no promete que siempre actualizará la aplicación para que sea relevante para ti y / o funcione con la versión de Android que tengas instalada en tu dispositivo. Sin embargo, se compromete a aceptar siempre las actualizaciones de la aplicación cuando se le ofrezcan. También es posible que deseemos dejar de proporcionar la aplicación y podemos dejar de utilizarla en cualquier momento sin notificarle la finalización. A menos que le indiquemos lo contrario, tras cualquier rescisión, (a) los derechos y licencias otorgados a usted en estos términos terminarán; (b) debe dejar de usar la aplicación y (si es necesario) eliminarla de su dispositivo.\n\n';

    final text9 =
        'Puedo actualizar nuestros Términos y condiciones de vez en cuando. Por lo tanto, le recomendamos que revise esta página periódicamente para ver si hay cambios. Le notificaré cualquier cambio publicando los nuevos Términos y condiciones en esta página.\n';

    final text10 =
        'Estos términos y condiciones entran en vigor a partir del 31 de diciembre de 2021.\n\n';

    final text11 =
        'Si tiene alguna pregunta o sugerencia sobre mis Términos y Condiciones, no dude en contactarme en paca.systems.ventas@gmail.com.\n';

    final text12 =
        'Esta página de Términos y condiciones fue generada por App Privacy Policy Generator.\n\n';
    return Scaffold(
      appBar: AppBar(
        title: Text('Términos y condiciones'),
        backgroundColor: MyColors.colorPrimary,
        leading: Container(),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20, left: 20, right: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Actualizado el 31 - 12- 2021\n\n'),
              _titulos('Términos Generales\n'),
              Text(text1),
              Text(text2),
              Text(text3),
              _titulos('Servicios de Google Play\n'),
              Text(text4),
              Text(text5),
              Text(text6),
              Text(text7),
              Text(text8),
              _titulos('Cambios a estos términos y condiciones\n'),
              Text(text9),
              Text(text10),
              _titulos('Contáctenos\n'),
              Text(text11),
              Text(text12),
            ],
          ),
        ),
      ),
    );
  }

  Widget _titulos(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}
