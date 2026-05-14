# LT-MC-Chat-Connector (LTMCCC)

LT-MC-Chat-Connector (LTMCCC) is an experimental project/mod designed to create a simple chat bridge between **Luanti** (formerly Minetest) and **Minecraft Java Edition**.

## Overview
This project acts as a lightweight relay, allowing players from both games to communicate in real-time. Please note that for now, this bridge is **only compatible with Minecraft Java Edition**.

## Experimental Modpack
To see how this project is configured and to experiment with it in a pre-configured environment, you can use the official modpack I created:
👉 [LTMCCC-Modpack](https://github.com/Stormwindsky/LTMCCC-Modpack)

## Usage & Security Warning
- **Target Audience:** This project is intended for **private, experimental, and educational use** only.
- **Not for Public Servers:** This bridge was not designed to be used on public-facing servers. 
- **Disclaimer:** As an experimental project, I (Stormwindsky) am **not responsible** for any security vulnerabilities, data loss, or technical issues that may arise from using this software. Use it at your own risk in a controlled environment.

## How it works
The system uses a three-part architecture:
1. **Luanti Mod:** Sends and receives chat data via HTTP.
2. **Python Hub (Flask):** The central brain that routes messages between games.
3. **Minecraft Relay (Node.js):** A Mineflayer bot that talks to the Minecraft Java server.

## Features
- Synchronization of chat messages.
- Clear identification of platforms: `<LT/MT>` for Luanti and `<MC Java>` for Minecraft.

## Linux Setup & Tutorial (Experimental)
This tutorial is strictly for **Linux users**. Follow the link below to learn how to set up the Python environment, the Node.js relay, and how to configure Prism Launcher for LTMCCC.

👉 [Read the Linux Setup Tutorial here (https://www.youtube.com/watch?v=NpEaa2P7qZI)](#)

*Note: A detailed step-by-step guide is coming soon.*

## License
Created by **Stormwindsky**.
This project is licensed under **CC0 1.0 Universal** (Public Domain).
