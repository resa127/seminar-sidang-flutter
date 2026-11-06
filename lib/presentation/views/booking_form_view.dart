import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookingFormView extends StatefulWidget {
  const BookingFormView({super.key});

  @override
  State<BookingFormView> createState() => _BookingFormViewState();
}

class _BookingFormViewState extends State<BookingFormView> {
  final TextEditingController titleController = TextEditingController();

  String? selectedType;
  bool agreed = false;

  @override
  void dispose() {
    titleController.dispose();
    super.dispose();
  }

  void submitForm() {
    if (!agreed) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Centang persetujuan terlebih dahulu'),
        ),
      );
      return;
    }

    context.go('/success');
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/detail'),
        ),
        title: const Text('Form Pendaftaran'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: CircleAvatar(
              child: Icon(
                Icons.person,
                size: 18,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 110),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Langkah 1 dari 2: Pengisian Berkas',
                  style: theme.textTheme.labelMedium,
                ),
                Text(
                  '50% Selesai',
                  style: theme.textTheme.labelSmall,
                ),
              ],
            ),

            const SizedBox(height: 8),
            const LinearProgressIndicator(value: 0.5),
            const SizedBox(height: 18),

            _sectionTitle(
              context,
              'IDENTITAS MAHASISWA',
            ),

            const SizedBox(height: 10),

            TextFormField(
              initialValue: 'Dimas Pratama',
              readOnly: true,
              decoration: const InputDecoration(
                labelText: 'Nama Lengkap',
                suffixIcon: Icon(Icons.lock_outline),
              ),
            ),

            const SizedBox(height: 12),

            TextFormField(
              initialValue: '21051204088',
              readOnly: true,
              decoration: const InputDecoration(
                labelText: 'Nomor Induk Mahasiswa (NIM)',
                suffixIcon: Icon(Icons.lock_outline),
              ),
            ),

            const SizedBox(height: 20),

            _sectionTitle(
              context,
              'DETAIL AKADEMIK',
            ),

            const SizedBox(height: 10),

            DropdownButtonFormField<String>(
              value: selectedType,
              decoration: const InputDecoration(
                labelText: 'Jenis Seminar / Ujian',
              ),
              hint: const Text(
                'Pilih Tahapan Seminar...',
              ),
              items: const [
                DropdownMenuItem(
                  value: 'Seminar Proposal',
                  child: Text('Seminar Proposal'),
                ),
                DropdownMenuItem(
                  value: 'Seminar Hasil',
                  child: Text('Seminar Hasil'),
                ),
                DropdownMenuItem(
                  value: 'Sidang Skripsi',
                  child: Text('Sidang Skripsi'),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  selectedType = value;
                });
              },
            ),

            const SizedBox(height: 12),

            TextField(
              controller: titleController,
              maxLines: 4,
              maxLength: 250,
              decoration: const InputDecoration(
                labelText: 'Judul Skripsi / Tugas Akhir',
                hintText:
                    'Masukkan judul lengkap skripsi/tugas akhir...',
                alignLabelWithHint: true,
              ),
            ),

            const SizedBox(height: 18),

            _sectionTitle(
              context,
              'KELENGKAPAN DOKUMEN',
            ),

            const SizedBox(height: 10),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 28,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: theme.colorScheme.outlineVariant,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  const Icon(
                    Icons.cloud_upload_outlined,
                    size: 32,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Klik atau seret berkas ke sini',
                    style: theme.textTheme.titleSmall,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Format PDF maks. 10MB',
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),

            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.description_outlined,
                ),
                title: const Text(
                  'draft_skripsi_dimas.pdf',
                ),
                subtitle: const Text(
                  '3.2 MB • Siap diunggah',
                ),
                trailing: TextButton(
                  onPressed: () {},
                  child: const Text('Hapus'),
                ),
              ),
            ),

            const SizedBox(height: 12),

            CheckboxListTile(
              contentPadding: EdgeInsets.zero,
              value: agreed,
              onChanged: (value) {
                setState(() {
                  agreed = value ?? false;
                });
              },
              controlAffinity:
                  ListTileControlAffinity.leading,
              title: const Text(
                'Saya menyatakan data yang diisikan sudah benar '
                'dan sesuai persetujuan dosen pembimbing.',
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton.icon(
                  onPressed: submitForm,
                  icon: const Icon(
                    Icons.send_outlined,
                  ),
                  label: const Text(
                    'Kirim Pendaftaran',
                  ),
                ),
              ),

              const SizedBox(height: 8),

              SizedBox(
                width: double.infinity,
                height: 44,
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text(
                    'Simpan sebagai Draf',
                  ),
                ),
              ),
            ],
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
      style: Theme.of(context)
          .textTheme
          .labelMedium
          ?.copyWith(
            fontWeight: FontWeight.bold,
          ),
    );
  }
}