# easy-pack
For the EasyPack project. A package manager that can be used by all. No commands required to use (except maybe one).

Install
To install EasyPack:
1. Install git (sudo pacman -S git)
2. git clone https://github.com/lulzymayhem/easy-pack
3. cd easy-pack
4. Run the install script (for me, it's sh easypack-install.sh. If this does not work for you, then you need to find it)
The script will ask you for your password. This is to move the file so it can be easily executed anywhere and to add a system-wide alias.


Usage
To run EasyPack, simply type in easy-pack. After doing this, you will be presented with a prompt asking you what you wish to do. You have a couple of choices. You can type in (all of these are without quotes) "install", "remove", "synchronize", "update", or "search". "synchronize" will synchronize your package list with the database. "upgrade" will do a system-wide upgrade. "search" will search the database for a package that you specify. "install" and "remove" should be self-explanatory.
