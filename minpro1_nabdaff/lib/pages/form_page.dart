import 'package:flutter/material.dart';
import '../models/investment.dart';

class FormPage extends StatefulWidget {
  final Investment? investment;
  const FormPage({super.key, this.investment});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameCtrl;
  late TextEditingController _amountCtrl;
  String? _selectedCat;

  final List<String> categories = ['Deposito', 'Reksa Dana', 'Obligasi', 'Emas', 'Saham', 'Crypto', 'Property'];

  @override
  void initState() {
    super.initState();
    _nameCtrl = TextEditingController(text: widget.investment?.instrumentName ?? '');
    _amountCtrl = TextEditingController(text: widget.investment?.amount.toString() ?? '');
    _selectedCat = widget.investment?.category;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Form Investasi")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              DropdownButtonFormField<String>(
                value: _selectedCat,
                items: categories.map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
                onChanged: (v) => setState(() => _selectedCat = v),
                decoration: const InputDecoration(labelText: "Pilih Kategori", border: OutlineInputBorder()),
              ),
              const SizedBox(height: 15),
              TextFormField(controller: _nameCtrl, decoration: const InputDecoration(labelText: "Nama Aset", border: OutlineInputBorder())),
              const SizedBox(height: 15),
              TextFormField(controller: _amountCtrl, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: "Nominal (Rp)", border: OutlineInputBorder())),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pop(context, Investment(
                      id: widget.investment?.id ?? DateTime.now().toString(),
                      instrumentName: _nameCtrl.text,
                      amount: double.tryParse(_amountCtrl.text) ?? 0,
                      category: _selectedCat ?? 'Lainnya',
                    ));
                  }
                },
                child: const Text("Simpan"),
              )
            ],
          ),
        ),
      ),
    );
  }
}