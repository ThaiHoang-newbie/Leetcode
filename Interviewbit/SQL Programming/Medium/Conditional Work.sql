SELECT (case when A > 0 then 'Positive'
            when A < 0 then 'Negative'
            WHEN A=0 THEN "Zero"
            ELSE "Invalid" end) as A FROM ( SELECT (A+B+C) AS A FROM NUMBERS) as tab; 