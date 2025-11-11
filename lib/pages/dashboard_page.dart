import 'package:flutter/material.dart';
import '../widgets/stat_card.dart';
import '../widgets/menu_card.dart';
import '../widgets/appointment_item.dart';
import 'profile_page.dart';
import 'notifications_page.dart';
import 'calendar_page.dart';
import 'patients_page.dart';
import 'schedule_page.dart';
import 'medicines_page.dart';
import 'medical_records_page.dart';
import 'settings_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Dashboard dengan gambar medis
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1559757148-5c350d0d3c56?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fG1lZGljYWx8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          
          // Overlay gradient untuk readability
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.9),
                  Colors.white.withOpacity(0.7),
                  Colors.white.withOpacity(0.9),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),

          Column(
            children: [
              // AppBar Custom
              Container(
                padding: const EdgeInsets.only(
                  top: 50,
                  bottom: 20,
                  left: 16,
                  right: 16,
                ),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF2D6A4F), Color(0xFF40916C)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    // Logo Klinik kecil
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/2966/2966327.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Expanded(
                      child: Text(
                        "Klinik Sehat Mulia",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.notifications, color: Colors.white),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const NotificationsPage()),
                        );
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.calendar_today, color: Colors.white),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const CalendarPage()),
                        );
                      },
                    ),
                  ],
                ),
              ),

              // Content Area
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Header dengan greeting
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xFF2D6A4F), Color(0xFF52B788)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.green.shade300,
                              blurRadius: 10,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            // Foto Profil Dokter
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white, width: 2),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                    'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZG9jdG9yfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Halo, Dr. Andi Pratama 👋",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    "Selamat datang di sistem management klinik",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white.withOpacity(0.9),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                      const SizedBox(height: 24),
                      
                      // Statistik Cepat
                      const Text(
                        "Statistik Hari Ini",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2D6A4F),
                        ),
                      ),
                      
                      const SizedBox(height: 12),
                      
                      GridView.count(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisCount: 2,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        children: [
                          StatCard(
                            icon: Icons.people,
                            title: "Pasien",
                            value: "24",
                            color: Colors.blue,
                          ),
                          StatCard(
                            icon: Icons.medical_services,
                            title: "Janji Temu",
                            value: "12",
                            color: Colors.orange,
                          ),
                          StatCard(
                            icon: Icons.medication,
                            title: "Obat Tersedia",
                            value: "156",
                            color: Colors.green,
                          ),
                          StatCard(
                            icon: Icons.attach_money,
                            title: "Pendapatan",
                            value: "Rp 2.4M",
                            color: Colors.purple,
                          ),
                        ],
                      ),
                      
                      const SizedBox(height: 24),
                      
                      // Menu Utama
                      const Text(
                        "Menu Utama",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2D6A4F),
                        ),
                      ),
                      
                      const SizedBox(height: 12),
                      
                      GridView.count(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisCount: 3,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        children: [
                          MenuCard(
                            icon: Icons.person,
                            title: "Profil",
                            color: const Color(0xFF2D6A4F),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const ProfilePage()),
                              );
                            },
                          ),
                          MenuCard(
                            icon: Icons.people_alt,
                            title: "Pasien",
                            color: Colors.blue,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const PatientsPage()),
                              );
                            },
                          ),
                          MenuCard(
                            icon: Icons.calendar_today,
                            title: "Jadwal",
                            color: Colors.orange,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const SchedulePage()),
                              );
                            },
                          ),
                          MenuCard(
                            icon: Icons.medication,
                            title: "Obat",
                            color: Colors.green,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const MedicinesPage()),
                              );
                            },
                          ),
                          MenuCard(
                            icon: Icons.receipt_long,
                            title: "Rekam Medis",
                            color: Colors.purple,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const MedicalRecordsPage()),
                              );
                            },
                          ),
                          MenuCard(
                            icon: Icons.settings,
                            title: "Pengaturan",
                            color: Colors.grey,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const SettingsPage()),
                              );
                            },
                          ),
                        ],
                      ),
                      
                      const SizedBox(height: 24),
                      
                      // Jadwal Hari Ini
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 10,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Janji Temu Hari Ini",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF2D6A4F),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const SchedulePage()),
                                    );
                                  },
                                  child: const Text(
                                    "Lihat Semua",
                                    style: TextStyle(
                                      color: Color(0xFF2D6A4F),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            AppointmentItem(
                              time: "09:00",
                              name: "Budi Santoso",
                              service: "Konsultasi Umum",
                              status: "Menunggu",
                            ),
                            AppointmentItem(
                              time: "11:00",
                              name: "Sari Dewi",
                              service: "Pemeriksaan Rutin",
                              status: "Dikonfirmasi",
                            ),
                            AppointmentItem(
                              time: "14:00",
                              name: "Ahmad Fauzi",
                              service: "Kontrol Diabetes",
                              status: "Menunggu",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}