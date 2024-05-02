import 'package:flutter/material.dart';
import 'page2.dart';

void main() {
  runApp(NameAddressApp());
}

class NameAddressApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      home: NameAddressForm(),
    );
  }
}

class NameAddressForm extends StatefulWidget {
  @override
  _NameAddressFormState createState() => _NameAddressFormState();
}

class _NameAddressFormState extends State<NameAddressForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _kodeController = TextEditingController();
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _satuanController = TextEditingController();
  final TextEditingController _hargabeliController = TextEditingController();
  final TextEditingController _hargajualController = TextEditingController();

  void _resetForm() {
    _kodeController.clear();
    _namaController.clear();
    _satuanController.clear();
    _hargabeliController.clear();
    _hargajualController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Data'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _kodeController,
                decoration: InputDecoration(labelText: 'Kode'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Masukkan kode';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _namaController,
                decoration: InputDecoration(labelText: 'Nama'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Masukkan Nama';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _satuanController,
                decoration: InputDecoration(labelText: 'Satuan'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Masukkan Satuan';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _hargabeliController,
                decoration: InputDecoration(labelText: 'Harga Beli'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Masukkan Harga Beli';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _hargajualController,
                decoration: InputDecoration(labelText: 'Harga Jual'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Masukkan Harga Jual';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Page2(
                              kode: _kodeController.text,
                              nama: _namaController.text,
                              satuan: _satuanController.text,
                              hargabeli: double.parse(_hargabeliController.text),
                              hargajual: double.parse(_hargajualController.text),
                            ),
                          ),
                        );
                      }
                    },
                    child: Text('Save'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _resetForm();
                    },
                    child: Text('Reset'),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _kodeController.dispose();
    _namaController.dispose();
    _satuanController.dispose();
    _hargabeliController.dispose();
    _hargajualController.dispose();
    super.dispose();
  }
}
