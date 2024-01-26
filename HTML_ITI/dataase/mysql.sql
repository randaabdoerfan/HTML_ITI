Server [localhost]:
Database [postgres]:
Port [5432]:
Username [postgres]:
Password for user postgres:
psql (15.4)
WARNING: Console code page (437) differs from Windows code page (1252)
         8-bit characters might not work correctly. See psql reference
         page "Notes for Windows users" for details.
Type "help" for help.

postgres=# \c lab1
You are now connected to database "lab1" as user "postgres".
lab1=# \c template1
You are now connected to database "template1" as user "postgres".
template1=# select * from students_to;
 std_id | track_id | phonenumber | gender | brith_date |  fname  | lname |
  contact_info         | id1
--------+----------+-------------+--------+------------+---------+-------+------
-----------------------+-----
      1 |        1 |  1287057624 | male   |            | erfan   | hany  | (0,15
street,ffff@gmail.com) |   1
      3 |        1 |  1254367624 | female |            | rana    | hany  | (0,15
street,ffff@gmail.com) |   1
      2 |        1 |  1254657624 | male   |            | erfan   | hany  | (0,15
street,ffff@gmail.com) |   1
      4 |        1 |  1287057624 | female |            | roka    | hany  | (0,15
street,ffff@gmail.com) |   1
      5 |        1 |  1287057624 | male   |            | ziko    | hany  | (0,15
street,ffff@gmail.com) |   1
      6 |        2 |    13566586 | male   | 1992-10-01 | kiko    | last  |
                       |   1
      7 |        3 |     6874454 | male   | 1992-10-01 | ronaldo | last  |
                       |   1
      8 |        4 |    44468848 | female | 1992-10-01 | star    | first |
                       |   1
(8 rows)


template1=# select * from track;
 track_id |                   name
----------+------------------------------------------
        1 | track1
        2 | track2
        3 | track3
        4 | track4
        5 | track5
(5 rows)


template1=# select * from subjects;
 sub_id |                   name                   | describtion | max_score | t
rack_id
--------+------------------------------------------+-------------+-----------+--
--------
      1 | ai                                       | tree of ai  |       100 |

      2 | html                                     | tree of ai  |       109 |

      3 | django                                   | tree of ai  |      1000 |

      4 | data analysis                            | tree of ai  |      1090 |

      5 | c#                                       | tree of ai  |       200 |

(5 rows)


template1=# select * from subjects;
 sub_id |                   name                   | describtion | max_score | t
rack_id
--------+------------------------------------------+-------------+-----------+--
--------
      1 | ai                                       | tree of ai  |       100 |

      2 | html                                     | tree of ai  |       109 |

      3 | django                                   | tree of ai  |      1000 |

      4 | data analysis                            | tree of ai  |      1090 |

      5 | c#                                       | tree of ai  |       200 |

(5 rows)


template1=# select * from students_to where gender='male';
 std_id | track_id | phonenumber | gender | brith_date |  fname  | lname |
  contact_info         | id1
--------+----------+-------------+--------+------------+---------+-------+------
-----------------------+-----
      1 |        1 |  1287057624 | male   |            | erfan   | hany  | (0,15
street,ffff@gmail.com) |   1
      2 |        1 |  1254657624 | male   |            | erfan   | hany  | (0,15
street,ffff@gmail.com) |   1
      5 |        1 |  1287057624 | male   |            | ziko    | hany  | (0,15
street,ffff@gmail.com) |   1
      6 |        2 |    13566586 | male   | 1992-10-01 | kiko    | last  |
                       |   1
      7 |        3 |     6874454 | male   | 1992-10-01 | ronaldo | last  |
                       |   1
(5 rows)


template1=# select count(gender='female') from students_to;
 count
-------
     8
(1 row)


template1=# select * from students_to where brith_date='1992-10-01';
 std_id | track_id | phonenumber | gender | brith_date |  fname  | lname | conta
ct_info | id1
--------+----------+-------------+--------+------------+---------+-------+------
--------+-----
      6 |        2 |    13566586 | male   | 1992-10-01 | kiko    | last  |
        |   1
      7 |        3 |     6874454 | male   | 1992-10-01 | ronaldo | last  |
        |   1
      8 |        4 |    44468848 | female | 1992-10-01 | star    | first |
        |   1
(3 rows)


template1=# select max_score,name from subjects;
 max_score |                   name
-----------+------------------------------------------
       100 | ai
       109 | html
      1000 | django
      1090 | data analysis
       200 | c#
(5 rows)


template1=# select max(max_score) from subjects;
 max
------
 1090
(1 row)


template1=# select * from students_to where fname like '%A';
 std_id | track_id | phonenumber | gender | brith_date | fname | lname | contact
_info | id1
--------+----------+-------------+--------+------------+-------+-------+--------
------+-----
(0 rows)


template1=# select  * from students_to where fname='mohammed';
 std_id | track_id | phonenumber | gender | brith_date | fname | lname | contact
_info | id1
--------+----------+-------------+--------+------------+-------+-------+--------
------+-----
(0 rows)


template1=# select count(gender) from students_to;
 count
-------
     8
(1 row)


template1=# select fname from students_to group by fname having count(fname)>2;
 fname
-------
(0 rows)


template1=# select students_to.fname,students_to.lname, students_to.std_id ,trac
k.name from students_to , track where track.track_id=students_to.std_id;
 fname | lname | std_id |                   name
-------+-------+--------+------------------------------------------
 erfan | hany  |      1 | track1
 erfan | hany  |      2 | track2
 rana  | hany  |      3 | track3
 roka  | hany  |      4 | track4
 ziko  | hany  |      5 | track5
(5 rows)


template1=# select students_to.fname,students_to.lname, students_to.std_id ,subj
ects.name from students_to join inner subjects on subjects.sub_id=students_to.std_id;
 fname | lname | std_id |                   name
-------+-------+--------+------------------------------------------
 erfan | hany  |      1 | ai
 rana  | hany  |      3 | django
 erfan | hany  |      2 | html
 roka  | hany  |      4 | data analysis
 ziko  | hany  |      5 | c#
(5 rows)


template1=#