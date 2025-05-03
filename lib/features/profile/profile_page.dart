import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oneramadhan/common/app_spacing.dart';
import 'package:oneramadhan/widgets/card_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(224, 250, 255, 1.0),
                    Colors.white,
                  ],
                ),
              ),
              height: 100,
              width: MediaQuery.of(context).size.width),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              children: [
                // Header
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue.shade100,
                            radius: 24,
                            child: const Icon(
                              Icons.person_outline,
                              color: Colors.indigo,
                              size: 24,
                            ),
                          ),
                          const SizedBox(width: 12),
                          const Text(
                            'Andhito Diaz',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.edit_outlined, size: 26))
                    ],
                  ),
                ),
                CardLoginAccount(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Statistik',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Lihat semua',
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: _buildStatCard(
                          Icons.book_outlined,
                          'Tilawah',
                          '200 Halaman',
                          Colors.blue,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: _buildStatCard(
                          Icons.nightlight_round,
                          'Tarawih',
                          '6 Hari',
                          Colors.indigo,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: _buildStatCard(
                          Icons.attach_money,
                          'Infaq',
                          'Rp 250.000',
                          Colors.amber,
                        ),
                      ),
                    ],
                  ),
                ),
                AppSpacing.verticalSpacing24,
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Menu lainnya',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 16),
                      _buildMenuItem(
                        Icons.dark_mode_outlined,
                        'Mode Haid',
                        onToggle: (value) {},
                      ),
                      const Divider(),
                      _buildMenuItem(
                        Icons.settings_outlined,
                        'Settings',
                      ),
                      const Divider(),
                      _buildMenuItem(
                        Icons.diamond_outlined,
                        'Donate us',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildStatCard(
      IconData icon, String title, String value, Color color) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: color,
            size: 24,
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title,
      {Function(bool)? onToggle}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: Colors.grey.shade600,
                size: 24,
              ),
              const SizedBox(width: 16),
              Text(
                title,
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          onToggle != null
              ? Switch(
                  value: false,
                  onChanged: onToggle,
                  activeColor: Colors.blue,
                )
              : const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 16,
                ),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, {bool isSelected = false}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: isSelected ? Colors.blue : Colors.grey,
          size: 24,
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.blue : Colors.grey,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
