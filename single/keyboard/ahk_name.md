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
