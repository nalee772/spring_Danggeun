DROP TABLE board;
DROP TABLE categori;
DROP TABLE chat;
DROP TABLE comments;
DROP TABLE lastsearch;
DROP TABLE member;
DROP TABLE picks;
DROP TABLE post;
DROP TABLE search;
DROP TABLE tradestatus;

/* �Խ��� */
CREATE TABLE BOARD (
   BID NUMBER(2) NOT NULL, /* �Խ��Ǳ��� */
   BNAME VARCHAR2(60) /* �Խ����̸� */
);

CREATE UNIQUE INDEX PK_BOARD
   ON BOARD (
      BID ASC
   );

ALTER TABLE BOARD
   ADD
      CONSTRAINT PK_BOARD
      PRIMARY KEY (
         BID
      );

COMMENT ON TABLE BOARD IS '�Խ���';

COMMENT ON COLUMN BOARD.BID IS '�Խ��Ǳ���';

COMMENT ON COLUMN BOARD.BNAME IS '�Խ����̸�';

/* ī�װ� */
CREATE TABLE CATEGORI (
   CTCODE NUMBER(2) NOT NULL, /* ī�װ��ڵ� */
   DTKINDS VARCHAR2(300) /* ī�װ����� */
);

CREATE UNIQUE INDEX PK_CATEGORI
   ON CATEGORI (
      CTCODE ASC
   );

ALTER TABLE CATEGORI
   ADD
      CONSTRAINT PK_CATEGORI
      PRIMARY KEY (
         CTCODE
      );

COMMENT ON TABLE CATEGORI IS 'ī�װ�';

COMMENT ON COLUMN CATEGORI.CTCODE IS 'ī�װ��ڵ�';

COMMENT ON COLUMN CATEGORI.DTKINDS IS 'ī�װ�����';

/* �ǽð�ä�� */
CREATE TABLE CHAT (
   CHNUM NUMBER(10) NOT NULL, /* �޼�����ȣ */
   MID VARCHAR2(50) NOT NULL, /* ȸ�����̵� */
   CHCONTENT VARCHAR2(900), /* ä�ó��� */
   CHDATE DATE /* ä���Ͻ� */
);

CREATE UNIQUE INDEX PK_CHAT
   ON CHAT (
      CHNUM ASC,
      MID ASC
   );

ALTER TABLE CHAT
   ADD
      CONSTRAINT PK_CHAT
      PRIMARY KEY (
         CHNUM,
         MID
      );

COMMENT ON TABLE CHAT IS '�ǽð�ä��';

COMMENT ON COLUMN CHAT.CHNUM IS '�޼�����ȣ';

COMMENT ON COLUMN CHAT.MID IS 'ȸ�����̵�';

COMMENT ON COLUMN CHAT.CHCONTENT IS 'ä�ó���';

COMMENT ON COLUMN CHAT.CHDATE IS 'ä���Ͻ�';

/* ��� */
CREATE TABLE COMMENTS (
   BID NUMBER(2) NOT NULL, /* �Խ��Ǳ��� */
   PNUM NUMBER(10) NOT NULL, /* �Խñ۹�ȣ */
   CNUM NUMBER(3) NOT NULL, /* ��۹�ȣ */
   CCMNT VARCHAR2(300), /* ��۳��� */
   CDATE DATE, /* ����ۼ��Ͻ� */
   CLEVEL NUMBER(2) /* ��۵�� */
);

CREATE UNIQUE INDEX PK_COMMENTS
   ON COMMENTS (
      BID ASC,
      PNUM ASC,
      CNUM ASC
   );

ALTER TABLE COMMENTS
   ADD
      CONSTRAINT PK_COMMENTS
      PRIMARY KEY (
         BID,
         PNUM,
         CNUM
      );

COMMENT ON TABLE COMMENTS IS '���';

COMMENT ON COLUMN COMMENTS.BID IS '�Խ��Ǳ���';

COMMENT ON COLUMN COMMENTS.PNUM IS '�Խñ۹�ȣ';

COMMENT ON COLUMN COMMENTS.CNUM IS '��۹�ȣ';

COMMENT ON COLUMN COMMENTS.CCMNT IS '��۳���';

COMMENT ON COLUMN COMMENTS.CDATE IS '����ۼ��Ͻ�';

COMMENT ON COLUMN COMMENTS.CLEVEL IS '��۵��';

/* �ֱٰ˻��� */
CREATE TABLE LASTSEARCH (
   MID VARCHAR2(50) NOT NULL, /* ȸ�����̵� */
   LSEARCH VARCHAR2(500) /* �ֱٰ˻��� */
);

CREATE UNIQUE INDEX PK_LASTSEARCH
   ON LASTSEARCH (
      MID ASC
   );

ALTER TABLE LASTSEARCH
   ADD
      CONSTRAINT PK_LASTSEARCH
      PRIMARY KEY (
         MID
      );

COMMENT ON TABLE LASTSEARCH IS '�ֱٰ˻���';

COMMENT ON COLUMN LASTSEARCH.MID IS 'ȸ�����̵�';

COMMENT ON COLUMN LASTSEARCH.LSEARCH IS '�ֱٰ˻���';

/* ȸ������ */
CREATE TABLE MEMBER (
   MID VARCHAR2(50) NOT NULL, /* ȸ�����̵� */
   MNICK VARCHAR2(50) NOT NULL, /* ȸ���г��� */
   MNAME VARCHAR2(30) NOT NULL, /* ȸ���̸� */
   MPW VARCHAR2(50), /* ȸ����й�ȣ */
   MADDR VARCHAR2(300), /* ȸ���ּ� */
   MADDR2 VARCHAR2(300), /* ȸ�����ּ� */
   MTEL VARCHAR2(30), /* ȸ���޴�����ȣ */
   MLEVEL NUMBER(2), /* ȸ������ */
   MSWEET NUMBER(3, 1), /* ȸ���絵 */
   MDATE DATE, /* ȸ���������� */
   MMAIL VARCHAR2(50), /* ������ϼ��Žŵ��ǿ��� */
   MSMS VARCHAR2(50) /* �����ڼ��Žŵ��ǿ��� */
);

CREATE UNIQUE INDEX PK_MEMBER
   ON MEMBER (
      MID ASC
   );

ALTER TABLE MEMBER
   ADD
      CONSTRAINT PK_MEMBER
      PRIMARY KEY (
         MID
      );

COMMENT ON TABLE MEMBER IS 'ȸ������';

COMMENT ON COLUMN MEMBER.MID IS 'ȸ�����̵�';

COMMENT ON COLUMN MEMBER.MNICK IS 'ȸ���г���';

COMMENT ON COLUMN MEMBER.MNAME IS 'ȸ���̸�';

COMMENT ON COLUMN MEMBER.MPW IS 'ȸ����й�ȣ';

COMMENT ON COLUMN MEMBER.MADDR IS 'ȸ���ּ�';

COMMENT ON COLUMN MEMBER.MADDR2 IS 'ȸ�����ּ�';

COMMENT ON COLUMN MEMBER.MTEL IS 'ȸ���޴�����ȣ';

COMMENT ON COLUMN MEMBER.MLEVEL IS 'ȸ������';

COMMENT ON COLUMN MEMBER.MSWEET IS 'ȸ���絵';

COMMENT ON COLUMN MEMBER.MDATE IS 'ȸ����������';

COMMENT ON COLUMN MEMBER.MMAIL IS '������ϼ��Žŵ��ǿ���';

COMMENT ON COLUMN MEMBER.MSMS IS '�����ڼ��Žŵ��ǿ���';

/* ���ɸ�� */
CREATE TABLE PICKS (
   BID NUMBER(2) NOT NULL, /* �Խ��Ǳ��� */
   PNUM NUMBER(10) NOT NULL, /* �Խñ۹�ȣ */
   MID VARCHAR2(50) NOT NULL /* ȸ�����̵� */
);

CREATE UNIQUE INDEX PK_PICKS
   ON PICKS (
      BID ASC,
      PNUM ASC,
      MID ASC
   );

ALTER TABLE PICKS
   ADD
      CONSTRAINT PK_PICKS
      PRIMARY KEY (
         BID,
         PNUM,
         MID
      );

COMMENT ON TABLE PICKS IS '���ɸ��';

COMMENT ON COLUMN PICKS.BID IS '�Խ��Ǳ���';

COMMENT ON COLUMN PICKS.PNUM IS '�Խñ۹�ȣ';

COMMENT ON COLUMN PICKS.MID IS 'ȸ�����̵�';

/* �Խñ� */
CREATE TABLE POST (
   BID NUMBER(2) NOT NULL, /* �Խ��Ǳ��� */
   PNUM NUMBER(10) NOT NULL, /* �Խñ۹�ȣ */
   MID VARCHAR2(50), /* ȸ�����̵� */
   CTCODE NUMBER(2), /* ī�װ��ڵ� */
   PSTATUS NUMBER(2), /* �ŷ������ڵ� */
   PTITLE VARCHAR2(150), /* �Խñ����� */
   PPRICE NUMBER(8), /* ��ǰ���� */
   PDATE DATE, /* �Խñ۵������ */
   PCONTENT VARCHAR2(900), /* �Խñ۳��� */
   PHIT NUMBER(10), /* �Խñ���ȸ�� */
   PPICKS NUMBER(5), /* ���ɰ��� */
   PIMG1 VARCHAR2(500), /* �Խñ��̹���1 */
   PIMG2 VARCHAR2(500), /* �Խñ��̹���2 */
   PIMG3 VARCHAR2(500), /* �Խñ��̹���3 */
   PIMG4 VARCHAR2(500), /* �Խñ��̹���4 */
   PIMG5 VARCHAR2(500) /* �Խñ��̹���5 */
);

CREATE UNIQUE INDEX PK_POST
   ON POST (
      BID ASC,
      PNUM ASC
   );

ALTER TABLE POST
   ADD
      CONSTRAINT PK_POST
      PRIMARY KEY (
         BID,
         PNUM
      );

COMMENT ON TABLE POST IS '�Խñ�';

COMMENT ON COLUMN POST.BID IS '�Խ��Ǳ���';

COMMENT ON COLUMN POST.PNUM IS '�Խñ۹�ȣ';

COMMENT ON COLUMN POST.MID IS 'ȸ�����̵�';

COMMENT ON COLUMN POST.CTCODE IS 'ī�װ��ڵ�';

COMMENT ON COLUMN POST.PSTATUS IS '�ŷ������ڵ�';

COMMENT ON COLUMN POST.PTITLE IS '�Խñ�����';

COMMENT ON COLUMN POST.PPRICE IS '��ǰ����';

COMMENT ON COLUMN POST.PDATE IS '�Խñ۵������';

COMMENT ON COLUMN POST.PCONTENT IS '�Խñ۳���';

COMMENT ON COLUMN POST.PHIT IS '�Խñ���ȸ��';

COMMENT ON COLUMN POST.PPICKS IS '���ɰ���';

COMMENT ON COLUMN POST.PIMG1 IS '�Խñ��̹���1';

COMMENT ON COLUMN POST.PIMG2 IS '�Խñ��̹���2';

COMMENT ON COLUMN POST.PIMG3 IS '�Խñ��̹���3';

COMMENT ON COLUMN POST.PIMG4 IS '�Խñ��̹���4';

COMMENT ON COLUMN POST.PIMG5 IS '�Խñ��̹���5';

/* �˻�����õ */
CREATE TABLE SEARCH (
   SWORD VARCHAR2(150) NOT NULL, /* �˻��� */
   SCNT NUMBER(10) /* �˻�Ƚ�� */
);

CREATE UNIQUE INDEX PK_SEARCH
   ON SEARCH (
      SWORD ASC
   );

ALTER TABLE SEARCH
   ADD
      CONSTRAINT PK_SEARCH
      PRIMARY KEY (
         SWORD
      );

COMMENT ON TABLE SEARCH IS '�˻�����õ';

COMMENT ON COLUMN SEARCH.SWORD IS '�˻���';

COMMENT ON COLUMN SEARCH.SCNT IS '�˻�Ƚ��';

/* �ŷ����� */
CREATE TABLE TRADESTATUS (
   BID NUMBER(2) NOT NULL, /* �Խ��Ǳ��� */
   PNUM NUMBER(10) NOT NULL, /* �Խñ۹�ȣ */
   PID VARCHAR2(50), /* �ۼ��ھ��̵� */
   TID VARCHAR2(50), /* �ŷ��ھ��̵� */
   TDATE DATE /* �ŷ��Ͻ� */
);

CREATE UNIQUE INDEX PK_TRADESTATUS
   ON TRADESTATUS (
      BID ASC,
      PNUM ASC
   );

ALTER TABLE TRADESTATUS
   ADD
      CONSTRAINT PK_TRADESTATUS
      PRIMARY KEY (
         BID,
         PNUM
      );

COMMENT ON TABLE TRADESTATUS IS '�ŷ�����';

COMMENT ON COLUMN TRADESTATUS.BID IS '�Խ��Ǳ���';

COMMENT ON COLUMN TRADESTATUS.PNUM IS '�Խñ۹�ȣ';

COMMENT ON COLUMN TRADESTATUS.PID IS '�ۼ��ھ��̵�';

COMMENT ON COLUMN TRADESTATUS.TID IS '�ŷ��ھ��̵�';

COMMENT ON COLUMN TRADESTATUS.TDATE IS '�ŷ��Ͻ�';

ALTER TABLE CHAT
   ADD
      CONSTRAINT FK_MEMBER_TO_CHAT
      FOREIGN KEY (
         MID
      )
      REFERENCES MEMBER (
         MID
      );

ALTER TABLE COMMENTS
   ADD
      CONSTRAINT FK_POST_TO_COMMENTS
      FOREIGN KEY (
         BID,
         PNUM
      )
      REFERENCES POST (
         BID,
         PNUM
      );

ALTER TABLE LASTSEARCH
   ADD
      CONSTRAINT FK_MEMBER_TO_LASTSEARCH
      FOREIGN KEY (
         MID
      )
      REFERENCES MEMBER (
         MID
      );

ALTER TABLE PICKS
   ADD
      CONSTRAINT FK_POST_TO_PICKS
      FOREIGN KEY (
         BID,
         PNUM
      )
      REFERENCES POST (
         BID,
         PNUM
      );

ALTER TABLE PICKS
   ADD
      CONSTRAINT FK_MEMBER_TO_PICKS
      FOREIGN KEY (
         MID
      )
      REFERENCES MEMBER (
         MID
      );

ALTER TABLE POST
   ADD
      CONSTRAINT FK_BOARD_TO_POST
      FOREIGN KEY (
         BID
      )
      REFERENCES BOARD (
         BID
      );

ALTER TABLE POST
   ADD
      CONSTRAINT FK_CATEGORI_TO_POST
      FOREIGN KEY (
         CTCODE
      )
      REFERENCES CATEGORI (
         CTCODE
      );

ALTER TABLE POST
   ADD
      CONSTRAINT FK_MEMBER_TO_POST
      FOREIGN KEY (
         MID
      )
      REFERENCES MEMBER (
         MID
      );

ALTER TABLE TRADESTATUS
   ADD
      CONSTRAINT FK_POST_TO_TRADESTATUS
      FOREIGN KEY (
         BID,
         PNUM
      )
      REFERENCES POST (
         BID,
         PNUM
      );
      
insert into member values('way990@naver.com' ,'way999', '���º�', 'dksxoqls1@#', '��⵵ ������ �Ǽ��� ���', '0000����', '01092214128', 1, 0, sysdate, 'on', 'off');
insert into member values('way99991@gmail.com' ,'way900', '�ڹ�', 'qwe!@#123', '��⵵ ������ �Ǽ��� ���', '', '01012345678', 1, 0, sysdate, 'off', 'off');
insert into member values('way99992@gmail.com' ,'way000', '������', '1q2w3e!@#', '��⵵ �����', '', '01023456789', 1, 0, sysdate, 'on', 'on');
insert into member values('way99993@gmail.com' ,'way143', 'ȫ�浿', 'qweasd!@#', '��⵵ ȭ����', '0000����', '01000000000', 1, 0, sysdate, 'on', 'on');
insert into member values('way000990@gmail.com' ,'�����ٶ�', '123123123', 'qazwsx1@#', '��⵵ �ϳ���', '0000����', '01099999999', 1, 0, sysdate, 'on', 'on');
insert into member values('lee111@gmail.com' ,'������', '����lee', 'qazwsx1@#', '����Ư���� ������', '0000����', '01088888888', 1, 0, sysdate, 'on', 'on');
insert into member values('jeong01@gmail.com' ,'������', '����jeong', '1q2w3e!@#', '����Ư���� ���Ǳ�', '0000����', '01088888888', 1, 0, sysdate, 'on', 'on');
insert into member values('jong01@gmail.com' ,'����ȯ', '��ȯlee', '1q2w3e!@#', '��⵵ �����', '0000����', '01088888888', 1, 0, sysdate, 'on', 'on');
insert into member values('june03@gmail.com' ,'����ȣ', '��ȣlee', '1q2w3e!@#', '��⵵ ������ ���뱸 ������', '0000����', '01088888888', 1, 0, sysdate, 'on', 'on');
insert into member values('bae01@gmail.com' ,'������', '����jeong', '1q2w3e!@#', '��⵵ ������ �ȴޱ� �ΰ赿', '0000����', '01088888888', 1, 0, sysdate, 'on', 'on');
insert into member values('user@naver.com' ,'����', 'ȫ�浿', 'user', '��⵵ ������ �Ǽ��� ���', '0000����', '01092214128', 1, 0, sysdate, 'on', 'off');
insert into member values('carrot@naver.com' ,'���', 'ȫ���', 'carrot', '��⵵ ������ �Ǽ��� ���', '0000����', '01092214128', 1, 0, sysdate, 'on', 'off');
insert into member values('bunny@naver.com' ,'�ٴ�', '��ٴ�', 'bunny', '��⵵ ������ �Ǽ��� ���', '0000����', '01092214128', 1, 0, sysdate, 'on', 'off');
insert into member values('tokki@naver.com' ,'�䳢', '���䳢', 'tokki', '��⵵ ������ �Ǽ��� ���', '0000����', '01092214128', 1, 0, sysdate, 'on', 'on');
insert into member values('admin','������','������','admin','�ּ�','����','����ȣ',0,0,sysdate,'on','on');


INSERT INTO board VALUES(00, '��������');
INSERT INTO board VALUES(01, '�ǸŰԽ���');
INSERT INTO board VALUES(02, '���ŰԽ���');
INSERT INTO board VALUES(03, '�����Խ���');
INSERT INTO board VALUES(04, '�ҷ��ŷ��Խ���');

INSERT INTO categori VALUES(00, '��������');
INSERT INTO categori VALUES(99, '�ҷ��ŷ�');

INSERT INTO categori VALUES(01, '������/����');
INSERT INTO categori VALUES(02, '����/���׸���');
INSERT INTO categori VALUES(03, '���Ƶ�/���Ƶ���');
INSERT INTO categori VALUES(04, '��Ȱ/������ǰ');
INSERT INTO categori VALUES(05, '������/����');
INSERT INTO categori VALUES(06, '������ȭ');
INSERT INTO categori VALUES(07, '�����Ƿ�');
INSERT INTO categori VALUES(08, '�����м�/��ȭ');
INSERT INTO categori VALUES(09, '����/���');
INSERT INTO categori VALUES(10, '��Ƽ/�̿�');
INSERT INTO categori VALUES(11, '�ݷ�������ǰ');
INSERT INTO categori VALUES(12, '����/Ƽ��/����');
INSERT INTO categori VALUES(13, '��Ÿ�߰�ǰ');




--pstatus 0.�������� 1.�ŷ����� 2.�ŷ��� 3.�ŷ��Ϸ� 9.�ҷ��ŷ�

--�Ǹ� data
INSERT INTO post VALUES(01,1,'tokki@naver.com' ,01,1,'������ �˴ϴ�',800000,sysdate,'������ ���ŷ� �˴ϴ� --content',0,0,null,null,null,null,null);
INSERT INTO post VALUES(01,2,'user@naver.com',04,1,'�� �˴ϴ�',10000,sysdate,'�̽��� �� �˴ϴ�',0,0,null,null,null,null,null);
INSERT INTO post VALUES(01,3,'carrot@naver.com',12,1,'å �˴ϴ�',5000,sysdate,'å �˴ϴ�',0,0,null,null,null,null,null);
INSERT INTO post VALUES(01,4,'bunny@naver.com',07,1,'�� �˴ϴ�',20000,sysdate,'�� ���ŷ� �˴ϴ�',0,0,null,null,null,null,null);
INSERT INTO post VALUES(01,5,'lee111@gmail.com',11,1,'����� ��� �˴ϴ�',20000,sysdate,'����� ��� �˴ϴ�',0,0,null,null,null,null,null);
INSERT INTO post VALUES(01,6,'lee111@gmail.com',02,1,'���� �˴ϴ�',20000,sysdate,'���� �˴ϴ�',0,0,null,null,null,null,null);
INSERT INTO post VALUES(01,7,'lee111@gmail.com',13,1,'�ƹ��ų� �˴ϴ�',99999,sysdate,'�ƹ��ų� �˴ϴ�',0,0,null,null,null,null,null);
INSERT INTO post VALUES(01,8,'lee111@gmail.com',08,1,'���� �˴ϴ�',10000,sysdate,'���� �˴ϴ�',0,0,null,null,null,null,null);
INSERT INTO post VALUES(01,9,'lee111@gmail.com',12,1,'Ƽ�� �˴ϴ�',59999,sysdate,'Ƽ�� �˴ϴ�',0,0,null,null,null,null,null);
INSERT INTO post VALUES(01,10,'lee111@gmail.com',06,1,'����� �˴ϴ�',6000,sysdate,'���� �˴ϴ�',0,0,null,null,null,null,null);
INSERT INTO post VALUES(01,11,'lee111@gmail.com',06,1,'���� �˴ϴ�',85000,sysdate,'���� �˴ϴ�',0,0,null,null,null,null,null);


--���ŰԽ��� Data
INSERT INTO post VALUES(02, 1, 'bunny@naver.com', 01, 1,'���̽����',300000,sysdate,'����ǰ ��ϴ�.',0,0,'��ٱ⺻�̹���.png',null,null,null,null);
INSERT INTO post VALUES(02, 2, 'carrot@naver.com', 03, 1,'���̺���׼Ҹ� ����������',50000,sysdate,'�н� 5�������� ��Ʈ ��ϴ�~',0,0,'Ȯ����⺻�̹���.png',null,null,null,null);
INSERT INTO post VALUES(02, 3, 'user@naver.com', 01, 1,'��ϴ�.���������� �̰���or���������� ��ϴ�.',190000,sysdate,'����������..�̰��� �Ǵ� ���� ���������� ���� ���մϴ�. ���ͳ�.���ο����� �����ϰ� ���ſ��ؼ� ��� ��Ź�մϴ�...',0,0,'��ٱ⺻�̹���.png',null,null,null,null);
INSERT INTO post VALUES(02, 4, 'tokki@naver.com', 04, 1,'(��ϴ�) ��Ÿ���� �Ƹ޸�ī�� ����Ƽ�� ��ϴ�~',3000,sysdate,'���̽� �Ƹ޸�ī�� ������� ���� 3000���� ���� �� ��Կ�~ ������ 1�� ������ �־ ���^^!���� �� �ּ���!',0,0,'Ȯ����⺻�̹���.png',null,null,null,null);
INSERT INTO post VALUES(02, 5, 'tokki@naver.com', 01, 1,'��ϴ�)PS4 ����Ʈ�� 2020 ��ϴ�',30000,sysdate,'�ý� ����Ʈ�� 2020 ��ϴ�',0,0,'��ٱ⺻�̹���.png',null,null,null,null);
INSERT INTO post VALUES(02, 6, 'tokki@naver.com', 01, 2,'������� ��ϴ�',300000,sysdate,'���� ��, ���콺 �����ϴ� ���ۿ�. ���ſ��� �������ϴ�. ���� �۵��ϴ� �� ��ϴ�.',0,0,'Ȯ����⺻�̹���.png',null,null,null,null);
INSERT INTO post VALUES(02, 7, 'user@naver.com', 03, 1,'����3-4���� �ϰ���ϴ�~~',null,sysdate,'���ƿ� 3-4�� �ϰ� ���;��^^ �׳��ּŵ� ������ �ųʼ��ϰٽ��ϴ�',0,0,'��ٱ⺻�̹���.png',null,null,null,null);
INSERT INTO post VALUES(02, 8, 'bunny@naver.com', 06, 1,'�������ִ���������ϴ�)īī�� kakao ȸ�� ������ϴ�',null,sysdate,'ĳ���;ƴϰ� kakao���ִ�������ϴ�',0,0,'Ȯ����⺻�̹���.png',null,null,null,null);
INSERT INTO post VALUES(02, 9, 'user@naver.com', 01, 1,'�����潽1 �̰��� ��ϴ�',90000,sysdate,'1���� �̰��� ���ؿ�',0,0,'��ٱ⺻�̹���.png',null,null,null,null);
INSERT INTO post VALUES(02, 10, 'bunny@naver.com', 03, 1,'��ֿ��� �ﱹ���� �ﱹ��� ����� 80�� �Ǹ��մϴ�',20000,sysdate,'-��ǰ�� : ��ֿ��� �ﱹ���� �ﱹ��� �����80�� -�ǸŰ��� : 20,000�� ������ �ĺ� ���� ������ å�Դϴ� å�̶� ��Ƽ ���ŷ��� �����ϸ�, ��ǰ�� ��ƽ��ϴ�',0,0,'Ȯ����⺻�̹���.png',null,null,null,null);
INSERT INTO post VALUES(02, 11, 'bunny@naver.com', 01, 1,'�������̽����',300000,sysdate,'����ǰ ��ϴ�.',0,0,'��ٱ⺻�̹���.png',null,null,null,null);

--���� data 
INSERT INTO post VALUES(03,1,'tokki@naver.com' ,01,1,'���������̽� ���� �����մϴ�',0,sysdate,'���������̽� ���� �����մϴ�',0,0,null,null,null,null,null);
INSERT INTO post VALUES(03,2,'user@naver.com',04,1,'�� ���� �����մϴ�',0,sysdate,'�̽��� �� ���� �����մϴ�',0,0,null,null,null,null,null);
INSERT INTO post VALUES(03,3,'carrot@naver.com',12,1,'å ���� �����մϴ�',0,sysdate,'å ���� �����մϴ�',0,0,null,null,null,null,null);
INSERT INTO post VALUES(03,4,'bunny@naver.com',07,1,'�� ���� �����մϴ�',0,sysdate,'�� ���ŷ� ���� �����մϴ�',0,0,null,null,null,null,null);
INSERT INTO post VALUES(03,5,'lee111@gmail.com',11,1,'����� ��� ���� �����մϴ�',0,sysdate,'����� ��� ���� �����մϴ�',0,0,null,null,null,null,null);
INSERT INTO post VALUES(03,6,'lee111@gmail.com',02,1,'���� ���� �����մϴ�',0,sysdate,'���� ���� �����մϴ�',0,0,null,null,null,null,null);
INSERT INTO post VALUES(03,7,'lee111@gmail.com',13,1,'�ƹ��ų� ���� �����մϴ�',0,sysdate,'�ƹ��ų� ���� �����մϴ�',0,0,null,null,null,null,null);
INSERT INTO post VALUES(03,8,'lee111@gmail.com',08,1,'���� ���� �����մϴ�',0,sysdate,'���� ���� �����մϴ�',0,0,null,null,null,null,null);
INSERT INTO post VALUES(03,9,'lee111@gmail.com',12,1,'Ƽ�� ���� �����մϴ�',0,sysdate,'Ƽ�� ���� �����մϴ�',0,0,null,null,null,null,null);
INSERT INTO post VALUES(03,10,'lee111@gmail.com',06,1,'����� ���� �����մϴ�',0,sysdate,'���� ���� �����մϴ�',0,0,null,null,null,null,null);
INSERT INTO post VALUES(03,11,'lee111@gmail.com',06,1,'���� ���� �����մϴ�',0,sysdate,'���� ���� �����մϴ�',0,0,null,null,null,null,null);

--�ҷ��ŷ� data 
INSERT INTO post VALUES(04,1,'way990@naver.com' ,null,null,'��� ���߽��ϴ�',null,sysdate,'��� ���߽��ϴ�',0,0,null,null,null,null,null);
INSERT INTO post VALUES(04,2,'way99991@gmail.com',null,null,'ǰ�� �ҷ� �Դϴ�',null,sysdate,'ǰ�� �ҷ� �Դϴ�',0,0,null,null,null,null,null);
INSERT INTO post VALUES(04,3,'way99992@gmail.com',null,null,'�� �ų� ȸ�� �Դϴ�',null,sysdate,'�� �ų� ȸ�� �Դϴ�',0,0,null,null,null,null,null);
INSERT INTO post VALUES(04,4,'way99993@gmail.com',null,null,'�Ǹ��ڿ� ������ �ȵ˴ϴ�',null,sysdate,'�Ǹ��ڿ� ������ �ȵ˴ϴ�',0,0,null,null,null,null,null);
INSERT INTO post VALUES(04,5,'way000990@gmail.com',null,null,'��ġ�� �ٸ��ϴ�',null,sysdate,'��ġ�� �ٸ��ϴ�',0,0,null,null,null,null,null);
INSERT INTO post VALUES(04,6,'lee111@gmail.com',null,null,'�Ѹ� ������ ��ǰ',null,sysdate,'�Ѹ� ������ ��ǰ',0,0,null,null,null,null,null);
INSERT INTO post VALUES(04,7,'jeong01@gmail.com',null,null,'�ҷ� �ŷ� �Դϴ�',null,sysdate,'�ҷ� �ŷ� �Դϴ�',0,0,null,null,null,null,null);
INSERT INTO post VALUES(04,8,'jong01@gmail.com',null,null,'�������� ��ų� ���',null,sysdate,'�������� ��ų� ���',0,0,null,null,null,null,null);
INSERT INTO post VALUES(04,9,'june03@gmail.com',null,null,'���� ���� ��� ȸ���� �ൿ ������ ����մϴ�',null,sysdate,'���� ���� ��� ȸ���� �ൿ ������ ����մϴ�',0,0,null,null,null,null,null);
INSERT INTO post VALUES(04,10,'bae01@gmail.com',null,null,'���� ���� ����',null,sysdate,'���� ���� ����',0,0,null,null,null,null,null);
INSERT INTO post VALUES(04,11,'user@naver.com',null,null,'���̻� �Ȱ� �����ϴ�',null,sysdate,'���̻� �Ȱ� �����ϴ�',0,0,null,null,null,null,null);


INSERT INTO post VALUES(00,1,'admin',00,0,'�������� �����Դϴ�',null,sysdate,'�������׳����Դϴ�',0,null,null,null,null,null,null);
INSERT INTO post VALUES(00,2,'admin',00,0,'�������� ����2�Դϴ�',null,sysdate,'�������׳���2�Դϴ�',0,null,null,null,null,null,null);


SELECT *
		FROM pmcjoin
		WHERE bid = 2
		AND	  pnum = 1;
    
DELETE 
FROM post
WHERE bid = 2 
AND pnum = 14;

UPDATE post
		SET ctcode=3, pstatus=3, pprice=333, pimg1='��ٱ⺻�̹���.png', pimg2=null, pimg3=null, pimg4=null, pimg5=null, = #{}
		WHERE bid = 2
		AND pnum=16;
