CREATE TABLE usertbl_v1 (
  userNum int NOT NULL AUTO_INCREMENT,
  userId varchar(20) NOT NULL,
  userPw varchar(20) NOT NULL,
  userName varchar(20) NOT NULL,
  userTel varchar(20) NOT NULL,
  userRegDt date NOT NULL,
  PRIMARY KEY (userNum)
);

CREATE TABLE restTbl_v1(
	restNum int NOT NULL AUTO_INCREMENT,
    restType varchar(10) NOT NULL, 
    restCode varchar(20) NOT NULL,
    restName varchar(20) NOT NULL,
    menuName varchar(20) NOT NULL,
    menuPrice int(20) NOT NULL,
    restLoca varchar(30) NOT NULL,
    restDis float(7,2) NOT NULL,
    primary key(restNum, restCode)
);

CREATE TABLE userLikeTbl_v1(
	likeNum int(10) NOT NULL AUTO_INCREMENT,
    userNum int,
	restCode varchar(20),
    primary key(likeNum),
    FOREIGN KEY(userNum) REFERENCES usertbl_v1(userNum) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY(restCode) REFERENCES resttbl_v1(restCode) ON UPDATE CASCADE ON DELETE CASCADE 
);

ALTER TABLE resttbl_v1
ADD INDEX idx_restCode (restCode);