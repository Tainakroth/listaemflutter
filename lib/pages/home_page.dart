import 'package:flutter/material.dart';
import 'package:todo/widget/botao_adicionar_widget.dart';
import 'package:todo/widget/input_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

 var usuarioList = <String>["taina" , "angel", "uriel", "sergio", "maria" , "FERNANDA"];
 var textController1 = TextEditingController();

 void sendNomeUsuario(){
  setState(() {
    usuarioList.add(textController1.text.trim());
    textController1.clear();
  });
 }

 void deletarNomeUsuario(int index){
  setState(() {
    usuarioList.removeAt(index);
  });
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children:[
        InputWidget(label: "", controller: textController1),
        Expanded(
          child:ListView.builder(
          itemCount: usuarioList.length,
          itemBuilder: (context,index){
          return ListTile(
            trailing: IconButton(
              onPressed:() => deletarNomeUsuario(index), 
              icon: const Icon(Icons.delete),
            ),
            leading: const Icon(Icons.person),
            title: Text(usuarioList[index]),
           );
          },
         ),
        ),
       ],
      ),
      floatingActionButton:BotaoadicionarWidget(icon: Icons.add, sendNomeUsuario: sendNomeUsuario),
    );
  }
}
