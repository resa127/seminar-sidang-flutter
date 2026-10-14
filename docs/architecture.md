# Architecture - Seminar Sidang Mobile

## 1. Overview

Aplikasi mobile ini menggunakan pola arsitektur MVVM (Model-View-ViewModel) agar setiap layer memiliki tanggung jawab yang jelas dan mudah dikembangkan.

## 2. Struktur Folder

```text
lib/
├── app/
│   ├── routes/
│   └── theme/
├── data/
│   ├── models/
│   ├── repositories/
│   └── services/
├── presentation/
│   ├── viewmodels/
│   └── views/
├── utils/
└── main.dart