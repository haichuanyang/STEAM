nagios event handlers
https://assets.nagios.com/downloads/nagioscore/docs/nagioscore/3/en/eventhandlers.html

gpfs policy scan - 
https://github.iu.edu/Research-Storage/sjh-scratch/blob/master/gpfs/afm/afm-policy-exec.md

intunable parameters of gpfs: fs block size 4MB block size; 16MB from finley; 
fs inode size

redis https://matt.sh/what-is-redis data structure server
gcp - google cloud platform

ETL -extract,transform, load
DAG - directed acyclic graph              

https://www.usenix.org/legacy/events/fast02/full_papers/schmuck/schmuck.pdf
old basic paper, tiger shark

1. distributed locking
1. user data is not logged; only metadata

extensible hashing
spindle
GPFS API
https://www.ibm.com/support/knowledgecenter/en/STXKQY_5.0.0/com.ibm.spectrum.scale.v5r00.doc/bl1adm_intrfce.htm
dmapi
https://www.ibm.com/support/knowledgecenter/en/STXKQY_4.2.3/com.ibm.spectrum.scale.v4r23.doc/bl1dmp_intro.htm
api
https://www.ibm.com/support/knowledgecenter/SSFKCN_4.1.0.4/com.ibm.cluster.gpfs.v4r104.gpfs100.doc/bl1adm_intrfce.htm
management api
https://www.ibm.com/support/knowledgecenter/en/STXKQY_5.0.0/com.ibm.spectrum.scale.v5r00.doc/bl1adm_restapi_main.htm
rest API
https://www.ibm.com/support/knowledgecenter/en/STXKQY_4.2.2/com.ibm.spectrum.scale.v4r22.doc/bl1adm_restapi_functionaloverview.htm

lock manager, token manager
byte range locking 
vs data shipping MPI/IO
shared write lock
metanode
allocation manager
subblock
token revocation
SAN - xfs
VSD - virutal shared disk

https://lenovopress.com/lp0626-lenovo-distributed-storage-solution-for-ibm-spectrum-scale-x3650-m5
pictures of DSS G240 lenovo rack

http://muratbuffalo.blogspot.com/2011/02/gpfs-shared-disk-file-system-for-large.html

http://files.gpfsug.org/presentations/2016/Spectrum_Scale_Expert_Workshop_Ehningen_2016-All_Charts/07-Spectrum_Protect_on_Scale-NHaustein-032016.pdf

https://www.usenix.org/system/files/login/articles/login_june_04_hildebrand.pdf

http://www.redbooks.ibm.com/redbooks/pdfs/sg248254.pdf


https://www.ibm.com/support/knowledgecenter/en/SSFKCN_4.1.0/com.ibm.cluster.gpfs.v4r1.gpfs300.doc/bl1ins_gsd.htm


https://www.ibm.com/support/knowledgecenter/SSFKCN_4.1.0/com.ibm.cluster.gpfs.v4r1.gpfs500.doc/bl1pdg_recgcd.htm


https://www.ibm.com/support/knowledgecenter/SSFKCN_4.1.0/com.ibm.cluster.gpfs.v4r1.gpfs300.doc/bl1ins_architr.htm


ldapsearch -H "ldaps://bazooka.hps.iu.edu:636" -b "ou=ADSGroup,dc=rt,dc=iu,dc=edu" -x cn=in-rady-fmri-geode


[root@gsgwb0 bin]# ./add-ldif-to-bazooka ~/mderuit.ldif 
Enter LDAP Password: 
adding new entry "uid=mderuit,ou=Geode,dc=rt,dc=iu,dc=edu"

[root@gsgwb0 bin]# cd /gs/projects/
[root@gsgwb0 projects]# more ~/mderuit.ldif 

dn: uid=mderuit,ou=Geode,dc=rt,dc=iu,dc=edu
uid: mderuit
cn: mderuit
objectClass: account
objectClass: posixAccount
objectClass: top
loginShell: /sbin/nologin
uidNumber: 1791421
gidNumber: 99
homeDirectory: /N/u/mderuit/Geode
gecos: mderuit
[root@gsgwb0 projects]# 

thisismypassword

/gs/sbin/amsgetgeode
/gs/sbin/geode-ldap

-r--------   1 root root  43008 Apr  6  2018 sqlBinFile
-rw-r--r--   1 root root  26522 Apr  6  2018 sqlTextFile
[root@bldc-dss-1 gen]# file sqlBinFile 
sqlBinFile: SQLite 3.x database
[root@bldc-dss-1 gen]# 


       sqlite> .help
       .databases             List names and files of attached databases
       .dump ?TABLE? ...      Dump the database in an SQL text format
       .echo ON|OFF           Turn command echo on or off
       .exit                  Exit this program
       .explain ON|OFF        Turn output mode suitable for EXPLAIN on or off.
       .header(s) ON|OFF      Turn display of headers on or off
       .help                  Show this message
       .import FILE TABLE     Import data from FILE into TABLE
       .indices TABLE         Show names of all indices on TABLE
       .mode MODE ?TABLE?     Set output mode where MODE is one of:
                                csv      Comma-separated values
                                column   Left-aligned columns.  (See .width)
                                html     HTML <table> code
                                insert   SQL insert statements for TABLE
                                line     One value per line
                                list     Values delimited by .separator string
                                tabs     Tab-separated values
                                tcl      TCL list elements
       .nullvalue STRING      Print STRING in place of NULL values
       .output FILENAME       Send output to FILENAME
       .output stdout         Send output to the screen
       .prompt MAIN CONTINUE  Replace the standard prompts
       .quit                  Exit this program
       .read FILENAME         Execute SQL in FILENAME
       .schema ?TABLE?        Show the CREATE statements
       .separator STRING      Change separator used by output mode and .import
       .show                  Show the current values for various settings
       .tables ?PATTERN?      List names of tables matching a LIKE pattern
       .timeout MS            Try opening locked tables for MS milliseconds
       .width NUM NUM ...     Set column widths for "column" mode
       sqlite>



https://www.sqlite.org/quickstart.html

https://sqlitebrowser.org/
https://linux.die.net/man/1/sqlite3

mmdiag
mmfsadm saferdump
mmfsadm dump



https://cloud.google.com/certification/data-engineer
https://cloud.google.com/docs/
https://docs.google.com/forms/d/e/1FAIpQLSc_5CCKpgL2g41qOc7YDcbW8_BvnQgRQKC1A2-im3hd-LTo_A/formResponse

https://mp.weixin.qq.com/s/sqwh_yRF6EYfmUF86QZzWw

https://www.ibm.com/certify/cert?id=50001501
https://www.ibm.com/certify/exam?id=C2090-101

《数据工程入门指南》（第1部分）：

https://medium.com/@rchang/a-beginners-guide-to-data-engineering-part-i-4227c5c457d7


《数据工程入门指南》（第2部分）：接着上面的文章，第2部分将介绍数据建模、数据分区、Airflow和ETL的最佳实践。


《数据工程入门指南》（第2部分）：

https://medium.com/@rchang/a-beginners-guide-to-data-engineering-part-ii-47c4e7cbda71


《数据工程入门指南》（第3部分）：这是入门指南系列中的最后一部分，本部分将介绍数据工程框架的概念。在整个系列中，作者不断将理论与Airbnb的实践相结合，从而写了一篇篇精妙绝伦的文章，而且还在持续更新中。


《数据工程入门指南》（第3部分）：

https://medium.com/@rchang/a-beginners-guide-to-data-engineering-the-series-finale-2cc92ff14b0

O'Reilly的免费数据工程电子书套件：

https://www.oreilly.com/data/free/

在Scratch平台上使用Python学习数据科学的完整教程：KunalJain的这篇文章涵盖了一系列可以用来开始学习和提升Python的资源，这是必读的资源。


在Scratch平台上使用Python学习数据科学的完整教程：

https://www.analyticsvidhya.com/blog/2016/01/complete-tutorial-learn-data-science-python-scratch-2/


使用Python的数据科学导论：这是Analytics Vidhya上最受欢迎的课程，涵盖了Python的基本知识。我们还额外介绍了核心统计概念和预测建模方法，以巩固你对python和数据科学基础的理解。


使用Python的数据科学导论：

https://trainings.analyticsvidhya.com/courses/coursev1:AnalyticsVidhya+DS101+2018T2/about


Codeacademy上学习Python课程：本课程不需要编程基础，绝对是从python的最基础开始，这是一个很好的起点。


Codeacademy上学习Python课程：

https://www.codecademy.com/learn/learn-python

Allen Downey的《思考Python》：全面深入地介绍了Python语言，非常适合新手，甚至非程序员。


Allen Downey的《思考Python》：

http://www.greenteapress.com/thinkpython/thinkpython.pdf


Python 3的非程序员教程：顾名思义，它是非IT背景和非技术背景新手们的完美起点，每章都有大量的示例来测试你的知识。


Python 3的非程序员教程：

https://upload.wikimedia.org/wikipedia/commons/1/1d/Non-Programmer%27s_Tutorial_for_Python_3.pdf

Linux服务器管理和安全：本课程是为那些想了解Linux如何在公司应用的人而设计的，课程内容分为4周（最后还有一个项目），详细介绍了这个主题中的所有基本内容。


Linux服务器管理和安全：

https://www.coursera.org/learn/linux-server-management-security


CS401-操作系统：和其他操作系统课程一样全面，这个课程包含9个部分，专门介绍操作系统的不同方面。主要介绍基于Unix的系统，尽管Windows也包括在内。


CS401-操作系统：

https://learn.saylor.org/course/cs401


Raspberry Pi平台和Raspberry Pi的python编程：这是一个炙手可热的编程方式，现在对这种编程人员的需求空前高涨。本课程旨在让你熟悉Raspberry Pi环境，并让你开始学习Raspberry PI上的python基本代码。


Raspberry Pi平台和Raspberry Pi的python编程：

https://www.coursera.org/learn/raspberry-pi-platform


mysql - already know:

免费学习SQL:

https://www.codecademy.com/learn/learn-sql


快速查找SQL命令的备忘录：一个非常有用的Github存储库，包含定期更新的SQL查询和示例。为了保证你在任何时候都可以快速查找SQL相关命令，请将为这个存储库加入收藏，作为日常参考。


快速查找SQL命令的备忘录：

https://github.com/enochtangg/quick-SQL-cheatsheet


MYSQL教程：MySQL创建于20多年前，至今仍是业界的热门选择。这个资源是一个基于文本的教程，易于理解。这个站点最酷的是，每个主题都附带实用示例的SQL脚本和屏幕截图。


MYSQL教程：

http://www.mysqltutorial.org/

学习Microsoft SQL Server：本教程从基础知识到更高的主题探讨SQL Sever的概念，并以代码和详细的屏幕截图的方式解释了概念。


学习Microsoft SQL Server：

https://www.tutorialspoint.com/ms_sql_server/


PostgreSQL教程：这是一个让人惊叫的详细指南，让你开始和熟悉PostgreSQL。本教程分为16个部分，因此你完全可以想象出该课程的覆盖面有多广。


PostgreSQL教程：

http://www.postgresqltutorial.com/


Oracle Live SQL：谁能比创建者更好地学习Oracle SQL数据库？这个平台设计得非常好提供了良好的终端用户体验。你可以在这个平台上查看脚本和教程，然后还可以在这里编码。哇，这太棒啦！


Oracle Live SQL：

https://livesql.oracle.com/apex/f?p=590:1000


mysql - already know

MongoDB来自MongoDB：

https://university.mongodb.com/courses/catalog


MongoDB简介：本课程将帮助你快速启动和运行MongoDB，并教你如何利用它进行数据分析。这是一个为期3周的短课程，但有大量的练习。当你完成的时候，会觉得自己就是一名专家了！


MongoDB简介：

https://www.coursera.org/learn/introduction-mongodb


学习Cassandra：如果你正在寻找一个优秀的、基于文本的、新手易于理解的Cassandra简介，这会是一个完美的资源。像Cassandra的架构、安装、关键操作等主题都会在这里有所介绍，本教程还提供了专门的章节来讲解CQL种可用的数据类型和集合、以及如何使用用户自定义的数据类型。


学习Cassandra：

https://www.tutorialspoint.com/cassandra/index.htm


Redis Enterprise：了解Redis的资源不多，但这一个站点就足够了。有多个课程和精心设计的视频，使人沉浸其中，乐趣无穷，而且它是免费的！


Redis Enterprise：

https://university.redislabs.com/


Google Bigtable：作为Google的产品，学习BigTable工作原理的资源稀缺得让人惊讶，我链接了一个包含大量谷歌云主题的课程，你可以向下滚动，选择BigTable（或BigQuery）。不过，我建议你仔细阅读整个课程，因为它提供了有关谷歌整个云产品如何工作的宝贵见解。


Google Bigtable：
https://www.coursera.org/learn/gcp-fundamentals
Google cloud platform class - registered


Couchbase：这里提供多种培训课程（向下滚动查看免费培训课程），从初学者到高级都有。如果Couchbase是你们所用的数据库，那么你将在这里了解有关它的所有信息。


Couchbase：

http://training.couchbase.com/store

