from node:latest
workdir /ProjectNodejs
copy /ProjectNodejs/package.json
copy /ProjectNodejs/package-lock.json
run npm install
copy . .
expose 3000
cmd ["node","index.js"]


