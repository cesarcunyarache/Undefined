class Food {
  int? id;
  String? name;
  String? picture;
  int? price;
  String? description;
  double? calification;
  String category;
  List<String> steps;
  List<String> ingredients;

  Food(
      {required this.id,
      required this.name,
      required this.picture,
      required this.price,
      this.description,
      required this.category,
      this.calification,
      required this.steps,
      required this.ingredients});
}

List<Food> listFoods = [
  Food(
      id: 1,
      name: "Chaufa",
      picture: 'assets/images/1.jpg',
      category: 'Almuerzo',
      description:
          'Prepara este Arroz Chaufa y disfruta de una comida deliciosa elaborada principalmente con productos básicos que seguro que tienes en tu cocina',
      price: 12,
      calification: 4.3,
      ingredients: [
        "2 tazas de Arroz Blanco Mahatma®",
        "3 cucharadas de aceite vegetal, divididas",
        "5 huevos, batidos",
        "1 1/2 lb de muslos de pollo, cortados en cubos de 1/2 pulgada",
        "2 cucharaditas de sal, divididas",
        "2 cucharaditas de pimienta molida, divididas",
        "1 pimiento rojo, cortado en dados",
        "1 cebolla, picada",
        "3 dientes de ajo picados",
        "2 cucharaditas de jengibre fresco rallado",
        "1/2 taza + 2 cucharadas de cebollas verdes cortadas, divididas",
        "1/4 de taza de salsa de soya",
        "2 cucharaditas de aceite de sésamo",
        "1 cucharadita de comino molido",
        "1/2 cucharadita de azúcar granulado"
      ],
      steps: [
        'Comience preparando el arroz en una cacerola mediana siguiendo las instrucciones del paquete; reserve el resultado.',
        'Mientras se cuece el arroz, caliente a fuego medio 1 cucharada y media de aceite en un sartén grande; cocine los huevos, removiendo constantemente, durante un tiempo de entre 3 y 5 minutos, o hasta que obtenga unos estupendos huevos revueltos. Finalmente, resérvelos en un plato',
        'Después, limpie el sartén, caliente a fuego medio el resto del aceite y añada el pollo junto con 1 cucharadita y media de sal y 1 cucharadita y media de pimienta, y cocine todo junto durante 8 o 10 minutos, o hasta que el pollo empiece a dorarse. Retire el resultado del sartén y resérvelo. A continuación, añada el pimiento, la cebolla, el ajo, el jengibre y el resto de la sal y la pimienta, y cocine durante 8 o 10 minutos, o hasta que las verduras estén tiernas. Finalmente, incorpore 1/2 taza de cebollas verdes.',
        'Bata en un tazón la salsa de soya, el aceite de sésamo, el comino y el azúcar y añade esta mezcla junto con el arroz cocido, el pollo y las verduras al sartén. Cocine todos junto, removiendo de vez en cuando, durante alrededor de 5 minutos o hasta que todo esté caliente y se hayan integrado muy bien los ingredientes. Incorpore en este momento los huevos revueltos y añada el resto de las cebollas verdes.'
      ]),
  Food(
      id: 2,
      name: "Ceviche",
      picture: 'assets/images/2.jpg',
      category: 'Almuerzo',
      description:
          'Elaborado a base de pescado fresco marinado en jugo de limón, acompañado de cebolla, cilantro y ají.',
      price: 15,
      calification: 5.8,
      ingredients: [
        "500 gramos de pescado blanco fresco",
        "10 limones",
        "1 cebolla roja",
        "1 ají limo",
        "1 manojo de cilantro",
        "Sal al gusto",
        "Pimienta al gusto",
        "Choclo cocido",
        "Camote cocido",
        "Lechuga"
      ],
      steps: [
        'Corta el pescado en cubos pequeños y colócalo en un bol.',
        'Exprime los limones y vierte el jugo sobre el pescado. Deja marinar durante 10 minutos.',
        'Corta la cebolla en juliana fina y el ají limo en rodajas.',
        'Mezcla la cebolla y el ají con el pescado. Agrega sal y pimienta al gusto.',
        'Pica el cilantro y agrégalo al bol. Mezcla bien todos los ingredientes.',
        'Sirve el ceviche acompañado de choclo, camote y hojas de lechuga.'
      ]),
  Food(
      id: 3,
      name: "Lomo Saltado",
      category: 'Almuerzo',
      picture: 'assets/images/3.jpg',
      description:
          'El lomo saltado es un plato fusionado de la cocina peruana y china, que combina carne de res salteada con vegetales, papas fritas y arroz.',
      price: 18,
      calification: 5.5,
      ingredients: [
        "500 gramos de lomo de res",
        "2 cebollas",
        "2 tomates",
        "1 ají amarillo",
        "3 cucharadas de salsa de soya",
        "2 cucharadas de vinagre",
        "Perejil picado",
        "Sal al gusto",
        "Pimienta al gusto",
        "Aceite vegetal",
        "Papas fritas",
        "Arroz blanco"
      ],
      steps: [
        'Corta el lomo de res en tiras y sazona con sal y pimienta.',
        'Calienta aceite en una sartén grande y saltea la carne a fuego alto. Retira y reserva.',
        'En la misma sartén, agrega más aceite y saltea la cebolla y el ají amarillo cortados en tiras.',
        'Añade los tomates cortados en gajos y cocina por unos minutos.',
        'Vuelve a incorporar la carne y añade la salsa de soya y el vinagre. Mezcla bien.',
        'Cocina por unos minutos más y retira del fuego.',
        'Sirve el lomo saltado acompañado de papas fritas y arroz blanco, y espolvorea con perejil picado.'
      ]),
  Food(
      id: 4,
      name: "Ají de Gallina",
      category: 'Almuerzo',
      picture: 'assets/images/4.jpg',
      description:
          'Ají de Gallina es un plato cremoso peruano hecho a base de pollo desmenuzado en una salsa de ají amarillo, nueces y queso.',
      price: 14,
      calification: 4.9,
      ingredients: [
        "1 pechuga de pollo",
        "2 ajíes amarillos",
        "2 rebanadas de pan de molde",
        "1/2 taza de leche evaporada",
        "1 cebolla",
        "2 dientes de ajo",
        "1/4 taza de nueces",
        "50 gramos de queso parmesano",
        "Aceite vegetal",
        "Sal al gusto",
        "Pimienta al gusto",
        "Arroz blanco",
        "Papas sancochadas"
      ],
      steps: [
        'Cocina la pechuga de pollo en agua con sal. Desmenúzala y reserva.',
        'Remoja el pan de molde en la leche evaporada.',
        'Licúa los ajíes amarillos, el pan remojado y las nueces hasta obtener una pasta.',
        'En una sartén, sofríe la cebolla y el ajo picados hasta que estén dorados.',
        'Agrega la pasta de ají a la sartén y cocina por unos minutos.',
        'Añade el pollo desmenuzado y el queso parmesano rallado. Mezcla bien.',
        'Cocina a fuego bajo hasta que la salsa espese y todos los ingredientes estén bien integrados.',
        'Sirve el ají de gallina acompañado de arroz blanco y papas sancochadas.'
      ]),
  Food(
      id: 5,
      name: "Anticuchos",
      category: 'Almuerzo',
      picture: 'assets/images/5.jpg',
      description:
          'Anticuchos son brochetas de corazón de res marinadas en una mezcla de ají panca, ajo y vinagre, típicamente servidos con papas y choclo.',
      price: 10,
      calification: 5.2,
      ingredients: [
        "500 gramos de corazón de res",
        "3 cucharadas de ají panca molido",
        "3 dientes de ajo",
        "1/4 taza de vinagre tinto",
        "1/4 taza de aceite vegetal",
        "Sal al gusto",
        "Pimienta al gusto",
        "Palitos de brocheta",
        "Papas sancochadas",
        "Choclo cocido"
      ],
      steps: [
        'Corta el corazón de res en trozos medianos y colócalos en un bol.',
        'En un mortero, machaca el ajo con sal y pimienta.',
        'Añade el ají panca, el vinagre y el aceite a la mezcla de ajo y mezcla bien.',
        'Vierte la marinada sobre los trozos de corazón y deja reposar por lo menos 2 horas.',
        'Ensarta los trozos de corazón en los palitos de brocheta.',
        'Asa los anticuchos a la parrilla, volteándolos y bañándolos con la marinada hasta que estén cocidos.',
        'Sirve los anticuchos con papas sancochadas y choclo cocido.'
      ]),
  Food(
      id: 6,
      name: "Papa a la Huancaína",
      category: 'Entradas',
      picture: 'assets/images/6.jpg',
      description:
          'Papa a la Huancaína es una entrada peruana hecha de papas hervidas cubiertas con una salsa cremosa de ají amarillo, queso fresco y leche.',
      price: 8,
      calification: 4.7,
      ingredients: [
        "4 papas",
        "2 ajíes amarillos",
        "200 gramos de queso fresco",
        "1/2 taza de leche evaporada",
        "2 galletas de soda",
        "1 diente de ajo",
        "Aceite vegetal",
        "Sal al gusto",
        "Huevos duros",
        "Aceitunas",
        "Hojas de lechuga"
      ],
      steps: [
        'Hierve las papas con cáscara en agua con sal hasta que estén cocidas. Pela y corta en rodajas.',
        'En una licuadora, mezcla los ajíes amarillos, el queso fresco, la leche evaporada, las galletas, el ajo y sal al gusto hasta obtener una salsa cremosa.',
        'Calienta un poco de aceite en una sartén y añade la salsa. Cocina a fuego bajo hasta que espese un poco.',
        'Sirve las rodajas de papa cubiertas con la salsa huancaína, acompañadas de huevos duros y aceitunas.',
        'Decora con hojas de lechuga.'
      ]),
  Food(
      id: 7,
      name: "Causa Limeña",
      picture: 'assets/images/7.jpg',
      category: 'Entradas',
      description:
          'La Causa Limeña es un plato frío  hecho de capas de puré de papa mezclado con ají amarillo y limón, relleno de pollo o atún.',
      price: 12,
      calification: 5.0,
      ingredients: [
        "1 kg de papas amarillas",
        "3 ajíes amarillos",
        "2 limones",
        "200 gramos de pollo desmenuzado o atún",
        "1/2 taza de mayonesa",
        "1 cebolla",
        "Aceite vegetal",
        "Sal al gusto",
        "Pimienta al gusto",
        "Palta",
        "Hojas de lechuga"
      ],
      steps: [
        'Hierve las papas hasta que estén cocidas y haz un puré.',
        'Licúa los ajíes amarillos con un poco de aceite y mézclalos con el puré de papas. Añade el jugo de los limones, sal y pimienta al gusto.',
        'En un bol, mezcla el pollo desmenuzado o el atún con la mayonesa y la cebolla picada.',
        'En un molde, coloca una capa de puré de papas, luego una capa de la mezcla de pollo o atún, y cubre con otra capa de puré de papas.',
        'Decora con rodajas de palta y hojas de lechuga.',
        'Refrigera por una hora antes de servir.'
      ]),
  Food(
      id: 8,
      name: "Arroz con Pollo",
      category: 'Almuerzo',
      picture: 'assets/images/8.jpg',
      description:
          'El arroz con pollo es un plato clásico peruano donde el arroz se cocina con cilantro, ají y pollo, resultando en un almuerzo sabroso y colorido.',
      price: 13,
      calification: 5.4,
      ingredients: [
        "4 piezas de pollo (muslos o pechugas)",
        "2 tazas de arroz",
        "1 cebolla",
        "2 dientes de ajo",
        "1 pimiento rojo",
        "1 taza de arvejas",
        "1 taza de zanahorias en cubos",
        "1 taza de cilantro licuado con agua",
        "2 ajíes amarillos",
        "1 taza de cerveza",
        "2 1/2 tazas de caldo de pollo",
        "Aceite vegetal",
        "Sal al gusto",
        "Pimienta al gusto"
      ],
      steps: [
        'Sazona el pollo con sal y pimienta y dóralo en una olla grande con aceite caliente. Retira y reserva.',
        'En la misma olla, sofríe la cebolla picada, el ajo y los ajíes amarillos hasta que estén dorados.',
        'Añade el cilantro licuado, la cerveza y el caldo de pollo. Deja que hierva.',
        'Incorpora el pollo dorado, el arroz, las arvejas y las zanahorias. Mezcla bien.',
        'Cocina a fuego medio hasta que el arroz esté cocido y el líquido se haya absorbido, aproximadamente 20 minutos.',
        'Añade el pimiento rojo en tiras y cocina por unos minutos más.',
        'Sirve caliente.'
      ]),
  Food(
      id: 9,
      name: "Seco de Cabrito",
      category: 'Almuerzo',
      picture: 'assets/images/9.jpg',
      description:
          'El seco de cabrito es un guiso típico del norte del Perú, preparado con carne de cabrito, chicha de jora y ajíes, acompañado de frejoles y arroz.',
      price: 16,
      calification: 5.1,
      ingredients: [
        "1 kg de carne de cabrito",
        "2 cebollas",
        "4 dientes de ajo",
        "2 ajíes amarillos",
        "1 taza de chicha de jora",
        "1 taza de cilantro licuado con agua",
        "1 taza de caldo de carne",
        "Aceite vegetal",
        "Sal al gusto",
        "Pimienta al gusto",
        "Comino al gusto",
        "Arroz blanco",
        "Frejoles cocidos"
      ],
      steps: [
        'Sazona la carne de cabrito con sal, pimienta y comino.',
        'En una olla grande, dora la carne en aceite caliente. Retira y reserva.',
        'En la misma olla, sofríe la cebolla picada, el ajo y los ajíes amarillos hasta que estén dorados.',
        'Añade el cilantro licuado, la chicha de jora y el caldo de carne. Mezcla bien.',
        'Incorpora la carne dorada y cocina a fuego medio hasta que esté tierna, aproximadamente 1 hora.',
        'Sirve el seco de cabrito acompañado de arroz blanco y frejoles cocidos.'
      ]),
  Food(
      id: 10,
      name: "Tacu Tacu",
      picture: 'assets/images/10.jpg',
      category: 'Almuerzo',
      description:
          'El tacu tacu es un plato peruano hecho con una mezcla de arroz y frijoles, tradicionalmente servido con un bistec, huevo frito y plátano frito.',
      price: 12,
      calification: 4.9,
      ingredients: [
        "2 tazas de arroz cocido",
        "2 tazas de frijoles cocidos (pintos o negros)",
        "1 cebolla",
        "2 dientes de ajo",
        "1 ají amarillo",
        "1 cucharada de pasta de ají amarillo",
        "Aceite vegetal",
        "Sal al gusto",
        "Pimienta al gusto",
        "4 bistecs",
        "4 huevos",
        "2 plátanos maduros",
        "Perejil picado"
      ],
      steps: [
        'En una sartén grande, sofríe la cebolla picada, el ajo y el ají amarillo hasta que estén dorados.',
        'Añade los frijoles cocidos y machácalos ligeramente en la sartén.',
        'Agrega el arroz cocido y mezcla bien. Cocina hasta que la mezcla esté dorada y crujiente, formando una especie de tortilla. Retira y reserva.',
        'En la misma sartén, cocina los bistecs a tu gusto, sazonándolos con sal y pimienta.',
        'Fríe los huevos y los plátanos maduros en aceite caliente hasta que estén dorados.',
        'Sirve el tacu tacu con un bistec, un huevo frito y plátano frito. Espolvorea perejil picado por encima.'
      ])
];
