# alpine-argocd-cli

A simple Dockerfile to add the [argocd-cli](https://argo-cd.readthedocs.io/en/stable/cli_installation/) into an alpine linux container image.

The image will be pushed to [Github packages](https://github.com/adamroddick/alpine-argocd-cli/pkgs/container/alpine-argocd-cli).

**Pull the image:**
```docker pull ghcr.io/adamroddick/alpine-argocd-cli:main```

**Run the container in Kubernetes:**
```kubectl run -it alpine-argocd-cli --image=ghcr.io/adamroddick/alpine-argocd-cli:main -n argocd /bin/sh```
**
Retrieve the initial admin login for argocd:**
```kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo```

**Login to the ```argocd-server``` within the ```argocd``` namespace:**
```argocd login argocd-server```
