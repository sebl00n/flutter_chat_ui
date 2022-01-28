import 'package:flutter/material.dart';
import 'inherited_chat_theme.dart';
import 'inherited_l10n.dart';

/// A class that represents send button widget
class SendButton extends StatelessWidget {
  /// Creates send button widget
  const SendButton({
    Key? key,
    required this.onPressed,
    this.enabled = true,
  }) : super(key: key);

  /// Callback for send button tap event
  final void Function() onPressed;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 28,
      child: IconButton(
        icon: InheritedChatTheme.of(context).theme.sendButtonIcon != null
            ? InheritedChatTheme.of(context).theme.sendButtonIcon!
            : const Icon(Icons.send),
        onPressed: enabled ? onPressed : null,
        padding: EdgeInsets.zero,
        tooltip: InheritedL10n.of(context).l10n.sendButtonAccessibilityLabel,
      ),
    );
  }
}
