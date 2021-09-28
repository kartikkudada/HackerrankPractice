select h.hacker_id,name,sum(Maxscore) as totalscore from 
hackers h join
(
select hacker_id,challenge_id,max(score) as Maxscore from submissions
group by hacker_id,challenge_id
) temp 
on h.hacker_id = temp.hacker_id
group by h.hacker_id,name
having sum(temp.Maxscore) != 0 
order by totalscore desc, hacker_id;
