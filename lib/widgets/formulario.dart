import 'package:flutter/material.dart';

class formCard extends StatefulWidget {
  const formCard({Key? key}) : super(key: key);

  @override
  _formCardState createState() => _formCardState();
}

class _formCardState extends State<formCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
            "https://www.mastercard.es/content/dam/public/mastercardcom/eu/es/images/Consumidores/escoge-tu-tarjeta/credito/credito-world/world-mastercard-1280x720.png"),
        const SizedBox(
          height: 20,
        ),
        _inputNombre(),
        SizedBox(
          height: 20,
        ),
        _inputCard(),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: _inputDate()),
            Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: _inputCode()),
          ],
        ),
        Container(
            margin: const EdgeInsets.all(15) ,
            width: MediaQuery.of(context).size.width - 30,
            child: ElevatedButton(onPressed: () {}, child: Text("Pagar")))
      ],
    );
  }

  Container _inputNombre() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.blue)),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        style: TextStyle(fontSize: 20),
        decoration:const InputDecoration(
          hintText: "Su nombre", border: InputBorder.none),
      ),
    );
  }
  Container _inputCard() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.blue)),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
            hintText: "0000-0000-0000-0000", border: InputBorder.none),
      ),
    );
  }
  Container _inputDate() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.blue)),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
            hintText: "Mes/Año", border: InputBorder.none),
      ),
    );
  }
  Container _inputCode() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.blue)),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
            hintText: "CVC", border: InputBorder.none),
      ),
    );
  }
}
