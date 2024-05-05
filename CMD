

Setting environment for using XAMPP for Windows.
ICLABS@DESKTOP-S1EK0QI d:\caasis
# -u root p
'-u' is not recognized as an internal or external command,
operable program or batch file.

ICLABS@DESKTOP-S1EK0QI d:\caasis
# create database 13020210143;
'create' is not recognized as an internal or external command,
operable program or batch file.

ICLABS@DESKTOP-S1EK0QI d:\caasis
# mysql -u root p
ERROR 1049 (42000): Unknown database 'p'

ICLABS@DESKTOP-S1EK0QI d:\caasis
# mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 9
Server version: 10.4.32-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> create database 13020210143;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '13020210143' at line 1
MariaDB [(none)]> create database ian0143;
Query OK, 1 row affected (0.001 sec)

MariaDB [(none)]> use ian0143;
Database changed
MariaDB [ian0143]> show databases;
+--------------------+
| Database           |
+--------------------+
| ian0143            |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
6 rows in set (0.001 sec)

MariaDB [ian0143]> create table penjualan;
ERROR 1113 (42000): A table must have at least 1 column
MariaDB [ian0143]> create table penjualan (id
    -> ;'
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
    '> create table penjualan (id_bayar int (50) primary key,
    '> create table penjualan (id_bayar int (50) primary key,;'
    -> ;'
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ''
create table penjualan (id_bayar int (50) primary key,
create table penjual...' at line 1
    '> use ian0143;
    '> ';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ''
use ian0143;
'' at line 1
MariaDB [ian0143]> create table penjualan (id_bayar int(50) primary key,
    -> nama varchar(20),
    -> alamat varchar(20),
    -> nomor_telepon int (50)
    -> );
Query OK, 0 rows affected (0.151 sec)

MariaDB [ian0143]> show table penjualan;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'penjualan' at line 1
MariaDB [ian0143]> show tables penjualan;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'penjualan' at line 1
MariaDB [ian0143]> show tables;
+-------------------+
| Tables_in_ian0143 |
+-------------------+
| penjualan         |
+-------------------+
1 row in set (0.000 sec)

MariaDB [ian0143]> create table barang (id_barang int(50) primary key,
    -> namaBarang varchar(20),
    -> kodeBarang int(50),
    -> alamat varchar(20),
    -> nomor_telepon int (50)
    -> );
Query OK, 0 rows affected (0.168 sec)

MariaDB [ian0143]> show tables;
+-------------------+
| Tables_in_ian0143 |
+-------------------+
| barang            |
| penjualan         |
+-------------------+
2 rows in set (0.000 sec)

MariaDB [ian0143]> create table transaksi (id_transaksi int(50) primary key,
    -> kodeTransaksi int(50),
    -> namaTransaksi varchar(20),
    -> alamat varchar(20),
    -> nomor_telepon int(50)
    -> );
Query OK, 0 rows affected (0.121 sec)

MariaDB [ian0143]> show tables;
+-------------------+
| Tables_in_ian0143 |
+-------------------+
| barang            |
| penjualan         |
| transaksi         |
+-------------------+
3 rows in set (0.000 sec)

MariaDB [ian0143]> show table transaksi;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'transaksi' at line 1
MariaDB [ian0143]> show databases;
+--------------------+
| Database           |
+--------------------+
| ian0143            |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
6 rows in set (0.001 sec)

MariaDB [ian0143]> desc penjualan;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| id_bayar      | int(50)     | NO   | PRI | NULL    |       |
| nama          | varchar(20) | YES  |     | NULL    |       |
| alamat        | varchar(20) | YES  |     | NULL    |       |
| nomor_telepon | int(50)     | YES  |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
4 rows in set (0.024 sec)

MariaDB [ian0143]> desc barang;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| id_barang     | int(50)     | NO   | PRI | NULL    |       |
| namaBarang    | varchar(20) | YES  |     | NULL    |       |
| kodeBarang    | int(50)     | YES  |     | NULL    |       |
| alamat        | varchar(20) | YES  |     | NULL    |       |
| nomor_telepon | int(50)     | YES  |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
5 rows in set (0.010 sec)

MariaDB [ian0143]> desc transakssi;
ERROR 1146 (42S02): Table 'ian0143.transakssi' doesn't exist
MariaDB [ian0143]> desc transaksi;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| id_transaksi  | int(50)     | NO   | PRI | NULL    |       |
| kodeTransaksi | int(50)     | YES  |     | NULL    |       |
| namaTransaksi | varchar(20) | YES  |     | NULL    |       |
| alamat        | varchar(20) | YES  |     | NULL    |       |
| nomor_telepon | int(50)     | YES  |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
5 rows in set (0.010 sec)

MariaDB [ian0143]>
