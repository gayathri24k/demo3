create or replace function fib(n int)returns void as $$
declare
t1 int:=0;
t2 int:=1;
i int;
t3 int:=0;
begin
raise notice '%',t1;
raise notice '%',t2;
for i in 2..n loop
raise notice '%';
t3:=t1+t2;
t1:=t2;
t2:=t3;
raise notice'$',t3;
end loop;
end $$ language plpgsql;
