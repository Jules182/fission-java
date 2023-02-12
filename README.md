# fission-java

Playing around with https://fission.io/

### Installation
https://fission.io/docs/installation/

I use minikube and Helm.

### Inititalization
```
fission environment create --name java --image fission/jvm-env --builder fission/jvm-builder --keeparchive --version 3
```

### Deployment of fission package, function, and httptrigger
```
bash deploy.sh
```

### Testing the function
```
bash test.sh
```

