simple_load_testing
===================

This uses bees with machine guns, and a simple ab tester - let's you output log files. Nothing fancy!

##Dependencies

Bees With Machine Guns (Python 2.6, boto, paramiko)

Apache Benchmarking Tool (Apache 2 Tools)

##Installation

You need to make sure these are installed, and if you are using BWMG you need to have the proper credentials and pem key ready.

##Warning

Bees With Machine Guns and Apache Bench are meant for testing development and staging environments. BWMG especially can be costly, if you don't know what you are doing.
When in doubt - be very, very careful and use the simple test first.
I make no warranty on this, nor do I encourage anything but responsible use.

##Thanks to the following

https://github.com/newsapps/beeswithmachineguns

http://httpd.apache.org/docs/2.2/programs/ab.html

http://www.petefreitag.com/item/689.cfm

##Make Commands
The following commands are available for use, however:

USE WITH CAUTION!

NEVER RUN THIS ON A PRODUCTION SERVER!

WE ARE NOT RESPONSIBLE FOR YOUR TESTING!

Usage: make help

Description:

	Shows this help file, but you already know that now.

Usage: make simple-load-test

Description:

	Runs a load test, using AB or Bees. Defaults To Apache.
    
	This is good for when you set something up, and want to do a quick test.
    
	If using apache, runs this command: ab -k -n 100 -c 10 %your-url.
    
	If using bees, runs this set of commands:
    
	bees up -s 1 -g %your-security-group -k %your-pem-key
    
	bees attack -n 100 -c 10 -u %your-url
    
	bees down

Usage: make load-test

Description:

	Runs a load test, using AB or Bees. Defaults To Apache.
    
	This is good for testing light load on a server.
    
	If using apache, runs this command: ab -k -n 1000 -c 100 %your-url.
    
	If using bees, runs this set of commands:
    
	bees up -s 2 -g %your-security-group -k %your-pem-key
    
	bees attack -n 1000 -c 100 -u %your-url
    
	bees down

Usage: make medium-load-test

Description:
	Runs a load test, using AB or Bees. Defaults To Apache.
    
	This is good for testing average load on a server.
    
	If using apache, runs this command: ab -k -n 10000 -c 250 %your-url.
    
	If using bees, runs this set of commands:
    
	bees up -s 4 -g %your-security-group -k %your-pem-key
    
	bees attack -n 10000 -c 250 -u %your-url
    
	bees down

Usage: make high-load-test

Description:

	Runs a load test, using AB or Bees. Defaults To Apache.
    
	This is good for testing a little higher than average load on a server.
    
	If using apache, runs this command: ab -k -n 10000 -c 500 %your-url.
    
	If using bees, runs this set of commands:
    
	bees up -s 4 -g %your-security-group -k %your-pem-key
    
	bees attack -n 10000 -c 500 -u %your-url
    
	bees down

Usage: make heavy-load-test

Description:

	Runs a load test, using AB or Bees. Defaults To Apache.
    
	This is good for testing heavy load on a server.
    
	If using apache, runs this command: ab -k -n 20000 -c 1000 %your-url.
    
	If using bees, runs this set of commands:
    
	bees up -s 6 -g %your-security-group -k %your-pem-key
    
	bees attack -n 20000 -c 1000 -u %your-url
    
	bees down

Usage: make peak-load-test

Description:

	Runs a load test, using AB or Bees. Defaults To Apache.
    
	This is good for testing peak load on a server.
    
	If using apache, runs this command: ab -k -n 10000 -c 3000 %your-url.
    
	If using bees, runs this set of commands:
    
	bees up -s 4 -g %your-security-group -k %your-pem-key
    
	bees attack -n 10000 -c 3000 -u %your-url
    
	bees down

USE WITH CAUTION!

NEVER RUN THIS ON A PRODUCTION SERVER!

WE ARE NOT RESPONSIBLE FOR YOUR TESTING!


