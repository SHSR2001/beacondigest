# Beacon Digest

Here you can find the fortnightly issues of Beacon Digest.

## Issues

- [May 24th](https://shsr2001.github.io/beacondigest/notebooks/2021/05/24/digest.html) + [source](notebooks/2021/05/24/digest.ipynb)
- [June 7th](https://shsr2001.github.io/beacondigest/notebooks/2021/06/07/oceanic.html) + [source](notebooks/2021/06/07/oceanic.ipynb)

## Running the notebooks

Start of by running the following commands in your terminal

```bash
git clone https://github.com/SHSR2001/beacondigest
cd beacondigest

###
# Optional: use a virtual environment
python -m venv env

# Unix
source env/bin/activate

# Windows
.\env\Scripts\activate
###

pip install -r requirements.txt

jupyter labextension install jupyterlab-plotly@4.14.3
```

Run the following command once you enter the shell

```bash
jupyter lab
```
You can now run any notebook of your choice to reproduce the results
