FROM ubuntu

RUN apt-get update && \
  apt-get install -y git curl && \
  apt-get clean

RUN curl -s "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh" \
  | bash && \
  mv kustomize /usr/local/bin