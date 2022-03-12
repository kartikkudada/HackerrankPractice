
select if(grade>=8,name,NULL) ,grade ,marks from students join grades where MARKS BETWEEN MIN_MARK AND MAX_MARK
order by grade desc,name ;
