# electron-snap-builder
Dockerfile for electron-installer-snap.

## Build locally

```bash
sudo docker build -t electron-snap-builder ./
```

## Usage

### Build snap package

```bash
sudo docker run -it --rm  -v $(pwd)/dist/your-app-name-linux-x64:/snap/app electron-snap-builder --src=./  --feature.audio
```

Now you can install snap package and test it locally with `sudo snap install --devmode --dangerous dist/your-app-name-linux-x64/you-app-name_0.0.1_amd64.snap`

### Documentation

Run `sudo docker run -it --rm electron-snap-builder --help` to see full help docs.

Check [the api documentation for `electron-installer-snap`](https://github.com/electron-userland/electron-installer-snap/blob/master/docs/api.md) to get all features.
