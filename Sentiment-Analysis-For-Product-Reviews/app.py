import streamlit as st
import joblib
import spacy

st.set_page_config(page_title="Sentiment Analysis App", page_icon=":smiley:", layout="wide")

st.sidebar.header("Options")
option = st.sidebar.selectbox("Select an option", ["Option 1", "Option 2", "Option 3"])

# Load the trained model
model = joblib.load('sentiment_analysis_model.joblib')

# Load Spacy model
nlp = spacy.load('en_core_web_sm')

# Streamlit app
st.markdown('# Amazon Sentiment Analysis Web App')

# Add a description with Markdown
st.markdown("This is a Streamlit web app for sentiment analysis.")

from PIL import Image
image = Image.open(r"C:\Users\ERICA COMPUTER HUB\FLIT-Data-Science-Projects-1-15\Sentiment-Analysis-For-Product-Reviews\image.jpeg")
st.image(image, caption="Amazon Product Reviews", use_column_width=True)
 
user_input = st.text_area("Enter your review here:")
if st.button("Submit"):

    with st.spinner("Analyzing sentiment..."):
    # Perform sentiment analysis

    # Perform sentiment analysis and display results


     if user_input:
    # Tokenize and lemmatize the user input
         doc = nlp(user_input)
         cleaned_text = ' '.join([token.lemma_ for token in doc])

    # Load TF-IDF vectorizer
         tfidf_vectorizer = joblib.load('tfidf_vectorizer.joblib')

    # Vectorize the user input
         user_input_vectorized = tfidf_vectorizer.transform([cleaned_text]).toarray()

    # Predict sentiment using the trained model
         predicted_sentiment = model.predict(user_input_vectorized)[0]

    # Display the prediction
         st.subheader('Sentiment Prediction:')
         st.write(f'The sentiment of the review is: {predicted_sentiment.capitalize()}')
