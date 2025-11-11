import 'package:flutter/material.dart';

class MedicalRecordsPage extends StatelessWidget {
  const MedicalRecordsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        title: const Text(
          "Rekam Medis",
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
          _buildRecordItem("Budi Santoso", "Konsultasi Umum", "15 Des 2024", "Demam, Batuk"),
          _buildRecordItem("Sari Dewi", "Pemeriksaan Rutin", "14 Des 2024", "Tekanan darah normal"),
          _buildRecordItem("Ahmad Fauzi", "Kontrol Diabetes", "13 Des 2024", "Gula darah terkontrol"),
          _buildRecordItem("Maya Sari", "Konsultasi Kandungan", "12 Des 2024", "Trimester 2"),
          _buildRecordItem("Rizki Pratama", "Pemeriksaan Jantung", "11 Des 2024", "EKG normal"),
        ],
      ),
    );
  }

  Widget _buildRecordItem(String patient, String type, String date, String diagnosis) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: const Color(0xFF2D6A4F).withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.medical_services, color: Color(0xFF2D6A4F)),
        ),
        title: Text(patient, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(type),
            Text(diagnosis, style: TextStyle(color: Colors.grey.shade600, fontSize: 12)),
          ],
        ),
        trailing: Text(date, style: TextStyle(color: Colors.grey.shade600, fontSize: 12)),
      ),
    );
  }
}