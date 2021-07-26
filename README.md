# MNIST Analysis Docker

## Step 1: Build the MNIST data image.

Go to '/image_container' directory and run the 'image_build' script.

```
$ ./image_build.sh
```

## Step 2: Build the MNIST data analysis image.

Go to '/analysis_container' directory and run the 'analysis_build' script.

```
$ ./analysis_build.sh
```

## Step 3: Run the main script to run the MNIST data analysis code

Go to '/task' directory and run the 'build' script.

```
$ ./build.sh
```

#### Sample Output
<img src="./task/images/terminal_output.png" width="70%">

* __Yellow Box__: The environment variable - "container_name" passed while starting the container with the analysis code.
* __Blue Box__: The transfer of data files between two containers.
* __Red Box__: The MNIST data analysis task being performed on the downloaded data.
