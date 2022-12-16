/* Questão 1 */

SELECT COUNT("endDate") as "currenteExperiences" FROM experiences

/* Questão 2 */

SELECT e."userId" as id ,COUNT(id) as educations FROM educations e GROUP BY e."userId";

/* Questão 3 */

SELECT u.name as "writer", COUNT(t.id) as "testimonialCount"
FROM testimonials t
JOIN users u
ON "writerId" = u.id
WHERE u.id = 435
GROUP BY u.name;

/* Questão4 */

SELECT MAX(salary) as "maximumSalary",r.name as role
FROM jobs j
JOIN roles r
ON j."roleId" = r.id
WHERE j.active = true
GROUP BY role
ORDER BY "maximumSalary" ASC;

