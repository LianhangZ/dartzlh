// void main(){
//     print('hello dart');
// }



// import 'dart:io';

// void main() async{
//     var config = File('config.txt');

//     // Put the whole file in a single string.
//     var stringContents = await config.readAsString();
//     print('The file is ${stringContents.length} characters long.');

//     // Put each line of the file into its own string.
//     var lines = await config.readAsString();
//     print('The file is ${lines.length} lines long.');
// }


import 'dart:io';

void main(){
    String fileName = 'test.txt';
    readFile(fileName).then((value) {
        print(value);
    },onError:(e){
        print('文件不存在');
    });
}

Future<String> readFile(String fileName){
    File file = File(fileName);
    return file.readAsString();
}