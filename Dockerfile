FROM continuumio/anaconda3

RUN apt-get update && apt-get install -y python3-opencv

RUN conda create -n tf-gpu tensorflow-gpu -y
SHELL ["conda", "run", "-n", "tf-gpu", "/bin/bash", "-c"]
RUN conda install jupyter -y --quiet
RUN conda install ipykernel -y
RUN conda install pandas -y
RUN python -m ipykernel install --user --name python-tf-gpu --display-name "Python (tf-gpu)"
RUN conda install scikit-learn -y
RUN conda install scikit-image -y
RUN conda install opencv -y