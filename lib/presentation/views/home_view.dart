import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        titleSpacing: 16,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'SIM-SIDANG',
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Home',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 18,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 90),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'BERANDA MAHASISWA',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Halo, Dimas Pratama!',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_none),
                ),
              ],
            ),
            const SizedBox(height: 8),

            const Wrap(
              spacing: 6,
              children: [
                Chip(
                  label: Text(
                    'Informatika • Semester 7',
                    style: TextStyle(fontSize: 11),
                  ),
                ),
                Chip(
                  label: Text(
                    'TA 2024/2025 Ganjil',
                    style: TextStyle(fontSize: 11),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            Card(
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          child: Text(
                            'DP',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dimas Pratama',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'NIM: 21051204088',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'IPK: 3.78   •   SKS Lulus: 138',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        Chip(
                          label: Text(
                            'AKTIF',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                          backgroundColor: Colors.black,
                        ),
                      ],
                    ),
                    const SizedBox(height: 14),

                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Column(
                        children: [
                          Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Fase: Pengajuan Seminar Proposal',
                                style: TextStyle(fontSize: 11),
                              ),
                              Text(
                                'Step 2 / 5',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          LinearProgressIndicator(value: 0.4),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 14),

            Card(
              child: ListTile(
                leading: const CircleAvatar(
                  child: Icon(Icons.campaign_outlined),
                ),
                title: const Text(
                  'Batas Pendaftaran Sempro',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: const Text(
                  'Pendaftaran Seminar Proposal dibuka s.d. 30 Nov 2024. Pastikan log bimbingan minimal 8x disetujui.',
                  style: TextStyle(fontSize: 12),
                ),
                trailing: const Text(
                  '7 Hari Lagi',
                  style: TextStyle(fontSize: 11),
                ),
                onTap: () {},
              ),
            ),

            const SizedBox(height: 18),

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Layanan Akademik',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Akses Cepat',
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),

            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              childAspectRatio: 1.45,
              children: const [
                _ServiceCard(
                  icon: Icons.app_registration,
                  title: 'Daftar Seminar',
                  subtitle: 'Registrasi Sempro & Semhas skripsi',
                ),
                _ServiceCard(
                  icon: Icons.calendar_month,
                  title: 'Jadwal Sidang',
                  subtitle: 'Kalender sesi & ruang sidang',
                ),
                _ServiceCard(
                  icon: Icons.fact_check_outlined,
                  title: 'Status Berkas',
                  subtitle: 'Tracking review dosen penguji',
                ),
                _ServiceCard(
                  icon: Icons.history,
                  title: 'Riwayat & Nilai',
                  subtitle: 'Arsip berita acara & kelulusan',
                ),
              ],
            ),

            const SizedBox(height: 18),

            const Text(
              'Kegiatan Terdekat',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 10),

            const _ActivityCard(
              label: 'Auditor / Peserta',
              title:
                  'Seminar Hasil: Optimasi Klasifikasi Citra MRI Menggunakan CNN',
              subtitle: 'Oleh: Farhan Maulana',
              detail1: 'Besok, 10:00 - 11:30 WIB',
              detail2: 'Ruang Sidang 302 (Gedung B)',
            ),

            const SizedBox(height: 10),

            const _ActivityCard(
              label: 'Bimbingan Rutin',
              title: 'Review Bab 3 Metodologi Penelitian',
              subtitle: 'Dosen: Dr. Eng. Ir. Hendra Suryadi, M.T.',
              detail1: 'Kamis, 28 Nov 2024 • 14:00 WIB',
              detail2: 'Lab Komputasi Terapan',
            ),
          ],
        ),
      ),

      bottomNavigationBar: NavigationBar(
        selectedIndex: 0,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.calendar_month_outlined),
            label: 'Jadwal',
          ),
          NavigationDestination(
            icon: Icon(Icons.fact_check_outlined),
            label: 'Status',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            label: 'Akun',
          ),
        ],
      ),
    );
  }
}

class _ServiceCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const _ServiceCard({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 3),
            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 11,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ActivityCard extends StatelessWidget {
  final String label;
  final String title;
  final String subtitle;
  final String detail1;
  final String detail2;

  const _ActivityCard({
    required this.label,
    required this.title,
    required this.subtitle,
    required this.detail1,
    required this.detail2,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Chip(
              label: Text(
                label,
                style: const TextStyle(fontSize: 10),
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(Icons.access_time, size: 15),
                const SizedBox(width: 5),
                Text(
                  detail1,
                  style: const TextStyle(fontSize: 11),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Icon(Icons.location_on_outlined, size: 15),
                const SizedBox(width: 5),
                Expanded(
                  child: Text(
                    detail2,
                    style: const TextStyle(fontSize: 11),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}