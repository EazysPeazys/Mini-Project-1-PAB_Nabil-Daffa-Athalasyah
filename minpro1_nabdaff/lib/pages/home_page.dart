import 'package:flutter/material.dart';
import '../models/investment.dart';
import 'form_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Investment> myPortfolio = [];
  String selectedFilter = "All";

  final List<String> filters = [
    'All', 'Deposito', 'Reksa Dana', 'Obligasi', 'Emas', 'Saham', 'Crypto', 'Property'
  ];

  List<Investment> get filteredData {
    if (selectedFilter == "All") return myPortfolio;
    return myPortfolio.where((item) => item.category == selectedFilter).toList();
  }

  void _showSuccessSnackbar(String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(Icons.check_circle, color: Colors.white),
            const SizedBox(width: 10),
            Text(message, style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        backgroundColor: color,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  void _openForm({Investment? item, int? index}) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FormPage(investment: item)),
    );

    if (result != null) {
      setState(() {
        if (index != null) {
          // UPDATE
          int originalIndex = myPortfolio.indexOf(item!);
          myPortfolio[originalIndex] = result;
          _showSuccessSnackbar("Data aset Anda berhasil diperbarui 🚀", Colors.blue.shade700);
        } else {
          // CREATE
          myPortfolio.add(result);
          _showSuccessSnackbar("Aset baru berhasil ditambahkan ke Portofolio Anda 💰", Colors.green.shade700);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Nabdaff Management Portfolio System',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFF0F0F0),
        elevation: 1,
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Row(
              children: filters.map((cat) => Padding(
                padding: const EdgeInsets.only(right: 8),
                child: ChoiceChip(
                  label: Text(cat),
                  selected: selectedFilter == cat,
                  onSelected: (val) => setState(() => selectedFilter = cat),
                  selectedColor: Colors.indigo.withOpacity(0.2),
                ),
              )).toList(),
            ),
          ),
          Expanded(
            child: filteredData.isEmpty
                ? const Center(child: Text('Belum ada aset investasi.', style: TextStyle(color: Colors.grey)))
                : ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    itemCount: filteredData.length,
                    itemBuilder: (context, index) {
                      final data = filteredData[index];
                      return Card(
                        elevation: 2,
                        margin: const EdgeInsets.only(bottom: 10),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.indigo.shade50,
                            child: const Icon(Icons.wallet, color: Colors.indigo),
                          ),
                          title: Text(data.instrumentName, style: const TextStyle(fontWeight: FontWeight.bold)),
                          subtitle: Text("${data.category} • Rp ${data.amount}"),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.edit, color: Colors.blue),
                                onPressed: () => _openForm(item: data, index: index),
                              ),
                              IconButton(
                                icon: const Icon(Icons.delete, color: Colors.red),
                                onPressed: () {
                                  setState(() => myPortfolio.remove(data));
                                  _showSuccessSnackbar("Aset telah dihapus dari daftar 🗑️", Colors.red.shade700);
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _openForm(),
        backgroundColor: Colors.indigo,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}