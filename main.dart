import 'dart:io';
import 'dart:math';

var alphabets = ['a','b','c','d','e', 'f','g','h','i','j'];

void main() {
  int uuidNum = generate_uuid();
  String uuidWord = generate_uuidWord();
  String uuid = '$uuidNum-$uuidWord';

  print(uuid);

}

int generate_uuid(){
  var rand = new Random();
  int nums = 1;

  for (var i = 0; i < 10; i++) {
    nums *= rand.nextInt(100);
  }

  return int.parse(nums.toString().substring(0,8));
}

String generate_uuidWord() {
  var uuidWord = '';
  var index = generate_uuid().toString().split('');

  index.forEach((i) => uuidWord +=  alphabets[int.parse(i)]);

  return uuidWord;
}