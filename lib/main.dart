import 'package:flutter/material.dart';
import 'package:dice_app/the_container.dart';

void main(){
	runApp(
		MaterialApp(
			home: Scaffold(
				body: TheContainer(colors: const [Colors.deepPurple, Color.fromRGBO(7, 6, 79, 1)]),
			)
		)
	);
}