WITH RankedHealers AS (
    SELECT Player AS Healer, ROW_NUMBER() OVER (ORDER BY Player) AS rn
    FROM GAMERS WHERE Role = 'Healer'
),

RankedAttackers AS (
    SELECT Player AS Attacker, ROW_NUMBER() OVER (ORDER BY Player) AS rn
    FROM GAMERS WHERE Role = 'Attacker'
),
RankedDefenders AS (
    SELECT Player AS Defender, ROW_NUMBER() OVER (ORDER BY Player) AS rn
    FROM GAMERS WHERE Role = 'Defender'
),
RankedTacticians AS (
    SELECT Player AS Tactician, ROW_NUMBER() OVER (ORDER BY Player) AS rn
    FROM GAMERS WHERE Role = 'Tactician'
)

SELECT
    h.Healer,
    a.Attacker,
    d.Defender,
    t.Tactician
FROM RankedHealers h
FULL OUTER JOIN RankedAttackers a ON h.rn = a.rn
FULL OUTER JOIN RankedDefenders d ON h.rn = d.rn
FULL OUTER JOIN RankedTacticians t ON h.rn = t.rn
ORDER BY h.rn;