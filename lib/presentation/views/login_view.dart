import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool showPassword = false;

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void login() {
    if (usernameController.text.isEmpty || passwordController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('NIM dan password wajib diisi'),
        ),
      );
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Kredensial siap dikirim ke portal kampus'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FF),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 24,
            ),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 420,
              ),
              child: Column(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: const Color(0xFFEEF4FF),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      Icons.school_outlined,
                      size: 50,
                      color: Color(0xFF0D1C2D),
                    ),
                  ),
                  const SizedBox(height: 12),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE5EFFF),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'PORTAL AKADEMIK MAHASISWA',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5,
                        color: Color(0xFF505F76),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),

                  const Text(
                    'Sistem Informasi Seminar &\nSidang',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF0D1C2D),
                    ),
                  ),
                  const SizedBox(height: 6),

                  const Text(
                    'Masuk dengan akun portal kampus terverifikasi',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF505F76),
                    ),
                  ),
                  const SizedBox(height: 24),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.05),
                          blurRadius: 3,
                          offset: const Offset(0, 1),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 45,
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          decoration: const BoxDecoration(
                            color: Color(0xFFEEF4FF),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Row(
                                children: [
                                  Icon(
                                    Icons.lock_outline,
                                    size: 18,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'Autentikasi Akun',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFD4E4FA),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: const Text(
                                  'PROTOTYPE',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xFF505F76),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'NIM / Username',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    'Wajib',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Color(0xFF505F76),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 6),

                              TextField(
                                controller: usernameController,
                                decoration: InputDecoration(
                                  hintText: 'Contoh: 21010123045',
                                  prefixIcon:
                                      const Icon(Icons.badge_outlined),
                                  filled: true,
                                  fillColor: const Color(0xFFEEF4FF),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 14),

                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Kata Sandi / Password',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    'Wajib',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Color(0xFF505F76),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 6),

                              TextField(
                                controller: passwordController,
                                obscureText: !showPassword,
                                decoration: InputDecoration(
                                  hintText: 'Masukkan kata sandi',
                                  prefixIcon:
                                      const Icon(Icons.key_outlined),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        showPassword = !showPassword;
                                      });
                                    },
                                    icon: Icon(
                                      showPassword
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: const Color(0xFFEEF4FF),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),

                              Align(
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                  onPressed: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text(
                                          'Hubungi Helpdesk Kampus untuk mengatur ulang kata sandi',
                                        ),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    'Lupa Kata Sandi?',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xFF505F76),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 4),

                              SizedBox(
                                width: double.infinity,
                                height: 48,
                                child: ElevatedButton(
                                  onPressed: login,
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    foregroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                  child: const Text(
                                    'Masuk Portal →',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 14),

                              Container(
                                width: double.infinity,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFEEF4FF),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: const Row(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.info_outline,
                                      size: 17,
                                      color: Color(0xFF505F76),
                                    ),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        'Gunakan kredensial Single Sign-On (SSO) universitas aktif untuk pendaftaran seminar atau sidang skripsi.',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFF505F76),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),

                  const Text(
                    '🎧 Bantuan IT Helpdesk Kampus v1.0 (Wireframe)',
                    style: TextStyle(
                      fontSize: 11,
                      color: Color(0xFF505F76),
                    ),
                  ),
                  const SizedBox(height: 4),

                  const Text(
                    'Gedung Akademik Terpadu Lt. 2 • Ext: 104',
                    style: TextStyle(
                      fontSize: 11,
                      color: Color(0xFF76777D),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}