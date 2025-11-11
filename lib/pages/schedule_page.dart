import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        title: const Text(
          "Jadwal Praktek",
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
          _buildScheduleItem("Senin", "08:00 - 16:00", "Praktek Umum"),
          _buildScheduleItem("Selasa", "08:00 - 16:00", "Praktek Umum"),
          _buildScheduleItem("Rabu", "08:00 - 12:00", "Praktek Umum"),
          _buildScheduleItem("Kamis", "08:00 - 16:00", "Konsultasi Spesialis"),
          _buildScheduleItem("Jumat", "08:00 - 14:00", "Praktek Umum"),
          _buildScheduleItem("Sabtu", "09:00 - 12:00", "Praktek Terbatas"),
        ],
      ),
    );
  }

  Widget _buildScheduleItem(String day, String time, String type) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: const Color(0xFF2D6A4F).withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.calendar_today, color: Color(0xFF2D6A4F)),
        ),
        title: Text(day, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(type),
        trailing: Text(time, style: const TextStyle(fontWeight: FontWeight.w500)),
      ),
    );
  }
}