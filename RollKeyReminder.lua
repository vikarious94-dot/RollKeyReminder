local addonName, RollKeyReminder = ...

_G.RollKeyReminder = _G.RollKeyReminder or {}
RollKeyReminder = _G.RollKeyReminder

RollKeyReminder.name = RollKeyReminder
RollKeyReminder.version = "1.0"
RollKeyReminder.lastReminder = 0
RollKeyReminder.lastRunLevel = nil
RollKeyReminder.lastRunTimed = nil