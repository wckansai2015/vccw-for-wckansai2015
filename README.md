# VCCW for hands-on at WordCamp Kansai 2015

## How to create box

```
$ vagrant polugin install vagrant-vbguest
$ vagrant up
$ vagrant reload
$ vagrant reload # you need reload twice!!
$ vagrant package
```

## How to use the box

1. Copy the box into user's machine.
1. Then run commands like following.

```
vagrant box add wckansai path/to/package.box
vagrant init wckansai
vagrant up
```
