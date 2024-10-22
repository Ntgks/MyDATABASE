SELECT FROM movie_cast
WHERE person_id IN(
	SELECT t1.person_id
	FROM movie_cast t1
	NATURAL JOIN movie_cast t2
	WHERE t1.person_id = t2.person_id
	AND (t1.name <> t2.name OR t1.gender <> t2.gender)
	)

SELECT FROM movie_crew
WHERE person_id IN(
	SELECT t1.person_id
	FROM movie_crew t1
	NATURAL JOIN movie_crew t2
	WHERE t1.person_id = t2.person_id
	AND (t1.name <> t2.name OR t1.gender <> t2.gender)
	)