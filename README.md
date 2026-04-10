# DCBD-Assignment1
MapReduce for finding top 10 first words
# DCBD Assignment 1 - MapReduce for Top 10 First Words

## Student Information
- **Name:** Atralita Saha
- **Roll Number:** MDS202515
- **Course:** Distributed Computing and Big Data

## Project Description
This project implements a MapReduce-style distributed program to find the **top 10 first words** from 1000 text file titles (`pub_0.txt` to `pub_999.txt`). The program fetches titles from a remote server, extracts the first word of each title, counts frequencies, and returns the 10 most common words.

## How It Works
1. **Login:** Authenticates with the server using student ID to obtain a secret key
2. **Fetch Titles:** Retrieves titles for 1000 files using HTTP requests
3. **Map Phase:** Extracts first word from each title using multiprocessing (parallel workers)
4. **Reduce Phase:** Aggregates word counts from all workers
5. **Verify:** Submits top 10 words to server for validation (returns score 10/10)

## Technologies Used
- Python 3.9
- Requests library (HTTP client)
- Multiprocessing (parallel processing)
- Docker containerization

## Code Structure
- `get_secret_key()` - Authenticates with server
- `fetch_title()` - Retrieves title for a given filename with retry logic
- `get_first_word()` - Extracts first word from title
- `mapper()` - Processes a chunk of files and returns word counts
- `chunkify()` - Splits work evenly across workers
- `verify()` - Submits results to server for validation

## How to Run

### Locally with Python
```bash
pip install requests
python mapper_reducer.py
