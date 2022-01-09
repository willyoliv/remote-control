import 'package:flutter/material.dart';
import 'package:remotecontrolapp/pages/main_controller.dart';

class ConfigPage extends StatelessWidget {
  final inputIpController = TextEditingController();
  final inputPortaController = TextEditingController();
  final _form = GlobalKey<FormState>();
  final _formData = Map<String, String>();
  final _controller = MainController();

  ConfigPage({Key? key}) : super(key: key);

  Future<void> _saveForm() async {
    var isValid = _form.currentState!.validate();

    if (!isValid) {
      return;
    }
    _form.currentState!.save();
    _controller.setValues(_formData['ip']!, _formData['porta']!, "");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Páginas de Configurações"),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Color(0xff1B1F23),
        body: Container(
          height: 300,
          margin: EdgeInsets.all(30),
          child: Form(
            key: _form,
            child: Column(
              children: [
                TextFormField(
                  controller: inputIpController,
                  style: TextStyle(color: Colors.white, fontSize: 17),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text("IP"),
                    hintText: "Digite o IP da máquina",
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                    enabledBorder: new UnderlineInputBorder(
                      borderSide: new BorderSide(color: Colors.white),
                    ),
                  ),
                  onSaved: (value) => _formData['ip'] = value!,
                  validator: (value) {
                    bool isEmpty = value!.trim().isEmpty;

                    if (isEmpty) {
                      return 'Campo vazio!';
                    }

                    return null;
                  },
                ),
                TextFormField(
                  controller: inputPortaController,
                  style: TextStyle(color: Colors.white, fontSize: 17),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text("Porta"),
                    hintText: "Digite a porta da máquina",
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                    enabledBorder: new UnderlineInputBorder(
                      borderSide: new BorderSide(color: Colors.white),
                    ),
                  ),
                  onSaved: (value) => _formData['porta'] = value!,
                  validator: (value) {
                    bool isEmpty = value!.trim().isEmpty;

                    if (isEmpty) {
                      return 'Campo vazio!';
                    }

                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OutlinedButton(
                      child: Text("Cancelar"),
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.grey[400],
                        // textStyle:
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    ElevatedButton(
                      onPressed: () {
                        _saveForm();
                      },
                      child: Text("Confirmar"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
