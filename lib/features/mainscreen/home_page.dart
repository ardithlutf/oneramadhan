import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:oneramadhan/common/app_colors.dart';
import 'package:oneramadhan/common/app_spacing.dart';
import 'package:oneramadhan/features/application/home_page_test.dart';
import 'package:oneramadhan/features/login_register/bloc/auth_bloc.dart';
import 'package:oneramadhan/features/login_register/function/auth_functions.dart';
import 'package:oneramadhan/features/profile/profile_page.dart';
import 'package:oneramadhan/features/quran/quran_page.dart';
import 'package:oneramadhan/features/shalat/shalat_page.dart';
import 'package:oneramadhan/generated/assets.gen.dart';
import 'package:oneramadhan/injector/injector.dart';
import 'package:oneramadhan/router/app_router.dart';
import 'package:oneramadhan/services/local_storage_service/local_storage_service.dart';
import 'package:oneramadhan/widgets/card_widget.dart';

class MainScreenPage extends StatefulWidget {
  const MainScreenPage({super.key});

  @override
  State<MainScreenPage> createState() => _MainScreenPageState();
}

class _MainScreenPageState extends State<MainScreenPage>
    with AuthFunctionMixin {
  final AuthBloc _authBloc = Injector.instance<AuthBloc>();

  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const PrayerTimesScreen(),
    const QuranScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _authBloc.add(const AuthEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>.value(
          value: _authBloc,
        ),
      ],
      child: BlocListener<AuthBloc, AuthState>(
          bloc: _authBloc,
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
              appBar: _selectedIndex == 0
                  ? AppBar(
                      title: SizedBox(
                          height: 32, child: Assets.images.logo.image()),
                    )
                  : null,
              body: _widgetOptions.elementAt(_selectedIndex),
              bottomNavigationBar: BottomNavBar(
                  selectedIndex: _selectedIndex, onItemTapped: _onItemTapped))),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isGuestMode =
        Injector.instance<LocalStorageService>().isGuestMode;

    return Column(
      children: [
        PrayerTimeCard(),
        isGuestMode ? CardLoginAccount() : SizedBox.shrink(),
        GridMenu(),
        Spacer(),
      ],
    );
  }
}

class GridMenu extends StatelessWidget {
  const GridMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.all(16),
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      crossAxisCount: 2,
      childAspectRatio: 1.5,
      children: const [
        MenuTile(
            icon: Icons.calendar_today,
            title: 'Jadwal Sholat',
            backgroundColor: Color.fromRGBO(196, 223, 170, 1)),
        MenuTile(
            icon: Icons.book,
            title: 'Al-Qur\'an',
            backgroundColor: Color.fromRGBO(200, 255, 212, 1)),
        MenuTile(
            icon: Icons.star,
            title: 'Ma\'tsurat',
            backgroundColor: Color.fromRGBO(184, 232, 252, 1)),
        MenuTile(
            icon: Icons.emoji_emotions,
            title: 'My Feeling',
            backgroundColor: Color.fromRGBO(253, 253, 189, 1)),
      ],
    );
  }
}

class MenuTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color backgroundColor;

  const MenuTile(
      {super.key,
      required this.icon,
      required this.title,
      required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        switch (title) {
          case 'Jadwal Sholat':
          // TODO:
          case 'Al-Qur\'an':
          // TODO:
          case 'Ma\'tsurat':
          // TODO:
          case 'My Feeling':
            context.pushNamed(AppRouter.feeling);
        }
      },
      child: Card(
        color: Color.fromRGBO(255, 255, 255, 1),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 18,
                backgroundColor: backgroundColor,
                child: IconButton(
                  icon: Icon(
                    icon,
                    size: 18,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ),
              AppSpacing.verticalSpacing8,
              Text(title,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final void Function(int index) onItemTapped;

  const BottomNavBar(
      {super.key, required this.selectedIndex, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedIconTheme: IconThemeData(color: AppColors('#001442')),
      type: BottomNavigationBarType.fixed,
      currentIndex: selectedIndex,
      selectedItemColor: AppColors('#001442'),
      onTap: onItemTapped,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.mosque), label: 'Shalat'),
        BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Al-Qur\'an'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
    );
  }
}
