import 'package:flutter/material.dart';

class Map {
  final String name;
  final String comment;
  final bool wingman;
  final String description;
  final IconData icon;

  const Map({
    required this.name,
    required this.comment,
    required this.wingman,
    required this.description,
    required this.icon,
  });
}

const List<Map> maps = [
  Map(name: "Mirage", 
  comment: "Pustinjski grad s arapskom arhitekturom.",
  wingman: false, 
  description: "Poznata po sredini mape (mid), koja omogućuje brze rotacije i kontrolu nad obje strane mape.", 
  icon: Icons.account_tree_outlined,
  ),
  Map(name: "Dust 2", 
  comment: "Pješčana pustinja s kamenim zgradama.",
  wingman: false, 
  description: "Prepoznatljiva po dugom prolazu (Long A) i otvorenim prostorima koji omogućuju borbe na velikim udaljenostima.", 
  icon: Icons.door_sliding_rounded,
  ),
  Map(name: "Office", 
  comment: "Moderna uredska zgrada prekrivena snijegom.",
  wingman: true, 
  description: "Smještena u uredskom kompleksu, a posebna je po uskim hodnicima i borbi za taoce.", 
  icon: Icons.apartment,
  ),
  Map(name: "Nuke", 
  comment: "Industrijski kompleks s nuklearnom elektranom.",
  wingman: true, 
  description: "Smještena u nuklearnoj elektrani, a posebna je po dva kata i mogućnosti prelaska između gornjeg i donjeg bomb sitea.", 
  icon: Icons.check_box_outline_blank_sharp,
  ),
  Map(name: "Overpass", 
  comment: "Gradski park s mostovima i kanalizacijom.",
  wingman: true, 
  description: "Smještena u urbanom području s parkom i kanalizacijom, a posebna je po velikoj vertikalnosti i podzemnim prolazima.", 
  icon: Icons.power_input_outlined,
  )
];