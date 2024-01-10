## Amazon Product Reviews Analysis
### Overview
This project involves the analysis of Amazon product reviews, including sentiment analysis, machine learning model creation, and visualization of insights using Streamlit and Tableau.

### Table of Contents
Dataset
Python Analysis
Model Creation
Streamlit App Setup
SQL Queries
Tableau Dashboard
Requirements
Usage
Acknowledgments
License
Author
Python Analysis
In the Python analysis, we explored the Amazon product reviews dataset, performed sentiment analysis, and created visualizations to understand trends and patterns in customer sentiments. The analysis involved using natural language processing (NLP) techniques and various Python libraries.

### Dataset
The dataset contains text reviews and associated ratings used to perform sentiment analysis.The goal is to build a model that can classify each review as either postive,negative or neutral based on the text context and also visulaize the data to understand some of the well performing areas in terms of reviews.

### Model Creation
Various steps in Data Preparation,Exploratory Data Analysis,Data Pre-processing led to model building.Tow models were create that is Logistics Regression and the Random Forest Classifier and their perfomance is evalauted to determine the best performing model for this kind of sentiment analysis.By all means Logistics model performed better than Random Forest Classifier in all areas tested and was chosen for the prediction app.

### Streamlit App Setup
run a streamli app using run app.py where the code is saved on app.py and use the platform to test if the model is working correctlully.Add some functinalities in the code such as the submit button after a review is entred,an image that captures the cutsomers atentions and a welcoming message.

### SQL Queries
Several SQL queries were employed for data analysis, including count of star ratings, count of reviews over time, count of star rating per sentiment, Average Rating over time, Helpfulness Ratio against star rating to give insight on improvement of reviews over time.

### Tableau Dashboard
A Tableau Dashboard was created to visualize insights from the Amazon product reviews. The dashboard includes visual representations of count of star ratings, count of reviews over time, count of star rating per sentiment, Average Rating over time, Helpfulness Ratio against star rating. Users can interact with the dashboard to explore the data further.

### Requirements
Python 3.x
Required Python libraries 
you will need to install this libraries using pip if you have not installe dthem already and import them in the code space.
 joblib
 numpy
 matplotlib.pyplot
 cross_val_score
 RandomForestClassifier
 accuracy_score
 classification_report
 confusion_matrix
 LogisticRegression
 train_test_split
 TfidVectorizer
 Textblob
 seaborn
 WordCloud
 matplotlib.font_manager
 spacy
 STOP_WORDS
 English
 pandas

Streamlit to create a web app that can be fed reviews and it generates the kind of review the customer gave.
SQL Database for queries that can be visualized to give a deeper insight on KPIs.
Tableau Desktop for the KPI dashboard

### Usage
Clone the repository.
Install the required dependencies using pip install -r requirements.txt.
Run the ipyn file using jupyter notebook.
Run the Streamlit app using streamlit run app.py.
Execute SQL queries in a database environment.
Open the Tableau Dashboard using Tableau Desktop.


### Author
Loice Nguku
loicenguku@outlook.com