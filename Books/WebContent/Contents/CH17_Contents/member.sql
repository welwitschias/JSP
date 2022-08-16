drop table member;

CREATE TABLE IF NOT EXISTS memberjsp(
   id VARCHAR(20) NOT NULL,
   passwd  VARCHAR(20),
   name VARCHAR(30),    
   PRIMARY KEY (id)
);
INSERT INTO memberjsp VALUES('1', '1234', '홍길순');
INSERT INTO memberjsp VALUES('2', '1235', '홍길동');


select * from member;
