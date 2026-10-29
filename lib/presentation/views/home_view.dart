import 'package:flutter/material.dart';

import '../widgets/activity_card.dart';
import '../widgets/app_bottom_nav.dart';
import '../widgets/service_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'SIM-SIDANG',
              style: theme.textTheme.labelSmall,
            ),
            Text(
              'Home',
              style: theme.textTheme.titleMedium,
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: CircleAvatar(
              child: Icon(Icons.person),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 90),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildGreeting(context),
            const SizedBox(height: 16),
            _buildProfileCard(context),
            const SizedBox(height: 12),
            _buildAnnouncement(),
            const SizedBox(height: 20),
            _buildServicesTitle(context),
            const SizedBox(height: 10),
            _buildServices(),
            const SizedBox(height: 20),
            Text(
              'Kegiatan Terdekat',
              style: theme.textTheme.titleMedium,
            ),
            const SizedBox(height: 10),
            const ActivityCard(
              label: 'Auditor / Peserta',
              title:
                  'Seminar Hasil: Optimasi Klasifikasi Citra MRI Menggunakan CNN',
              subtitle: 'Oleh: Farhan Maulana',
              detail1: 'Besok, 10:00 - 11:30 WIB',
              detail2: 'Ruang Sidang 302 (Gedung B)',
            ),
            const SizedBox(height: 10),
            const ActivityCard(
              label: 'Bimbingan Rutin',
              title: 'Review Bab 3 Metodologi Penelitian',
              subtitle: 'Dosen: Dr. Eng. Ir. Hendra Suryadi, M.T.',
              detail1: 'Kamis, 28 Nov 2024 • 14:00 WIB',
              detail2: 'Lab Komputasi Terapan',
            ),
          ],
        ),
      ),
      bottomNavigationBar: const AppBottomNav(
        selectedIndex: 0,
      ),
    );
  }

  Widget _buildGreeting(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'BERANDA MAHASISWA',
          style: theme.textTheme.labelMedium,
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Halo, Dimas Pratama!',
              style: theme.textTheme.headlineSmall,
            ),
            const Icon(Icons.notifications_none),
          ],
        ),
        const SizedBox(height: 8),
        const Wrap(
          spacing: 6,
          children: [
            Chip(
              label: Text('Informatika • Semester 7'),
            ),
            Chip(
              label: Text('TA 2024/2025 Ganjil'),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildProfileCard(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 25,
                  child: Text('DP'),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dimas Pratama',
                        style: theme.textTheme.titleMedium,
                      ),
                      Text(
                        'NIM: 21051204088',
                        style: theme.textTheme.bodySmall,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'IPK: 3.78 • SKS Lulus: 138',
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                const Chip(
                  label: Text('AKTIF'),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Fase: Pengajuan Seminar Proposal'),
                      Text('Step 2 / 5'),
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
    );
  }

  Widget _buildAnnouncement() {
    return const Card(
      child: ListTile(
        leading: CircleAvatar(
          child: Icon(Icons.campaign_outlined),
        ),
        title: Text('Batas Pendaftaran Sempro'),
        subtitle: Text(
          'Pendaftaran Seminar Proposal dibuka s.d. 30 Nov 2024. '
          'Pastikan log bimbingan minimal 8x disetujui.',
        ),
        trailing: Text('7 Hari Lagi'),
      ),
    );
  }

  Widget _buildServicesTitle(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Layanan Akademik',
          style: theme.textTheme.titleMedium,
        ),
        Text(
          'Akses Cepat',
          style: theme.textTheme.labelSmall,
        ),
      ],
    );
  }

  Widget _buildServices() {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      childAspectRatio: 1.45,
      children: const [
        ServiceCard(
          icon: Icons.app_registration,
          title: 'Daftar Seminar',
          subtitle: 'Registrasi Sempro & Semhas skripsi',
        ),
        ServiceCard(
          icon: Icons.calendar_month,
          title: 'Jadwal Sidang',
          subtitle: 'Kalender sesi & ruang sidang',
        ),
        ServiceCard(
          icon: Icons.fact_check_outlined,
          title: 'Status Berkas',
          subtitle: 'Tracking review dosen penguji',
        ),
        ServiceCard(
          icon: Icons.history,
          title: 'Riwayat & Nilai',
          subtitle: 'Arsip berita acara & kelulusan',
        ),
      ],
    );
  }
}