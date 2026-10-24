# Project Guidelines

## Project
Sistem Informasi Seminar dan Sidang Berbasis Mobile

## Flutter Architecture
Project Flutter menggunakan pola MVVM.

Struktur utama:
- `lib/app`
- `lib/data`
- `lib/presentation`
- `lib/utils`

## Development Guidelines

1. Semua fitur baru dikembangkan melalui branch `feature/*`.
2. Branch `main` tidak boleh digunakan untuk development langsung.
3. Integrasi perubahan dilakukan melalui Pull Request.
4. Gunakan branch `dev` sebagai branch pengembangan bersama.
5. Setiap perubahan harus mempertahankan struktur MVVM.
6. View tidak boleh mengakses API secara langsung.
7. ViewModel tidak boleh menangani detail komunikasi HTTP.
8. Repository digunakan sebagai abstraksi akses data.
9. Service menangani komunikasi dengan backend Laravel.
10. Model harus konsisten dengan ERD dan API Contract.

## Naming Convention

- File Dart menggunakan `snake_case`.
- Class menggunakan `PascalCase`.
- Variable dan function menggunakan `camelCase`.
- Nama route harus konsisten dengan fungsi halaman.

## Git Workflow

Alur branch:

`feature/* → dev → main`

Setiap perubahan:
1. Buat branch feature.
2. Commit perubahan dengan pesan yang jelas.
3. Push branch.
4. Buat Pull Request.
5. Review dilakukan oleh anggota lain.
6. Merge setelah review selesai.

## Git Safety

- Jangan gunakan `git push --force` pada shared branch.
- Jangan commit `.env`.
- Jangan commit output build.
- Jangan menghapus history Git.
- Gunakan rollback melalui `git revert` untuk perubahan yang sudah ter-push.

## Testing

Sebelum Pull Request:
1. Jalankan `flutter analyze`.
2. Jalankan aplikasi.
3. Pastikan tidak ada error baru.
4. Pastikan struktur MVVM tetap konsisten.