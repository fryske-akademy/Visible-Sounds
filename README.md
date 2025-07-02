# Visible-Sounds
Software for analyzing acoustic vowel and consonant measurements. The app is an useful instrument for research in phonetics, sociolinguistics, dialectology, forensic linguistics, and speech-language pathology.

Follow the instructions below to build the Docker image and launch the container.

### 1. Clone the Repo

```
git clone https://github.com/fryske-akademy/Visible-Sounds.git
cd Visible-Sounds
```

### 2. Build the Docker Image

```
docker build -t visible-sounds .
```

### 3. Run the Container

```
docker run -p 3838:3838 visible-sounds
```

### 4. View in Browser

Open:
http://localhost:3838
