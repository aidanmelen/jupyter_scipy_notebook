# jupyter_scipy_notebook

## Quick Start

Start the Juptyer Notebook in a Docker container using the [Makefile](./Makefile)

```bash
make run
```

It then starts a container running a Jupyter Notebook server and exposes the server on host port 8888. The server logs appear in the terminal. Visiting `http://<hostname>:8888/?token=<token>` in a browser loads the Jupyter Notebook dashboard page.

Please refer to the [Jupyter Quick Start](https://jupyter-docker-stacks.readthedocs.io/en/latest/index.html#quick-start) guide for more information.