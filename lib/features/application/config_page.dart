import 'package:oneramadhan/common/app_dimens.dart';
import 'package:oneramadhan/common/app_spacing.dart';
import 'package:oneramadhan/features/application/bloc/application_bloc.dart';
import 'package:oneramadhan/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConfigPage extends StatefulWidget {
  const ConfigPage({Key? key}) : super(key: key);

  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  late final ApplicationBloc _bloc;

  @override
  void initState() {
    _bloc = BlocProvider.of<ApplicationBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).config),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppDimens.basePadding),
        child: Column(
          children: [
            _buildLanguages(),
            AppSpacing.verticalSpacing24,
            _buildDarkMode(),
          ],
        ),
      ),
    );
  }

  Widget _buildLanguages() {
    return BlocBuilder<ApplicationBloc, ApplicationState>(
      bloc: _bloc,
      builder: (context, state) {
        return Column(
          children: [
            RadioListTile<String>(
              value: 'en',
              groupValue: state.locale,
              onChanged: (value) {
                _bloc.add(const ApplicationEvent.localeChanged(locale: 'en'));
              },
              title: Text(S.current.english),
            ),
            RadioListTile<String>(
              value: 'id',
              groupValue: state.locale,
              onChanged: (value) {
                _bloc.add(const ApplicationEvent.localeChanged(locale: 'id'));
              },
              title: Text(S.current.bahasa),
            ),
          ],
        );
      },
    );
  }

  Widget _buildDarkMode() {
    return BlocBuilder<ApplicationBloc, ApplicationState>(
      bloc: _bloc,
      builder: (context, state) {
        return Column(
          children: [
            SwitchListTile(
              value: state.isDarkMode,
              onChanged: (value) {
                _bloc.add(ApplicationEvent.darkModeChanged(enable: value));
              },
              title: Text(S.current.dark_mode),
            )
          ],
        );
      },
    );
  }
}
