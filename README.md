# pyimagesearch

Activate venv:
`source ~/.virtualenvs/dl4cv/bin/activate`

Example run:
`python3 knn.py --dataset /home/ubuntu/SB_Code/datasets/animals`


### Note on Tensorflow Metal on Macbook M3
I was following this simple setup guide from apple for Tensorflow metal: https://developer.apple.com/metal/tensorflow-plugin, 
which should allow for Tensorflow to run on the GPU of a macbook m3. However, I had some issues with it not working properly.
The problem ended up being that I had to explicitly tell it to use the python installed as part of the xcode command line tools,
which is located at /Library/Developer/CommandLineTools/usr/bin/python3. I had always been using one of the homebrew installed
pythons and I would get an error about an illegal hardware instruction. I didn't find anything online to help me address.

Once you get it running, it should show decent GPU usage:

![alt text](image.png)

![alt text](image-1.png)