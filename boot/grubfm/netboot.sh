# Grub2-FileManager
# Copyright (C) 2020  A1ive.
#
# Grub2-FileManager is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Grub2-FileManager is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Grub2-FileManager.  If not, see <http://www.gnu.org/licenses/>.

# Define the netbootxyz variable based on the grub_platform
if [ "$grub_platform" = "efi" ]; then
  netbootxyz="netboot.xyz.efi"
  chain="chainloader"
else
  netbootxyz="netboot.xyz.lkrn"
  chain="linux16"
fi

# Define the menu entry for netboot.xyz
menuentry $"netboot.xyz" --class net {
  set lang=en_US
  terminal_output console
  echo $"Please wait..."
  $chain (http://boot.netboot.xyz)/ipxe/$netbootxyz
}

# Source the global configuration file
source ${prefix}/global.sh