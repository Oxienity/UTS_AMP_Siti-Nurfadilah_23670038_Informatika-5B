import 'package:flutter/material.dart';

class PatientsPage extends StatelessWidget {
  const PatientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        title: const Text(
          "Data Pasien",
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
          _buildPatientItem("Budi Santoso", "35 Tahun", "Laki-laki", "Konsultasi Umum"),
          _buildPatientItem("Sari Dewi", "28 Tahun", "Perempuan", "Pemeriksaan Rutin"),
          _buildPatientItem("Ahmad Fauzi", "45 Tahun", "Laki-laki", "Kontrol Diabetes"),
          _buildPatientItem("Maya Sari", "32 Tahun", "Perempuan", "Konsultasi Kandungan"),
          _buildPatientItem("Rizki Pratama", "50 Tahun", "Laki-laki", "Pemeriksaan Jantung"),
        ],
      ),
    );
  }

  Widget _buildPatientItem(String name, String age, String gender, String lastVisit) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: const Color(0xFF2D6A4F).withOpacity(0.1),
          child: const Icon(Icons.person, color: Color(0xFF2D6A4F)),
        ),
        title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text("$age • $gender"),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "Kunjungan Terakhir",
              style: TextStyle(fontSize: 10, color: Colors.grey.shade600),
            ),
            Text(
              lastVisit,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        onTap: () {},
      ),
    );
  }
}