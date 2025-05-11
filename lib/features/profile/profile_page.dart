import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oneramadhan/common/app_spacing.dart';
import 'package:oneramadhan/features/login_register/bloc/auth_bloc.dart';
import 'package:oneramadhan/features/login_register/function/auth_functions.dart';
import 'package:oneramadhan/injector/injector.dart';
import 'package:oneramadhan/services/local_storage_service/local_storage_service.dart';
import 'package:oneramadhan/widgets/card_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> with AuthFunctionMixin {
  final AuthBloc _authBloc = Injector.instance<AuthBloc>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bool isGuestMode =
        Injector.instance<LocalStorageService>().isGuestMode;

    return BlocProvider(
      create: (context) => _authBloc,
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.status == UIStatus.authSuccess) {
            setState(() {
              handleAuthSignOutSuccess(context, state);
            });
          }
          if (state.status == UIStatus.authFailed) {
            setState(() {
              handleAuthFailed(context, state);
            });
          }
        },
        child: Scaffold(
          extendBodyBehindAppBar: true,
          body: Stack(
            children: [
              Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
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
                    isGuestMode ? CardLoginAccount() : SizedBox.shrink(),
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
                              Color.fromRGBO(13, 202, 254, 1),
                              Color.fromRGBO(41, 150, 254, 1),
                              Color.fromRGBO(72, 93, 255, 1),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: _buildStatCard(
                              Icons.nightlight_round,
                              'Tarawih',
                              '6 Hari',
                              Color.fromRGBO(133, 158, 236, 1.0),
                              Color.fromRGBO(77, 107, 196, 1.0),
                              Color.fromRGBO(67, 91, 159, 1),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: _buildStatCard(
                              Icons.attach_money,
                              'Infaq',
                              'Rp 250.000',
                              Color.fromRGBO(251, 207, 110, 1),
                              Color.fromRGBO(227, 179, 88, 1),
                              Color.fromRGBO(198, 146, 62, 1),
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
                          const Divider(),
                          _buildMenuItem(Icons.login_outlined, 'Log out', onTap: (){
                            _authBloc.add(const AuthEvent.authSingOut());
                          }),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatCard(IconData icon, String title, String value,
      Color colorTop, Color colorMid, Color colorBottom) {
    return Container(
      padding: const EdgeInsets.all(12),
      height: 100,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [colorTop, colorMid, colorBottom],
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 24,
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title,
      {Function(bool)? onToggle, Function()? onTap}) {
    return InkWell(
      onTap: onTap ?? (){},
      child: Padding(
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
      ),
    );
  }
}
