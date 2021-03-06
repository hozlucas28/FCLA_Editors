/*

  ¿Que es?
  Se trata de un archivo que es llamado por el "initPlayerLocal.sqf" que tiene como funcion colocar las instrucciones (informacion general)
  de la mision que podras y podran observar al abrir el mapa en la esquina superior derecha en la seccion "instrucciones".

  ¿Es fundamental?
  Si y No, es util para que lo jugadores puedan conocer la sitacion de la mision, su contexto y otro clase de información
  que querramos incluir.
  Si deseas borrarla simplemente borra el archivo y su llamada en el "initPlayerLocal.sqf".

  ¿Links utiles relacionados con este archivo?
  https://community.bistudio.com/wiki/createDiaryRecord

  ¿Modificar?
  Lineas 31, 37, 38, 39, 40 y 46 segun el contexto de tu mision.

  ¿Como puedo agregar más?
  Simplemente copia esto...

    player createDiaryRecord ["Diary", ["NOMBRE DE LA INSTRUCCION","
      <font color='#58D6C7' size='18' face='TahomaB'>TITULO...</font><br></br><br></br>
      DESCRIPCION.
    "], taskNull, "",false];

  y completala con lo que necesites.

*/


// ↓ Situación Actual
player createDiaryRecord ["Diary", ["Situación Actual","
<font color='#58D6C7' size='18' face='TahomaB'>Situación Actual...</font><br></br><br></br>
Gracias a la desmantelación de las bases paramilitares en la zona el Ejército Colombiano a retomado el orden en algunos puntos del departamento de Montería, se informa que el Ejército paramilitar se está reagrupando para atacar un poblado civil llamado Montelibano, gracias a la información obtenida por los discos, computadores y teléfonos confiscados tenemos la iniciativa y se a puesto un punto de control alrededor de la ciudad, su misión es dirigirse a Montelibano extraer a cada civil que se encuentran en esta población y llevarlos al punto de extracción.
Nota
1.Quetzal se encargará de hacer apoyo aéreo y extracción de civiles en la zona marcada para luego llevarlos al portaaviones Nimitz, que está prestando ayuda humanitaria con el apoyo del Ejército Naval Colombiano.
2.Si se ven sobrepasados por las fuerzas enemigas tienen un punto de retirada, cerca del punto de extracción, lo indispensable es mantener esa posición ya que el equipo Lobo, Águila y Coyote están extrayendo elementos civiles cerca de los poblados de la ciudad.
"], taskNull, "",false];

// ↓ Fuerzas Involucradas
player createDiaryRecord ["Diary", ["Fuerzas Involucradas","
<font color='#58D68D' size='18' face='TahomaB'>Fuerzas Involucradas...</font><br></br><br></br>
·<font color='#58D68D' size='12' face='TahomaB'>'EJERCITO NACIONAL DE COLOMBIA'</font>...<br></br>
Protege y sirve como fuerza armada nacional de Colombia.<br></br><br></br>
·<font color='#D65858' size='12' face='TahomaB'>'Elementos Guerrilleros y paramilitares FARC y ELN'</font>...<br></br>
Guerrilleros, narcotraficantes y elementos Paramilitares que han causado daño a los civiles que vienen en la Republica de Colombia.
"], taskNull, "",false];

// ↓ Contexto General
player createDiaryRecord ["Diary", ["Contexto General","
<font color='#58D6C7' size='18' face='TahomaB'>Contexto General...</font><br></br><br></br>
El batallón de FCLA fue llamado al territorio de la costa caribe Colombiana, debido un informe de alta actividad paramilitar en los cuales se encuentran grupos guerrilleros de las FARC y ELN que están operando en la zona y aterrorizando a la población del departamento de Montería, ocupando puertos y Bases clandestinas dentro de la zona para poder transportar armas y drogas, y así poder financiar sus operaciones.
"], taskNull, "",false];
