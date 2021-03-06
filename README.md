# Overview

## What is this?

This is a sample project to demonstrate the concepts of Extract, Transform, and Load. It also has an example of browser automation for the purposes of webscraping.

## How it is implemented?

IPython notebooks are used for all of the steps. Data is retrieved using a mixture of API requests and webscraping.

## Why does it exist

This code is made available for educational purpses.

# How to Run in?

Run the Notebooks in the order as indicated in their files names - e.g. `01_extract_they_vote_for_you.ipynb` is run first and `05_Load.ipynb` is run last.

![Order of execution and outputs](resources/process.png "Order of execution and outputs")

You'll then have a couple of tables created and populated in your PostgreSQL database, are per the ERD below:
![Output Entity Relationship Diagram](resources/erd.png "Output Entity Relationship Diagram")

## Api Key
You will need an API key from [theyvoteforyou.org.au](https://theyvoteforyou.org.au/help/data#key) to get the current sitting representivies.

## Configuration of Secrets and Keys
Rename `config/key_updateme.py` to `config/key.py` and update the varibles for:
* `theyvoteforyou_key` - Your API key from [theyvoteforyou.org.au](https://theyvoteforyou.org.au/help/data#key)
* `postgres_password` - Your Postgres SQL Database Password, assuming the default username of `postgres`

## System Pre-requisites

* Python 3.6 or above
* PostgreSQL 12
* IPython configured (e.g. Jupyter Notebook)
* Python packages as per `requirements.txt` - versions are pinned for reproducability purposes

# Credits

Data sourced from:
* [They Vote For You](https://theyvoteforyou.org.au/)
* [Australian Electoral Commission](https://aec.gov.au/)
