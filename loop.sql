--select * from reviews;
--create table reviewscopy as select * from reviews; 
--delete from reviewscopy;
--select * from reviewscopy;


DO $$
 BEGIN
     FOR counter IN 1..11
         LOOP
            INSERT INTO reviewscopy (bar_id, review_date, taste, rating, beans_batch)
             VALUES (counter, 2022 - counter%4, 'Chocolate', counter%5, 'Blend');
         END LOOP;
 END;
$$