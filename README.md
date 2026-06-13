# RollKeyReminder

> Never forget to roll your key after a Mythic+ run.

RollKeyReminder is a lightweight World of Warcraft addon that reminds you to offer your own keystone when appropriate after completing a Mythic+ dungeon.

The addon automatically detects whether the dungeon was started with your key or someone else's and displays a reminder only when it makes sense.

---

## Features

✅ Detects when a Mythic+ dungeon starts

✅ Detects if **you** launched the keystone

✅ Tracks the level of your current keystone

✅ Compares your key level with the dungeon key level

✅ Displays a reminder popup at the end of the run

✅ Fully automatic and lightweight

---

## How It Works

At the start of a Mythic+ dungeon, the addon determines:

* Whether you launched the key yourself
* The level of the keystone used
* The level of your own keystone

At the end of the run, a reminder is displayed only if:

* The dungeon was started with someone else's key
* The dungeon key level is greater than or equal to your own key level

This helps ensure you don't forget to offer your key for the next run.

---

## Examples

### Reminder Displayed

| Your Key | Dungeon Key | Started By You | Reminder |
| -------- | ----------- | -------------- | -------- |
| +16      | +16         | No             | ✅ Yes    |
| +16      | +17         | No             | ✅ Yes    |
| +18      | +20         | No             | ✅ Yes    |

### No Reminder

| Your Key | Dungeon Key | Started By You | Reminder |
| -------- | ----------- | -------------- | -------- |
| +16      | +15         | No             | ❌ No     |
| +16      | +16         | Yes            | ❌ No     |
| +20      | +18         | No             | ❌ No     |

---

## Installation

### Manual Installation

1. Download the latest release.
2. Extract the addon folder into:

```text
World of Warcraft\_retail_\Interface\AddOns\
```

3. Verify the folder structure:

```text
Interface
└── AddOns
    └── RollKeyReminder
```

4. Launch the game or type:

```lua
/reload
```

---

## Compatibility

* World of Warcraft Retail
* Midnight Expansion

---

## Author

**Vikarious**

---

## License

MIT License
