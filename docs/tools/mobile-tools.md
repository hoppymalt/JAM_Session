---
layout: default
title: Mobile Tools
parent: Tools
nav_order: 5
---

# LAN Tools
{: .no_toc }

## Mobile of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

#### [\[Script\] Install all](https://github.com/caioMichele/JAM_Session/tree/master/docs/Scripts/Installers)

---

## Emulators

### VirtualBox/VMWare Android Instance With Bluetooth
To create a new VirtualBox/VMWare instance follow these steps:  
* Download Androidx86 iso from [here](https://www.android-x86.org/)
need something like VMWare or VirtualBox to run it When creating the virtual machine, you need to set the type of guest OS as Linux instead of Other.
* After creating the virtual machine set the network adapter to 'Bridged'. 
* Start the VM and select 'Live CD VESA' at boot.
* Find out the IP of the VM:
  * Go to terminal in VM (use Alt+F1 & Alt+F7 to toggle) 
  * `netcfg` command to find the IP.
* `adb connect IP_ADDRESS`. 

To add Bluetooth 

Option 1: 
* Plug in your USB Bluetooth dongle/Bluetooth device.
* In VirtualBox screen, go to Devices>USB devices. Select your dongle.

Option 2:
* Under settings of the virtual machine Goto serialports -> Port 1 check Enable serial port select a port number then select port mode as disconnected and click ok. 
* Start the virtual machine. 
* Under Devices -> USB Devices -> you can find your laptop bluetooth listed. 
 