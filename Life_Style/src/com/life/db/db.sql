DROP TABLE MEMBER;
DROP SEQUENCE MEMBER_SEQ;

CREATE SEQUENCE MEMBER_SEQ;
CREATE TABLE MEMBER(
	MEMBER_NO_SEQ NUMBER NOT NULL,
	MEMBER_ID VARCHAR2(100) PRIMARY KEY,
	MEMBER_PW VARCHAR2(100) NOT NULL,
	MEMBER_NAME VARCHAR2(100) NOT NULL,
	MEMBER_BIRTH VARCHAR2(100) NOT NULL,
	MEMBER_ADDR VARCHAR2(500) NOT NULL,
	MEMBER_PHONE VARCHAR2(500) NOT NULL,
	MEMBER_EMAIL VARCHAR2(500) NOT NULL,
	MEMBER_ENABLED VARCHAR2(2) CHECK(MEMBER_ENABLED IN ('Y','N')),
	MEMBER_GENDER VARCHAR2(10) NOT NULL,
	MEMBER_INTEREST VARCHAR2(500) NOT NULL,
	MEMBER_ROLE VARCHAR2(10) NOT NULL,
	MEMBER_POINT NUMBER NOT NULL
);

DROP TABLE FRIEND;
CREATE TABLE FRIEND(
	FRIEND_MY_ID VARCHAR2(100) PRIMARY KEY,
	FRIEND_FRIEND_ID01 VARCHAR2(100) ,
	FRIEND_FRIEND_ID02 VARCHAR2(100) ,
	FRIEND_FRIEND_ID03 VARCHAR2(100) ,
	FRIEND_FRIEND_ID04 VARCHAR2(100) ,
	FRIEND_FRIEND_ID05 VARCHAR2(100) ,
	FRIEND_FRIEND_ID06 VARCHAR2(100) ,
	FRIEND_FRIEND_ID07 VARCHAR2(100) ,
	FRIEND_FRIEND_ID08 VARCHAR2(100) ,
	FRIEND_FRIEND_ID09 VARCHAR2(100) ,
	FRIEND_FRIEND_ID10 VARCHAR2(100) 
);

DROP TABLE MESSAGE;
CREATE TABLE MESSAGE(
	MESSAGE_NO NUMBER NOT NULL,
	MESSAGE_CONTENT VARCHAR2(2000) NOT NULL,
	MESSAGE_SEND_ID VARCHAR2(100) NOT NULL,
	MESSAGE_RECEIVE_ID VARCHAR2(100) NOT NULL,
	MESSAGE_REGDATE DATE NOT NULL,
	MESSAGE_READ VARCHAR2(2) CHECK(MESSAGE_READ IN ('Y','N'))
);

DROP TABLE BOARD;
DROP SEQUENCE BOARD_SEQ;
DROP SEQUENCE BOARDGROUP_SEQ;

CREATE SEQUENCE BOARD_SEQ;
CREATE SEQUENCE BOARDGROUP_SEQ;
CREATE TABLE BOARD(
	BOARD_NO_SEQ NUMBER PRIMARY KEY,
	BOARD_GROUPNO_SEQ NUMBER NOT NULL,
	BOARD_GROUP_ORDER NUMBER NOT NULL,
	BOARD_TAB NUMBER NOT NULL,         
	BOARD_WRITER VARCHAR2(100) NOT NULL,
	BOARD_TITLE VARCHAR2(200) NOT NULL,
	BOARD_CONTENT VARCHAR2(2000) NOT NULL,
	BOARD_REGDATE DATE NOT NULL,
	BOARD_LOCATION VARCHAR2(200) NOT NULL,
	BOARD_VIEWNUM NUMBER NOT NULL,
	BOARD_TAG VARCHAR(100) NOT NULL,
	BOARD_GENDERLIMIT VARCHAR2(10) NOT NULL,
	BOARD_AGE_MIN NUMBER NOT NULL,
	BOARD_AGE_MAX NUMBER NOT NULL,
	BOARD_PEOPLELIMIT NUMBER NOT NULL,
	BOARD_TIMELIMIT DATE NOT NULL,
	BOARD_DEL VARCHAR(100) NOT NULL,
	BOARD_ATTEND_USER VARCHAR(1000)
);

DROP SEQUENCE COMMENT_SEQ;
DROP SEQUENCE COMMENTGROUP_SEQ;
DROP TABLE COMMENT_TABLE;

CREATE SEQUENCE COMMENT_SEQ;
CREATE SEQUENCE COMMENTGROUP_SEQ;
CREATE TABLE COMMENT_TABLE(
	COMMENT_NO_SEQ NUMBER PRIMARY KEY,
	COMMENT_GROUP_ORDER NUMBER NOT NULL,
	COMMENT_GROUPNO_SEQ NUMBER NOT NULL,
	COMMENT_BOARD_NO NUMBER NOT NULL,
	COMMENT_WRITER VARCHAR2(100) NOT NULL,
	COMMENT_CONTENT VARCHAR2(1000) NOT NULL,
	COMMENT_REGDATE DATE NOT NULL
);

DROP SEQUENCE SCHEDULE_SEQ;
DROP TABLE SCHEDULE
CREATE SEQUENCE SCHEDULE_SEQ;
CREATE TABLE SCHEDULE(
	SCHEDULE_NO NUMBER PRIMARY KEY,
	SCHEDULE_ID VARCHAR2(100) NOT NULL,
	SCHEDULE_TITLE VARCHAR2(200) NOT NULL,
	SCHEDULE_CONTENT VARCHAR2(2000)NOT NULL,
	SCHEDULE_DATE VARCHAR2(12) NOT NULL,
	SCHEDULE_REGDATE DATE NOT NULL,
	SCHEDULE_BOARD_NO NUMBER
);


DROP TABLE ACCOUNT;
CREATE TABLE ACCOUNT(
    ACCOUNT_ID VARCHAR2(100) NOT NULL,
	ACCOUNT_IO_NO NUMBER PRIMARY KEY,
	ACCOUNT_DATE DATE NOT NULL,
	ACCOUNT_IN_CASH NUMBER,
	ACCOUNT_OUT_CASH NUMBER,
	ACCOUNT_IO_CONTENT VARCHAR2(100) NOT NULL,
	ACCOUNT_TOTALCASH NUMBER NOT NULL
);

DROP TABLE HEALTH;
CREATE TABLE HEALTH(
	HEALTH_ID VARCHAR2(100) NOT NULL,
	HEALTH_WEIGHT NUMBER NOT NULL,
	HEALTH_FOOD VARCHAR2(200) NOT NULL,
	HEALTH_KCAL NUMBER NOT NULL,
	HEALTH_AMOUNT VARCHAR2(500) NOT NULL,
	HEALTH_REGDATE DATE NOT NULL
);

DROP TABLE STATISTICS;
CREATE TABLE STATISTICS(
	STATISTICS_ID VARCHAR2(100) NOT NULL,
	STATISTICS_CALORIE NUMBER ,
	STATISTICS_SPEND NUMBER ,
	STATISTICS_DATE DATE NOT NULL,
	STATISTICS_DAYS VARCHAR2(10) NOT NULL
);

DROP SEQUENCE MAP_SEQ;
DROP TABLE MAP;
CREATE SEQUENCE MAP_SEQ;
CREATE TABLE MAP(
	MAP_NO_SEQ NUMBER PRIMARY KEY,
	MAP_PLACE VARCHAR2(300) NOT NULL,
	MAP_LATITUDE NUMBER NOT NULL,
	MAP_LONGITUDE NUMBER NOT NULL
);

DROP SEQUENCE WEATHER_SEQ;
DROP TABLE WEATHER;
CREATE SEQUENCE WEATHER_SEQ;
CREATE TABLE WEATHER(
	WEATHER_BOARD_NO NUMBER PRIMARY KEY,
	WEATHER_REH VARCHAR2(20) NOT NULL,
	WEATHER_T3H VARCHAR2(20) NOT NULL,
	WEATHER_TMN VARCHAR2(20) NOT NULL,
	WEATHER_TMX VARCHAR2(20) NOT NULL,
	WEATHER_SKY VARCHAR2(100) NOT NULL	
);


