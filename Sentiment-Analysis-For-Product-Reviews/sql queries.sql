SELECT *
FROM public."Amazon_Product_Reviews";



--average score over time
SELECT 
  DATE_TRUNC('month', review_date) AS month_year,
  AVG(CAST(star_rating AS DECIMAL)) AS average_rating
FROM public."Amazon_Product_Reviews"
GROUP BY month_year
ORDER BY month_year;


SELECT AVG(star_rating) as average_rating 
FROM public."Amazon_Product_Reviews";

SELECT product_category, COUNT(*) as review_count 
FROM public."Amazon_Product_Reviews" 
GROUP BY product_category 
ORDER BY review_count DESC;


SELECT review_id, AVG(star_rating) as average_rating 
FROM public."Amazon_Product_Reviews" 
GROUP BY review_id 
ORDER BY average_rating DESC;

--overall star_rating
SELECT star_rating,COUNT(*) as rating_count
FROM public."Amazon_Product_Reviews" 
GROUP BY star_rating
ORDER BY star_rating;



SELECT review_body, 
       CASE WHEN star_rating >= 4 THEN 'positive' 
            WHEN star_rating <= 2 THEN 'negative' 
            ELSE 'neutral' END as sentiment
FROM public."Amazon_Product_Reviews";

--count of star_ratings
SELECT 
  CASE 
    WHEN star_rating >= 4 THEN 'positive' 
    WHEN star_rating = 3 THEN 'neutral' 
    WHEN star_rating <= 2 THEN 'negative' 
  END as sentiment,
  COUNT(*) as review_count 
FROM public."Amazon_Product_Reviews"
GROUP BY sentiment,star_rating;

--count of reviews over time
SELECT TO_CHAR(review_date, 'YYYY-MM') as month_year, COUNT(*) as review_count
FROM public."Amazon_Product_Reviews"
GROUP BY month_year
ORDER BY month_year;

--average rating over time
SELECT TO_CHAR(review_date, 'YYYY-MM') as month_year, AVG(star_rating) as average_rating
FROM public."Amazon_Product_Reviews"
GROUP BY month_year
ORDER BY month_year;

--verified purchases against reviews
SELECT 
  CASE 
    WHEN star_rating >= 4 THEN 'positive' 
    WHEN star_rating = 3 THEN 'neutral' 
    WHEN star_rating <= 2 THEN 'negative' 
  END as sentiment,
  verified_purchaseied_purchase,
  COUNT(*) as review_count 
FROM public."Amazon_Product_Reviews"
GROUP BY sentiment, verified_purchaseied_purchase,star_rating ;

-- count of sentiments
SELECT 
  sentiment,
  COUNT(*) as sentiment_count 
FROM 
  public."Amazon_Product_Reviews" 
GROUP BY 
  sentiment;

--percentage of +ve against -ve sentiments
SELECT 
  sentiment,
  COUNT(*) * 100.0 / SUM(COUNT(*)) OVER () as sentiment_percentage
FROM 
  public."Amazon_Product_Reviews" 
GROUP BY 
  sentiment;

--avaerage star_rating for the sentiments
SELECT 
  sentiment,
  AVG(star_rating) as average_star_rating
FROM public."Amazon_Product_Reviews"
GROUP BY sentiment;

SELECT 
  TO_CHAR(review_date, 'YYYY-MM') as month_year,
  sentiment,
  COUNT(*) as sentiment_count
FROM public."Amazon_Product_Reviews"
GROUP BY month_year, sentiment
ORDER BY  month_year, sentiment;



--sentiments over time
SELECT 
  TO_CHAR(review_date, 'YYYY-MM') as month_year,
  sentiment,
  COUNT(*) as sentiment_count
FROM public."Amazon_Product_Reviews"
GROUP BY month_year, sentiment
ORDER BY month_year, sentiment;


--count of helpgul votes against each star rating
SELECT 
  star_rating,
  SUM(helpful_votes) AS total_helpful_votes
FROM public."Amazon_Product_Reviews"
GROUP BY star_rating
ORDER BY star_rating;

SELECT 
  star_rating,
  COUNT(*) AS total_reviews,
  SUM(CASE WHEN helpful_votes > 0 THEN 1 ELSE 0 END) AS reviews_with_helpful_votes,
  SUM(helpful_votes) AS total_helpful_votes,
  CASE 
  WHEN SUM(total_votes) > 0  THEN AVG(helpful_votes::DECIMAL / total_votes::DECIMAL)
  ELSE 0
  END AS helpfulness_ratio
FROM public."Amazon_Product_Reviews"
GROUP BY star_rating
ORDER BY star_rating;
--helpfulness ratio
SELECT 
  star_rating,
  COUNT(*) AS total_reviews,
  SUM(CASE WHEN helpful_votes > 0 THEN 1 ELSE 0 END) AS reviews_with_helpful_votes,
  SUM(helpful_votes) AS total_helpful_votes,
  AVG(helpful_votes::DECIMAL / NULLIF(total_votes, 0)) AS helpfulness_ratio
FROM public."Amazon_Product_Reviews"
GROUP BY star_rating
ORDER BY star_rating;


