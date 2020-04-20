
# INFO
This is a very basic file browser that lets you expose a local directory through the browser. Built with NodeJS and Express. Read-Only.

![Alt text](/data/screenshot.png?raw=true "Screenshot")

# Use case
I have a seedbox that I wanted to be accessible to friends, but SFTP was too much of a hassle. This was made for them to simply be able to download any file from my server without any unnecessary steps. Simple as that.

# Run with Node.JS
1. Clone this repo
2. `cd Docker-Images/basic-filebrowser`
3. `npm install`
4. `node server.js`

# Docker
`docker run -d -p 3000:3000 -v /your/data/folder:/usr/src/app/data whatname/basic-filebrowser`
- replace "your/data/folder" with the folder you want to expose
- navigate to your server's port :3000
