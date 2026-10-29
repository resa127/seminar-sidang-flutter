import 'package:flutter/material.dart';

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

            Card(
              child: ListTile(
                leading: const CircleAvatar(
                  child: Text('DP'),
                ),
                title: const Text('Dimas Pratama'),
                subtitle: const Text(
                  'NIM: 21051204088 • S1 Teknik Informatika',
                ),
              ),
            ),

            const SizedBox(height: 18),

            Text(
              'JADWAL & TEMPAT PELAKSANAAN',
              style: theme.textTheme.labelMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),

            Row(
              children: [
                Expanded(
                  child: _infoCard(
                    context,
                    Icons.calendar_month_outlined,
                    'Tanggal Pelaksanaan',
                    'Senin, 18 Nov 2024',
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: _infoCard(
                    context,
                    Icons.access_time,
                    'Waktu Pelaksanaan',
                    '09:00 - 10:30 WIB',
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),

            _infoCard(
              context,
              Icons.location_on_outlined,
              'Ruang Ujian',
              'Ruang Sidang Utama (Gedung B Lt. 3)',
            ),

            const SizedBox(height: 10),

            _infoCard(
              context,
              Icons.videocam_outlined,
              'Akses Daring (Online)',
              'Google Meet',
            ),

            const SizedBox(height: 18),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'DEWAN PEMBIMBING & PENGUJI',
                  style: theme.textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '3 Anggota',
                  style: theme.textTheme.labelSmall,
                ),
              ],
            ),
            const SizedBox(height: 10),

            const _LecturerTile(
              icon: Icons.person_outline,
              role: 'PEMBIMBING UTAMA',
              name: 'Dr. Ir. Hendra Wijaya, M.T.',
              status: 'Menyetujui',
            ),
            const SizedBox(height: 8),

            const _LecturerTile(
              icon: Icons.person_outline,
              role: 'KETUA PENGUJI / PENGUJI 1',
              name: 'Prof. Sri Wahyuni, Ph.D.',
              status: 'Hadir',
            ),
            const SizedBox(height: 8),

            const _LecturerTile(
              icon: Icons.person_outline,
              role: 'SEKRETARIS PENGUJI II',
              name: 'Ahmad Fauzi, M.Kom.',
              status: 'Hadir',
            ),

            const SizedBox(height: 18),

            Text(
              'DOKUMEN & BERKAS SEMINAR',
              style: theme.textTheme.labelMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),

            const _DocumentTile(
              icon: Icons.description_outlined,
              title: 'Draft_Proposal_Skripsi_Rev2.pdf',
              subtitle: '2.4 MB • Diperbarui 14 Nov 2024',
            ),
            const SizedBox(height: 8),

            const _DocumentTile(
              icon: Icons.fact_check_outlined,
              title: 'Lembar_Bimbingan_Disetuju.pdf',
              subtitle: '850 KB • Tanda tangan digital sah',
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
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.colorScheme.inverseSurface,
                foregroundColor: theme.colorScheme.onInverseSurface,
              ),
            ),
          ),
        ),
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
                Text(title, style: theme.textTheme.labelSmall),
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

  Widget _infoCard(
    BuildContext context,
    IconData icon,
    String title,
    String value,
  ) {
    final theme = Theme.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, size: 18),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: theme.textTheme.labelSmall),
                  const SizedBox(height: 3),
                  Text(value, style: theme.textTheme.bodySmall),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _LecturerTile extends StatelessWidget {
  final IconData icon;
  final String role;
  final String name;
  final String status;

  const _LecturerTile({
    required this.icon,
    required this.role,
    required this.name,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text(
          role,
          style: theme.textTheme.labelSmall,
        ),
        subtitle: Text(name),
        trailing: Text(
          status,
          style: theme.textTheme.labelSmall,
        ),
      ),
    );
  }
}

class _DocumentTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const _DocumentTile({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.visibility_outlined),
      ),
    );
  }
}