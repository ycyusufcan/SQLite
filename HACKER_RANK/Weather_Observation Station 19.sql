/*
Consider P1(A,C) and  P2(B,D) to be two points on a 2D plane where (A,B) are the respective minimum and maximum values of Northern Latitude (LAT_N) and
(C,D)  are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.

Query the Euclidean Distance between points P1 and P2 and format your answer to display 4 decimal digits.

*/

SELECT ROUND(
             SQRT(
                  POWER(MIN(LAT_N) - MAX(LAT_N), 2) + 
                  POWER(MIN(LONG_W) - MAX(LONG_W), 2)
             ), 4)
FROM STATION;