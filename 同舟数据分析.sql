show tables;
select count(*) from payment; -- ����106368��
select * from payment;

select distinct �������� from payment order by cast(�������� as UNSIGNED INTEGER);

select count(distinct �ͻ�����) from payment;

select avg(cnt),max(cnt),min(cnt) from(
select �ͻ�����,count(*) cnt from payment group by �ͻ�����) a; 
-- ƽ��ÿ���ͻ���70�ʽ���,��ཻ��3608,����1

select * from payment where �ͻ����� in ( 
select �ͻ����� from (
select �ͻ�����,count(*) cnt from payment group by �ͻ�����) a
where cnt =1);

