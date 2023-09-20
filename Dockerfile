FROM huggingface/transformers-pytorch-gpu:latest


RUN apt-get update && apt-get install -y \
    python3-pip



COPY . DNABERT_2/

RUN python3 -m pip install -r /DNABERT_2/requirements.txt
#RUN cd /DNABERT_2/triton/python
#RUN pip install cmake
#RUN pip install -e /DNABERT_2/triton/python
RUN pip3 install -U scikit-learn scipy matplotlib