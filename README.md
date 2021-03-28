# Data Science w Praktyce
Repozytorium przedmiotu Data Science w Praktyce

## Zawartość repozytorium

Zawartość poszczególnych folderów:

* /data - przykładowe dane do zadań 
* /docs - folder zawierający slajdy z zajęć oraz dodatkowe materiały w formacie PDF oraz graficznym
* /src - kod źródłowy do poszczególnych zadań

Obecna zawartość repozytorium jest tymczasowa i będzie uzupełniana w miarę rozwoju zajęć.


## Logowanie do AWS

Adres strony logowania:
[https://619731119112.signin.aws.amazon.com/console](https://619731119112.signin.aws.amazon.com/console)



## Apache Spark

SPARK_HOME=folder główny sparka

PATH=%SPARK_HOME%/bin;


pip install sparkmagic
pip install findspark


### MacOS

Do pliku ~/.zshrc dodać:

```shell script
export HADOOP_HOME=~/bin/hadoop-2.7.7
export HADOOP_OPTS="$HADOOP_OPTS -Djava.library.path=$HADOOP_HOME/lib"
export HADOOP_OPTS="$HADOOP_OPTS -Djava.library.path=$HADOOP_HOME/lib/native"

export SPARK_HOME=~/bin/spark-2.4.4-bin-hadoop2.7
export PYSPARK_DRIVER_PYTHON="jupyter" 
export PYSPARK_DRIVER_PYTHON_OPTS="notebook" 

export PATH="$SPARK_HOME/bin:$HADOOP_HOME/bin:$PATH"
```

```shell script
source ~/.zshrc
```
