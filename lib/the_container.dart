import 'dart:math';

import 'package:flutter/material.dart';

class TheContainer extends StatelessWidget{
	TheContainer({super.key, required this.colors});
	final List <Color> colors;

	@override
	Widget build(context){
		return Container(
			decoration: BoxDecoration(
				gradient: LinearGradient(
					colors: [
						colors[0],
						colors[1],
					],
					//begin: Alignment.topLeft,
					//end: Alignment.bottomRight,
				)
			),
			child: const Center(
				child: Changing(),
			)
		);
	}
}

class Changing extends StatefulWidget{
  	const Changing({super.key});

	@override
	State<Changing> createState() {
		return _TheState();
	}
}

class _TheState extends State<Changing>{
	var activeDiceImage = 'assets/dice-2.png';
	
	@override
	Widget build(context){
		return Column(
			mainAxisSize: MainAxisSize.min,
			children: [
				Image.asset(
					activeDiceImage, 
					width: 200,
				),
				const SizedBox(
					height: 20,
					width: 20,
				),
				TextButton(
					onPressed: rollDice, 
					style: TextButton.styleFrom(
							foregroundColor: Colors.white, 
							textStyle: const TextStyle(fontSize: 28),
						),
					child: const Text("Click This!"),
				)
			]
		);
	}

	void rollDice(){
		setState(() {
			activeDiceImage = 'assets/dice-${Random().nextInt(6) + 1}.png';
		});
	}
}

class StyledText extends StatelessWidget{
	@override
	Widget build(context){
		return const Text(
				"hey", 
				style: TextStyle(
					color: Color.fromARGB(255, 17, 21, 76), 
					fontSize: 50, 
				)
			);
	}
}