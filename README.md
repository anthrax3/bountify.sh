# bountify.sh

A security report spell-checker and language enhancement tool.

![image](https://user-images.githubusercontent.com/18099289/34675669-a522cf46-f48a-11e7-8060-3d749c2575fc.png)

# Installation

## 🐧 Linux

Make sure you have installed the [alex](https://github.com/wooorm/alex) and `aspell` packages. You can then run _bountify.sh_ against a text file with your report's contents.

```
$ npm install alex --global
$ git clone https://github.com/EdOverflow/bountify.sh.git
$ cd bountify.sh/
$ chmod u+x bountify.sh
$ ./bountify.sh your-report.txt
```

# Example

```
$ ./bountify.sh my-report.txt 


██████╗  ██████╗ ██╗   ██╗███╗   ██╗████████╗██╗███████╗██╗   ██╗
██╔══██╗██╔═══██╗██║   ██║████╗  ██║╚══██╔══╝██║██╔════╝╚██╗ ██╔╝
██████╔╝██║   ██║██║   ██║██╔██╗ ██║   ██║   ██║█████╗   ╚████╔╝ 
██╔══██╗██║   ██║██║   ██║██║╚██╗██║   ██║   ██║██╔══╝    ╚██╔╝  
██████╔╝╚██████╔╝╚██████╔╝██║ ╚████║   ██║   ██║██║        ██║   
╚═════╝  ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝   ╚═╝   ╚═╝╚═╝        ╚═╝
                        By EdOverflow                                                                                                                                                                

[+] Original

Hi,

example.com is vulnerble to XSS allowing an attacker to inject arbatrary web-script
allowing him to steal cookies and hijack sessions. Injecting `javascript:alert(1)`
into the vulnerable parameter `q` on `/welcome/` triggers an alert box.

[+] Autocorrect

Hi,

example.com is vulnerble to cross-site scripting allowing an adversary to inject 
arbatrary web-script allowing him to steal cookies and hijack sessions. Injecting 
`javascript:alert(1)` into the vulnerable parameter `q` on `/welcome/` triggers an 
alert box.

[+] Spellcheck

vulnerble
arbatrary
javascript

[+] Insensitive & inconsiderate language check

report.txt
  3:112-3:115  warning  `him` may be insensitive, use `their`, `theirs`, `them` 
  instead  her-him  retext-equality
  3:137-3:143  warning  Be careful with “hijack”, it’s profane in some 
  cases             hijack   retext-profanities

⚠ 2 warnings
```