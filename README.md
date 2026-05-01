# 🗺️ SnowMap — The Ultimate Minimap Mod for SnowRunner

[![Platform](https://img.shields.io/badge/platform-Windows%20x64-blue)](#)
[![Tech](https://img.shields.io/badge/tech-C%2B%2B%20%7C%20DX11%20%7C%20ImGui-green)](#)
[![Input](https://img.shields.io/badge/input-Keyboard%20%7C%20Gamepad-orange)](#)

**SnowMap** is a highly optimized, real-time GPS minimap overlay for SnowRunner (PC / Steam / Epic). 
Tired of opening the map every 30 seconds to check the road? SnowMap brings a fully interactive, rotating GPS directly to your HUD, just like in your favorite open-world games.

## ✨ Features

* 🛰️ **Cloud 4K Maps (Auto-Download):** Automatically fetches the gorgeous 4K satellite maps from MapRunner in the background as you enter a new region. No manual installation required!
* 🧭 **Dynamic GPS Rotation:** Choose between a static map with a rotating arrow, or a modern "TomTom/Waze" mode where the map rotates around your truck.
* 🎮 **Gamepad & Keyboard Support:** Seamlessly zoom in/out or toggle the map using your Xbox or PlayStation controller (D-Pad) while driving.
* 🚀 **Zero FPS Drop:** Engineered with a custom C++ multi-threaded architecture. It reads the truck's coordinates directly from the game's RAM memory (bypassing Denuvo) for perfectly smooth tracking without lagging the graphics card.
* ⚙️ **Fully Customizable:** Easily change the map size, position, transparency, and hotkeys in real-time via a simple `options.json` file. No restart needed.

---

## 📥 Installation

1. Download the latest release (`SnowMap.zip`).
2. Extract the contents directly into your SnowRunner Binaries folder:
   `C:\Program Files (x86)\Steam\steamapps\common\SnowRunner\Sources\Bin`
3. Launch the game! The mod will automatically inject itself and load the map when you leave the garage.

*Note: The folder should look like this: `Bin/dinput8.dll`, `Bin/SnowMap.asi`, and the `Bin/SnowMap/` folder.*

---

## 🕹️ Controls (Default)

**Keyboard:**
* **F5:** Show / Hide Minimap
* **F6:** Reload configuration (`options.json`)
* **Numpad + / Numpad - :** Zoom In / Zoom Out

**Controller (Gamepad):**
* **D-Pad Right:** Zoom In
* **D-Pad Left:** Zoom Out

*(All keys and buttons can be remapped in `SnowMap/options.json`).*

---
