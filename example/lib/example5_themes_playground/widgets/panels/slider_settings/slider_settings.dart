import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

import '../../../../shared/controllers/theme_controller.dart';
import '../../../../shared/widgets/universal/list_tile_reveal.dart';
import '../../../../shared/widgets/universal/showcase_material.dart';
import '../../../../shared/widgets/universal/switch_list_tile_reveal.dart';
import '../../shared/color_scheme_popup_menu.dart';
import 'slider_indicator_popup_menu.dart';
import 'slider_show_indicator_popup_menu.dart';

class SliderSettings extends StatelessWidget {
  const SliderSettings(this.controller, {super.key});
  final ThemeController controller;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final bool isLight = theme.brightness == Brightness.light;
    final String labelIndicatorDefault =
        controller.sliderBaseSchemeColor == null
            ? controller.useMaterial3
                ? controller.sliderValueTinted
                    ? 'primary'
                    : 'default (primary)'
                : controller.sliderValueTinted
                    ? 'primary'
                    : 'default (grey)'
            : '${controller.sliderBaseSchemeColor?.name}';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 8),
        ColorSchemePopupMenu(
          title: const Text('Main color'),
          labelForDefault: 'default (primary)',
          index: controller.sliderBaseSchemeColor?.index ?? -1,
          onChanged: controller.useSubThemes && controller.useFlexColorScheme
              ? (int index) {
                  if (index < 0 || index >= SchemeColor.values.length) {
                    controller.setSliderBaseSchemeColor(null);
                  } else {
                    controller
                        .setSliderBaseSchemeColor(SchemeColor.values[index]);
                  }
                }
              : null,
        ),
        ColorSchemePopupMenu(
          title: const Text('Value indicator color'),
          labelForDefault: labelIndicatorDefault,
          colorPrefix: controller.sliderValueTinted ? 'tinted ' : '',
          index: controller.sliderIndicatorSchemeColor?.index ?? -1,
          onChanged: controller.useSubThemes && controller.useFlexColorScheme
              ? (int index) {
                  if (index < 0 || index >= SchemeColor.values.length) {
                    controller.setSliderIndicatorSchemeColor(null);
                  } else {
                    controller.setSliderIndicatorSchemeColor(
                        SchemeColor.values[index]);
                  }
                }
              : null,
        ),
        SwitchListTileReveal(
          title: const Text('Tinted value indicator'),
          subtitleDense: true,
          subtitle: Text('Uses a scrim and opacity, to make it much '
              '${isLight ? 'darker' : 'lighter'} than the selected color, '
              'it also and adds some slight opacity. By default the value '
              'indicator only shows up on a stepped Slider. You can change '
              'this behavior with the indicator visibility further below.\n'),
          value: controller.sliderValueTinted &&
              controller.useSubThemes &&
              controller.useFlexColorScheme,
          onChanged: controller.useSubThemes && controller.useFlexColorScheme
              ? controller.setSliderValueTinted
              : null,
        ),
        SliderIndicatorPopupMenu(
          title: const Text('Indicator type'),
          labelForDefault: controller.useMaterial3
              ? 'default M3 (drop)'
              : 'default M2 (rectangular)',
          index: controller.sliderValueIndicatorType?.index ?? -1,
          onChanged: controller.useSubThemes && controller.useFlexColorScheme
              ? (int index) {
                  if (index < 0 ||
                      index >= FlexSliderIndicatorType.values.length) {
                    controller.setSliderValueIndicatorType(null);
                  } else {
                    controller.setSliderValueIndicatorType(
                        FlexSliderIndicatorType.values[index]);
                  }
                }
              : null,
        ),
        SliderShowIndicatorPopupMenu(
          title: const Text('Indicator visibility'),
          labelForDefault: 'Default (Only for discrete)',
          index: controller.sliderShowValueIndicator?.index ?? -1,
          onChanged: controller.useSubThemes && controller.useFlexColorScheme
              ? (int index) {
                  if (index < 0 || index >= ShowValueIndicator.values.length) {
                    controller.setSliderShowValueIndicator(null);
                  } else {
                    controller.setSliderShowValueIndicator(
                        ShowValueIndicator.values[index]);
                  }
                }
              : null,
        ),
        ListTile(
          enabled: controller.useSubThemes && controller.useFlexColorScheme,
          title: const Text('Track height'),
          subtitle: Slider(
            min: 0,
            max: 14,
            divisions: 14,
            label: controller.useSubThemes && controller.useFlexColorScheme
                ? controller.sliderTrackHeight == null ||
                        (controller.sliderTrackHeight ?? 0) <= 0
                    ? 'default 4'
                    : (controller.sliderTrackHeight?.toStringAsFixed(0) ?? '')
                : 'default 4',
            value: controller.useSubThemes && controller.useFlexColorScheme
                ? controller.sliderTrackHeight ?? 0
                : 0,
            onChanged: controller.useSubThemes && controller.useFlexColorScheme
                ? (double value) {
                    controller.setSliderTrackHeight(
                        value <= 0 ? null : value.roundToDouble());
                  }
                : null,
          ),
          trailing: Padding(
            padding: const EdgeInsetsDirectional.only(end: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'HEIGHT',
                  style: theme.textTheme.bodySmall,
                ),
                Text(
                  controller.useSubThemes && controller.useFlexColorScheme
                      ? controller.sliderTrackHeight == null ||
                              (controller.sliderTrackHeight ?? 0) <= 0
                          ? 'default 4'
                          : (controller.sliderTrackHeight?.toStringAsFixed(0) ??
                              '')
                      : 'default 4',
                  style: theme.textTheme.bodySmall!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        const Divider(),
        const ListTileReveal(
          title: Text('Slider'),
          subtitleDense: true,
          subtitle: Text('There are few minor issue suspects related to '
              'Slider and its theming that have not been reported yet, mostly '
              'it is fine. The RangeSlider has some issues and lack proper '
              'M3 support.\n '),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: SliderShowcase(),
        ),
        const Divider(),
        const ListTileReveal(
          title: Text('RangeSlider'),
          subtitleDense: true,
          subtitle: Text('The RangeSlider should behave and look like Slider '
              'in Material 3 mode, but it is not yet available in Flutter '
              '3.7. It an also not use the same indicator classes as Slider. '
              'FCS applies its own existing drop style as a better match '
              'with M3 than the rectangle.\n'
              '\n'
              'RangeSlider also behaves differently from Slider when looking '
              'at things like hover and focus responses, it also lacks any '
              'kind of keyboard usage support.\n '),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: RangeSliderShowcase(),
        ),
      ],
    );
  }
}
