import 'package:flutter/material.dart';

class MedicinesPage extends StatelessWidget {
  const MedicinesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        title: const Text(
          "Manajemen Obat",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF2D6A4F),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildMedicineItem("Paracetamol", "100 tablet", "Stok: 45", Colors.green),
          _buildMedicineItem("Amoxicillin", "50 kapsul", "Stok: 12", Colors.orange),
          _buildMedicineItem("Vitamin C", "30 tablet", "Stok: 8", Colors.red),
          _buildMedicineItem("Omeprazole", "28 kapsul", "Stok: 22", Colors.green),
          _buildMedicineItem("Metformin", "90 tablet", "Stok: 35", Colors.green),
        ],
      ),
    );
  }

  Widget _buildMedicineItem(String name, String dosage, String stock, Color color) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.medication, color: Color(0xFF2D6A4F)),
        ),
        title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(dosage),
        trailing: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: color),
          ),
          child: Text(
            stock,
            style: TextStyle(color: color, fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}