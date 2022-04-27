# Intended for local development with minikube
if [[ "$1" == "startup" ]]; then
    cat .local/sequence | xargs -I sss minikube kubectl -- apply -f sss
elif [[ "$1" == "cleanup" ]]; then
    tac .local/sequence | xargs -I sss minikube kubectl -- delete -f sss
fi

