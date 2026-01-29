"Linux Architecture" <br>

Linux work on the 4 Layers architecture <br>
1.User/application--> 2.Shell--> 3.Linux Kernel--> 4.Hardware <br>

one Main point about linux is "Everything in linux is a process" <br>

as we power on our system firstly BIOS loads the hardwares. BIOS is a pre-installed firamware on motherboad that is initialize the hardwares and perform POST(Power-On-Self-Test). Then GNU GRUB(grand Unified Bootloader) is a software that is load the operating system and our system starts to run. As soon as system runs the first process to run is systemd/init PID 1 and systemctl is controller that are attached with the process.  <br>

kernel is a machine that works on binary language we can't directly interact with that. so for communicate with the Kernel we have to give the instrucation to Shell and the talk with kernel.  <br>

Commands used for interact with shell <br>
ps--> give snapshot of active processes <br>
top--> dynamic real-time ruuning processes <br>
htop--> can scroll verticle as wel as horizentally to see more effectively <br>
ps aux --> active ruuning process in detailed <br>

for kowns more about command /bin folder contains the all command and we cam use man command to see the manual. 
