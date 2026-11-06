import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookingSuccessView extends StatelessWidget {
  const BookingSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SizedBox(height: 32),

              Container(
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                  color: theme.colorScheme.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(
                  Icons.check,
                  size: 36,
                ),
              ),

              const SizedBox(height: 20),

              Text(
                'Pendaftaran Berhasil Dikirim!',
                textAlign: TextAlign.center,
                style: theme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              Text(
                'Berkas pengajuan seminar Anda telah kami terima '
                'dan masuk ke antrean sistem akademik.',
                textAlign: TextAlign.center,
                style: theme.textTheme.bodySmall,
              ),

              const SizedBox(height: 24),

              Card(
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'STATUS PENGAJUAN',
                            style: theme.textTheme.labelSmall,
                          ),
                          const Text(
                            'Menunggu Verifikasi',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),

                      const Divider(height: 24),

                      const _ResultRow(
                        label: 'Nomor Registrasi',
                        value: 'REG-SEM-2024-0891',
                      ),

                      const SizedBox(height: 10),

                      const _ResultRow(
                        label: 'Waktu Pengajuan',
                        value: '14 Nov 2024, 14:32 WIB',
                      ),

                      const SizedBox(height: 10),

                      const _ResultRow(
                        label: 'Estimasi Verifikasi',
                        value: '1-3 Hari Kerja',
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 16),

              Card(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.info_outline,
                        size: 20,
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          'Silakan pantau berkas pada menu Status '
                          'Pengajuan atau notifikasi email resmi kampus.',
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 24),

              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () => context.go('/home'),
                  child: const Text('Kembali ke Home'),
                ),
              ),

              const SizedBox(height: 10),

              SizedBox(
                width: double.infinity,
                height: 44,
                child: OutlinedButton(
                  onPressed: () => context.go('/home'),
                  child: const Text('Lihat Status Pengajuan'),
                ),
              ),

              const SizedBox(height: 14),

              TextButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Fitur unduh bukti masih berupa prototype',
                      ),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.download_outlined,
                  size: 18,
                ),
                label: const Text(
                  'Unduh Bukti Tanda Terima (PDF)',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ResultRow extends StatelessWidget {
  final String label;
  final String value;

  const _ResultRow({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            label,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            value,
            textAlign: TextAlign.right,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
      ],
    );
  }
}