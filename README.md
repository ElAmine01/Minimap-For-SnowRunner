# 🗺️ The Minimap Mod for SnowRunner

[![Platform](https://img.shields.io/badge/platform-Windows%20x64-blue)](#)
[![Tech](https://img.shields.io/badge/tech-C%2B%2B%20%7C%20DX11%20%7C%20ImGui-green)](#)
[![Input](https://img.shields.io/badge/input-Keyboard%20%7C%20Gamepad-orange)](#)

## 📥 Installation

1. Download the latest release (`SnowMap.zip`).
2. Extract the contents directly into your SnowRunner Binaries folder:
   `C:\Program Files (x86)\Steam\steamapps\common\SnowRunner\Sources\Bin`
3. Launch the game! The mod will automatically inject itself and load the map when you leave the garage.

*Note: The folder should look like this: `Bin/dinput8.dll`, `Bin/SnowMap.asi`, and the `Bin/SnowMap/` folder.*
*Important: internet connection required.*

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

## ⚠️ Antivirus & False Positives

Because this mod uses a proxy DLL (dinput8.dll), reads the game's RAM to track your truck, and connects to the internet to download the map, Windows Defender or your Antivirus may flag it as a virus (e.g., GameHack or Trojan).
This is a 100% False Positive. 
To install it, you may need to add the SnowRunner Bin folder to your Antivirus exceptions/exclusions.
