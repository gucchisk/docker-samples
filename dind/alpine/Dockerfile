FROM golang:1.14.7-buster

WORKDIR /build
RUN git clone https://github.com/gucchisk/anaguma.git

WORKDIR /build/anaguma

RUN ping www.yahoo.co.jp

RUN go get -d -v ./...
RUN go build -o anaguma main.go

CMD [ "./anaguma" ]
