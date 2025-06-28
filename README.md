# xAGI Evals: Robot Data Training and Evaluation Platform

xAGI Evals is a Flask-based web application designed to serve as a platform for Robot Data training and evaluations. It aims to provide tools and insights for robotics researchers to build better models faster, drawing inspiration from systems like ARES (Automatic Robot Evaluation System).

## Project Purpose

The field of robotics research often struggles with the transition from quick, messy "research" code to robust, scalable systems. This is particularly true for robot data, which is inherently complex due to real-world factors like spatial reasoning, occlusions, and sensor noise.

Current approaches to robot data curation and analysis are often manual and coarse. There's a clear need for better tools to facilitate:
- Structured extraction of information from raw robot episodes.
- Exploration of task spaces within datasets.
- Calculation of success rates on curated data slices.
- Creation and storage of composable annotations.
- Efficient retrieval of similar examples (text- or trajectory-based).

xAGI Evals intends to address these challenges by providing a simple, scalable, and ML-driven platform. Initially, it will focus on offering a dashboard for data overview and detailed pages for specific evaluations or episodes.

## Features (Current & Planned)

*   **Dashboard:** An overview page to display summaries of robot data, training progress, and key evaluation metrics.
*   **Detailed Information Page:** Pages dedicated to individual robot episodes, model evaluations, or specific data slices, providing in-depth information and visualizations.
*   **(Planned)** Database integration for storing and querying episode metadata, annotations, and model predictions.
*   **(Planned)** Interactive data visualizations (e.g., embedding plots, trajectory displays).
*   **(Planned)** Tools for data curation and annotation.

## Setup and Installation

1.  **Clone the repository (or ensure you have the project files at the root):**
    ```bash
    # If you're cloning for the first time:
    # git clone <repository-url>
    # cd <repository-name>
    ```
    Ensure you are in the project's root directory (where `app.py` is located).

2.  **Create and activate a virtual environment (recommended):**
    ```bash
    python -m venv venv
    ```
    *   On macOS and Linux:
        ```bash
        source venv/bin/activate
        ```
    *   On Windows:
        ```bash
        .\venv\Scripts\activate
        ```

3.  **Install dependencies:**
    ```bash
    pip install -r requirements.txt
    ```

## How to Run the Application

1.  Ensure your virtual environment is activated and you are in the project's root directory (where `app.py` is located).
2.  Run the Flask development server:
    ```bash
    python app.py
    ```
3.  Open your web browser and navigate to `http://127.0.0.1:5000/`.
    *   The main dashboard will be displayed.
    *   You can access example detailed pages by clicking links on the dashboard or by navigating to URLs like `http://127.0.0.1:5000/detailed_info/some_id`.

## Running with Docker (Production)

This application can also be run using Docker for a containerized production-like environment.

1.  **Build the Docker image:**
    Ensure you have Docker installed and running. In the project's root directory (where the `Dockerfile` is located), run:
    ```bash
    docker build -t xagi-evals-app .
    ```

2.  **Run the Docker container:**
    Once the image is built, run the container:
    ```bash
    docker run -p 5000:5000 xagi-evals-app
    ```
    This will start the application, and it will be accessible at `http://localhost:5000` in your web browser. The `-p 5000:5000` flag maps port 5000 of the container to port 5000 on your host machine.

## Future Development

The initial version of xAGI Evals provides the basic web application structure. Future development will focus on:

*   **Database Integration:** Connecting to databases (e.g., SQLite, MongoDB, FAISS) to store and manage structured robot data, metadata, embeddings, and annotations, similar to the ARES architecture.
*   **Data Ingestion:** Building pipelines to process raw robot data and extract relevant information using VLMs and other models.
*   **Enhanced Visualizations:** Implementing interactive charts and plots for data exploration, such as t-SNE/UMAP projections of embeddings, robot trajectory visualizations, and annotation displays.
*   **Curation Tools:** Developing UI elements for filtering, slicing, and curating datasets based on various criteria.
*   **Annotation Interface:** Allowing users to add or modify annotations.
*   **Scalability:** Exploring options for deploying the application and handling larger datasets, potentially using cloud services.

This project aims to evolve into a comprehensive tool to support the robotics research community in improving data understanding and model development.
