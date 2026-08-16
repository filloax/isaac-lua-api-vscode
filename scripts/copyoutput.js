const fs = require('fs');
const path = require('path');

function copyFileSync( source, target ) {

    var targetFile = target;

    // If target is a directory, a new file with the same name will be created
    if ( fs.existsSync( target ) ) {
        if ( fs.lstatSync( target ).isDirectory() ) {
            targetFile = path.join( target, path.basename( source ) );
        }
    }

    fs.writeFileSync(targetFile, fs.readFileSync(source));
}

function copyFolderRecursiveSync( source, target ) {
    var files = [];

    // Check if folder needs to be created or integrated
    var targetFolder = path.join( target, path.basename( source ) );
    if ( !fs.existsSync( targetFolder ) ) {
        fs.mkdirSync( targetFolder );
    }

    // Copy
    if ( fs.lstatSync( source ).isDirectory() ) {
        files = fs.readdirSync( source );
        files.forEach( function ( file ) {
            var curSource = path.join( source, file );
            if ( fs.lstatSync( curSource ).isDirectory() ) {
                copyFolderRecursiveSync( curSource, targetFolder );
            } else {
                copyFileSync( curSource, targetFolder );
            }
        } );
    }
}


if (!fs.existsSync("out")){
    fs.mkdirSync("out");
}
copyFolderRecursiveSync(path.join("merge", "emmylua"), "out");

// LuaLS plugin: generated callbackParams.lua + static plugin.lua, side by side
if (!fs.existsSync(path.join("out", "plugin"))){
    fs.mkdirSync(path.join("out", "plugin"), { recursive: true });
}
copyFolderRecursiveSync(path.join("merge", "plugin"), "out");
copyFileSync(path.join("src", "plugin", "plugin.lua"), path.join("out", "plugin", "plugin.lua"));