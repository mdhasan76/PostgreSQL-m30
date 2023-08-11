
--  Procedure 
CREATE PROCEDURE deactivate_unpaid_account()
LANGUAGE SQL
AS $$ 
UPDATE accounts set account = false WHERE balance = 0 
$$;

CALL deactivate_unpaid_account();

-- Function of plpgsql
CREATE FUNCTION account_type_count( account_type text) RETURNS int 
LANGUAGE PLPGSQL
AS $$ 
 DECLARE account_count int;
 BEGIN  
  SELECT count(*) from accounts where accounts.account_type = $1;
  RETURN account_count;
 END
$$;


-- TRIGGER
CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) not null,
    base_price FLOAT8 not null,
    final_price FLOAT8 
);

insert into products VALUES (2,'Orange', 60 );

SELECT * from products;


create Trigger add_tax_trigger
AFTER 
insert on products 
FOR EACH ROW
EXECUTE FUNCTION update_final_price();


-- update_final_price function ;
create or replace FUNCTION update_final_price() 
RETURNS TRIGGER 
LANGUAGE PLPGSQL 
as $$ 
    BEGIN 
        NEW.final_price := NEW.base_price * 1.05;
        RETURN NEW;
    END 
$$;
