CHITUBOX Desktop Launcher Setup

This repository provides scripts and resources to create a desktop launcher for CHITUBOX Basic on Ubuntu (or other Linux distros).

---

What’s included

- versions/\<version\>/setup.sh — Copies the required icon and creates a .desktop shortcut with proper environment variables to run CHITUBOX without library loading errors.
- versions/\<version\>/remove.sh — Removes the created desktop shortcut and the copied icon.
- assets/freeIcon.png — Shared icon used by the launcher.

---

Usage

1. Place the repository folder anywhere on your system.
2. Make sure setup.sh and remove.sh are executable:

   chmod +x setup.sh remove.sh

3. Run setup.sh to install the desktop launcher:

   ./setup.sh

4. If needed, remove the launcher and icon with:

   ./remove.sh

---

Why?

CHITUBOX requires certain shared libraries to be found at runtime. These scripts help set the correct environment and simplify launching CHITUBOX with an icon in your desktop environment.

---

Feel free to customize the README or ask me to generate a more detailed version!
