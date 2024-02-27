CREATE TABLE IF NOT EXISTS `warns` (
  `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `uid` TEXT NOT NULL,
  `username` TEXT NOT NULL,
  `warncount` INTEGER NOT NULL DEFAULT 0,
  `date` TEXT NOT NULL,
  `reason` TEXT NOT NULL,
  `moderator` TEXT NOT NULL,
  `modname` TEXT NOT NULL
  );
  
--A

CREATE TABLE IF NOT EXISTS `levels` (
  `uid` TEXT NOT NULL,
  `username` TEXT NOT NULL,
  `level` INTEGER NOT NULL DEFAULT 0,
  `xp` INTEGER NOT NULL DEFAULT 0
  );

--A

CREATE TABLE IF NOT EXISTS `userjoins` (
  `joinid` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, 
  `uid` TEXT NOT NULL,
  `joindate` TEXT NOT NULL,
  `username` TEXT NOT NULL
  );

--A

CREATE TABLE IF NOT EXISTS `money` (
  `uid` TEXT NOT NULL,
  `username` TEXT NOT NULL,
  `cash` INTEGER NOT NULL DEFAULT 0
  );

--A

CREATE TABLE IF NOT EXISTS `tax` (
  `uid` TEXT NOT NULL,
  `username` TEXT NOT NULL,
  `amount` INTEGER NOT NULL DEFAULT 0
  );

--A

CREATE TABLE IF NOT EXISTS `inventory` (
  `itemid` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `uid` TEXT NOT NULL,
  `username` TEXT NOT NULL,
  `itemname` TEXT NOT NULL,
  `amount` INTEGER NOT NULL DEFAULT 1
  );

--A

CREATE TABLE IF NOT EXISTS `watcheds` (
  `uid` TEXT NOT NULL,
  `username` TEXT NOT NULL
  );

--A

CREATE TABLE IF NOT EXISTS `settings` (
  `uid` TEXT NOT NULL,
  `privatemoney` BOOLEAN DEFAULT FALSE,
  `privateinventory` BOOLEAN DEFAULT FALSE
  );

--A

CREATE TABLE IF NOT EXISTS `market` (
  `itemid` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `uid` TEXT NOT NULL,
  `seller` TEXT NOT NULL,
  `itemname` TEXT NOT NULL,
  `amount` INTEGER NOT NULL
  );

--A

CREATE TABLE IF NOT EXISTS `suspecteds` (
  `uid` TEXT NOT NULL,
  `reason` TEXT NOT NULL,
  `date` TEXT NOT NULL,
  `moderator` TEXT NOT NULL
  );

--A

CREATE TABLE IF NOT EXISTS `playlists` (
  `uid` TEXT NOT NULL,
  `username` TEXT NOT NULL,
  `path` TEXT NOT NULL
);

--A

CREATE TABLE IF NOT EXISTS `temprole` (
  `uid` TEXT NOT NULL,
  `username` TEXT NOT NULL,
  `expires` TEXT NOT NULL,
  `roleid` TEXT NOT NULL
)