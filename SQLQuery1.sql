--get ALl Home Page setting
DECLARE @SCHOOLID   INT 

SELECT B.Logo,B.FavIcon,B.ThemeId,B.ContactInfo,B.Disclaimer
FROM Brandings AS B
WHERE SchoolID =@SCHOOLID

SELECT B.BannerImg1, B.BannerImg2, B.BannerImg3,  B.BannerText1, B.BannerText2, B.BannerText3
FROM [Banners]  AS B
WHERE SchoolID =@SCHOOLID

SELECT TOP 3 N.Image, N.Header,N.NewsDescription
FROM [LatestNews]  AS N
WHERE SchoolID =@SCHOOLID 
ORDER BY CreatedDate ASC

SELECT TOP 3
E.StartDate,E.Header,E.EventDescription
FROM [Events] AS E
WHERE SchoolID =@SCHOOLID 
ORDER BY CreatedDate ASC

