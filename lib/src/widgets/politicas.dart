import 'package:flutter/material.dart';
import 'package:flutter_application_web_1/src/utils/colors.dart';

class PoliticasPrivacidad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final text1 =
        'Erick Pasache creó la aplicación “Paca drive” y “Paca drive conductor”.\n';
    final text2 =
        'Esta página se utiliza para informar a los visitantes sobre mis políticas con la recopilación, uso y divulgación de Información personal si alguien decide utilizar mi Servicio.\n';

    final text3 =
        'Si elige utilizar mi Servicio, entonces acepta la recopilación y el uso de información en relación con esta política. La información personal que recopilo se utiliza para proporcionar y mejorar el servicio. No usaré ni compartiré su información con nadie excepto como se describe en esta Política de Privacidad.\n';

    final text4 =
        'Los términos utilizados en esta Política de privacidad tienen el mismo significado que en nuestros Términos y condiciones, a los que se puede acceder en Paca drive a menos que se defina lo contrario en esta Política de privacidad.\n\n';

    final text5 =
        'Para una mejor experiencia, mientras utiliza nuestro Servicio, es posible que le solicite que nos proporcione cierta información de identificación personal, que incluye, entre otros, nombre, apellido, correo electrónico y teléfono. La información que solicito se conservará en su dispositivo y nuestra base de datos y no la recopilaré de ninguna manera.\n';

    final text6 =
        'La aplicación utiliza servicios de terceros que pueden recopilar información utilizada para identificarlo.\n';
    final text7 =
        '“Paca drive” es una aplicación móvil, que le permite a los Usuario Solicitantes, por medio de sus teléfonos móviles o tabletas solicitar servicios de traslado a los Usuarios Conductores afiliados a la aplicación móvil de “Paca drive conductor”, así como conocer el nombre, ubicación y otra información correspondiente al usuario conductor respectivo.  El Usuario Solicitante reconoce que la información que reciba de los Usuarios Conductores se trata de Datos Personales, por lo que a su vez se constituye como único responsable del manejo de esta y se compromete a utilizarla exclusivamente a efectos de solicitar el servicio del Usuario Conductor y durante el desarrollo de este.\n';
    final text8 =
        '“Paca drive conductor” es una aplicación móvil, que le permite a los Usuarios Conductores, por medio de sus teléfonos móviles o tabletas aceptar solicitudes de servicios de transporte requeridos por los Usuarios Solicitantes. Los Usuarios Conductores son independientes y libres de aceptar o rechazar las solicitudes de servicios que envíe el Usuario Solicitante, incluso si los Usuarios Conductores aparecen como disponibles en la Aplicación.\n';
    final text9 =
        'Al respecto, por medio de la presente Política de Privacidad, queda establecido que ni “Paca drive” ni mi Aplicación “Paca drive conductor” son una empresa de taxi o “radio taxi” ni presta un servicio de transporte de pasajeros, ni posee una flota de vehículos para transportar pasajeros, ni es un sitio web de taxi. Asimismo, “Paca drive conductor” no tiene una relación laboral, de subordinación o exclusividad con los Usuarios Conductores.  Únicamente autorizo el uso de la Aplicación “Paca drive” a efectos que el Usuario Solicitante pueda conectarse a través de esta con los Usuarios Conductores que utilicen la Aplicación de “Paca drive conductor” para solicitar sus servicios de traslado.\n\n';

    final text10 =
        'Quiero informarle que cada vez que usa mi Servicio, en caso de un error en la aplicación, recopilo datos e información (a través de productos de terceros) en su teléfono llamado Datos de registro. Estos Datos de registro pueden incluir información como la dirección de Protocolo de Internet ("IP") de su dispositivo, el nombre del dispositivo, la versión del sistema operativo, la configuración de la aplicación cuando utiliza mi Servicio, la hora y fecha de su uso del Servicio y otras estadísticas.\n\n';

    final text11 =
        'Las cookies son archivos con una pequeña cantidad de datos que se utilizan comúnmente como identificadores únicos anónimos. Estos se envían a su navegador desde los sitios web que visita y se almacenan en la memoria interna de su dispositivo.\n';

    final text12 =
        'Este Servicio no utiliza estas "cookies" explícitamente. Sin embargo, la aplicación puede utilizar códigos de terceros y bibliotecas que utilizan "cookies" para recopilar información y mejorar sus servicios. Tiene la opción de aceptar o rechazar estas cookies y saber cuándo se envía una cookie a su dispositivo. Si opta por rechazar nuestras cookies, es posible que no pueda utilizar algunas partes de este Servicio.\n\n';

    final text13 =
        'Puedo emplear a empresas e individuos de terceros por las siguientes razones:\n';
    final text14 = 'Para facilitar nuestro Servicio;\n';
    final text15 = 'Para proporcionar el Servicio en nuestro nombre;\n';
    final text16 = 'Para realizar servicios relacionados con el servicio; o\n';
    final text17 =
        'Para ayudarnos a analizar cómo se utiliza nuestro Servicio.\n';
    final text18 =
        'Quiero informar a los usuarios de este Servicio que estos terceros tienen acceso a su Información personal. El motivo es realizar las tareas que se les asignen en nuestro nombre. Sin embargo, están obligados a no divulgar ni utilizar la información para ningún otro propósito.\n\n';

    final text19 =
        'Valoro su confianza al proporcionarnos su información personal, por lo que nos esforzamos por utilizar medios comercialmente aceptables para protegerla. Pero recuerde que ningún método de transmisión a través de Internet o método de almacenamiento electrónico es 100% seguro y confiable, y no puedo garantizar su absoluta seguridad.\n\n';
    final text20 =
        'Estos Servicios no se dirigen a nadie menor de 13 años. No recopilo a sabiendas información de identificación personal de niños menores de 13 años. En el caso de que descubra que un niño menor de 13 años me ha proporcionado información personal, la elimino inmediatamente de nuestros servidores. Si usted es padre o tutor y sabe que su hijo nos ha proporcionado información personal, comuníquese conmigo para que pueda realizar las acciones necesarias.\n\n';

    final text21 =
        'Puedo actualizar nuestra Política de privacidad de vez en cuando. Por lo tanto, le recomendamos que revise esta página periódicamente para ver si hay cambios. Le notificaré cualquier cambio publicando la nueva Política de privacidad en esta página.\n';

    final text22 = 'Esta política es efectiva a partir del 2021-12-31\n\n';

    final text23 =
        'Si tiene alguna pregunta o sugerencia sobre mi Política de privacidad, no dude en contactarnos en paca.systems.ventas@gmail.com.\n';

    final text24 =
        'Esta página de política de privacidad fue creada en privacypolicytemplate.net y modificada / generada por App Privacy Policy Generator .\n\n';

    return Scaffold(
      appBar: AppBar(
        title: Text('Politica de privacidad'),
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
              _titulos('Introducción\n'),
              Text(text1),
              Text(text2),
              Text(text3),
              Text(text4),
              _titulos('Recopilación y uso de información\n'),
              Text(text5),
              Text(text6),
              Text('  - Servicios de Google Play.\n\n'),
              _titulos('Funciones de la Aplicación\n'),
              Text(text7),
              Text(text8),
              Text(text9),
              _titulos('Dato de registro\n'),
              Text(text10),
              _titulos('Cookies\n'),
              Text(text11),
              Text(text12),
              _titulos('Proveedores de servicio\n'),
              Text(text13),
              Text(text14),
              Text(text15),
              Text(text16),
              Text(text17),
              Text(text18),
              _titulos('Seguridad\n'),
              Text(text19),
              _titulos('Privacidad de los niños\n'),
              Text(text20),
              _titulos('Cambios a esta política de privacidad\n'),
              Text(text21),
              Text(text22),
              _titulos('Contáctenos\n'),
              Text(text23),
              Text(text24),
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
