FROM alpine:3.11

RUN apk update && \
    apk add ansible

CMD ["ansible", "--version"]

#build:
#docker build -t asmok/ansible:latest .

#run test 
#docker run asmok/ansible:latest    

#run with playbook and inventory
#docker run -v ${PWD}/playbook.yml:/playbook.yml -v ${PWD}/inventory:/inventory asmok/ansible:latest 'ansible-playbook' '-i' 'inventory' 'playbook.yml'