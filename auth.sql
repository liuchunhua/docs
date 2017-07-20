/*
* 认证表设计
* 2017-07-20 09:35
* liuchunhua-2000@163.com
*/

-- User Login
CREATE TABLE SSO.LOGIN_USER(
ID SERIAL PRIMARY KEY,
USERNAME VARCHAR(32) UNIQUE,
PASSWORD VARCHAR(256),
LASTLOGIN TIMESTAMP,
IS_LOCKED BOOLEAN,
LOCKEDCODE SMALLINT,
AUTHTYPE SMALLINT,
gmt_create TIMESTAMP,
gmt_modified TIMESTAMP
);

-- User Profile
CREATE TABLE USER_PROFILE(
ID INTEGER PRIMARY KEY,
NAME VARCHAR(32),
ALIASNAME VARCHAR(32) UNIQUE,
EMAIL VARCHAR(64) UNIQUE,
TEL VARCHAR(32),
MOBILE_TEL VARCHAR(32),
SEX CHAR(1),
BORNDATE DATE,
GMT_CREATE TIMESTAMP,
GMT_MODIFIED TIMESTAMP
);