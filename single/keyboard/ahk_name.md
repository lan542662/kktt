https://www.autohotkey.com/docs/KeyList.htm

### [General Keys](https://www.autohotkey.com/docs/KeyList.htm#general)

| Name              | Description                                                  |
| :---------------- | :----------------------------------------------------------- |
| CapsLock          | CapsLock (caps lock key)**Note:** Windows IME may interfere with the detection and functionality of CapsLock; see [CapsLock and IME](https://www.autohotkey.com/docs/KeyList.htm#IME) for details. |
| Space             | Space (space bar)                                            |
| Tab               | Tab (tabulator key)                                          |
| Enter             | Enter                                                        |
| Return            | **Deprecated:** Use the synonym `Enter` instead to reduce ambiguity. |
| Escape (or Esc)   | Esc                                                          |
| Backspace (or BS) | Backspace                                                    |

### [Cursor Control Keys](https://www.autohotkey.com/docs/KeyList.htm#cursor)

| Name            | Description                                                  |
| :-------------- | :----------------------------------------------------------- |
| ScrollLock      | ScrollLock (scroll lock key). While Ctrl is held down, ScrollLock produces the key code of `CtrlBreak`, but can be differentiated from Pause by scan code. |
| Delete (or Del) | Del                                                          |
| Insert (or Ins) | Ins                                                          |
| Home            | Home                                                         |
| End             | End                                                          |
| PgUp            | PgUp (page up key)                                           |
| PgDn            | PgDn (page down key)                                         |
| Up              | ↑ (up arrow key)                                             |
| Down            | ↓ (down arrow key)                                           |
| Left            | ← (left arrow key)                                           |
| Right           | → (right arrow key)                                          |

### [Modifier Keys](https://www.autohotkey.com/docs/KeyList.htm#modifier)

| Name                | Description                                                  |
| :------------------ | :----------------------------------------------------------- |
| LWin                | Left Win. Corresponds to the `<#` hotkey prefix.             |
| RWin                | Right Win. Corresponds to the `>#` hotkey prefix.**Note**: Unlike Ctrl/Alt/Shift, there is no generic/neutral "Win" key because the OS does not support it. However, hotkeys with the `#` modifier can be triggered by either Win. |
| Control (or Ctrl)   | Ctrl. As a hotkey (`Control::`) it fires upon release unless it has the tilde prefix. Corresponds to the `^` hotkey prefix. |
| Alt                 | Alt. As a hotkey (`Alt::`) it fires upon release unless it has the tilde prefix. Corresponds to the `!` hotkey prefix. |
| Shift               | Shift. As a hotkey (`Shift::`) it fires upon release unless it has the tilde prefix. Corresponds to the `+` hotkey prefix. |
| LControl (or LCtrl) | Left Ctrl. Corresponds to the `<^` hotkey prefix.            |
| RControl (or RCtrl) | Right Ctrl. Corresponds to the `>^` hotkey prefix.           |
| LShift              | Left Shift. Corresponds to the `<+` hotkey prefix.           |
| RShift              | Right Shift. Corresponds to the `>+` hotkey prefix.          |
| LAlt                | Left Alt. Corresponds to the `<!` hotkey prefix.             |
| RAlt                | Right Alt. Corresponds to the `>!` hotkey prefix.**Note**: If your keyboard layout has AltGr instead of RAlt, you can probably use it as a hotkey prefix via `<^>!` as described [here](https://www.autohotkey.com/docs/Hotkeys.htm#AltGr). In addition, `LControl & RAlt::` would make AltGr itself into a hotkey. |

## [Hotkey Modifier Symbols](https://www.autohotkey.com/docs/Hotkeys.htm#Symbols)

You can use the following modifier symbols to define hotkeys:

| Symbol | Description                                                  |
| :----: | :----------------------------------------------------------- |
|   #    | Win (Windows logo key).[[v1.0.48.01+\]](https://www.autohotkey.com/docs/ChangeLogHelp.htm#v1.0.48.01): For Windows Vista and later, hotkeys that include Win (e.g. #a) will wait for Win to be released before sending any text containing an L keystroke. This prevents usages of [Send](https://www.autohotkey.com/docs/commands/Send.htm) within such a hotkey from locking the PC. This behavior applies to all sending modes except [SendPlay](https://www.autohotkey.com/docs/commands/Send.htm#SendPlayDetail) (which doesn't need it) and [blind mode](https://www.autohotkey.com/docs/commands/Send.htm#blind). [[v1.1.29+\]:](https://www.autohotkey.com/docs/AHKL_ChangeLog.htm#v1.1.29.00) [Text mode](https://www.autohotkey.com/docs/commands/Send.htm#SendText) is also excluded.**Note:** Pressing a hotkey which includes Win may result in extra simulated keystrokes (Ctrl by default). See [#MenuMaskKey](https://www.autohotkey.com/docs/commands/_MenuMaskKey.htm). |
|   !    | Alt**Note:** Pressing a hotkey which includes Alt may result in extra simulated keystrokes (Ctrl by default). See [#MenuMaskKey](https://www.autohotkey.com/docs/commands/_MenuMaskKey.htm). |
|   ^    | Ctrl                                                         |
|   +    | Shift                                                        |
|   &    | An ampersand may be used between any two keys or mouse buttons to combine them into a custom hotkey. See [below](https://www.autohotkey.com/docs/Hotkeys.htm#combo) for details. |
|   <    | Use the left key of the pair. e.g. <!a is the same as !a except that only the left Alt will trigger it. |
|   >    | Use the right key of the pair.                               |
|  <^>!  | AltGr ([alternate graph, or alternate graphic](https://en.wikipedia.org/wiki/AltGr_key)). If your keyboard layout has AltGr instead of a right Alt key, this series of symbols can usually be used to stand for AltGr. For example:`<^>!m::MsgBox You pressed AltGr+m. <^<!m::MsgBox You pressed LeftControl+LeftAlt+m.`Alternatively, to make AltGr itself into a hotkey, use the following hotkey (without any hotkeys like the above present):`LControl & RAlt::MsgBox You pressed AltGr itself.` |
|   *    | Wildcard: Fire the hotkey even if extra modifiers are being held down. This is often used in conjunction with [remapping](https://www.autohotkey.com/docs/misc/Remap.htm) keys or buttons. For example:`*#c::Run Calc.exe  *; Win+C, Shift+Win+C, Ctrl+Win+C, etc. will all trigger this hotkey.* *ScrollLock::Run Notepad  *; Pressing ScrollLock will trigger this hotkey even when modifier key(s) are down.*`Wildcard hotkeys always use the keyboard hook, as do any hotkeys eclipsed by a wildcard hotkey. For example, the presence of `*a::` would cause `^a::` to always use the hook. |
|   ~    | When the hotkey fires, its key's native function will not be blocked (hidden from the system). In both of the below examples, the user's click of the mouse button will be sent to the active window:`~RButton::MsgBox You clicked the right mouse button. ~RButton & C::MsgBox You pressed C while holding down the right mouse button.`Unlike the other prefix symbols, the tilde prefix is allowed to be present on some of a hotkey's [variants](https://www.autohotkey.com/docs/commands/_IfWinActive.htm#variant) but absent on others. However, if a tilde is applied to the [prefix key](https://www.autohotkey.com/docs/Hotkeys.htm#prefix) of any custom combination which has not been turned off or suspended, it affects the behavior of that prefix key for *all* combinations.Special hotkeys that are substitutes for [alt-tab](https://www.autohotkey.com/docs/Hotkeys.htm#alttab) always ignore the tilde prefix.[[v1.1.14+\]:](https://www.autohotkey.com/docs/AHKL_ChangeLog.htm#v1.1.14.00) If the tilde prefix is applied to a custom modifier key ([prefix key](https://www.autohotkey.com/docs/Hotkeys.htm#prefix)) which is also used as its own hotkey, that hotkey will fire when the key is pressed instead of being delayed until the key is released. For example, the *~RButton* hotkey above is fired as soon as the button is pressed. Prior to [[v1.1.14\]](https://www.autohotkey.com/docs/AHKL_ChangeLog.htm#v1.1.14.00) (or without the tilde prefix), it was fired when the button was released, but only if the *RButton & C* combination was not activated.If the tilde prefix is applied only to the custom combination and not the non-combination hotkey, the key's native function will still be blocked. For example, in the script below, holding Menu will show the tooltip and will not trigger a context menu:`AppsKey::ToolTip Press < or > to cycle through windows. AppsKey Up::ToolTip ~AppsKey & <::Send !+{Esc} ~AppsKey & >::Send !{Esc}`If at least one variant of a keyboard hotkey has the tilde modifier, that hotkey always uses the keyboard hook. |
|   $    | This is usually only necessary if the script uses the [Send](https://www.autohotkey.com/docs/commands/Send.htm) command to send the keys that comprise the hotkey itself, which might otherwise cause it to trigger itself. The $ prefix forces the [keyboard hook](https://www.autohotkey.com/docs/commands/_InstallKeybdHook.htm) to be used to implement this hotkey, which as a side-effect prevents the [Send](https://www.autohotkey.com/docs/commands/Send.htm) command from triggering it. The $ prefix is equivalent to having specified `#UseHook` somewhere above the definition of this hotkey.The $ prefix has no effect for mouse hotkeys, since they always use the mouse hook. It also has no effect for hotkeys which already require the keyboard hook, including any keyboard hotkeys with the [tilde (~)](https://www.autohotkey.com/docs/Hotkeys.htm#Tilde) or [wildcard (*)](https://www.autohotkey.com/docs/Hotkeys.htm#wildcard) modifiers, key-up hotkeys and custom combinations. To determine whether a particular hotkey uses the keyboard hook, use [ListHotkeys](https://www.autohotkey.com/docs/commands/ListHotkeys.htm).[[v1.1.06+\]:](https://www.autohotkey.com/docs/AHKL_ChangeLog.htm#v1.1.06.00) [#InputLevel](https://www.autohotkey.com/docs/commands/_InputLevel.htm) and [SendLevel](https://www.autohotkey.com/docs/commands/SendLevel.htm) provide additional control over which hotkeys and hotstrings are triggered by the Send command. |
|   UP   | The word UP may follow the name of a hotkey to cause the hotkey to fire upon release of the key rather than when the key is pressed down. The following example [remaps](https://www.autohotkey.com/docs/misc/Remap.htm) the left Win to become the left Ctrl:`*LWin::Send {LControl down} *LWin Up::Send {LControl up} `"Up" can also be used with normal hotkeys as in this example: `^!r Up::MsgBox You pressed and released Ctrl+Alt+R`. It also works with [combination hotkeys](https://www.autohotkey.com/docs/Hotkeys.htm#combo) (e.g. `F1 & e Up::`)Limitations: 1) "Up" does not work with [joystick buttons](https://www.autohotkey.com/docs/KeyList.htm); and 2) An "Up" hotkey without a normal/down counterpart hotkey will completely take over that key to prevent it from getting stuck down. One way to prevent this is to add a [tilde prefix](https://www.autohotkey.com/docs/Hotkeys.htm#Tilde) (e.g. `~LControl up::`)"Up" hotkeys and their key-down counterparts (if any) always use the keyboard hook.On a related note, a technique similar to the above is to make a hotkey into a prefix key. The advantage is that although the hotkey will fire upon release, it will do so only if you did not press any other key while it was held down. For example:`LControl & F1::return  *; Make left-control a prefix by using it in front of "&" at least once.* LControl::MsgBox You released LControl without having used it to modify any other key.` |



[MACOS](https://www.key-shortcut.com/mac-osx/umschalt-tasten-mac)

|     name     | keyboard symbol | alternative symbol |
| :----------: | :-------------: | :----------------: |
