--1st Method

SELECT CASE             
            WHEN A + B > C AND B + C > A AND A + C > B THEN
                CASE 
                    WHEN A = B AND B = C THEN 'Equilateral'
                    WHEN A = B OR B = C OR A = C THEN 'Isosceles'
                    ELSE 'Scalene'
                END
            ELSE 'Not A Triangle'
        END
FROM TRIANGLES;

--2nd Method

SELECT CASE
            WHEN A+B<=C OR A+C<=B OR B+C<=A THEN "Not A Triangle"
            WHEN A=B AND B=C THEN "Equilateral"
            WHEN A=B OR B=C OR A=C THEN "Isosceles"
            ELSE "Scalene"
        END
FROM TRIANGLES;