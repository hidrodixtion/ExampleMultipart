# ExampleMultipart
#### Simple Image Upload Server

Example from http://hidrodixtion.github.io/2016/06/02/create-simple-image-upload-server-in-node-js/

1. Install node & npm
  - _optional_: install coffeescript. `npm install -g coffee-script`
2. Install express. `npm install express`
3. Install multer. `npm install multer`
4. Run the server.
  - __coffeescript__ : `coffee Multipart_File.coffee`
  - __node/javascript__ : `node Multipart_File.js`

#### Upload Test
1. Install [httpie](https://github.com/jkbrzt/httpie#installation)
2. Run httpie command

```
http -f POST 127.0.0.1:3000 name='upload_test' upload@path_to_file_name.jpg
```

* change `path_to_file_name.jpg` with your image full path.

Above command should print this log in server console :
```
{ fieldname: 'upload',
  originalname: 'filename.jpg',
  encoding: '7bit',
  mimetype: 'text/plain',
  destination: './uploads',
  filename: '10b84dc968b78e83da635cbbe416f6e1.jpg',
  path: 'uploads/10b84dc968b78e83da635cbbe416f6e1.jpg',
  size: 19242 }
{ name: 'upload_test' }
```
