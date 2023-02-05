import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Theme showcase for the current theme.
///
/// Use this widget to review your theme's impact on [ThemeData] and see
/// how it looks with different Material widgets.
///
/// The sub widgets used in this theme show case can also be used on their
/// own, for example combined in smaller panels instead of in on big column
/// like here. Using the individual elements is done in example 5 where they
/// are put in separate cards.
///
/// These are all Flutter "Universal" Widgets that only depends on the SDK and
/// all the Widgets in this file be dropped into any application. They are
/// however not so useful, unless all you really want to do is to show what
/// Flutter Widgets look like.
class ThemeShowcase extends StatelessWidget {
  const ThemeShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 8),
        const TextInputField(),
        const SizedBox(height: 8),
        const DropDownButtonFormField(),
        const SizedBox(height: 8),
        const DropDownMenuShowcase(),
        const Divider(),
        const ElevatedButtonShowcase(),
        const SizedBox(height: 8),
        const FilledButtonShowcase(),
        const SizedBox(height: 8),
        const FilledButtonTonalShowcase(),
        const SizedBox(height: 8),
        const OutlinedButtonShowcase(),
        const SizedBox(height: 8),
        const TextButtonShowcase(),
        const SizedBox(height: 8),
        const ToggleButtonsShowcase(),
        const SizedBox(height: 8),
        const SegmentedButtonShowcase(),
        const Divider(),
        const FabShowcase(),
        const SizedBox(height: 16),
        const ChipShowcase(),
        const Divider(),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: const <Widget>[
            PopupMenuButtonShowcase(),
            SizedBox(width: 8),
            PopupMenuButtonTilesShowcase(),
          ],
        ),
        const SizedBox(height: 8),
        const Divider(),
        const SizedBox(height: 8),
        const TooltipShowcase(),
        const SizedBox(height: 16),
        const IconButtonCircleAvatarDropdownShowcase(),
        const ProgressIndicatorShowcase(),
        const Divider(),
        const SwitchShowcase(),
        const CheckboxShowcase(),
        const RadioShowcase(),
        const SizedBox(height: 8),
        const Divider(),
        const SliderShowcase(),
        const SizedBox(height: 8),
        const RangeSliderShowcase(),
        const SizedBox(height: 8),
        const Divider(),
        const ListTileShowcase(),
        const Divider(),
        const AppBarShowcase(),
        const Divider(),
        const BottomAppBarShowcase(),
        const Divider(),
        const TabBarForAppBarShowcase(),
        const SizedBox(height: 8),
        const Divider(),
        const TabBarForBackgroundShowcase(),
        const SizedBox(height: 8),
        const Divider(),
        const BottomNavigationBarShowcase(),
        const SizedBox(height: 8),
        const Divider(),
        const Shortcuts(shortcuts: <ShortcutActivator, Intent>{
          SingleActivator(LogicalKeyboardKey.keyT, control: true):
              VoidCallbackIntent(debugDumpApp),
        }, child: MenuBarShowcase()),
        const SizedBox(height: 8),
        const MenuAnchorShowcase(),
        const SizedBox(height: 8),
        const NavigationBarShowcase(),
        const SizedBox(height: 8),
        const Divider(),
        const NavigationRailShowcase(),
        const SizedBox(height: 8),
        const NavigationDrawerShowcase(),
        const DrawerShowcase(),
        const SizedBox(height: 8),
        const Divider(),
        const AlertDialogShowcase(),
        const TimePickerDialogShowcase(),
        const DatePickerDialogShowcase(),
        const BottomSheetShowcase(),
        const SizedBox(height: 16),
        const BottomSheetModalShowcase(),
        const SizedBox(height: 32),
        const MaterialBannerSnackBarShowcase(),
        const Divider(height: 32),
        const MaterialShowcase(),
        const Divider(height: 32),
        const CardShowcase(),
        const SizedBox(height: 8),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text('Normal TextTheme',
                      style: theme.textTheme.titleMedium),
                ),
                const TextThemeShowcase(),
              ],
            ),
          ),
        ),
        const SizedBox(height: 8),
        Card(
          color: theme.colorScheme.primary,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text('Primary TextTheme',
                      style: theme.primaryTextTheme.titleMedium),
                ),
                const PrimaryTextThemeShowcase(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ElevatedButtonShowcase extends StatelessWidget {
  const ElevatedButtonShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 8,
      runSpacing: 8,
      children: <Widget>[
        ElevatedButton(
          onPressed: () {},
          child: const Text('Elevated button'),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.add),
          label: const Text('Elevated icon'),
        ),
        const ElevatedButton(
          onPressed: null,
          child: Text('Elevated button'),
        ),
      ],
    );
  }
}

class FilledButtonShowcase extends StatelessWidget {
  const FilledButtonShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 8,
      runSpacing: 8,
      children: <Widget>[
        FilledButton(
          onPressed: () {},
          child: const Text('Filled button'),
        ),
        FilledButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.add),
          label: const Text('Filled icon'),
        ),
        const FilledButton(
          onPressed: null,
          child: Text('Filled button'),
        ),
      ],
    );
  }
}

class FilledButtonTonalShowcase extends StatelessWidget {
  const FilledButtonTonalShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 8,
      runSpacing: 8,
      children: <Widget>[
        FilledButton.tonal(
          onPressed: () {},
          child: const Text('Filled tonal button'),
        ),
        FilledButton.tonalIcon(
          onPressed: () {},
          icon: const Icon(Icons.add),
          label: const Text('Filled tonal icon'),
        ),
        const FilledButton.tonal(
          onPressed: null,
          child: Text('Filled tonal button'),
        ),
      ],
    );
  }
}

class OutlinedButtonShowcase extends StatelessWidget {
  const OutlinedButtonShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 8,
      runSpacing: 8,
      children: <Widget>[
        OutlinedButton(
          onPressed: () {},
          child: const Text('Outlined button'),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.add),
          label: const Text('Outlined icon'),
        ),
        const OutlinedButton(
          onPressed: null,
          child: Text('Outlined button'),
        ),
      ],
    );
  }
}

class TextButtonShowcase extends StatelessWidget {
  const TextButtonShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 8,
      runSpacing: 8,
      children: <Widget>[
        TextButton(
          onPressed: () {},
          child: const Text('Text button'),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.add),
          label: const Text('Text icon'),
        ),
        const TextButton(
          onPressed: null,
          child: Text('Text button'),
        ),
      ],
    );
  }
}

class ToggleButtonsShowcase extends StatefulWidget {
  const ToggleButtonsShowcase({this.compareButtons, super.key});
  final bool? compareButtons;

  @override
  State<ToggleButtonsShowcase> createState() => _ToggleButtonsShowcaseState();
}

class _ToggleButtonsShowcaseState extends State<ToggleButtonsShowcase> {
  List<bool> selected = <bool>[true, false, false];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 8,
      runSpacing: 8,
      children: <Widget>[
        ToggleButtons(
          isSelected: selected,
          onPressed: (int toggledIndex) {
            setState(() {
              selected[toggledIndex] = !selected[toggledIndex];
            });
          },
          children: const <Widget>[
            Icon(Icons.adb),
            Icon(Icons.phone),
            Icon(Icons.account_circle),
          ],
        ),
        if (widget.compareButtons ?? false)
          OutlinedButton(
            onPressed: () {},
            child: const Text('Outlined'),
          ),
        if (widget.compareButtons ?? false)
          FilledButton(
            onPressed: () {},
            child: const Text('Filled'),
          ),
        ToggleButtons(
          isSelected: const <bool>[true, false, false],
          onPressed: null,
          children: const <Widget>[
            Icon(Icons.adb),
            Icon(Icons.phone),
            Icon(Icons.account_circle),
          ],
        ),
        if (widget.compareButtons ?? false)
          const OutlinedButton(
            onPressed: null,
            child: Text('Outlined'),
          ),
      ],
    );
  }
}

class SegmentedButtonShowcase extends StatefulWidget {
  const SegmentedButtonShowcase({this.showOutlinedButton, super.key});
  final bool? showOutlinedButton;

  @override
  State<SegmentedButtonShowcase> createState() =>
      _SegmentedButtonShowcaseState();
}

enum Calendar { day, week, month, year }

class _SegmentedButtonShowcaseState extends State<SegmentedButtonShowcase> {
  List<bool> selected = <bool>[true, false, false];
  Calendar _selected = Calendar.day;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 8,
      runSpacing: 8,
      children: <Widget>[
        SegmentedButton<Calendar>(
          showSelectedIcon: false,
          segments: const <ButtonSegment<Calendar>>[
            ButtonSegment<Calendar>(
              value: Calendar.day,
              label: Text('Day'),
            ),
            ButtonSegment<Calendar>(
              value: Calendar.week,
              label: Text('Week'),
            ),
            ButtonSegment<Calendar>(
              value: Calendar.month,
              label: Text('Month'),
            ),
            ButtonSegment<Calendar>(
              value: Calendar.year,
              label: Text('Year'),
            ),
          ],
          selected: <Calendar>{_selected},
          onSelectionChanged: (Set<Calendar> selected) {
            setState(() {
              _selected = selected.first;
            });
          },
        ),
        SegmentedButton<Calendar>(
          segments: const <ButtonSegment<Calendar>>[
            ButtonSegment<Calendar>(
              value: Calendar.day,
              label: Text('Day'),
              icon: Icon(Icons.calendar_view_day),
            ),
            ButtonSegment<Calendar>(
              value: Calendar.week,
              icon: Icon(Icons.calendar_view_week),
              label: Text('Week'),
            ),
            ButtonSegment<Calendar>(
              value: Calendar.month,
              icon: Icon(Icons.calendar_view_month),
              label: Text('Month'),
            ),
            ButtonSegment<Calendar>(
              value: Calendar.year,
              icon: Icon(Icons.calendar_today),
              label: Text('Year'),
            ),
          ],
          selected: <Calendar>{_selected},
          onSelectionChanged: (Set<Calendar> selected) {
            setState(() {
              _selected = selected.first;
            });
          },
        ),
        SegmentedButton<Calendar>(
          segments: const <ButtonSegment<Calendar>>[
            ButtonSegment<Calendar>(
              value: Calendar.day,
              label: Text('Day'),
              icon: Icon(Icons.calendar_view_day),
              enabled: false,
            ),
            ButtonSegment<Calendar>(
              value: Calendar.week,
              icon: Icon(Icons.calendar_view_week),
              label: Text('Week'),
            ),
            ButtonSegment<Calendar>(
              value: Calendar.month,
              icon: Icon(Icons.calendar_view_month),
              label: Text('Month'),
              enabled: false,
            ),
            ButtonSegment<Calendar>(
              value: Calendar.year,
              icon: Icon(Icons.calendar_today),
              label: Text('Year'),
            ),
          ],
          selected: <Calendar>{_selected},
          onSelectionChanged: (Set<Calendar> selected) {
            setState(() {
              _selected = selected.first;
            });
          },
        ),
      ],
    );
  }
}

class FabShowcase extends StatelessWidget {
  const FabShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 8,
      runSpacing: 8,
      children: <Widget>[
        FloatingActionButton.small(
          heroTag: 'FAB small',
          onPressed: () {},
          tooltip: 'Tooltip on small\nFloatingActionButton',
          child: const Icon(Icons.accessibility),
        ),
        FloatingActionButton.extended(
          heroTag: 'FAB extended false',
          isExtended: false,
          onPressed: () {},
          tooltip: 'Tooltip on extended:false\nFloatingActionButton.extended',
          icon: const Icon(Icons.accessibility),
          label: const Text('Extended'),
        ),
        FloatingActionButton.extended(
          heroTag: 'FAB extended true',
          isExtended: true,
          onPressed: () {},
          tooltip: 'Tooltip on extended:true\nFloatingActionButton.extended',
          icon: const Icon(Icons.accessibility),
          label: const Text('Extended'),
        ),
        FloatingActionButton(
          heroTag: 'FAB standard',
          onPressed: () {},
          tooltip: 'Tooltip on default\nFloatingActionButton',
          child: const Icon(Icons.accessibility),
        ),
        FloatingActionButton.large(
          heroTag: 'FAB large',
          onPressed: () {},
          tooltip: 'Tooltip on large\nFloatingActionButton',
          child: const Icon(Icons.accessibility),
        ),
      ],
    );
  }
}

class SwitchShowcase extends StatefulWidget {
  const SwitchShowcase({super.key});

  @override
  State<SwitchShowcase> createState() => _SwitchShowcaseState();
}

class _SwitchShowcaseState extends State<SwitchShowcase> {
  bool isOn1 = true;
  bool isOn2 = false;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 8,
      runSpacing: 8,
      children: <Widget>[
        Switch(
          value: isOn1,
          onChanged: (bool value) {
            setState(() {
              isOn1 = value;
            });
          },
        ),
        Switch(
          thumbIcon: MaterialStateProperty.resolveWith<Icon?>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.selected)) {
              return const Icon(Icons.check);
            }
            // All other states will use the default thumbIcon.
            return const Icon(Icons.close);
          }),
          value: isOn1,
          onChanged: (bool value) {
            setState(() {
              isOn1 = value;
            });
          },
        ),
        Switch(
          value: isOn2,
          onChanged: (bool value) {
            setState(() {
              isOn2 = value;
            });
          },
        ),
        const Switch(
          value: true,
          onChanged: null,
        ),
        const Switch(
          value: false,
          onChanged: null,
        ),
      ],
    );
  }
}

class CheckboxShowcase extends StatefulWidget {
  const CheckboxShowcase({super.key});

  @override
  State<CheckboxShowcase> createState() => _CheckboxShowcaseState();
}

class _CheckboxShowcaseState extends State<CheckboxShowcase> {
  bool? isSelected1 = true;
  bool? isSelected2;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 8,
      runSpacing: 8,
      children: <Widget>[
        Checkbox(
          value: isSelected1,
          onChanged: (bool? value) {
            setState(() {
              isSelected1 = value;
            });
          },
        ),
        Checkbox(
          tristate: true,
          value: isSelected2,
          onChanged: (bool? value) {
            setState(() {
              isSelected2 = value;
            });
          },
        ),
        Checkbox(
          value: false,
          onChanged: (bool? value) {},
        ),
        const Checkbox(
          value: true,
          onChanged: null,
        ),
        const Checkbox(
          value: null,
          tristate: true,
          onChanged: null,
        ),
        const Checkbox(
          value: false,
          onChanged: null,
        ),
      ],
    );
  }
}

class RadioShowcase extends StatefulWidget {
  const RadioShowcase({super.key});

  @override
  State<RadioShowcase> createState() => _RadioShowcaseState();
}

class _RadioShowcaseState extends State<RadioShowcase> {
  bool? groupValue = true;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 8,
      runSpacing: 8,
      children: <Widget>[
        Radio<bool>(
          value: true,
          groupValue: groupValue,
          onChanged: (bool? value) {
            setState(() {
              groupValue = value;
            });
          },
        ),
        Radio<bool>(
          value: false,
          groupValue: groupValue,
          onChanged: (bool? value) {
            setState(() {
              groupValue = value;
            });
          },
        ),
        Radio<bool>(
          value: true,
          groupValue: groupValue,
          onChanged: null,
        ),
        Radio<bool>(
          value: false,
          groupValue: groupValue,
          onChanged: null,
        ),
      ],
    );
  }
}

class SliderShowcase extends StatefulWidget {
  const SliderShowcase({super.key});

  @override
  State<SliderShowcase> createState() => _SliderShowcaseState();
}

class _SliderShowcaseState extends State<SliderShowcase> {
  double value = 5;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          dense: true,
          title: Text('Slider stepped (${value.toStringAsFixed(0)})'),
          subtitle: Slider(
            max: 30,
            divisions: 31,
            label: value.toStringAsFixed(0),
            value: value,
            onChanged: (double newValue) {
              setState(() {
                value = newValue.roundToDouble();
              });
            },
          ),
        ),
        ListTile(
          dense: true,
          title: Text('Slider continuous (${value.toStringAsFixed(2)})'),
          subtitle: Slider(
            max: 30,
            label: value.toStringAsFixed(0),
            value: value,
            onChanged: (double newValue) {
              setState(() {
                value = newValue;
              });
            },
          ),
        ),
        ListTile(
          dense: true,
          title: Text('Slider stepped disabled (${value.toStringAsFixed(0)})'),
          subtitle: Slider(
            max: 30,
            divisions: 31,
            label: value.toStringAsFixed(0),
            value: value,
            onChanged: null,
          ),
        ),
        ListTile(
          dense: true,
          title:
              Text('Slider continuous disabled (${value.toStringAsFixed(2)})'),
          subtitle: Slider(
            max: 30,
            label: value.toStringAsFixed(0),
            value: value,
            onChanged: null,
          ),
        ),
      ],
    );
  }
}

class RangeSliderShowcase extends StatefulWidget {
  const RangeSliderShowcase({super.key});

  @override
  State<RangeSliderShowcase> createState() => _RangeSliderShowcaseState();
}

class _RangeSliderShowcaseState extends State<RangeSliderShowcase> {
  RangeValues values = const RangeValues(5, 12);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          dense: true,
          title: Text('RangeSlider stepped (${RangeLabels(
            values.start.toStringAsFixed(0),
            values.end.toStringAsFixed(0),
          )})'),
          subtitle: RangeSlider(
            max: 30,
            divisions: 31,
            labels: RangeLabels(
              values.start.toStringAsFixed(0),
              values.end.toStringAsFixed(0),
            ),
            values: values,
            onChanged: (RangeValues newValues) {
              setState(() {
                values = RangeValues(
                  newValues.start.roundToDouble(),
                  newValues.end.roundToDouble(),
                );
              });
            },
          ),
        ),
        ListTile(
          dense: true,
          title: Text('RangeSlider continuous (${RangeLabels(
            values.start.toStringAsFixed(2),
            values.end.toStringAsFixed(2),
          )})'),
          subtitle: RangeSlider(
            max: 30,
            labels: RangeLabels(
              values.start.toStringAsFixed(2),
              values.end.toStringAsFixed(2),
            ),
            values: values,
            onChanged: (RangeValues newValues) {
              setState(() {
                values = newValues;
              });
            },
          ),
        ),
        ListTile(
          dense: true,
          title: Text('RangeSlider stepped disabled (${RangeLabels(
            values.start.toStringAsFixed(0),
            values.end.toStringAsFixed(0),
          )})'),
          subtitle: RangeSlider(
            max: 30,
            divisions: 31,
            labels: RangeLabels(
              values.start.toStringAsFixed(0),
              values.end.toStringAsFixed(0),
            ),
            values: values,
            onChanged: null,
          ),
        ),
        ListTile(
          dense: true,
          title: Text('RangeSlider continuous disabled (${RangeLabels(
            values.start.toStringAsFixed(2),
            values.end.toStringAsFixed(2),
          )})'),
          subtitle: RangeSlider(
            max: 30,
            divisions: 31,
            labels: RangeLabels(
              values.start.toStringAsFixed(2),
              values.end.toStringAsFixed(2),
            ),
            values: values,
            onChanged: null,
          ),
        ),
      ],
    );
  }
}

class PopupMenuButtonShowcase extends StatelessWidget {
  const PopupMenuButtonShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme scheme = theme.colorScheme;
    return PopupMenuButton<int>(
      onSelected: (_) {},
      tooltip: 'Show menu',
      position: PopupMenuPosition.under,
      itemBuilder: (BuildContext context) => const <PopupMenuItem<int>>[
        PopupMenuItem<int>(value: 1, child: Text('Option 1')),
        PopupMenuItem<int>(value: 2, child: Text('Option 2')),
        PopupMenuItem<int>(value: 3, child: Text('Option 3')),
        PopupMenuItem<int>(value: 4, child: Text('Option 4')),
        PopupMenuItem<int>(value: 5, child: Text('Option 5')),
      ],
      child: AbsorbPointer(
        child: TextButton.icon(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            backgroundColor: scheme.primary,
            foregroundColor: scheme.onPrimary,
            disabledForegroundColor: scheme.onSurface,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
          ),
          onPressed: () {},
          icon: const Icon(Icons.expand_more_outlined),
          label: const Text('Show PopupMenu'),
        ),
      ),
    );
  }
}

class PopupMenuButtonTilesShowcase extends StatelessWidget {
  const PopupMenuButtonTilesShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme scheme = theme.colorScheme;
    return PopupMenuButton<int>(
      onSelected: (_) {},
      tooltip: 'Show menu',
      position: PopupMenuPosition.under,
      itemBuilder: (BuildContext context) => const <PopupMenuItem<int>>[
        PopupMenuItem<int>(
            value: 1,
            child: ListTile(leading: Icon(Icons.alarm), title: Text('Alarm'))),
        PopupMenuItem<int>(
            value: 2,
            child: ListTile(
                leading: Icon(Icons.cabin), title: Text('Wood cabin'))),
        PopupMenuItem<int>(
            value: 3,
            child: ListTile(
                leading: Icon(Icons.camera_outdoor_rounded),
                title: Text('Surveillance'))),
        PopupMenuItem<int>(
            value: 4,
            child: ListTile(
                leading: Icon(Icons.water_damage),
                title: Text('Water damage'))),
      ],
      child: AbsorbPointer(
        child: TextButton.icon(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            backgroundColor: scheme.primary,
            foregroundColor: scheme.onPrimary,
            disabledForegroundColor: scheme.onSurface,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
          ),
          onPressed: () {},
          icon: const Icon(Icons.expand_more_outlined),
          label: const Text('ListTile PopupMenu'),
        ),
      ),
    );
  }
}

class _DropDownButton extends StatefulWidget {
  const _DropDownButton();

  @override
  State<_DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<_DropDownButton> {
  String selectedItem = 'Dropdown button 1';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedItem,
      onChanged: (String? value) {
        setState(() {
          selectedItem = value ?? 'Dropdown button 1';
        });
      },
      items: <String>[
        'Dropdown button 1',
        'Dropdown button 2',
        'Dropdown button 3',
        'Dropdown button 4',
        'Dropdown button 5'
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(value),
          ),
        );
      }).toList(),
    );
  }
}

class DropDownButtonFormField extends StatefulWidget {
  const DropDownButtonFormField({super.key});

  @override
  State<DropDownButtonFormField> createState() =>
      _DropDownButtonFormFieldState();
}

class _DropDownButtonFormFieldState extends State<DropDownButtonFormField> {
  String selectedItem = 'DropDownButtonFormField - Option 1';
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedItem,
      onChanged: (String? value) {
        setState(() {
          selectedItem = value ?? 'DropDownButtonFormField - Option 1';
        });
      },
      items: <String>[
        'DropDownButtonFormField - Option 1',
        'DropDownButtonFormField - Option 2',
        'DropDownButtonFormField - Option 3',
        'DropDownButtonFormField - Option 4',
        'DropDownButtonFormField - Option 5',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropDownMenuShowcase extends StatefulWidget {
  const DropDownMenuShowcase({super.key});

  @override
  State<DropDownMenuShowcase> createState() => _DropDownMenuShowcaseState();
}

class _DropDownMenuShowcaseState extends State<DropDownMenuShowcase> {
  String selectedItem = 'one';
  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      initialSelection: selectedItem,
      onSelected: (String? value) {
        setState(() {
          selectedItem = value ?? 'one';
        });
      },
      dropdownMenuEntries: const <DropdownMenuEntry<String>>[
        DropdownMenuEntry<String>(
          label: 'Alarm settings',
          leadingIcon: Icon(Icons.alarm),
          value: 'one',
        ),
        DropdownMenuEntry<String>(
          label: 'Cabin overview',
          leadingIcon: Icon(Icons.cabin),
          value: 'two',
        ),
        DropdownMenuEntry<String>(
          label: 'Surveillance view',
          leadingIcon: Icon(Icons.camera_outdoor_rounded),
          value: 'three',
        ),
        DropdownMenuEntry<String>(
          label: 'Water alert',
          leadingIcon: Icon(Icons.water_damage),
          value: 'four',
        ),
      ],
    );
  }
}

class TooltipShowcase extends StatelessWidget {
  const TooltipShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 16,
      runSpacing: 4,
      children: const <Widget>[
        Tooltip(
          message: 'Current tooltip theme',
          child: Text('Text with tooltip'),
        ),
        Tooltip(
          message: 'Current tooltip theme.\nThis a two row tooltip.',
          child: Text('Text with two row tooltip'),
        ),
        Tooltip(
          message: 'Current tooltip theme.\nThis tooltip is too long.\n'
              'Try to keep them short.',
          child: Text('Text with three row tooltip'),
        ),
      ],
    );
  }
}

class IconButtonCircleAvatarDropdownShowcase extends StatefulWidget {
  const IconButtonCircleAvatarDropdownShowcase({super.key});

  @override
  State<IconButtonCircleAvatarDropdownShowcase> createState() =>
      _IconButtonCircleAvatarDropdownShowcaseState();
}

class _IconButtonCircleAvatarDropdownShowcaseState
    extends State<IconButtonCircleAvatarDropdownShowcase> {
  bool isLockOpen = false;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 16,
      runSpacing: 4,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: IconButton(
            icon: const Icon(Icons.accessibility),
            tooltip: 'Tooltip on\nIconButton',
            onPressed: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: IconButton(
            icon: const Icon(Icons.lock_outlined),
            selectedIcon: const Icon(Icons.lock_open_outlined),
            tooltip: isLockOpen ? 'In M3 tap to close' : 'In M3 tap to open',
            isSelected: isLockOpen,
            onPressed: () {
              setState(() {
                isLockOpen = !isLockOpen;
              });
            },
          ),
        ),
        const Tooltip(
          message: 'Tooltip on\nCircleAvatar',
          child: CircleAvatar(
            child: Text('AV'),
          ),
        ),
        const _DropDownButton(),
      ],
    );
  }
}

class ProgressIndicatorShowcase extends StatelessWidget {
  const ProgressIndicatorShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 16,
      runSpacing: 16,
      children: const <Widget>[
        SizedBox(
          width: 50,
          height: 50,
          child: CircularProgressIndicator(),
        ),
        SizedBox(width: 200, child: LinearProgressIndicator()),
      ],
    );
  }
}

class ChipShowcase extends StatelessWidget {
  const ChipShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 8,
      runSpacing: 8,
      children: <Widget>[
        Chip(
          label: const Text('Chip'),
          onDeleted: () {},
        ),
        const Chip(
          label: Text('Chip'),
          avatar: FlutterLogo(),
        ),
        ActionChip(
          label: const Text('ActionChip'),
          avatar: const Icon(Icons.settings),
          onPressed: () {},
        ),
        const ActionChip(
          label: Text('ActionChip'),
          avatar: Icon(Icons.settings),
          onPressed: null,
        ),
        FilterChip(
          label: const Text('FilterChip'),
          selected: true,
          onSelected: (bool value) {},
        ),
        const FilterChip(
          label: Text('FilterChip'),
          selected: true,
          onSelected: null,
        ),
        FilterChip(
          label: const Text('FilterChip'),
          selected: false,
          onSelected: (bool value) {},
        ),
        const FilterChip(
          label: Text('FilterChip'),
          selected: false,
          onSelected: null,
        ),
        ChoiceChip(
          label: const Text('ChoiceChip'),
          selected: true,
          onSelected: (bool value) {},
        ),
        const ChoiceChip(
          label: Text('ChoiceChip'),
          selected: true,
        ),
        ChoiceChip(
          label: const Text('ChoiceChip'),
          selected: false,
          onSelected: (bool value) {},
        ),
        const ChoiceChip(
          label: Text('ChoiceChip'),
          selected: false,
          onSelected: null,
        ),
        InputChip(
          selected: true,
          label: const Text('InputChip'),
          onSelected: (bool value) {},
          onDeleted: () {},
        ),
        InputChip(
          selected: true,
          label: const Text('InputChip'),
          isEnabled: false,
          onSelected: (bool value) {},
          onDeleted: () {},
        ),
        InputChip(
          label: const Text('InputChip'),
          onSelected: (bool value) {},
          onDeleted: () {},
        ),
        InputChip(
          label: const Text('InputChip'),
          isEnabled: false,
          onSelected: (bool value) {},
          onDeleted: () {},
          // onDeleted: () {},
        ),
      ],
    );
  }
}

class TextInputField extends StatefulWidget {
  const TextInputField({super.key});

  @override
  State<TextInputField> createState() => _TextInputFieldState();
}

class _TextInputFieldState extends State<TextInputField> {
  late TextEditingController _textController1;
  late TextEditingController _textController2;
  late TextEditingController _textController3;
  late TextEditingController _textController4;
  bool _errorState1 = false;
  bool _errorState2 = false;
  bool _errorState3 = false;

  @override
  void initState() {
    super.initState();
    _textController1 = TextEditingController();
    _textController2 = TextEditingController();
    _textController3 = TextEditingController();
    _textController4 = TextEditingController();
  }

  @override
  void dispose() {
    _textController1.dispose();
    _textController2.dispose();
    _textController3.dispose();
    _textController4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          onChanged: (String text) {
            setState(() {
              if (text.contains('a') | text.isEmpty) {
                _errorState1 = false;
              } else {
                _errorState1 = true;
              }
            });
          },
          key: const Key('TextField1'),
          controller: _textController1,
          decoration: InputDecoration(
            hintText: 'Hint: Write something...',
            labelText: 'Label: Underline border by default if not defined',
            errorText: _errorState1
                ? "Any entry without an 'a' will trigger this error"
                : null,
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          onChanged: (String text) {
            setState(() {
              if (text.contains('a') | text.isEmpty) {
                _errorState2 = false;
              } else {
                _errorState2 = true;
              }
            });
          },
          key: const Key('TextField2'),
          controller: _textController2,
          decoration: InputDecoration(
            filled: true,
            hintText: 'Hint: Write something...',
            labelText: 'Label: Underline border by default if not defined, '
                'filled set true by Widget',
            errorText: _errorState2
                ? "Any entry without an 'a' will trigger this error"
                : null,
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          onChanged: (String text) {
            setState(() {
              if (text.contains('a') | text.isEmpty) {
                _errorState3 = false;
              } else {
                _errorState3 = true;
              }
            });
          },
          key: const Key('TextField3'),
          controller: _textController3,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: 'Hint: Write something...',
            labelText: 'Label: Outline border set by Widget if not defined',
            prefixIcon: const Icon(Icons.search),
            suffixIcon: const Icon(Icons.info),
            errorText: _errorState3
                ? "Any entry without an 'a' will trigger this error"
                : null,
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          key: const Key('TextField4'),
          controller: _textController4,
          decoration: const InputDecoration.collapsed(
            hintText: 'Hint: Collapsed TextField...',
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: TextEditingController(),
          enabled: false,
          decoration: const InputDecoration(
            labelText: 'TextField - Disabled label',
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: TextEditingController(text: 'Disabled with text entry'),
          enabled: false,
          decoration: const InputDecoration(
            labelText: 'TextField - Disabled label',
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(Icons.info),
          ),
        ),
      ],
    );
  }
}

class AppBarShowcase extends StatelessWidget {
  const AppBarShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeBottom: true,
      removeTop: true,
      child: Column(
        children: <Widget>[
          Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              const _BehindAppBar(),
              AppBar(
                leading: IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {},
                ),
                title: const Text('Standard AppBar'),
                actions: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
          // A bit nasty usage of CustomScrollViews and Slivers and shrinkWraps,
          // to show what the SliverAppBars look like, don't do this in a
          // production app. With just a few widgets, we can get away with it.
          Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              const _BehindAppBar(),
              CustomScrollView(
                shrinkWrap: true,
                slivers: <Widget>[
                  SliverAppBar(
                    leading: IconButton(
                      icon: const Icon(Icons.menu),
                      onPressed: () {},
                    ),
                    title: const Text('SliverAppBar'),
                    actions: <Widget>[
                      IconButton(
                        icon: const Icon(Icons.search),
                        onPressed: () {},
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              const _BehindAppBar(),
              CustomScrollView(
                shrinkWrap: true,
                slivers: <Widget>[
                  SliverAppBar.medium(
                    leading: IconButton(
                      icon: const Icon(Icons.menu),
                      onPressed: () {},
                    ),
                    title: const Text('SliverAppBar.medium'),
                    actions: <Widget>[
                      IconButton(
                        icon: const Icon(Icons.search),
                        onPressed: () {},
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
          Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              const _BehindAppBar(),
              CustomScrollView(
                shrinkWrap: true,
                slivers: <Widget>[
                  SliverAppBar.large(
                    leading: IconButton(
                      icon: const Icon(Icons.menu),
                      onPressed: () {},
                    ),
                    title: const Text('SliverAppBar.large'),
                    actions: <Widget>[
                      IconButton(
                        icon: const Icon(Icons.search),
                        onPressed: () {},
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _BehindAppBar extends StatelessWidget {
  const _BehindAppBar();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: <Widget>[
          const Text('Behind AppBar'),
          const CircleAvatar(child: Text('AV')),
          InputChip(
            showCheckmark: true,
            selected: true,
            label: const Text('Chip check'),
            onSelected: (bool value) {},
          ),
        ],
      ),
    );
  }
}

class BottomAppBarShowcase extends StatelessWidget {
  const BottomAppBarShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle denseHeader = theme.textTheme.titleMedium!.copyWith(
      fontSize: 13,
    );
    final TextStyle denseBody = theme.textTheme.bodyMedium!
        .copyWith(fontSize: 12, color: theme.textTheme.bodySmall!.color);
    return MediaQuery.removePadding(
      context: context,
      removeBottom: true,
      removeTop: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          BottomAppBar(
            child: Row(
              children: <Widget>[
                IconButton(
                  tooltip: 'Open navigation menu',
                  icon: const Icon(Icons.menu),
                  onPressed: () {},
                ),
                const Spacer(),
                IconButton(
                  tooltip: 'Search',
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
                IconButton(
                  tooltip: 'Favorite',
                  icon: const Icon(Icons.favorite),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: Text(
              'BottomAppBar',
              style: denseHeader,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
            child: Text(
              'Flutter M2 past default color is ThemeData.bottomAppBarColor '
              '(deprecated in Flutter 3.7) now colorScheme.surface and '
              'elevation 8. '
              'In M3 it defaults to to colorScheme.surface color, elevation 3, '
              'no shadow, but with surface elevation tint.',
              style: denseBody,
            ),
          ),
        ],
      ),
    );
  }
}

class TabBarForAppBarShowcase extends StatelessWidget {
  const TabBarForAppBarShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final bool isDark = theme.brightness == Brightness.dark;
    final bool useM3 = theme.useMaterial3;
    final ColorScheme colorScheme = theme.colorScheme;

    final Color effectiveTabBackground = theme.appBarTheme.backgroundColor ??
        (isDark
            ? colorScheme.surface
            : useM3
                ? colorScheme.surface
                : colorScheme.primary);
    final TextStyle denseHeader = theme.textTheme.titleMedium!.copyWith(
      fontSize: 13,
    );
    final TextStyle denseBody = theme.textTheme.bodyMedium!
        .copyWith(fontSize: 12, color: theme.textTheme.bodySmall!.color);

    return DefaultTabController(
      length: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Material(
            color: effectiveTabBackground,
            child: const SizedBox(
              height: 70,
              child: TabBar(
                tabs: <Widget>[
                  Tab(
                    text: 'Chat',
                    icon: Badge(
                      label: Text('18'),
                      child: Icon(Icons.chat_bubble),
                    ),
                  ),
                  Tab(
                    text: 'Tasks',
                    icon: Icon(Icons.beenhere),
                  ),
                  Tab(
                    text: 'Folder',
                    icon: Icon(Icons.create_new_folder),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: Text(
              'TabBar in an AppBar',
              style: denseHeader,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
            child: Text(
              'If the TabBar will always be used in an AppBar, then use '
              'style FlexTabBarStyle forAppBar (default), '
              'it will fit contrast wise here',
              style: denseBody,
            ),
          ),
        ],
      ),
    );
  }
}

class TabBarForBackgroundShowcase extends StatelessWidget {
  const TabBarForBackgroundShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle denseHeader = theme.textTheme.titleMedium!.copyWith(
      fontSize: 13,
    );
    final TextStyle denseBody = theme.textTheme.bodyMedium!
        .copyWith(fontSize: 12, color: theme.textTheme.bodySmall!.color);
    return DefaultTabController(
      length: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 70,
            child: TabBar(
              tabs: <Widget>[
                Tab(
                  text: 'Chat',
                  icon: Badge(
                    label: Text('+99'),
                    child: Icon(Icons.chat_bubble),
                  ),
                ),
                Tab(
                  text: 'Tasks',
                  icon: Icon(Icons.beenhere),
                ),
                Tab(
                  text: 'Folder',
                  icon: Icon(Icons.create_new_folder),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: Text(
              'TabBar on a surface',
              style: denseHeader,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
            child: Text(
              'If the TabBar will always be used on background and surface '
              'colors, then use style FlexTabBarStyle forBackground, '
              'it will fit contrast wise here',
              style: denseBody,
            ),
          ),
        ],
      ),
    );
  }
}

class BottomNavigationBarShowcase extends StatefulWidget {
  const BottomNavigationBarShowcase({super.key});

  @override
  State<BottomNavigationBarShowcase> createState() =>
      _BottomNavigationBarShowcaseState();
}

class _BottomNavigationBarShowcaseState
    extends State<BottomNavigationBarShowcase> {
  int buttonIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle denseHeader = theme.textTheme.titleMedium!.copyWith(
      fontSize: 13,
    );
    final TextStyle denseBody = theme.textTheme.bodyMedium!
        .copyWith(fontSize: 12, color: theme.textTheme.bodySmall!.color);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        MediaQuery.removePadding(
          context: context,
          removeBottom: true,
          removeTop: true,
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: <Widget>[
                    const Text('Behind Bottom'),
                    FloatingActionButton.small(
                      heroTag: 'Behind Bottom',
                      onPressed: () {},
                      child: const Icon(Icons.add),
                    ),
                    InputChip(
                      showCheckmark: true,
                      selected: true,
                      label: const Text('Chip check'),
                      onSelected: (bool value) {},
                    ),
                  ],
                ),
              ),
              BottomNavigationBar(
                currentIndex: buttonIndex,
                onTap: (int value) {
                  setState(() {
                    buttonIndex = value;
                  });
                },
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Badge(
                      label: Text('3'),
                      child: Icon(Icons.chat_bubble),
                    ),
                    label: 'Chat',
                    // title: Text('Item 1'),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.beenhere),
                    label: 'Tasks',
                    // title: Text('Item 2'),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.create_new_folder),
                    label: 'Folder',
                    // title: Text('Item 3'),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
          child: Text(
            'BottomNavigationBar (Material 2)',
            style: denseHeader,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
          child: Text(
            'Default SDK background color is theme canvasColor via Material. '
            'The canvasColor is typically colorScheme.background, elevation '
            'is 8. FCS sub-theme default is colorScheme.background and '
            'elevation 0.',
            style: denseBody,
          ),
        ),
      ],
    );
  }
}

class NavigationBarShowcase extends StatefulWidget {
  const NavigationBarShowcase({super.key});

  @override
  State<NavigationBarShowcase> createState() => _NavigationBarShowcaseState();
}

class _NavigationBarShowcaseState extends State<NavigationBarShowcase> {
  int buttonIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle denseHeader = theme.textTheme.titleMedium!.copyWith(
      fontSize: 13,
    );
    final TextStyle denseBody = theme.textTheme.bodyMedium!
        .copyWith(fontSize: 12, color: theme.textTheme.bodySmall!.color);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        MediaQuery.removePadding(
          context: context,
          removeBottom: true,
          removeTop: true,
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: <Widget>[
                    const Text('Behind NavBar'),
                    FloatingActionButton.small(
                      heroTag: 'Behind NavBar',
                      onPressed: () {},
                      child: const Icon(Icons.add),
                    ),
                    InputChip(
                      showCheckmark: true,
                      selected: true,
                      label: const Text('Chip check'),
                      onSelected: (bool value) {},
                    ),
                  ],
                ),
              ),
              NavigationBar(
                selectedIndex: buttonIndex,
                onDestinationSelected: (int value) {
                  setState(() {
                    buttonIndex = value;
                  });
                },
                destinations: const <NavigationDestination>[
                  NavigationDestination(
                    icon: Badge(
                      label: Text('12'),
                      child: Icon(Icons.chat_bubble),
                    ),
                    label: 'Chat',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.beenhere),
                    label: 'Tasks',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.create_new_folder),
                    label: 'Folder',
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
          child: Text(
            'NavigationBar (Material 3)',
            style: denseHeader,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
          child: Text(
            'Default background color is surface with an onSurface overlay '
            'color in M2, and primary in M3, with elevation 3. '
            'FlexColorScheme component theme default is color scheme '
            'background, with used surface blend and elevation 0.',
            style: denseBody,
          ),
        ),
      ],
    );
  }
}

class NavigationRailShowcase extends StatefulWidget {
  const NavigationRailShowcase({
    super.key,
    this.child,
    this.height = 400,
  });

  /// A child widget that we can use to place controls on the
  /// side of the NavigationRail in the show case widget.
  final Widget? child;

  /// The vertical space for the navigation bar.
  final double height;

  @override
  State<NavigationRailShowcase> createState() => _NavigationRailShowcaseState();
}

class _NavigationRailShowcaseState extends State<NavigationRailShowcase> {
  int buttonIndex = 0;
  bool isExtended = false;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle denseHeader = theme.textTheme.titleMedium!.copyWith(
      fontSize: 13,
    );
    final TextStyle denseBody = theme.textTheme.bodyMedium!
        .copyWith(fontSize: 12, color: theme.textTheme.bodySmall!.color);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Text(
            'NavigationRail',
            style: denseHeader,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
          child: Text(
            'Default SDK background color is theme.colorScheme.surface. '
            'FlexColorScheme sub-theme default is colorScheme.background.',
            style: denseBody,
          ),
        ),
        const Divider(height: 1),
        SizedBox(
          height: widget.height,
          // If we expand the rail and have a very narrow screen, it will
          // take up a lot of height, more than we want to give to the demo
          // panel, just let it overflow then. This may happen when we place
          // a lot of widgets in the child that no longer fits on a phone
          // with expanded rail.
          child: ClipRect(
            child: OverflowBox(
              alignment: AlignmentDirectional.topStart,
              maxHeight: 1200,
              child: Row(
                children: <Widget>[
                  MediaQuery.removePadding(
                    context: context,
                    removeBottom: true,
                    removeTop: true,
                    child: NavigationRail(
                      extended: isExtended,
                      minExtendedWidth: 150,
                      labelType:
                          isExtended ? NavigationRailLabelType.none : null,
                      selectedIndex: buttonIndex,
                      onDestinationSelected: (int value) {
                        setState(() {
                          buttonIndex = value;
                        });
                      },
                      destinations: const <NavigationRailDestination>[
                        NavigationRailDestination(
                          icon: Badge(
                            label: Text('5'),
                            child: Icon(Icons.chat_bubble),
                          ),
                          label: Text('Chat'),
                        ),
                        NavigationRailDestination(
                          icon: Icon(Icons.beenhere),
                          label: Text('Tasks'),
                        ),
                        NavigationRailDestination(
                          icon: Icon(Icons.create_new_folder),
                          label: Text('Folder'),
                        ),
                        NavigationRailDestination(
                          icon: Icon(Icons.logout),
                          label: Text('Logout'),
                        ),
                      ],
                    ),
                  ),
                  const VerticalDivider(width: 1),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        SwitchListTile(
                          title: const Text('Expand and collapse'),
                          subtitle: const Text('ON to expand  OFF to collapse\n'
                              'Only used for local control of Rail '
                              'presentation.'),
                          value: isExtended,
                          onChanged: (bool value) {
                            setState(() {
                              isExtended = value;
                            });
                          },
                        ),
                        widget.child ?? const SizedBox.shrink(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class MenuBarShowcase extends StatelessWidget {
  const MenuBarShowcase({super.key, this.explainUsage = true});
  final bool explainUsage;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle denseHeader = theme.textTheme.titleMedium!.copyWith(
      fontSize: 13,
    );
    final TextStyle denseBody = theme.textTheme.bodyMedium!
        .copyWith(fontSize: 12, color: theme.textTheme.bodySmall!.color);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        if (explainUsage)
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Text(
              'MenuBar',
              style: denseHeader,
            ),
          ),
        if (explainUsage)
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
            child: Text(
              'The new M3 menus can be used in a MenuBar via SubMenuButton and '
              'its MenuItemButton, but they can also be used in a '
              'MenuAnchor anywhere.',
              style: denseBody,
            ),
          ),
        Row(
          children: <Widget>[
            Expanded(
              child: MenuBar(
                children: <Widget>[
                  SubmenuButton(
                    menuChildren: <Widget>[
                      MenuItemButton(
                        onPressed: () {
                          showAboutDialog(
                            context: context,
                            applicationName: 'MenuBar Demo',
                            applicationVersion: '1.0.0',
                          );
                        },
                        child: const MenuAcceleratorLabel('&About'),
                      ),
                      SubmenuButton(
                        menuChildren: <Widget>[
                          MenuItemButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Saved!'),
                                ),
                              );
                            },
                            child: const MenuAcceleratorLabel('&Save now'),
                          ),
                          MenuItemButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Load!'),
                                ),
                              );
                            },
                            child: const MenuAcceleratorLabel('&Load now'),
                          ),
                        ],
                        child: const Text('File'),
                      ),
                      MenuItemButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Quit!'),
                            ),
                          );
                        },
                        child: const MenuAcceleratorLabel('&Quit'),
                      ),
                    ],
                    child: const MenuAcceleratorLabel('&File'),
                  ),
                  SubmenuButton(
                    menuChildren: <Widget>[
                      MenuItemButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Bold!'),
                            ),
                          );
                        },
                        child: const MenuAcceleratorLabel('&Bold'),
                      ),
                      MenuItemButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Italic!'),
                            ),
                          );
                        },
                        child: const MenuAcceleratorLabel('&Italic'),
                      ),
                      MenuItemButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Underline!'),
                            ),
                          );
                        },
                        child: const MenuAcceleratorLabel('&Underline'),
                      ),
                    ],
                    child: const MenuAcceleratorLabel('&Style'),
                  ),
                  SubmenuButton(
                    menuChildren: <Widget>[
                      MenuItemButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Magnify!'),
                            ),
                          );
                        },
                        child: const MenuAcceleratorLabel('&Magnify'),
                      ),
                      MenuItemButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Minify!'),
                            ),
                          );
                        },
                        child: const MenuAcceleratorLabel('Mi&nify'),
                      ),
                    ],
                    child: const MenuAcceleratorLabel('&View'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class MenuAnchorShowcase extends StatelessWidget {
  const MenuAnchorShowcase({super.key, this.explainUsage = true});
  final bool explainUsage;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle denseHeader = theme.textTheme.titleMedium!.copyWith(
      fontSize: 13,
    );
    final TextStyle denseBody = theme.textTheme.bodyMedium!
        .copyWith(fontSize: 12, color: theme.textTheme.bodySmall!.color);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        if (explainUsage)
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Text(
              'MenuAnchor',
              style: denseHeader,
            ),
          ),
        if (explainUsage)
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
            child: Text(
              'The M3 MenuAnchor used on a Container as a context menu.',
              style: denseBody,
            ),
          ),
        Row(
          children: const <Widget>[
            Expanded(
              child: MyContextMenu(message: 'The new M3 MenuAnchor is cool!'),
            ),
          ],
        ),
      ],
    );
  }
}

/// An enhanced enum to define the available menus and their shortcuts.
///
/// Using an enum for menu definition is not required, but this illustrates how
/// they could be used for simple menu systems.
enum MenuEntry {
  about('About'),
  showMessage(
      'Show Message', SingleActivator(LogicalKeyboardKey.keyS, control: true)),
  hideMessage(
      'Hide Message', SingleActivator(LogicalKeyboardKey.keyS, control: true)),
  colorMenu('Color Menu'),
  colorRed('Red', SingleActivator(LogicalKeyboardKey.keyR, control: true)),
  colorGreen('Green', SingleActivator(LogicalKeyboardKey.keyG, control: true)),
  colorBlue('Blue', SingleActivator(LogicalKeyboardKey.keyB, control: true));

  const MenuEntry(this.label, [this.shortcut]);
  final String label;
  final MenuSerializableShortcut? shortcut;
}

class MyContextMenu extends StatefulWidget {
  const MyContextMenu({super.key, required this.message});

  final String message;

  @override
  State<MyContextMenu> createState() => _MyContextMenuState();
}

class _MyContextMenuState extends State<MyContextMenu> {
  MenuEntry? _lastSelection;
  final FocusNode _buttonFocusNode = FocusNode(debugLabel: 'Menu Button');
  final MenuController _menuController = MenuController();
  ShortcutRegistryEntry? _shortcutsEntry;
  bool get showingMessage => _showingMessage;
  bool _showingMessage = false;
  set showingMessage(bool value) {
    if (_showingMessage != value) {
      setState(() {
        _showingMessage = value;
      });
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Dispose of any previously registered shortcuts, since they are about to
    // be replaced.
    _shortcutsEntry?.dispose();
    // Collect the shortcuts from the different menu selections so that they can
    // be registered to apply to the entire app. Menus don't register their
    // shortcuts, they only display the shortcut hint text.
    final Map<ShortcutActivator, Intent> shortcuts =
        <ShortcutActivator, Intent>{
      for (final MenuEntry item in MenuEntry.values)
        if (item.shortcut != null)
          item.shortcut!: VoidCallbackIntent(() => _activate(item)),
    };
    // Register the shortcuts with the ShortcutRegistry so that they are
    // available to the entire application.
    _shortcutsEntry = ShortcutRegistry.of(context).addAll(shortcuts);
  }

  @override
  void dispose() {
    _shortcutsEntry?.dispose();
    _buttonFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return GestureDetector(
      onTapDown: _handleTapDown,
      child: MenuAnchor(
        controller: _menuController,
        anchorTapClosesMenu: true,
        menuChildren: <Widget>[
          MenuItemButton(
            child: Text(MenuEntry.about.label),
            onPressed: () => _activate(MenuEntry.about),
          ),
          if (_showingMessage)
            MenuItemButton(
              onPressed: () => _activate(MenuEntry.hideMessage),
              shortcut: MenuEntry.hideMessage.shortcut,
              child: Text(MenuEntry.hideMessage.label),
            ),
          if (!_showingMessage)
            MenuItemButton(
              onPressed: () => _activate(MenuEntry.showMessage),
              shortcut: MenuEntry.showMessage.shortcut,
              child: Text(MenuEntry.showMessage.label),
            ),
          SubmenuButton(
            menuChildren: <Widget>[
              MenuItemButton(
                onPressed: () => _activate(MenuEntry.colorRed),
                shortcut: MenuEntry.colorRed.shortcut,
                child: Text(MenuEntry.colorRed.label),
              ),
              MenuItemButton(
                onPressed: () => _activate(MenuEntry.colorGreen),
                shortcut: MenuEntry.colorGreen.shortcut,
                child: Text(MenuEntry.colorGreen.label),
              ),
              MenuItemButton(
                onPressed: () => _activate(MenuEntry.colorBlue),
                shortcut: MenuEntry.colorBlue.shortcut,
                child: Text(MenuEntry.colorBlue.label),
              ),
            ],
            child: const Text('Color'),
          ),
        ],
        child: Card(
          shadowColor: Colors.transparent,
          elevation: 12,
          // alignment: Alignment.center,
          color: theme.colorScheme.surfaceVariant,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Click anywhere on this container to show the '
                  'MenuAnchor context menu.',
                  textAlign: TextAlign.center,
                ),
                const Text(
                  'Menu keyboard shortcuts also work.',
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    showingMessage ? widget.message : '',
                    style: theme.textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  _lastSelection != null
                      ? 'Last Selected: ${_lastSelection!.label}'
                      : '',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _activate(MenuEntry selection) {
    setState(() {
      _lastSelection = selection;
    });
    switch (selection) {
      case MenuEntry.about:
        showAboutDialog(
          context: context,
          applicationName: 'MenuAnchor Demo',
          applicationVersion: '1.0.0',
        );
        break;
      case MenuEntry.showMessage:
      case MenuEntry.hideMessage:
        showingMessage = !showingMessage;
        break;
      case MenuEntry.colorMenu:
        break;
      case MenuEntry.colorRed:
        break;
      case MenuEntry.colorGreen:
        break;
      case MenuEntry.colorBlue:
        break;
    }
  }

  void _handleTapDown(TapDownDetails details) {
    // If you want control CLICK for context menu, uncomment this.
    // if (!HardwareKeyboard.instance.logicalKeysPressed
    //         .contains(LogicalKeyboardKey.controlLeft) &&
    //     !HardwareKeyboard.instance.logicalKeysPressed
    //         .contains(LogicalKeyboardKey.controlRight)) {
    //   return;
    // }
    _menuController.open(position: details.localPosition);
  }
}

class DrawerShowcase extends StatelessWidget {
  const DrawerShowcase({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle denseHeader = theme.textTheme.titleMedium!.copyWith(
      fontSize: 13,
    );
    final TextStyle denseBody = theme.textTheme.bodyMedium!
        .copyWith(fontSize: 12, color: theme.textTheme.bodySmall!.color);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Text(
            'Drawer',
            style: denseHeader,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
          child: Text(
            'Default SDK background color in M3 is colorScheme.surface, '
            'with elevation tint and no shadow. In M2 it has shadow and color '
            'theme.canvasColor, that is set to colorScheme.background.',
            style: denseBody,
          ),
        ),
        SizedBox(
          height: 280,
          child: Row(
            children: <Widget>[
              MediaQuery.removePadding(
                context: context,
                removeBottom: true,
                removeTop: true,
                child: const Drawer(
                  child: Center(
                    child: Text('Drawer'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class NavigationDrawerShowcase extends StatefulWidget {
  const NavigationDrawerShowcase({
    super.key,
  });

  @override
  State<NavigationDrawerShowcase> createState() =>
      _NavigationDrawerShowcaseState();
}

class _NavigationDrawerShowcaseState extends State<NavigationDrawerShowcase> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle denseHeader = theme.textTheme.titleMedium!.copyWith(
      fontSize: 13,
    );
    final TextStyle denseBody = theme.textTheme.bodyMedium!
        .copyWith(fontSize: 12, color: theme.textTheme.bodySmall!.color);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Text(
            'NavigationDrawer',
            style: denseHeader,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
          child: Text(
            'Default SDK background color is colorScheme.surface, '
            'with elevation tint in M3.',
            style: denseBody,
          ),
        ),
        SizedBox(
          height: 280,
          child: Row(
            children: <Widget>[
              MediaQuery.removePadding(
                context: context,
                removeBottom: true,
                removeTop: true,
                child: NavigationDrawer(
                  selectedIndex: selectedIndex,
                  onDestinationSelected: (int value) {
                    setState(() {
                      selectedIndex = value;
                    });
                  },
                  children: <Widget>[
                    const SizedBox(height: 16),
                    const NavigationDrawerDestination(
                      icon: Badge(
                        label: Text('26'),
                        child: Icon(Icons.chat_bubble),
                      ),
                      label: Text('Chat'),
                    ),
                    const NavigationDrawerDestination(
                      icon: Icon(Icons.beenhere),
                      label: Text('Tasks'),
                    ),
                    const Divider(),
                    NavigationDrawerDestination(
                      icon: const Icon(Icons.create_new_folder),
                      label: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 200),
                        child: const Text(
                          'Folder, item with long text truncated with ellipses',
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    const NavigationDrawerDestination(
                      icon: Icon(Icons.logout),
                      label: Text('Logout'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ListTileShowcase extends StatelessWidget {
  const ListTileShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: const Icon(Icons.info),
          title: const Text('ListTile'),
          subtitle: const Text('List tile sub title'),
          trailing: const Text('Trailing'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.info),
          title: const Text('ListTile selected'),
          subtitle: const Text('Selected list tile sub title'),
          trailing: const Text('Trailing'),
          selected: true,
          onTap: () {},
        ),
        ListTile(
          enabled: false,
          leading: const Icon(Icons.info),
          title: const Text('ListTile disabled'),
          subtitle: const Text('Selected list tile sub title'),
          trailing: const Text('Trailing'),
          onTap: () {},
        ),
        const Divider(height: 1),
        SwitchListTile(
          secondary: const Icon(Icons.info),
          title: const Text('SwitchListTile'),
          subtitle: const Text('The switch list tile is OFF'),
          value: false,
          onChanged: (bool value) {},
        ),
        SwitchListTile(
          secondary: const Icon(Icons.info),
          title: const Text('SwitchListTile'),
          subtitle: const Text('The switch list tile is ON'),
          value: true,
          onChanged: (bool value) {},
        ),
        const SwitchListTile(
          secondary: Icon(Icons.info),
          title: Text('SwitchListTile disabled'),
          subtitle: Text('The switch list tile is ON'),
          value: true,
          onChanged: null,
        ),
        const Divider(height: 1),
        CheckboxListTile(
          secondary: const Icon(Icons.info),
          title: const Text('CheckboxListTile'),
          subtitle: const Text('The checkbox list tile is unchecked'),
          value: false,
          onChanged: (bool? value) {},
        ),
        CheckboxListTile(
          secondary: const Icon(Icons.info),
          title: const Text('CheckboxListTile'),
          subtitle: const Text('The checkbox list tile is checked'),
          value: true,
          onChanged: (bool? value) {},
        ),
        CheckboxListTile(
          secondary: const Icon(Icons.info),
          title: const Text('CheckboxListTile'),
          subtitle: const Text('The checkbox list tile is null in tristate'),
          tristate: true,
          value: null,
          onChanged: (bool? value) {},
        ),
        CheckboxListTile(
          enabled: false,
          secondary: const Icon(Icons.info),
          title: const Text('CheckboxListTile disabled'),
          subtitle: const Text('The checkbox list tile is checked'),
          value: true,
          onChanged: (bool? value) {},
        ),
        const Divider(height: 1),
        RadioListTile<int>(
          secondary: const Icon(Icons.info),
          title: const Text('RadioListTile'),
          subtitle: const Text('The radio option is unselected'),
          value: 0,
          onChanged: (_) {},
          groupValue: 1,
        ),
        RadioListTile<int>(
          secondary: const Icon(Icons.info),
          title: const Text('RadioListTile'),
          subtitle: const Text('The radio option is selected'),
          value: 1,
          onChanged: (_) {},
          groupValue: 1,
        ),
        RadioListTile<int>(
          secondary: const Icon(Icons.info),
          title: const Text('RadioListTile'),
          subtitle: const Text('The radio option and list tile is selected'),
          value: 1,
          selected: true,
          onChanged: (_) {},
          groupValue: 1,
        ),
        const RadioListTile<int>(
          secondary: Icon(Icons.info),
          title: Text('RadioListTile disabled'),
          subtitle: Text('The radio option is selected'),
          value: 1,
          onChanged: null,
          groupValue: 1,
        ),
      ],
    );
  }
}

class TimePickerDialogShowcase extends StatelessWidget {
  const TimePickerDialogShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    // The TimePickerDialog pops the context with its buttons, clicking them
    // pops the page when not used in a showDialog. We just need to see it, no
    // need to use it to visually see what it looks like, so absorbing pointers.
    return AbsorbPointer(
      child: TimePickerDialog(
        initialTime: TimeOfDay.now(),
      ),
    );
  }
}

class DatePickerDialogShowcase extends StatelessWidget {
  const DatePickerDialogShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    // The DatePickerDialog pops the context with its buttons, clicking them
    // pops the page when not used in a showDialog. We just need to see it, no
    // need to use it to visually see what it looks like, so absorbing pointers.
    return AbsorbPointer(
      child: DatePickerDialog(
        initialDate: DateTime.now(),
        firstDate: DateTime(1930),
        lastDate: DateTime(2050),
      ),
    );
  }
}

class AlertDialogShowcase extends StatelessWidget {
  const AlertDialogShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Allow location services'),
      content: const Text('Let us help determine location. This means '
          'sending anonymous location data to us'),
      actions: <Widget>[
        TextButton(onPressed: () {}, child: const Text('CANCEL')),
        TextButton(onPressed: () {}, child: const Text('ALLOW')),
      ],
    );
  }
}

class BottomSheetShowcase extends StatelessWidget {
  const BottomSheetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return AbsorbPointer(
      child: BottomSheet(
        enableDrag: false,
        elevation: theme.bottomSheetTheme.elevation,
        backgroundColor: theme.bottomSheetTheme.backgroundColor,
        onClosing: () {},
        builder: (final BuildContext context) => SizedBox(
          height: 150,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Material BottomSheet',
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  'Uses Material of type canvas as default background.\n'
                  'ColorScheme background in M2, but surface in M3.',
                  style: theme.textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BottomSheetModalShowcase extends StatelessWidget {
  const BottomSheetModalShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return AbsorbPointer(
      child: BottomSheet(
        elevation: theme.bottomSheetTheme.modalElevation,
        backgroundColor: theme.bottomSheetTheme.modalBackgroundColor,
        enableDrag: false,
        onClosing: () {},
        builder: (final BuildContext context) => SizedBox(
          height: 150,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Material Modal BottomSheet',
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  'Uses Material of type canvas as default background.\n'
                  'ColorScheme background in M2, but surface in M3.',
                  style: theme.textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MaterialBannerSnackBarShowcase extends StatelessWidget {
  const MaterialBannerSnackBarShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final bool isLight = theme.brightness == Brightness.light;

    final Color defaultBackgroundColor = isLight
        ? Color.alphaBlend(
            colorScheme.onSurface.withOpacity(0.80), colorScheme.surface)
        : colorScheme.onSurface;
    final Color snackBackground =
        theme.snackBarTheme.backgroundColor ?? defaultBackgroundColor;
    final Color snackForeground =
        ThemeData.estimateBrightnessForColor(snackBackground) ==
                Brightness.light
            ? Colors.black
            : Colors.white;
    final TextStyle snackStyle = theme.snackBarTheme.contentTextStyle ??
        ThemeData(brightness: Brightness.light)
            .textTheme
            .titleMedium!
            .copyWith(color: snackForeground);
    final double snackElevation = theme.snackBarTheme.elevation ?? 6;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Divider(height: 1),
        MaterialBanner(
          padding: const EdgeInsets.all(20),
          content: const Text('Hello, I am a Material Banner'),
          leading: const Icon(Icons.agriculture_outlined),
          actions: <Widget>[
            TextButton(
              child: const Text('OPEN'),
              onPressed: () {},
            ),
            TextButton(
              child: const Text('DISMISS'),
              onPressed: () {},
            ),
          ],
        ),
        const SizedBox(height: 16),
        Material(
          color: snackBackground,
          elevation: snackElevation,
          surfaceTintColor: colorScheme.surfaceTint,
          shadowColor: colorScheme.shadow,
          child: SizedBox(
            height: 40,
            child: Center(
              child: Text('Material SnackBar (style simulation only)',
                  style: snackStyle),
            ),
          ),
        ),
      ],
    );
  }
}

class MaterialShowcase extends StatelessWidget {
  const MaterialShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextStyle denseHeader = theme.textTheme.titleMedium!.copyWith(
      fontSize: 13,
    );
    final TextStyle denseBody = theme.textTheme.bodyMedium!
        .copyWith(fontSize: 12, color: theme.textTheme.bodySmall!.color);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Material elevation and tint', style: denseHeader),
        Text(
          'Material can also specify surfaceTintColor, which is applied when '
          'Material is elevated and useMaterial3 is true. ',
          style: denseBody,
        ),
        const SizedBox(height: 12),
        Text('Material type canvas', style: denseHeader),
        Text(
          'Default background color is theme canvasColor, and '
          'theme canvasColor is set to theme colorScheme background. The '
          'color canvasColor is going to be deprecated in Flutter SDK',
          style: denseBody,
        ),
        const SizedBox(height: 8),
        Material(
          type: MaterialType.canvas,
          elevation: 0,
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Material type canvas, elevation 0, default tint and shadow',
                  textAlign: TextAlign.center,
                  style: denseHeader,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Material(
          type: MaterialType.canvas,
          elevation: 1,
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Material type canvas, elevation 1, default tint and shadow',
                  textAlign: TextAlign.center,
                  style: denseHeader,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Material(
          type: MaterialType.canvas,
          elevation: 1,
          surfaceTintColor: colorScheme.surfaceTint,
          shadowColor: Colors.transparent,
          child: const SizedBox(
            height: 60,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Material type canvas, elevation 1, '
                  'with surfaceTint and no shadow',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Material(
          type: MaterialType.canvas,
          elevation: 1,
          surfaceTintColor: colorScheme.surfaceTint,
          shadowColor: colorScheme.shadow,
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Material type canvas, elevation 1, '
                  'with surfaceTint, and shadow',
                  textAlign: TextAlign.center,
                  style: denseHeader,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Material(
          type: MaterialType.canvas,
          elevation: 6,
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Material type canvas, elevation 6, default tint and shadow',
                  textAlign: TextAlign.center,
                  style: denseHeader,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Material(
          type: MaterialType.canvas,
          elevation: 6,
          surfaceTintColor: colorScheme.surfaceTint,
          shadowColor: Colors.transparent,
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Material type canvas, elevation 6, '
                  'with surfaceTint and no shadow',
                  textAlign: TextAlign.center,
                  style: denseHeader,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Material(
          type: MaterialType.canvas,
          elevation: 6,
          surfaceTintColor: colorScheme.surfaceTint,
          shadowColor: colorScheme.shadow,
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Material type canvas, elevation 6, '
                  'with surfaceTint and shadow',
                  textAlign: TextAlign.center,
                  style: denseHeader,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        const Divider(),
        const SizedBox(height: 8),
        Text('Material type card', style: denseHeader),
        Text(
          'Default background color is theme cardColor, and '
          'theme cardColor is set to theme colorScheme surface. The '
          'color cardColor is going to be deprecated in Flutter SDK',
          style: denseBody,
        ),
        const SizedBox(height: 8),
        Material(
          type: MaterialType.card,
          elevation: 0,
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Material type card, elevation 0, default tint and shadow',
                  textAlign: TextAlign.center,
                  style: denseHeader,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Material(
          type: MaterialType.card,
          elevation: 1,
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Material type card, elevation 1, default tint and shadow',
                  textAlign: TextAlign.center,
                  style: denseHeader,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Material(
          type: MaterialType.card,
          elevation: 1,
          surfaceTintColor: colorScheme.surfaceTint,
          shadowColor: Colors.transparent,
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Material type card, elevation 1, '
                  'with surfaceTint and no shadow',
                  textAlign: TextAlign.center,
                  style: denseHeader,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Material(
          type: MaterialType.card,
          elevation: 1,
          surfaceTintColor: colorScheme.surfaceTint,
          shadowColor: colorScheme.shadow,
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Material type card, elevation 1, '
                  'with surfaceTint and shadow',
                  textAlign: TextAlign.center,
                  style: denseHeader,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Material(
          type: MaterialType.card,
          elevation: 6,
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Material type card, elevation 6, default tint and shadow',
                  textAlign: TextAlign.center,
                  style: denseHeader,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Material(
          type: MaterialType.card,
          elevation: 6,
          surfaceTintColor: colorScheme.surfaceTint,
          shadowColor: Colors.transparent,
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Material type card, elevation 6, '
                  'with surfaceTint and no shadow',
                  textAlign: TextAlign.center,
                  style: denseHeader,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Material(
          type: MaterialType.card,
          elevation: 6,
          surfaceTintColor: colorScheme.surfaceTint,
          shadowColor: colorScheme.shadow,
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Material type card, elevation 6, '
                  'with surfaceTint and shadow',
                  textAlign: TextAlign.center,
                  style: denseHeader,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}

class CardShowcase extends StatelessWidget {
  const CardShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextStyle denseHeader = theme.textTheme.titleMedium!.copyWith(
      fontSize: 13,
    );
    final TextStyle denseBody = theme.textTheme.bodyMedium!
        .copyWith(fontSize: 12, color: theme.textTheme.bodySmall!.color);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text('Card', style: denseHeader),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Default background color comes from Material of type card, which '
            'by default is set to theme colorScheme surface. '
            'When useMaterial3 is true, Card gets elevation based '
            'surfaceTint. When it is false, surfaceTint has no '
            'effect even if specified.',
            style: denseBody,
          ),
        ),
        Card(
          elevation: 0,
          surfaceTintColor: colorScheme.surfaceTint,
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Card, elevation 0, with surfaceTint and default shadow',
                  textAlign: TextAlign.center,
                  style: denseHeader,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Card(
          elevation: 1,
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                'Card, elevation 1, default surfaceTint and shadow',
                textAlign: TextAlign.center,
                style: denseHeader,
              )),
            ),
          ),
        ),
        const SizedBox(height: 2),
        Card(
          elevation: 1,
          surfaceTintColor: colorScheme.surfaceTint,
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Card, elevation 1, with surfaceTint and default shadow',
                  textAlign: TextAlign.center,
                  style: denseHeader,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 2),
        Card(
          elevation: 1,
          surfaceTintColor: colorScheme.surfaceTint,
          shadowColor: Colors.transparent,
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Card, elevation 1, with surfaceTint and '
                  'transparent shadow',
                  textAlign: TextAlign.center,
                  style: denseHeader,
                ),
              ),
            ),
          ),
        ),
        const Divider(),
        Card(
          elevation: 4,
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Card, elevation 4, default surfaceTint and shadow',
                  textAlign: TextAlign.center,
                  style: denseHeader,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 4),
        Card(
          elevation: 4,
          surfaceTintColor: colorScheme.surfaceTint,
          child: SizedBox(
            height: 60,
            child: Center(
              child: Text(
                'Card, elevation 4, with surfaceTint and default shadow',
                textAlign: TextAlign.center,
                style: denseHeader,
              ),
            ),
          ),
        ),
        const SizedBox(height: 4),
        Card(
          elevation: 4,
          surfaceTintColor: colorScheme.surfaceTint,
          shadowColor: Colors.transparent,
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Card, elevation 4, with surfaceTint and '
                  'transparent shadow',
                  textAlign: TextAlign.center,
                  style: denseHeader,
                ),
              ),
            ),
          ),
        ),
        const Divider(),
        Card(
          elevation: 10,
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Card, elevation 10, default surfaceTint and shadow',
                  textAlign: TextAlign.center,
                  style: denseHeader,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Card(
          elevation: 10,
          surfaceTintColor: colorScheme.surfaceTint,
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Card, elevation 10, with surfaceTint and default shadow',
                  textAlign: TextAlign.center,
                  style: denseHeader,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Card(
          elevation: 10,
          surfaceTintColor: colorScheme.surfaceTint,
          shadowColor: Colors.transparent,
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                'Card, elevation 10, with surfaceTint and '
                'transparent shadow',
                textAlign: TextAlign.center,
                style: denseHeader,
              )),
            ),
          ),
        ),
      ],
    );
  }
}

class TextThemeShowcase extends StatelessWidget {
  const TextThemeShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return TextThemeColumnShowcase(textTheme: Theme.of(context).textTheme);
  }
}

class PrimaryTextThemeShowcase extends StatelessWidget {
  const PrimaryTextThemeShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return TextThemeColumnShowcase(
        textTheme: Theme.of(context).primaryTextTheme);
  }
}

class TextThemeColumnShowcase extends StatelessWidget {
  const TextThemeColumnShowcase({super.key, required this.textTheme});
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Font: ${textTheme.titleSmall!.fontFamily}',
            style:
                textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w600)),
        Text(
          'Display Large '
          '(${textTheme.displayLarge!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.displayLarge,
        ),
        Text(
          'Display Medium '
          '(${textTheme.displayMedium!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.displayMedium,
        ),
        Text(
          'Display Small '
          '(${textTheme.displaySmall!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.displaySmall,
        ),
        const SizedBox(height: 12),
        Text(
          'Headline Large '
          '(${textTheme.headlineLarge!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.headlineLarge,
        ),
        Text(
          'Headline Medium '
          '(${textTheme.headlineMedium!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.headlineMedium,
        ),
        Text(
          'Headline Small '
          '(${textTheme.headlineSmall!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.headlineSmall,
        ),
        const SizedBox(height: 12),
        Text(
          'Title Large '
          '(${textTheme.titleLarge!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.titleLarge,
        ),
        Text(
          'Title Medium '
          '(${textTheme.titleMedium!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.titleMedium,
        ),
        Text(
          'Title Small '
          '(${textTheme.titleSmall!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.titleSmall,
        ),
        const SizedBox(height: 12),
        Text(
          'Body Large '
          '(${textTheme.bodyLarge!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.bodyLarge,
        ),
        Text(
          'Body Medium '
          '(${textTheme.bodyMedium!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.bodyMedium,
        ),
        Text(
          'Body Small '
          '(${textTheme.bodySmall!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.bodySmall,
        ),
        const SizedBox(height: 12),
        Text(
          'Label Large '
          '(${textTheme.labelLarge!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.labelLarge,
        ),
        Text(
          'Label Medium '
          '(${textTheme.labelMedium!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.labelMedium,
        ),
        Text(
          'Label Small '
          '(${textTheme.labelSmall!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.labelSmall,
        ),
      ],
    );
  }
}
