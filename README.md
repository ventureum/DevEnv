# DevEnv
The Development Environment

# Ventureum Test Environment 
## Faster build

### 1, Build docker
```
./build_docker.sh
```

### 2, Open two terminals, in each terminal run following commend 
```
./run_docker.sh
```

now you have two contains.

### 3, In the first one, run `back_dev` run server
```
back_dev
```

** note: let the server running, switch to the other terminal**


### 3, In the second one, run `front_build` migrate truffle and copy `build` to VUI
```
front_build
```

### 4, (Optional) If you want trans money to test, run following with account from metamask and the amount of money
```
cd /tmp
```
#####     For example, transfer 500,000a to that account.
```
./add_money 0xe681f22B81FaB87B963aa247D0c95320f8731e53 500000
```

### 5, Run `run` to npm start the VUI.
```
run
```



