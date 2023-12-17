# Market Basket Analysis Project

## Overview
This project involves performing Market Basket Analysis on a retail dataset to discover interesting associations between items purchased by customers.

## Table of Contents
- [Introduction](#introduction)
- [Dataset](#dataset)
- [Analysis](#analysis)
- [How to Use](#how-to-use)
- [Dependencies](#dependencies)
- [License](#license)

## Introduction
Market Basket Analysis is a technique used in retail to uncover associations between products. This analysis helps in understanding customer behavior and can be used for various purposes, such as product placement optimization and personalized marketing.It identifies items that canbe placed side by side considering the customers purchasing behaviour.

## Dataset
The dataset used for this analysis contains transaction data with information on items purchased by customers. It includes 3 columns with details like Member_number, Date, and itemDescription.

## Analysis
The Jupyter Notebook file `Market_Basket.ipynb` contains the detailed analysis, including data preprocessing,EDA, association rule mining,  visualization of results and recomendations on top 3 items that can be placed side by side.

## How to Use
1. Clone the repository.
2. Open the Jupyter Notebook `Market_Basket.ipynb` to view the analysis.
3. Customize the analysis for your own dataset if needed.

## Dependencies
The analysis is done using Python and popular libraries like pandas, matplotlib, seaborn, and mlxtend. Make sure to install these dependencies using the following:

```bash
pip install pandas matplotlib seaborn mlxtend
