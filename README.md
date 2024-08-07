# GRUB2 FILE MANAGER

![Static Badge](https://img.shields.io/badge/IN_BETA!-red?style=for-the-badge)

It's GRUB2... but as a file manager with **LOTS** of features.

## Features

- A variety of operating systems are supported (Windows XP-11, lot's of Linux distros, etc.)
- Supports multiple architectures
- Windows Installer unattend support
- Monitor hardware feature (press F1 while in any g2fm menu)
- Very customizable

Based on: [a1ive's grub2 file manager](https://github.com/a1ive/grub2-filemanager)

Star if you like it!

![GitHub Downloads (all assets, all releases)](https://img.shields.io/github/downloads/TCFFan123/g2fm-continued/total?style=for-the-badge&labelColor=black&color=blue)
![GitHub Release](https://img.shields.io/github/v/release/TCFFan123/g2fm-continued?display_name=release&style=for-the-badge&labelColor=black)
![GitHub Repo stars](https://img.shields.io/github/stars/TCFFan123/g2fm-continued?style=for-the-badge&logo=github&labelColor=black)
![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/TCFFan123/g2fm-continued/build.yml?style=for-the-badge&labelColor=black&color=blue)
> [!NOTE]
> We're looking for more contributors! (I'm the only one so far who has made changes in this repo. GitHub says there's 10 contributors but that's some weird issue with detaching a fork, I'm the only one who has made changes ever since the detach)
> If you find something wrong or want to request a new feature, report it in issues.
> Think that something could be changed/added in g2fm, and you know GRUB2? Create a pull request with the code for the feature.

## Table of Contents

- [Preview](#preview)
- [Supported architectures](#supported-architectures)
- [Supported types of files](#supported-types-of-files)
- [Download](download-g2fm-here.)
- [Build](#build)
- [Boot](#boot)
- [Source code](#source-code)
- [USB Installers](#usb-installers)
- [Related projects](#related-projects)

## Preview

![Main menu](https://i.imgur.com/zgz3Xeb.png)

## Supported architectures

ARM64, x86, x86_64.

## Supported types of files

| Type                   |    i386-pc    |   i386-efi    |  x86_64-efi   |
| :--------------------- | :-----------: | :-----------: | :-----------: |
| WinPE/Windows Install ISO              |   Supported   |   Supported   |   Supported   |
| Linux ISO              |   Supported   |   Supported   |   Supported   |
| Android ISO            |   Supported   |   Supported   |   Supported   |
| BSD ISO                |   Supported   | Not supported | Not supported |
| IMG (Disk Image)       |   Supported   |   Supported   |   Supported   |
| VHD                    |   Supported   |   Supported   |   Supported   |
| WinPE WIM              |   Supported   |   Supported   |   Supported   |
| NT5 WinPE              |   Supported   | Not supported | Not supported |
| Linux/Multiboot Kernel |   Supported   |   Supported   |   Supported   |
| EFI Application        | Not supported |   Supported   |   Supported   |

## Build

```bash
 git clone <https://github.com/TCFFan123/g2fm-continued.git>
 cd g2fm-continued
 ./update_grub.sh
 ./build.sh
```

## Boot

### i386-pc

**DO NOT boot g2fm.iso with memdisk!**

#### GRUB4DOS / GRUB Legacy

```bash
 map --mem /g2fm.iso (0xff)
 map --hook
 chainloader (0xff)
```

#### GRUB2

```bash
 linux /loadfm
 initrd /g2fm.iso
```

### x86_64-efi

#### GRUB2

```bash
 chainloader /g2fmx64.efi
```

#### rEFInd

```bash
 loader /g2fmx64.efi
```

#### Systemd-boot

```bash
 efi /g2fmx64.efi
```

## Source code

GRUB2: <https://github.com/tcffan123/grub>

## USB Installers

- None yet. If you want to have one featured here, please open an issue.

## Related projects

- [GLIM](https://github.com/thias/glim)
- [grub-iso-boot](https://github.com/Jimmy-Z/grub-iso-boot)
- [grub-iso-multiboot](https://github.com/mpolitzer/grub-iso-multiboot)
- [GRUB2 File Explorer](http://bbs.wuyou.net/forum.php?mod=viewthread&tid=320715)
- [G4D AUTOMENU](http://bbs.wuyou.net/forum.php?mod=viewthread&tid=203607)
- [Multiboot USB](http://mbusb.aguslr.com/)
- [RUN](http://bbs.wuyou.net/forum.php?mod=viewthread&tid=191301)
- [Ventoy](https://github.com/ventoy/Ventoy)
