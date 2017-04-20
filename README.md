# Just some scripts which could be usefull for different purposes

## stats - Calculates number of line of code

#### Usage:
stats.sh $PRUJECT_PATH $LANGUAGE
   
#### Example:
```
➜  moj  pwd
/Users/kayanazimov/workspace/moj
➜  moj  stats.sh cpp.context.resulting.hmps java
calculating...
total lines: 4391
➜  moj  
```
 
#### Tested on MacOS   

---

## wru/ru - Show system resource usage
**wru - watch resource usage**
simply calls 'ru' every couple seconds to keep your screen updated
**ru - ru shows memory, disk, CPU usage**

#### Example:
```
➜  misc-shell git:(master) ✗ ./wru.sh
Every 2.0s: ./ru.sh                                                                                                                                           Kayans-MacBook-Pro.local: Thu Apr 20 18:39:53 2017

cpu usage: 14.6%, total: CPU usage: 4.34% user, 23.91% sys, 71.73% idle
PhysMem: 8140M used (1613M wired), 51M unused.
Filesystem: /dev/disk1 szie: 120G, used: 94G, Avail: 26G, Capacity: 79%

➜  misc-shell git:(master) ✗ ./ru.sh 
cpu usage: 11.3%, total: CPU usage: 17.2% user, 25.53% sys, 57.44% idle 
PhysMem: 8075M used (1583M wired), 116M unused.
Filesystem: /dev/disk1 szie: 120G, used: 94G, Avail: 26G, Capacity: 79%
➜  misc-shell git:(master) ✗ 
  
```
 
#### Tested on MacOS   

