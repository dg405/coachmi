# NutritionWithMi

AI nutrition coaching plugin for [Claude Code](https://claude.ai/code), inspired by [Claudia Ghadimi](https://www.nutritionwithmi.com) — RSPH certified nutrition coach based in the UK.

## What is this?

A Claude Code plugin with five slash commands for personalised nutrition coaching, restaurant menu guidance, health trend fact-checking, pantry-based recipe suggestions, and emotional wellbeing support.

All advice is grounded in evidence-based nutrition science, PAL-based energy calculations, and Claudia's core philosophy: **balance, not restriction.**
This advice has been generated to the best of the ability of the programmer but should NOT be used instead of seeking professional help if you have any underlying or serious health issues. Nutrition With Mi takes no legal liability for actions taken from this advice and leaves suitable adaptation into ones life at the disgression of the user.

## Commands

| Command | Description |
|---------|-------------|
| `/coachmi` | Interactive coaching session — calculates your daily calorie needs (BMR × PAL) and builds a personalised report with recipes, local activities, and a weekly plan |
| `/menuexplorer <restaurant>` | Find 2-3 balanced choices on any restaurant menu, aligned with your calorie target |
| `/trenddebunker <claim-or-url>` | Fact-check health trends with peer-reviewed evidence and RSPH guidelines |
| `/pantrytoplate <ingredients>` | Turn what's in your fridge into a quick, calorie-aware balanced meal |
| `/nearby [location]` | Emotional wellbeing support — nearby walks, parks, and activities when you need a mood boost |

## How It Works

1. **Start with `/coachmi`** — it creates a markdown report in your current folder with your personalised calorie target, recipes, and activity suggestions.
2. **Use the other commands anytime** — `/menuexplorer` and `/pantrytoplate` automatically detect your coachmi report to personalise recommendations to your goals and calorie needs.
3. **Reports are saved locally** — all generated files appear in the folder you're working from.

## Coaching Philosophy

All commands follow Claudia's core coaching principles:

- **No food shaming** — there are no "bad" foods
- **No restrictive dieting** — never cut entire food groups
- **Balance and moderation** over perfection
- **Long-term wellbeing** over quick fixes
- **Confident food choices** without feeling restricted
- **Empathetic and evidence-based** — RSPH-aligned advice
- **Science-backed calorie guidance** — PAL × BMR calculations as a compass, not a cage

## Installation

**The easiest way (30 seconds):**
Open Claude Code and paste this. Claude does the rest, meaning the commands will be available globally in all your projects:

> Install CoachMi: run **`git clone --single-branch --depth 1 https://github.com/dg405/coachmi.git ~/.claude/skills/coachmi-plugin && bash ~/.claude/skills/coachmi-plugin/setup.sh`**

Once installed, the skills are available directly via slash commands (e.g. `/coachmi`).

### Alternative: Local Plugin (Namespaced)
If you prefer to install it as a standard Claude Plugin:
```bash
claude plugin add github:dg405/coachmi
```
*Note: Installing this way places the commands under a namespace, so you would need to run `/coachmi:coachmi` instead of just `/coachmi`.*

## About Claudia Ghadimi

Claudia is an RSPH certified nutrition coach helping people build a healthy relationship with food through balance, education, and empathy. Learn more at [nutritionwithmi.com](https://www.nutritionwithmi.com).

## License

MIT
