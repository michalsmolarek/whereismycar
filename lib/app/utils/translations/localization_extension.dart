import 'package:flutter/widgets.dart';
import 'package:whereismycar/app/utils/translations/generated/l10n.dart';

extension LocalizedBuildContext on BuildContext {
  // simplify access to localizations
  Translation get loc => Translation.of(this);
}
