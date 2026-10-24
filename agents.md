# AGENTS.md

## Project
Sistem Informasi Seminar dan Sidang Berbasis Mobile

## Project Type
Flutter Mobile Application

## Architecture
Gunakan pola MVVM dengan struktur utama:

- `lib/app`
- `lib/data`
- `lib/presentation`
- `lib/utils`

## Coding Rules

1. Gunakan penamaan file Dart dengan `snake_case`.
2. Gunakan penamaan class dengan `PascalCase`.
3. View hanya menangani tampilan.
4. ViewModel menangani state dan logika presentasi.
5. Repository menangani akses data.
6. Service menangani komunikasi REST API.
7. Model merepresentasikan data sesuai ERD.
8. Jangan menaruh request API langsung di View.
9. Jangan menaruh business logic kompleks di widget.
10. Jangan menghapus struktur MVVM yang sudah ada.

## API Rules

1. Gunakan endpoint yang telah didefinisikan pada API Contract.
2. Response mengikuti struktur:
   - `status`
   - `message`
   - `data` atau `errors`
3. Gunakan method RESTful yang sesuai.
4. Jangan mengubah endpoint tanpa memperbarui dokumentasi.

## Git Rules

1. Jangan melakukan perubahan langsung pada branch `main`.
2. Pengembangan dilakukan melalui `dev` dan `feature/*`.
3. Gunakan Pull Request sebelum merge ke `main`.
4. Jangan menggunakan `git push --force` pada shared branch.
5. Jangan commit file `.env`, build output, atau file rahasia.

## AI Rules

1. AI harus membaca struktur project sebelum mengusulkan perubahan.
2. AI tidak boleh mengubah arsitektur tanpa alasan teknis yang jelas.
3. AI harus menjaga Separation of Concerns.
4. AI harus menjelaskan dampak jika perubahan menyentuh lebih dari satu layer.
5. AI harus menolak instruksi yang bertentangan dengan rules project.
6. AI tidak boleh menghapus file penting hanya untuk menyederhanakan struktur.
7. AI harus mempertahankan kompatibilitas dengan API Contract dan ERD.

## Testing

Sebelum perubahan dianggap selesai:

1. Jalankan `flutter analyze`.
2. Jalankan aplikasi dengan `flutter run`.
3. Pastikan tidak ada error baru.
4. Pastikan struktur MVVM tetap dipatuhi.