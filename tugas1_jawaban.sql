#2 
SELECT DP.NamaPasien, P.Diagnosa
FROM datapasien DP, pemeriksaan P
WHERE DP.IDPasien = P.IDPasien AND (p.Diagnosa = 'Influenza' OR p.Diagnosa = 'Sakit Gigi')

#3
SELECT  P.Diagnosa , DP.NamaPasien , P.TglPeriksa
FROM datapasien DP, pemeriksaan P
WHERE dp.IDPasien = p.IDPasien AND p.Diagnosa = 'Influenza' AND MONTH(p.TglPeriksa) = 12

#4
SELECT DP.NamaPasien, P.Diagnosa , D.Nama
FROM datapasien DP, pemeriksaan P, dokter D
WHERE DP.IDPasien = P.IDPasien 
      AND P.NID = D.NID
      AND D.Nama = 'dr.Angga Kusuma'
      AND NOT EXISTS
      	(SELECT DP2.NamaPasien
         FROM pemeriksaan P2, dokter D2 ,datapasien DP2
         WHERE DP2.IDPasien = P2.IDPasien
        	AND P2.Diagnosa = 'Radang Gusi' 
        	AND DP2.NamaPasien = DP.NamaPasien)

#5
SELECT D.Nama , SUM(P.Biaya) AS Income
FROM dokter D, pemeriksaan P
WHERE D.NID = P.NID
GROUP BY d.Nama

#6
SELECT P.Catatan, AVG(p.Biaya)
FROM pemeriksaan P
GROUP BY p.Catatan

#7
SELECT MAX(P.Biaya) , MIN(P.Biaya) 
FROM pemeriksaan P
WHERE (MONTH(p.TglPeriksa) = 11 OR MONTH(p.TglPeriksa) = 12)

#8
-- Pasien Yang habis biaya lebih 30000

SELECT
FROM
WHERE
