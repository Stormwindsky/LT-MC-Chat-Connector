# Legal Notices and Dependency Information

This project, **LT-MC-Chat-Connector (LTMCCC)**, is dedicated to the public domain under the CC0 1.0 Universal license. However, it relies on several third-party libraries and environments to function. Below is the list of these dependencies and their respective licenses.

## 1. Python Environment (Back-end)
The Python part of this project uses a Virtual Environment (**venv**) to manage dependencies.
* **Flask**: Used for the central HTTP hub.
    * *License:* BSD-3-Clause
    * *Project:* [https://github.com/pallets/flask](https://github.com/pallets/flask)

## 2. Node.js Environment (Minecraft Relay)
The Minecraft bot relay requires the Node.js runtime and uses the following packages:
* **Mineflayer**: Used to create the Minecraft bot.
    * *License:* MIT
    * *Project:* [https://github.com/PrismarineJS/mineflayer](https://github.com/PrismarineJS/mineflayer)
* **Axios**: Used for HTTP requests between Node.js and Python.
    * *License:* MIT
    * *Project:* [https://github.com/axios/axios](https://github.com/axios/axios)

## 3. Game Compatibility
* **Luanti (formerly Minetest)**: The mod uses the Luanti built-in Lua API.
    * *License:* LGPL-2.1-or-later
* **Minecraft Java Edition**: This project is an unofficial tool and is not affiliated with Mojang AB or Microsoft.

## 4. Automation Scripts
The `.sh` scripts provided in this repository are original works by **Stormwindsky** and are covered under the project's CC0 1.0 license. They automate the setup of `venv` (Python) and `node_modules` (Node.js).

---
*Note: All third-party library licenses remain the property of their respective owners. CC0 1.0 applies only to the original code found in this repository.*
