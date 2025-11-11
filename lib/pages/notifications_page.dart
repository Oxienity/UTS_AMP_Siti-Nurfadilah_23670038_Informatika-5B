import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        title: const Text(
          "Notifikasi",
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
          _buildNotificationItem(
            "Janji Temu Baru",
            "Budi Santoso membuat janji temu untuk besok",
            "10:30 AM",
            Icons.calendar_today,
            Colors.blue,
          ),
          _buildNotificationItem(
            "Obat Habis",
            "Stok Paracetamol hampir habis",
            "09:15 AM",
            Icons.medication,
            Colors.orange,
          ),
          _buildNotificationItem(
            "Pembayaran Diterima",
            "Pembayaran dari Sari Dewi telah diterima",
            "Yesterday",
            Icons.payment,
            Colors.green,
          ),
          _buildNotificationItem(
            "Hasil Lab",
            "Hasil laboratorium untuk Ahmad Fauzi sudah tersedia",
            "Yesterday",
            Icons.assignment,
            Colors.purple,
          ),
          _buildNotificationItem(
            "Reminder",
            "Jadwal vaksinasi anak bulan depan",
            "2 days ago",
            Icons.notifications_active,
            Colors.red,
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationItem(String title, String message, String time, IconData icon, Color color) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: color),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(message),
        trailing: Text(time, style: TextStyle(color: Colors.grey.shade600, fontSize: 12)),
        onTap: () {},
      ),
    );
  }
}