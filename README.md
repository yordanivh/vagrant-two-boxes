# vagrant-two-boxes

# What is this repo for

This repo contains code that when executed will create two virtual box machines that will have a running web server on them. This can be tested. How to do that you will see in the [below](#how-to-use-this-repo).


# Why use this repo

You might want to use this repo to gain a better understanding of how Vagrant can work for you. 
In this specific case we use a loop to create two similiar machines. 
This is accomplished by using `(1..2).each do |i|` and specifiying the names of the server as variables `vm_name="web#{i}"`
Also the same method is used to forward a port from the guests to the host. Host port is a variable `host: "6500#{i}"` so it will change depending on which machine is being created.

# How to use this repo

* You need to have vagrant installed on you workstation
   *  for MacOS
   
    ```
    brew install vagrant
    ```
  
   *  for any other OS click [here](https://www.vagrantup.com/downloads.html).

* You also need to have virtualbox installed since this is the virtualization provider we are using in this example.

   * Download [Here](https://www.virtualbox.org/wiki/Downloads)
  
* This "How to" will cover macOS specifically, it may vary for other systems.

* Clone this repo locally to a folder of your choice
```
git clone git@github.com:yordanivh/vagrant-two-boxes.git
```
* Go inside the newly created folder of the repo

```
cd vagrant-two-boxes
```
* Give command to start the machines

```
vagrant up
```
* This is an expected output

```
❯ vagrant up
Bringing machine 'web1' up with 'virtualbox' provider...
Bringing machine 'web2' up with 'virtualbox' provider...
==> web1: Importing base box 'yordan/box'...
==> web1: Matching MAC address for NAT networking...
==> web1: Checking if box 'yordan/box' version '1.0.0' is up to date...
==> web1: Setting the name of the VM: vagrant-two-boxes_web1_1582295925037_9369
==> web1: Clearing any previously set network interfaces...
==> web1: Preparing network interfaces based on configuration...
    web1: Adapter 1: nat
==> web1: Forwarding ports...
    web1: 1234 (guest) => 65001 (host) (adapter 1)
    web1: 22 (guest) => 2222 (host) (adapter 1)
==> web1: Booting VM...
==> web1: Waiting for machine to boot. This may take a few minutes...
    web1: SSH address: 127.0.0.1:2222
    web1: SSH username: vagrant
    web1: SSH auth method: private key
    web1: 
    web1: Vagrant insecure key detected. Vagrant will automatically replace
    web1: this with a newly generated keypair for better security.
    web1: 
    web1: Inserting generated public key within guest...
    web1: Removing insecure key from the guest if it's present...
    web1: Key inserted! Disconnecting and reconnecting using new SSH key...
==> web1: Machine booted and ready!
==> web1: Checking for guest additions in VM...
==> web1: Setting hostname...
==> web1: Mounting shared folders...
    web1: /vagrant => /Users/yhalachev/repos/vagrant-two-boxes
==> web1: Running provisioner: shell...
    web1: Running: /var/folders/j6/9tcttprj1m519xpdnrsws_ww0000gp/T/vagrant-shell20200221-9531-1adoc3d.sh
    web1: Get:1 http://security.ubuntu.com/ubuntu xenial-security InRelease [109 kB]
    web1: Get:2 http://security.ubuntu.com/ubuntu xenial-security/main amd64 Packages [831 kB]
    web1: Hit:3 http://us.archive.ubuntu.com/ubuntu xenial InRelease
    web1: Get:4 http://us.archive.ubuntu.com/ubuntu xenial-updates InRelease [109 kB]
    web1: Get:5 http://security.ubuntu.com/ubuntu xenial-security/main i386 Packages [642 kB]
    web1: Get:6 http://security.ubuntu.com/ubuntu xenial-security/main Translation-en [316 kB]
    web1: Get:7 http://security.ubuntu.com/ubuntu xenial-security/universe amd64 Packages [480 kB]
    web1: Get:8 http://security.ubuntu.com/ubuntu xenial-security/universe i386 Packages [414 kB]
    web1: Get:9 http://security.ubuntu.com/ubuntu xenial-security/universe Translation-en [197 kB]
    web1: Get:10 http://us.archive.ubuntu.com/ubuntu xenial-backports InRelease [107 kB]
    web1: Get:11 http://us.archive.ubuntu.com/ubuntu xenial-updates/main amd64 Packages [1,110 kB]
    web1: Get:12 http://us.archive.ubuntu.com/ubuntu xenial-updates/main i386 Packages [902 kB]
    web1: Get:13 http://us.archive.ubuntu.com/ubuntu xenial-updates/main Translation-en [424 kB]
    web1: Get:14 http://us.archive.ubuntu.com/ubuntu xenial-updates/universe amd64 Packages [785 kB]
    web1: Get:15 http://us.archive.ubuntu.com/ubuntu xenial-updates/universe i386 Packages [712 kB]
    web1: Get:16 http://us.archive.ubuntu.com/ubuntu xenial-updates/universe Translation-en [329 kB]
    web1: Fetched 7,468 kB in 2s (3,522 kB/s)
    web1: Reading package lists...
==> web2: Importing base box 'yordan/box'...
==> web2: Matching MAC address for NAT networking...
==> web2: Checking if box 'yordan/box' version '1.0.0' is up to date...
==> web2: Setting the name of the VM: vagrant-two-boxes_web2_1582295958735_14801
==> web2: Fixed port collision for 22 => 2222. Now on port 2200.
==> web2: Clearing any previously set network interfaces...
==> web2: Preparing network interfaces based on configuration...
    web2: Adapter 1: nat
==> web2: Forwarding ports...
    web2: 1234 (guest) => 65002 (host) (adapter 1)
    web2: 22 (guest) => 2200 (host) (adapter 1)
==> web2: Booting VM...
==> web2: Waiting for machine to boot. This may take a few minutes...
    web2: SSH address: 127.0.0.1:2200
    web2: SSH username: vagrant
    web2: SSH auth method: private key
    web2: 
    web2: Vagrant insecure key detected. Vagrant will automatically replace
    web2: this with a newly generated keypair for better security.
    web2: 
    web2: Inserting generated public key within guest...
    web2: Removing insecure key from the guest if it's present...
    web2: Key inserted! Disconnecting and reconnecting using new SSH key...
==> web2: Machine booted and ready!
==> web2: Checking for guest additions in VM...
==> web2: Setting hostname...
==> web2: Mounting shared folders...
    web2: /vagrant => /Users/yhalachev/repos/vagrant-two-boxes
==> web2: Running provisioner: shell...
    web2: Running: /var/folders/j6/9tcttprj1m519xpdnrsws_ww0000gp/T/vagrant-shell20200221-9531-18hxdej.sh
    web2: Get:1 http://security.ubuntu.com/ubuntu xenial-security InRelease [109 kB]
    web2: Hit:2 http://us.archive.ubuntu.com/ubuntu xenial InRelease
    web2: Get:3 http://security.ubuntu.com/ubuntu xenial-security/main amd64 Packages [831 kB]
    web2: Get:4 http://us.archive.ubuntu.com/ubuntu xenial-updates InRelease [109 kB]
    web2: Get:5 http://security.ubuntu.com/ubuntu xenial-security/main i386 Packages [642 kB]
    web2: Get:6 http://security.ubuntu.com/ubuntu xenial-security/main Translation-en [316 kB]
    web2: Get:7 http://security.ubuntu.com/ubuntu xenial-security/universe amd64 Packages [480 kB]
    web2: Get:8 http://security.ubuntu.com/ubuntu xenial-security/universe i386 Packages [414 kB]
    web2: Get:9 http://security.ubuntu.com/ubuntu xenial-security/universe Translation-en [197 kB]
    web2: Get:10 http://us.archive.ubuntu.com/ubuntu xenial-backports InRelease [107 kB]
    web2: Get:11 http://us.archive.ubuntu.com/ubuntu xenial-updates/main amd64 Packages [1,110 kB]
    web2: Get:12 http://us.archive.ubuntu.com/ubuntu xenial-updates/main i386 Packages [902 kB]
    web2: Get:13 http://us.archive.ubuntu.com/ubuntu xenial-updates/main Translation-en [424 kB]
    web2: Get:14 http://us.archive.ubuntu.com/ubuntu xenial-updates/universe amd64 Packages [785 kB]
    web2: Get:15 http://us.archive.ubuntu.com/ubuntu xenial-updates/universe i386 Packages [712 kB]
    web2: Get:16 http://us.archive.ubuntu.com/ubuntu xenial-updates/universe Translation-en [329 kB]
    web2: Fetched 7,468 kB in 1s (3,776 kB/s)
    web2: Reading package lists...
```

* After the above is finished you should have two virtual macines named web1 and web2. You can confirm this by running `vagrant status`

```
❯ vagrant status
Current machine states:

web1                      running (virtualbox)
web2                      running (virtualbox)

This environment represents multiple VMs. The VMs are all listed
above with their current state. For more information about a specific
VM, run `vagrant status NAME`.
```

* The two servers have been provision by the `provision.sh` script to have a web server running on port 1234 with body saying that it is web server 1 or web server 2.
To test this go to your browser and put in http://localhost:65001/ and then http://localhost:65002/.
You will see the web servers working

* When you are done with this destroy the created environment to save resources

```
vagrant destory
```
