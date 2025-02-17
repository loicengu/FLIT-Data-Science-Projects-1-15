# Fraud Detection with Machine Learning
This project involves building and evaluating machine learning models for detecting fraudulent transactions in a credit card dataset. Various anomaly detection and classification algorithms are used to identify outliers, which are potential fraud cases.

## Table of Contents
1. Introduction
2. Installation
3. Dataset Description
4. Exploratory Data Analysis (EDA)
5. Preprocessing
6. Anomaly Detection
7. Modeling
8. Evaluation
9. Conclusion

## Introduction

In this project, we use a credit card transaction dataset containing both fraudulent and normal transactions. The goal is to apply different machine learning techniques to detect fraudulent transactions and evaluate their performance.

## Installation

To run the code, ensure you have the necessary libraries installed. You can install them using pip

## Dataset Description

The dataset used in this project  contains:

    31 columns (features) and 284,807 rows (transactions).
    The Class column indicates fraud (1) or normal transaction (0).
    The Amount and Time columns represent transaction details.


## Exploratory Data Analysis (EDA)
Loading the dataset
Data Overview:

    31 columns, 284,807 rows
    No missing values in the dataset.

Class Distribution:

    Fraud Cases (Class=1): 492
    Normal Cases (Class=0): 284,315
    The dataset is highly imbalanced, with only 0.172% of transactions being fraud.

## Preprocessing
Handling Time and Amount Features:
    Time is scaled to hours.
    The Amount feature is standardized using StandardScaler.
Splitting the Data:
The dataset is split into train and test sets (70% train, 30% test).


## Anomaly Detection

We applied three anomaly detection algorithms to identify potential fraud cases:
  Isolation Forest:
        Detects anomalies based on isolation principle.
        Predicted outliers are detected as -1.
Local Outlier Factor (LOF):
    Based on the concept of local density deviation.
    Predicted outliers are also marked as -1.
One-Class SVM:
    A machine learning method for novelty detection.
    Predicted outliers are tagged as -1.
Modeling
Multiple machine learning algorithms are used for classification:
    Logistic Regression
    Decision Tree Classifier
    Random Forest Classifier
    K-Nearest Neighbors (KNN)

Each model is tuned using GridSearchCV to optimize hyperparameters, such as regularization strength and maximum depth of trees.

## Evaluation
Each model is evaluated using the following metrics:
    Accuracy
    Precision
    Recall
    F1 Score

## Conclusion

This project demonstrates how different machine learning techniques can be used to detect fraudulent transactions in a highly imbalanced dataset. Various anomaly detection methods and classification algorithms were applied and evaluated, providing insights into which models perform best for fraud detection.
