# quartz

> Quartz is a fast, batteries-included static-site generator that transforms Markdown content into fully functional websites.
> -- <cite>[Quartz 4](https://quartz.jzhao.xyz/)</cite>

This repo contains everything you need to use the Site generator inside a Docker container.

## Usage

1. Link your Markdown files to the `content` folder (`/app/quartz/content`)
2. Link your target folder to the `public` folder (`/app/quartz/public`)
3. Run the container with the following command:

```bash
docker run -it --rm \
  -v /path/to/your/content:/app/quartz/content \
  -v /path/to/your/public:/app/quartz/public \
  npx quartz build
```
