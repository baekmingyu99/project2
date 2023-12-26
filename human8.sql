--- �Խ��� ���̺�
DROP SEQUENCE bId;
create sequence bId increment by 1 start with 1 nocache;

drop table board;
commit;
CREATE TABLE board (
bGroupKind VARCHAR2(255),
bId NUMBER PRIMARY KEY,
bName VARCHAR2(255) NOT NULL,
bTitle VARCHAR2(255) NOT NULL,
bContent VARCHAR2(4000) NOT NULL,
bEtc VARCHAR2(4000) NULL,
bWriteTime DATE DEFAULT sysdate,
bUpdateTime DATE DEFAULT null,
bHit NUMBER DEFAULT 0,
bGroup NUMBER,
bStep NUMBER DEFAULT 0,
bIndent NUMBER DEFAULT 0,
bDelete VARCHAR2(1) DEFAULT 'Y',
bLike NUMBER DEFAULT 0,
bDislike NUMBER DEFAULT 0
);
INSERT INTO board (bGroupKind, bId, bName, bTitle, bContent, bEtc, bWriteTime, bUpdateTime, bHit, bGroup, bStep, bIndent, bDelete, bLike, bDislike)
SELECT
bGroupKind,
bId.nextval,
bName,
bTitle,
bContent,
bEtc,
bWriteTime,
bUpdateTime,
bHit,
bId.currval,
bStep,
bIndent,
bDelete,
bLike,
bDislike
FROM board;
--- �Խ��� ���
drop table tbl_reply;
drop sequence seq_reply;

CREATE TABLE tbl_reply (
bId NUMBER ,
rId NUMBER ,
replyer VARCHAR2(255) NOT NULL,
replytext VARCHAR2(4000) NOT NULL,
regdate DATE DEFAULT sysdate,
updatedate DATE DEFAULT null,

rGroup NUMBER,--bgroup
rStep NUMBER DEFAULT 0,
rIndent NUMBER DEFAULT 0,
rDelete VARCHAR2(1) DEFAULT 'Y'
);
create sequence seq_reply increment by 1 start with 1;
commit;

select *
from board;

select *
from tbl_reply;

select * from tbl_reply where rId=rId order by rGroup desc,rStep asc;
---���ε� ���̺�
drop table tbl_attach;
create table tbl_attach(
fullName varchar2(150) not null,
bId number not null,
regdate date default sysdate
);

--- ��ť��Ƽ ���̺�
select * from authorities;
select * from users;
commit;
drop table users;

create table users(

    username varchar2(30) not null,

    password varchar2(100) not null,

    enabled integer not null -- ���̵� ��뿩�� 0�̸� ��� �Ұ� 1�̸� ��밡��

);

commit;

drop table authorities;

create table authorities( --����

    username varchar2(30) not null,

    authority varchar2(50) not null

);

insert into authorities values('user11','ROLE_MEMBER');
commit;

--��Ʈ�� �Խ���
drop table partner;

create SEQUENCE seq_partner increment by 1 start with 1;

create table partner(
    pId number,
    pHit NUMBER DEFAULT 0,
    pTitle NVARCHAR2(2000), --����
    pContent NVARCHAR2(2000), --����
    username NVARCHAR2(255), --�г��� -->�α��� �� �� ���� �г��� FK
    personnel number, --���� �ο�
    progress NVARCHAR2(255), --������
    stack NVARCHAR2(255), --��� ����
    pPosition NVARCHAR2(255), --���� ������
    pContact NVARCHAR2(255), --���� ���
    expectDate NVARCHAR2(255), --���� �Ⱓ
    startDate date, --������Ʈ ������
    writeDate date default sysdate,
    endDate date, --���� ������
    pDelete VARCHAR2(1) DEFAULT 'Y'
);

insert into partner (pId, pTitle, pContent, username, personnel, progress, stack, pPosition, pContact, expectDate, startDate )
    values (seq_partner.nextval,'�Բ� iOS �� ���/������Ʈ�� ���� ��ſ�!','�ȳ��ϼ���!

���� �غ� ���� 1���� iOS �� �������Դϴ�.

iOS �� ��� �� ���� ���� ��� ��ǥ�� �� ������Ʈ�� �����ϰ� �־��.

iOS ������ �������� ��÷��� �ؿ�! �о�ð� ������ ��Ŵٸ� �����ּ���!



1. ������Ʈ ���� �Ұ�
�͸����� ������ �� �ִ� ä�� ���Դϴ�.

ä�� ��� ���� ���̶�� ���δ�Ʈ/�����ο� ���� ������ ���̶�� �󸶵��� ȯ���ؿ�!



���� ���� �Ұ�

�鿣��: 2��

iOS: 1�� (PM, ��ȹ ��)



2. ������Ʈ ��� ����
- �α���/ȸ������

- �ǽð� ä�� ��Ī ���

- ä�ù� ��� ���

- Ŀ�´�Ƽ ���

- ������ ���

- ����� �Ű�/���� ���

��.



�� �ڼ��� ��ɰ� ��ȹ�� ������� �غ�Ǿ��־��.



3. ������Ʈ ���� �ο�
iOS ������(1��)



Tuist, UIKit, RxSwift, ReactorKit �� ����ؿ�.

�� �𸣴��� �Բ� �����ϸ� ������ ������ �ִ� ���̸� ���ƿ�!



���ػ�, ���� ��� �����!



4. ���� ��
Jira�� Slack, Figma�� ����ϰ� �־��.



�� �� �۾� �����ٸ��� Jira�� �����ؿ�.

���� ���� ��� Github�� Jira�� �����Ͽ� ���� ��Ȳ�� ���� Slack�� �ڵ����� �����ǵ��� ���õǾ� �־��.



5. ������Ʈ �Ⱓ �� ���� ��Ȳ
2�� 26�Ͽ� �� ��ø� ��ǥ�� �ϰ� �־��.

���� ���� ��ϸ� ���������� ��ȹ�̿���.



6. ������Ʈ Ư�̻���
���δ�Ʈ �������� ���� ���� �� ��غ��� �� ����� ���� ������ �׾� ������ ������ ���ڴٴ� �����̿���.

���� ������ ���Ͻô� �е��̸� �� ���� �� ���ƿ�!','�Ĵ�',1,'online','figma','ios','https://open.kakao.com/o/sboQjUXf', 2, to_date('2024-01-02','YYYY-MM-DD'));

insert into partner (pId, pTitle, pContent, username, personnel, progress, stack, pPosition, pContact, expectDate, startDate )
    values (seq_partner.nextval,'���̵� ������Ʈ - ���޽�','�ȳ��ϼ���?

�������� �ΰ����񽺶�� ��ȹ�� ���������� ������ ���񽺸� �����ϰ��� �մϴ�.
 

���̵�� ���
�ֱ� ��������(����,ī��)�� ���۾� ������ ���� ���� ����ڸ� ��������� �ֽ��ϴ�.

������ �׿� ���� �� ���ð��� �Ѵ� ���� �� 15�� ������ ���̰� �ֽ��ϴ�.

�� �����δ� Ư���� ������ ������ ����ϴ� �������� Ư�� �������� ���Դϴ�.

��� �ð��� �ø� �� ���ٸ� ������� �ʴ� �ð��� Ȱ������

���� ���� �ð��� Ȱ���� �� �ִ� ���񽺸� �����ϰ��� �մϴ�.

�ֱ� ����Ʈ���� ���� ���� ������ ������ ��û���� ���� ���� �̵��� ���ǰ��� ����ȣ�� ���� �ֽ��ϴ�.

�̷��� ������ ���� ���� ����Ʈ�� ������ �����ϴ� �۵��� ��õǾ���

�̵��� ���̹��ǰ��̼��� ���� ����Ʈ�� ���� �ð��� ����� ������ �����ϰ� �ֽ��ϴ�.

�̸� �������� ���� �ð����� Ȱ���� �� �ִ� �ΰ����񽺸� �����ϰ��� �մϴ�.

�������� ����� ���� ���������� ����Ʈ���� ���ð��� �ٿ� ���ǰ��� ������ ì���

�̸� ���� ����ڵ��� ���� Ȱ�뵵�� �������ڴ� ������ ��ȹ�ϰ� �Ǿ����ϴ�.

�������̴�, ����ð��� Ȱ���Ѵ� ���Ͽ����� �̴� ������ ��ȹ�̱⿡

���������� �����ϰ��� �ϴ� ���񽺴� ����Ʈ���� ���� �ð��� ����ϴ� �� �Դϴ�.

���
- ���޽� ���ð� Ÿ�̸� ����
- ������ �ð����� �д� ����Ʈ ����
- Ÿ�̸� Ȱ���� �ٸ����� ����ϰų� ���� ����� ��� �޽��� �Ǵ� ����Ʈ �ʱ�ȭ
������
- Ÿ�̸� ����, Ÿ�̸� Ȱ�� �� �����ϰ� ���۵Ǵ� �ִϸ��̼��� ��� �ϰ��� �մϴ�.
 

2. ȸ�� ����/���� ��� 
 

- �����Ͽ� 1ȸ ������ ���� 9�ÿ� ���� �ϰ��� �մϴ�.
- �¶������� ������ �����̸� �Դ��� ���� ���ֽø� �˴ϴ�.

 

 

3. �׿�
 

- ��Ʈ�������� ����� ���񽺸� ���� �ϰ��� �մϴ�.
- 2���̶�� ª�� �Ⱓ�� �����ؼ� ���������� ���� ���ֽǼ� �ִ� ������ ��ʴϴ�.
- ����, ���ػ�, �л� ������� �����ϽǼ� ������ ������Ʈ ���࿡ ������ ���� ������ �Ƿ��� ������ ���� ã���ϴ�.

�ñ������� �����ø�, �Ʒ��� �����ּ���!','�ľƾ�',3,'offline','kotlin','android', 'https://open.kakao.com/o/scyBsBAd', 4, to_date('2024-01-02','YYYY-MM-DD'));

insert into partner (pId, pTitle, pContent, username, personnel, progress, stack, pPosition, pContact, expectDate, startDate )
    values (seq_partner.nextval,'���� ���� ������ ������ �е��� �����մϴ�.','Peace Of Game


�̷� ���� �ϰ� �ſ�.
Peace of Game������ ���׿��극���� ���̵� ��忡�� �����Ͽ� ���� ���񽺱��� �����ϰ� �����մϴ�.

���� ���̵�� ������ �Ϸ� �ܰ��̰� ���� ���� �� ������ �����մϴ�.

ó���� ���̵� ������Ʈ�� �����Ͽ� ���� ���߰� ���ư� ���� â������ �����ϰ� �ֽ��ϴ�.

�δ���� �����ּ���.

https://arnulfo5384.softr.app





�̷� �а� �Բ� �ϰ� �;��.
�ڽ��� �ǰ��� �Ƿ��� �� �ִ� ����� �Բ��ϰ� �ͽ��ϴ�.
������ �����ϰ�, ���� ���� ������ ������ �ִ� ����� �Բ��ϰ� �ͽ��ϴ�.
���̵��� ��ġ�µ� ���� ���� �� ������ ������ ���� ����� �Բ��ϰ� �ͽ��ϴ�.
â���� ������ �ִ� ����� �Բ��ϰ� �ͽ��ϴ�.
���� ���� �� �ϳ��� �ش�Ǹ� ����� ����� ȯ���մϴ�.





�̷� ���̸� �� ���ƿ�.
��⵵ ������ �ִ� �繫�ǿ� ����� �� ������ �� �����ϴ�.




���� �ο�
(����)����Ʈ -1��

�鿣�� -1��

�����̳� -1��





�츮 ���� ���ϴ� ���
Peace of Game������ ���׿��극���� ���̵� ��忡�� �����Ͽ� ���� ���񽺱��� �����ϰ� �����մϴ�.

�� �������� �ڽ��� �𸣴� ���� ������ ������ �н��س��� ������ �ذ��մϴ�.

������ ������� ��� ���� �ذῡ ������ �ʿ��ϸ� ����� ������ �ذ��մϴ�.

� ������ ������� �� �������� �׻� �ڽ��� �ǰ��� �Ƿ��ϰ�

��� ������ �� �ǰ��� �ŷ��ϰ� �ùٸ� �������� ��� �����ϰ� �����ϸ� ���ư��ϴ�.





�츮 ���� ��ǥ
2������ �ʱ� ���� 1�� ���� ��ǥ�� �ϰ� �ֽ��ϴ�.

2������ 4������ ����ȭ ��Ű�� 4���� �ִ� ��������������� �Ի��� �ϴ� ���Դϴ�.

���� ������ ������� ���� ���� ������ �÷������� ����� ��ġ�� ���Դϴ�.

���� �ѱ� ���� ������ �� 20���� ��ġ�� ���մϴ�.

Peace Of Game�� �ѱ� ���� ������ 1%�� �����ϰڽ��ϴ�.





���� Peace Of Game�� �Բ��� �е��� ã���ϴ�.','���',4,'on/offline','js','backend', 'https://open.kakao.com/o/sfTmfxYf', 1, to_date('2023-12-14','YYYY-MM-DD'));

insert into partner (pId, pTitle, pContent, username, personnel, progress, stack, pPosition, pContact, expectDate, startDate )
    values (seq_partner.nextval,'[����Ʈ/�����̳�/��ȹ��] - �� ������Ʈ�� �� ���� �����Ͻ� ���� ���ؿ�.','���� �Ұ�
�ȳ��ϼ���. ���� �鿣�� �����ڸ� ����ϴ� 30�� �������Դϴ�.

���� React.js �� Java, SrpingBoot ���� ���� ������ �̼��ϸ鼭 �� ������Ʈ�� ������ ���� �ֽ��ϴ�.

�̹� �� ������ ���� ��Ʈ�������� �ϼ��ϰ� ��������� ���������� �پ��� ���� ��ǥ�� �ֽ��ϴ�.



������Ʈ ����
ȸ�Ǹ� ���� ���� ����



������Ʈ ����
�ִ� 2����(�� 60��)



�����ο�
����Ʈ 1�� / �����̳� 1�� / ��ȹ�� 1��





�� ���� ������ ���� ���ΰ� �����Ӱ� �ǰ��� �����鼭 ���������� ���ڽ��ϴ�.



�ñ��Ͻ� ���� �ִٸ� �������� �����ּŵ� �˴ϴ�.

�����ϽǶ� ������ �Ұ� ��Ź�帮�ڽ��ϴ�.



�����մϴ�.','����',3,'on/offline','js','planner','https://open.kakao.com/o/s5pb9EYf', 2,to_date('2023-12-15','YYYY-MM-DD'));
insert into partner (pId, pTitle, pContent, username, personnel, progress, stack, pPosition, pContact, expectDate, startDate )
    values (seq_partner.nextval,'[���̵� ������Ʈ] ��̳� ���� �����Ͻô� �����̳� �� �� ��ٸ��ϴ�','���� �Ұ�
�ȳ��ϼ��� ���� ������ ��� �����ϴ� 20�� �������Դϴ�

��ŸƮ������ 5�⵿�� (����, ����)�� �þƼ� ������ ������ ������ �ֽ��ϴ�

�����ϴ� ���� �Ϸ� ����� �ͽ��ϴ� (�������� �ʴ� ���� �� ������ �ϰ� ������ �ʽ��ϴ�)

�׸��� ���ٸ� ������ �����մϴ�



������Ʈ ����
���� & � ����



������Ʈ ��ǥ
����� ��̳� ��̸� ���� �ٸ� ����鿡�� ��ġ �����ϴ� ���� ��ǥ�Դϴ�



������Ʈ ����
������Ʈ�� �ַ� ���� ���ֽ� �� �ִ� ���� ���ϰ� �ֽ��ϴ�



������Ʈ �Ұ��� ���� ����
��ҿ� ��� �����߾��µ� ������� �������� ������ �ǰ�

���̵� ���ö� ������Ʈ�� �ѹ� �غ��� ���ڴٰ� �����߽��ϴ�

���� ��� ���� �ӵ��� ������ ���� ���ο� ����� ���Ͽ� �ٸ� �۵� ���� �� ���� ��ġ��

�������� �� �ִٴ� ������ ��� �����ϰ� �Ǿ����ϴ�


�ñ��Ͻ� ���� �����ôٸ� �������� ������� �׻� �����ֽ��ϴ�

�� �ڼ��� ������ ��ȭ�� ���ؼ� ���� �帮���� �ϰڽ��ϴ�

 

�����մϴ�','�׸�',1,'on/offline','figma','designer','https://open.kakao.com/o/s0lRYyYf', 12, to_date('2024-01-01','YYYY-MM-DD'));
insert into partner (pId, pTitle, pContent, username, personnel, progress, stack, pPosition, pContact, expectDate, startDate )
    values (seq_partner.nextval,'[����Ʈ] "����" �۷ι� �м� Ŀ�´�Ƽ �Բ� â���Ͻ� ������ ��ʴϴ�.','AI�� Ȱ���Ͽ� �ڵ�ȭ�� �������� �����Ͽ� �뷮�� ������ Ȯ��
�м������� �����ϴ� Ŀ�´�Ƽ�� ������ ������Ʈ �Դϴ�.


������Ʈ ����



AI �� �̿��� �м� Ŀ�´�Ƽ�� ��ϴ� �� ���񽺸� ����� �ֽ��ϴ�. �ڼ��� ������ �� ù ���ÿ��� ������ �帮���� �ϰڽ��ϴ�.



������Ʈ ��ǥ

���� �� ���� ���� ��� ��ǥ�� �ϰ� ����.

���� �������� �Բ� ����ϰ� ���� �ذ��Ϸ��� ������ ������ ��ź��̿����� ���ڽ��ϴ�.



������Ʈ ����

���� ������� �Բ� ��ȹ, ������, �鿣�� AI ���� �� �Ϸ� �Ǿ� �ִ� ���� �Դϴ�.

���� 2~3�� �ȿ� ������Ʈ�� ������ ��Ī�� ��ȹ�� ������ �ֽ��ϴ�.



������Ʈ�Ұ�



�� ������ AI ����� Ȱ���Ͽ� �ڵ�ȭ�� ������ ������ ���� ������ Ȯ���ϰ�, �м� ������ �����ϴ� Ŀ�´�Ƽ�� �����Ű�����մϴ�.



�¶��� �̵� ���� �м� ������ �˰� �Ǵ� ��� ��κ� ��ó �� ������ ��Ȯ�ϰ� �� �� ������

��ȭ, ���, ����, �ܼ�Ʈ, ���� �� �� ���� ��Ž�� ã�ƾ� �ܿ� �߰��ϰų� ������ ��찡 ����մϴ�.

������ ������� �Ѱ�� ���� �ٷ� ã��� ������� ���������� �̿��Ѵٸ� ���� ���� ������ ���� ���� �� ���� ������?

�����ϰ� �Ǿ� ��ȹ �ϰ� �Ǿ����ϴ�.','�����',3,'on/offline','nextjs','frontend', 'https://open.kakao.com/o/sivlfcgf', 3, to_date('2024-01-01','YYYY-MM-DD'));
insert into partner (pId, pTitle, pContent, username, personnel, progress, stack, pPosition, pContact, expectDate, startDate )
    values (seq_partner.nextval,'For Fun���� �ι�° ���δ�Ʈ�� ����� �����ں��� �����ؿ�','���Ұ�

�ȳ��ϼ���! For fun�� ������ ����� ��� ����? ������Ʈ�� ������ ���Դϴ�. For fun�� ù��° ���δ�Ʈ,���ַ� ��Ī�ϴ� ���׳��� ������ �׺С��� 1�� ������ ���� Ŀ�õ��� ��Ī ���״�ϴ�. �̹��� �ι�° ���ο� �Ұ��� ���δ�Ʈ�� �غ����̿���. ������ �峭���� �𸣰� ��հ� ������Ʈ�� ����� ���� ������ �е��̶�� ������ ȯ���ؿ�







���� ���� �Ұ�

Ȥ�� �ڿ������� õõ�� ������ �˾ư��� ���� �е��� ��Ű���? ���� �� ����� ���Ǻ��ٵ�, �� ����� ��ġ��, �� ������� �߿��� �е��̶�� �������Ʈ�� ���ο� ������ �����ص帮�ڽ��ϴ�. �� �ӿ��� ���δ� ����� ����ġ ���� ������ ã�ƿ´�ϴ�. �׸��� �� ������ ������ �λ����� ���� �߿��� ������ ���� �ִٰ� �����ؿ�. �������Ʈ�� �̷� ���� ��ġ�� �߿��ϰ� �����ϴ� �е��� ���� �����Դϴ�.



����� � ������ �����ϴ���, � ��ȭ�� �����ϴ���, �׸��� � ������ �λ����� ū ������ �Ǿ�����, �̷� �͵��� �츮���� �������ּ���. �������Ʈ�� ��Ű� �� ��︮�� ����� ã�Ƶ帱�Կ�.



�� �� ������ ������ּ���. �������Ʈ�� ������ ���ؼ�, ������ ������ ����� ���� �� �ִٴ� �����?



???��? �̷� ���� �ʿ��ؿ�.

����Ʈ�ص� ������



�Ǳ׸�,������� ���� �����Ͻ� ��

�Ǳ׸��� ���� �����Ͻź�

������� : �������ּ���.





"���ο� �������� ������ ȯ���̾�"





? ���� �Ⱓ : - 12/24 �Ͽ��ϱ���



? For Fun�� ���� �Ͽ��� ���� �� 1ȸ ���ڵ�� ������ �����մϴ�.','������',2,'online','react','frontend', 'https://open.kakao.com/o/sA2VPRie', 3, to_date('2024-01-07','YYYY-MM-DD'));
insert into partner (pId, pTitle, pContent, username, personnel, progress, stack, pPosition, pContact, expectDate, startDate )
    values (seq_partner.nextval,'������Ʈ�� �Բ��Ͻ� �����̳� ��ȹ�ں��� �����մϴ�!','���� ����� �����̳�1 �鿣��3 ����Ʈ����3 ���� �����Ǿ� �ֽ��ϴ�. ��ȹ�ڿ� ���簡 ũ�� ������ �̷��� ������ �ϰ� �Ǿ����ϴ�. ������ ���� ������ ī�� �ֽŴٸ� ����帮���� �ϰ� ����� ���� �Ƿ��� ���θ� �Ű澲�� �ʽ��ϴ�. �ǵ����̸� ����� �Բ� ���� ���߾� ��Ż���� �� �� �ִ� ���̶�� ȯ���Դϴ�.!!','�Ű�',6,'offline','spring','planer','https://open.kakao.com/o/sDIZngYf', 2, to_date('2023-12-31','YYYY-MM-DD'));

insert into partner (pId, pTitle, pContent, username, personnel, progress, stack, pPosition, pContact, expectDate, startDate )
    values (seq_partner.nextval,'���� �ֹ� ���� "������"�� �Բ��Ͻ� ���� �����մϴ�.','1. ������Ʈ�� ���� ����
 

2024�⵵ ��������� ������ �����Դϴ�(ex. ����â����Ű��).

�ܼ��� ���̵� ������Ʈ�� ������ �� �ƴ϶� ���ȭ�� ������ �����̸� �Բ� ��������� ������ �����ͺ��� �����մϴ�.

 

��Ÿ������ �������� ���� ���������� ī�信�� ����� ���̷� ���� ����� ���� ī�䳪, �Ĵ�鿡���� �̿��� �� �ְ� ����� ���� ��ǥ�Դϴ�.

����ڰ� ���� �ٿ�޾ƾ߸� ����� �� �ִ� ������ ��ǰ��� �޸� ������̱� ������ ������ ���� ��ġ�� �ʿ� ����

�� �ּҸ� ���� ���������� QR�ڵ�, �ν�Ÿ�׷� � ��ũ�� ����ϴ� ������ �����ϰ� ���� ������ �� �ִٴ� ���ټ��� ���� ������ �ֽ��ϴ�.

�ʱ⿡�� �ұԸ� ��ü�鿡 �δ��� �Ǵ� �κе��� ������ ������ ���� ��ǥ�� ��� ���Ŀ��� ȸ�ǳ� �������� ��û ���׵��� �޾� �ϳ��� ����� �߰��� ���� ��ȹ�Դϴ�.



1�� �������� �� ����Ʈ ���� - �������� �� �ʱ� �� Ȯ��

(���� ��� : īī�� �˸���, ������ �޴� ����� ���� �������� ������, �������ְ� ������ �� �ִ� 3���� ������ �޴� ������)



2�� PG���� ������ ���� ���� ���� ����

(PG���� ����, �������� �������� ���� ���� ������ ����, ���� �پ��� ������ �޴� ������)

 

�ұԸ� ���� ī��� �Ĵ����� ���� �Ը��� ������������� Ÿ������ �����ϰ� �ֽ��ϴ�.

 

  

2. ȸ�� ����/���� ��� 
  

�� 1ȸ�� �⺻���� �߰��� ������ �ʿ��ϴٸ� ���� �� �߰��ϴ� ������� ������ ��ȹ�Դϴ�.

 

�⺻������ �¶����� �켱���� Google Meet�� ���� ������ �����̸�,

�ʿ信 ���� ���� ������ �߰����� �¶��� ȸ�ǳ� �������� ȸ�Ǹ� ������ ��ȹ�Դϴ�.

 

 

3. �׿� 
�ܼ��� ���̵� ������Ʈ�� ����� ���� �ƴ� ���� 2024�⵵ ��������� �Բ��� ���� �����ϰ� �ֽ��ϴ�.

���� ���� ��Ź�帳�ϴ�.



���������� ���� ���������� ���� �ּ���!','���õ�ȭ����',1,'on/offline','ts','designer','https://open.kakao.com/o/sFW2GPXf', 5, to_date('2023-12-31','YYYY-MM-DD'));
    
insert into partner (pId, pTitle, pContent, username, personnel, progress, stack, pPosition, pContact, expectDate, startDate )
    values (seq_partner.nextval,'[���̵� ������Ʈ] �� ����ð� üũ','�ȳ��ϼ���?

�������� �ΰ����񽺶�� ��ȹ�� ���������� ������ ���񽺸� �����ϰ��� �մϴ�.

 

- �� �� ���δ�Ʈ�� ����ð� ������ �����ּ��� 
�ֱ� ��������(����,ī��)�� ���۾� ������ ���� ���� ����ڸ� ��������� �ֽ��ϴ�.

������ �׿� ���� �� ���ð��� �Ѵ� ���� �� 15�� ������ ���̰� �ֽ��ϴ�.

�� �����δ� Ư���� ������ ������ ����ϴ� �������� Ư�� �������� ���Դϴ�.



��� �ð��� �ø� �� ���ٸ� ������� �ʴ� �ð��� Ȱ������



���� ���� �ð��� Ȱ���� �� �ִ� ���񽺸� �����ϰ��� �մϴ�.



�ֱ� ����Ʈ���� ���� ���� ������ ������ ��û���� ���� ���� �̵��� ���ǰ��� ����ȣ�� ���� �ֽ��ϴ�.

�̷��� ������ ���� ���� ����Ʈ�� ������ �����ϴ� �۵��� ��õǾ���

�̵��� ���̹��ǰ��̼��� ���� ����Ʈ�� ���� �ð��� ����� ������ �����ϰ� �ֽ��ϴ�.

�̸� �������� ���� �ð����� Ȱ���� �� �ִ� �ΰ����񽺸� �����ϰ��� �մϴ�.

�������� ����� ���� ���������� ����Ʈ���� ���ð��� �ٿ� ���ǰ��� ������ ì���

�̸� ���� ����ڵ��� ���� Ȱ�뵵�� �������ڴ� ������ ��ȹ�ϰ� �Ǿ����ϴ�.



�������̴�, ����ð��� Ȱ���Ѵ� ���Ͽ����� �̴� ������ ��ȹ�̱⿡

���������� �����ϰ��� �ϴ� ���񽺴� ����Ʈ���� ���� �ð��� ����ϴ� �� �Դϴ�.



���
���޽� ���ð� Ÿ�̸� ����
������ �ð����� �д� ����Ʈ ����
Ÿ�̸� Ȱ���� �ٸ����� ����ϰų� ���� ����� ��� �޽��� �Ǵ� ����Ʈ �ʱ�ȭ


������
- Ÿ�̸� ����, Ÿ�̸� Ȱ�� �� �����ϰ� ���۵Ǵ� �ִϸ��̼��� ��� �ϰ��� �մϴ�.
 

2. ȸ�� ����/���� ��� 
 

- 1�ֿ� ������� ȸ�ǳ� ������ ������ ��ȹ�ΰ���? 

�����Ͽ� 1ȸ ������ ���� 9�ÿ� ���� �ϰ��� �մϴ�.

 

- ��/�������� ȸ�� ����� �������� �����ּ��� 

�¶������� ������ �����̸� �Դ��� ���� ���ֽø� �˴ϴ�.

 

 

3. �׿� �������� 
�����ο�

���� 0/2

������ 0/2

���� 0/1

 

��Ʈ�������� ����� ���񽺸� ���� �ϰ��� �մϴ�.



2���̶�� ª�� �Ⱓ�� �����ؼ� ���������� ���� ���ֽǼ� �ִ� ������ ��ʴϴ�.

(�� ������ ���ط� �ٻܰǵ� �̸� �ΰ�� ������ �����Ǻ�.. ��)



����, ���ػ�, �л� ������� �����ϽǼ� ������ ������Ʈ ���࿡ ������ ���� �Ƿ��� ������ ���� ã���ϴ�.

(���߿� ������ �𸣴µ��䡱 ��� �Ͻø� �ȵǿ�..��)



������ ���Ͻô� ���� �Ʒ��� ���� ��Ź�帳�ϴ�!','�ľƾ�',9,'online','flutter','android','https://open.kakao.com/o/scyBsBAd', 2, to_date('2023-12-31','YYYY-MM-DD'));


commit;

--���Խ���
drop table hire;
drop SEQUENCE seq_hId;
create SEQUENCE seq_hId increment by 1 start with 1;

create table hire(
    hId number,
    hName NVARCHAR2(2000), -- ȸ���
    hTitle NVARCHAR2(2000), --����
    hjob NVARCHAR2(2000), --���� �̰� �׳� ������ �ұ��
    career NVARCHAR2(2000), --���
    education NVARCHAR2(2000), --�з�
    salary NVARCHAR2(2000), --�޿�
    location NVARCHAR2(2000), --����
    type NVARCHAR2(2000), -- �ٹ� ����
    time NVARCHAR2(2000), --�ٹ� �ð�
    hireToday date default sysdate, --���� ����Ҷ��
    starDate date, --���� ������
    endDate date, --���� ������
    hHit NUMBER DEFAULT 0,
    pDelete VARCHAR2(1) DEFAULT 'Y'
);
select * from hire;
commit;

insert into hire (hId, hTitle, hName, hjob, career, education, salary, location, type, time, starDate,endDate )
    values (seq_hId.nextval,'JAVA����/����������/Frontend/Backend����/����Ͼ۰��� ä��','(��)�����ν��۷��̼�','ȸ��Ұ�1','�����','�з¹���','100����','����','������','�� 5��(��~��) 08:30~17:30',to_date('2023-11-11','YYYY-MM-DD'),to_date('2023-12-11','YYYY-MM-DD'));
insert into hire (hId, hTitle,hName, hjob, career, education, salary, location, type, time, starDate,endDate )
    values (seq_hId.nextval,'�����ܸ�/ ���ַ��/ �ȵ���̵� ������ ����','���̵��Ŀ���(��)','ȸ��Ұ�2','����.���','�з¹���','ȸ�系�Կ����� - ���� �� ����','õ��','������','�� 5��(��~��) 08:30~17:30',to_date('2023-11-12','YYYY-MM-DD'),to_date('2023-12-12','YYYY-MM-DD'));
insert into hire (hId, hTitle, hName, hjob, career, education, salary, location, type, time, starDate,endDate )
    values (seq_hId.nextval,'�������α׷� ����Ʈ���� ���� �� �������� ����','(��)����','����Ʈ����/����','����','�з¹���','ȸ�系�Կ����� - ���� �� ����','����','������','�� 5��(��~��) 08:30~17:30',to_date('2023-11-13','YYYY-MM-DD'),to_date('2023-12-13','YYYY-MM-DD'));
insert into hire (hId, hTitle, hName, hjob, career, education, salary, location, type, time, starDate,endDate )
    values (seq_hId.nextval,'�鿣�� ������ ä��','(��)���þ�ī����','�鿣��','���5~10��','�������� �̻�','ȸ�系�Կ� ����','����','������','�� 5��(��~��) 08:30~17:30',to_date('2023-11-14','YYYY-MM-DD'),to_date('2023-12-14','YYYY-MM-DD'));
insert into hire (hId, hTitle, hName, hjob, career, education, salary, location, type, time, starDate,endDate )
    values (seq_hId.nextval,'(����)Nods.js ������ ������ ����� ä��','��Ƽ����','�鿣��','��� 3���̻�','�з¹���','���� �� ����','��� ���ν�','������','�� 5��(��~��)',to_date('2023-11-14','YYYY-MM-DD'),to_date('2024-01-12','YYYY-MM-DD'));
insert into hire (hId, hTitle, hName, hjob, career, education, salary, location, type, time, starDate,endDate )
    values (seq_hId.nextval,'2024�� �����߾�ȸ(IT����) �������� ä�����','�����߾�ȸ','IT����/����','����','�з¹���','���� �� ����','����','������','�� 5��(��~��)',to_date('2023-11-14','YYYY-MM-DD'),to_date('2024-12-18','YYYY-MM-DD'));
insert into hire (hId, hTitle, hName, hjob, career, education, salary, location, type, time, starDate, endDate )
    values (seq_hId.nextval,'�� �ۺ��� ����� ä��','(��)���佺����','����Ʈ/���ۺ���','���6~10��','�з¹���','���� �� ����','����','�����(1��)','�� 5��(��~��)',to_date('2023-12-12','YYYY-MM-DD'),to_date('2024-01-31','YYYY-MM-DD'));
insert into hire (hId, hTitle, hName, hjob, career, education, salary, location, type, time, starDate, endDate )
    values (seq_hId.nextval,'IT ������ ���Ի�� ����','�ֽ�ȸ�繫��ȭ�������̼���ũ�����','����/����','����','����(4����)�̻�','���� �� ����','����','������(���� 3����)','�� 5��(��~��) 09:00~18:00',to_date('2023-12-04','YYYY-MM-DD'),to_date('2024-01-02','YYYY-MM-DD'));
insert into hire (hId, hTitle, hName, hjob, career, education, salary, location, type, time, starDate, endDate )
    values (seq_hId.nextval,'����Ʈ����(React-Native) 1�� ����','���̶� �ֽ�ȸ��','����Ʈ����','����/��� 5�� ����','�з¹���(������ ����)','ȸ�系�Կ� ����','����','������','�� 5��(��~��) 09:00~18:00',to_date('2023-12-04','YYYY-MM-DD'),to_date('2024-01-02','YYYY-MM-DD'));





//���͵�
drop table study;
CREATE TABLE study (
    sGroupKind VARCHAR2(255),
    sId NUMBER PRIMARY KEY,
    sName VARCHAR2(255) NOT NULL,
    sTitle VARCHAR2(255) NOT NULL,
    sContent VARCHAR2(4000) NOT NULL, 
    sEtc VARCHAR2(4000) NULL,
    sWriteTime DATE DEFAULT sysdate,
    sUpdateTime DATE DEFAULT null,
    sHit NUMBER DEFAULT 0,
    sGroup NUMBER,
    sStep NUMBER DEFAULT 0,
    sIndent NUMBER DEFAULT 0,
    sDelete VARCHAR2(1) DEFAULT 'Y', 
    sLike NUMBER DEFAULT 0, 
    sDislike NUMBER DEFAULT 0
);

create sequence sId increment by 1 start with 1 nocache;

select * from study_reply;
select * from study;

drop sequence seq_study_reply;
-------���͵� ��� ���̺�
drop table study_reply;

CREATE TABLE study_reply (
sId NUMBER ,
sRId NUMBER ,
sReplyer VARCHAR2(255) NOT NULL,
sReplytext VARCHAR2(4000) NOT NULL,
sRegdate DATE DEFAULT sysdate,
sUpdatedate DATE DEFAULT null,

sGroup NUMBER,
sStep NUMBER DEFAULT 0,
sIndent NUMBER DEFAULT 0,
sDelete VARCHAR2(1) DEFAULT 'Y'

);
create sequence seq_study_reply increment by 1 start with 1;
commit;

create table study_attach(
    fullName varchar2(255),
    sid number,
    regdate date default sysdate    
);

---�͸����̺�
drop table unknown;
CREATE TABLE unknown (
    uGroupKind varchar2(255) default '�͸�',
    id number primary key,
    uName varchar2(255) not null,
    uTitle varchar2(255) not null,
    uContent varchar2(4000) not null,     
    uWriteTime date default sysdate,
    uUpdateTime date default null,
    uHit number default 0,
    uGroup number,
    uStep number default 0,
    uIndent number default 0,
    uDelete varchar2(1) default 'Y', 
    uLike number default 0, 
    uDislike number default 0
);

drop sequence uboard;
create sequence uboard increment by 1 start with 1;

select * from unknown;
select * from ureply;

drop table ureply;
create table ureply (
    urId number,
    id number,
    rPw varchar2(255) not null,
    replytext varchar2(2000) not null,
    replyer varchar2(255) not null,
    regdate date default sysdate,
    updatedate date default null,
    rGroup NUMBER,
    rStep NUMBER default 0,
    rIndent NUMBER default 0,
    rDelete VARCHAR2(1) DEFAULT 'Y'
);

drop sequence reply; 
create sequence reply increment by 1 start with 1;

drop table attach;
create table attach(
    fullName varchar2(255),
    id number,
    regdate date default sysdate    
);
commit;