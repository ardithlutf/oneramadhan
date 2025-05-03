import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oneramadhan/common/app_colors.dart';
import 'package:oneramadhan/features/login_register/bloc/auth_bloc.dart';
import 'package:oneramadhan/features/login_register/function/auth_functions.dart';
import 'package:oneramadhan/features/mainscreen/view/options/shalat_page.dart';
import 'package:oneramadhan/injector/injector.dart';
import 'package:oneramadhan/features/mainscreen/view/options/home.dart';
import 'package:oneramadhan/widgets/card_widget.dart';

class MainScreenPage extends StatefulWidget {
  const MainScreenPage({super.key});

  @override
  State<MainScreenPage> createState() => _MainScreenPageState();
}

class _MainScreenPageState extends State<MainScreenPage>
    with AuthFunctionMixin {
  late final AuthBloc _authBloc;

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
    _authBloc = Injector.instance<AuthBloc>();
    _authBloc.add(const AuthEvent.started());
    super.initState();
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
              appBar: AppBar(
                title: const Text('One Ramadhan'),
                actions: [
                  IconButton(
                      onPressed: () {
                        _authBloc.add(const AuthEvent.authSingOut());
                      },
                      icon: const Icon(Icons.logout))
                ],
              ),
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
    return const Column(
      children: [
        PrayerTimeCard(),
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
      childAspectRatio: 1.7,
      children: const [
        MenuTile(icon: Icons.calendar_today, title: 'Jadwal Sholat'),
        MenuTile(icon: Icons.book, title: 'Al-Qur\'an'),
        MenuTile(icon: Icons.star, title: 'Ma\'tsurat'),
        MenuTile(icon: Icons.emoji_emotions, title: 'My Feeling'),
      ],
    );
  }
}

class MenuTile extends StatelessWidget {
  final IconData icon;
  final String title;

  const MenuTile({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            const SizedBox(height: 8),
            Text(title),
          ],
        ),
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  int selectedIndex;
  void Function(int index) onItemTapped;

  BottomNavBar(
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
