# Golang cat
Simple Golang cat implementation.
Usefull to cat a file in a shell-less environnement, a container from scratch for instance.

## 🚀 Usage
### In a shell
Build the binary:
```bash
go build -o gocat
```

Use the binary directly:
```sh
./gocat FILE_PATH
```

### In a Container
Build the binary targeted for an image from scratch:
```bash
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o gocat
```

Copy the binary in your Dockerfile, using this [exemple](Dockerfile)

Build the image:
```sh
docker image build -t go-cat .
```

Use the tools on the desired file:
```sh
docker container run -it go-cat FILE_PATH
```

## 📖 License
This project is under the [MIT License](https://choosealicense.com/licenses/mit/)
