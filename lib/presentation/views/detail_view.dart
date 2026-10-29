import 'package:flutter/material.dart';
import '../widgets/info_tile.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Detail Seminar'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: CircleAvatar(
              child: Icon(Icons.person, size: 18),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 90),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: _statusBox(
                    context,
                    'SEMINAR PROPOSAL',
                    'SKRIPSI',
                    Icons.school_outlined,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _statusBox(
                    context,
                    'STATUS',
                    'DIVERIFIKASI',
                    Icons.verified_outlined,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 14),

            Text(
              'TESIS / SKRIPSI',
              style: theme.textTheme.labelSmall,
            ),

            const SizedBox(height: 5),

            Text(
              'Rancang Bangun Sistem Informasi Seminar dan Sidang '
              'Berbasis Mobile Menggunakan Arsitektur Microservices',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),

            const SizedBox(height: 12),

            const Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Text('DP'),
                ),
                title: Text('Dimas Pratama'),
                subtitle: Text(
                  'NIM: 21051204088 • S1 Teknik Informatika',
                ),
              ),
            ),

            const SizedBox(height: 18),

            _sectionTitle(
              context,
              'JADWAL & TEMPAT PELAKSANAAN',
            ),

            const SizedBox(height: 10),

            const InfoTile(
              icon: Icons.calendar_month_outlined,
              title: 'Tanggal Pelaksanaan',
              subtitle: 'Senin, 18 Nov 2024',
            ),

            const SizedBox(height: 8),

            const InfoTile(
              icon: Icons.access_time,
              title: 'Waktu Pelaksanaan',
              subtitle: '09:00 - 10:30 WIB',
            ),

            const SizedBox(height: 8),

            const InfoTile(
              icon: Icons.location_on_outlined,
              title: 'Ruang Ujian',
              subtitle: 'Ruang Sidang Utama (Gedung B Lt. 3)',
            ),

            const SizedBox(height: 8),

            const InfoTile(
              icon: Icons.videocam_outlined,
              title: 'Akses Daring (Online)',
              subtitle: 'Google Meet',
            ),

            const SizedBox(height: 18),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _sectionTitle(
                  context,
                  'DEWAN PEMBIMBING & PENGUJI',
                ),
                Text(
                  '3 Anggota',
                  style: theme.textTheme.labelSmall,
                ),
              ],
            ),

            const SizedBox(height: 10),

            const InfoTile(
              icon: Icons.person_outline,
              title: 'PEMBIMBING UTAMA',
              subtitle: 'Dr. Ir. Hendra Wijaya, M.T.',
              trailingText: 'Menyetujui',
            ),

            const SizedBox(height: 8),

            const InfoTile(
              icon: Icons.person_outline,
              title: 'KETUA PENGUJI / PENGUJI 1',
              subtitle: 'Prof. Sri Wahyuni, Ph.D.',
              trailingText: 'Hadir',
            ),

            const SizedBox(height: 8),

            const InfoTile(
              icon: Icons.person_outline,
              title: 'SEKRETARIS PENGUJI II',
              subtitle: 'Ahmad Fauzi, M.Kom.',
              trailingText: 'Hadir',
            ),

            const SizedBox(height: 18),

            _sectionTitle(
              context,
              'DOKUMEN & BERKAS SEMINAR',
            ),

            const SizedBox(height: 10),

            const InfoTile(
              icon: Icons.description_outlined,
              title: 'Draft Proposal Skripsi',
              subtitle: '2.4 MB • Diperbarui 14 Nov 2024',
              trailingIcon: Icons.visibility_outlined,
            ),

            const SizedBox(height: 8),

            const InfoTile(
              icon: Icons.fact_check_outlined,
              title: 'Lembar Bimbingan Disetujui',
              subtitle: '850 KB • Tanda tangan digital sah',
              trailingIcon: Icons.visibility_outlined,
            ),

            const SizedBox(height: 18),

            Card(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.info_outline),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Tata Tertib Peserta Hadirin\n'
                        'Peserta wajib hadir 15 menit sebelum seminar '
                        'dimulai dengan pakaian rapi dan almamater resmi.',
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SizedBox(
            height: 48,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.how_to_reg_outlined),
              label: const Text('Daftar sekarang'),
            ),
          ),
        ),
      ),
    );
  }

  Widget _sectionTitle(
    BuildContext context,
    String title,
  ) {
    return Text(
      title,
      style: Theme.of(context).textTheme.labelMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
    );
  }

  Widget _statusBox(
    BuildContext context,
    String title,
    String value,
    IconData icon,
  ) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(icon, size: 18),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: theme.textTheme.labelSmall,
                ),
                Text(
                  value,
                  style: theme.textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}