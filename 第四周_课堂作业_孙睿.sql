CREATE TABLE TEACHER(
	TID INT NOT NULL,
	TNAME VARCHAR(25) NOT NULL,
	IS_INSTRUCTOR BIT,
	PRIMARY KEY(TID)
);

CREATE TABLE PROJECT(
	PID INT NOT NULL,
	PNAME VARCHAR(25) NOT NULL,
	TID INT,
	PRIMARY KEY(PID),
	FOREIGN KEY (TID) REFERENCES TEACHER(TID)
);

CREATE TABLE STUDENT(
	SID INT NOT NULL,
	AGE INT,
	SNAME VARCHAR(20),
	PID INT,
	PRIMARY KEY(SID),
	FOREIGN KEY (PID) REFERENCES PROJECT(PID)
);

CREATE TABLE COURSE(
	CID INT  NOT NULL,
	CNAME VARCHAR(25) NOT NULL,
	TID INT,
	PRIMARY KEY(CID),
	FOREIGN KEY (TID) REFERENCES TEACHER(TID)
);

CREATE TABLE COURSE_STUDENT(
	CSID INT NOT NULL,
	CID INT,
	SID INT,
	PRIMARY KEY(CSID),
	FOREIGN KEY (CID) REFERENCES COURSE(CID),
	FOREIGN KEY (SID) REFERENCES STUDENT(SID)
);

CREATE TABLE COURSE_TEACHER(
	CTID INT NOT NULL,
	CID INT,
	TID INT,
	PRIMARY KEY(CTID),
	FOREIGN KEY (CID) REFERENCES COURSE(CID),
	FOREIGN KEY (TID) REFERENCES TEACHER(TID)
);