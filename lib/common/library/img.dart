import 'dart:io';
import 'package:image/image.dart' as img;
import 'package:path/path.dart' as path;

// compressImage 压缩图片
Future<File> compressImage(File originalFile, int quality) async {
  // 获取原始图像文件的字节流并解码
  final originalImage = img.decodeImage(await originalFile.readAsBytes());

  // 压缩图像
  final compressedImage = img.copyResize(originalImage!, width: 800);

  // 将压缩后的图像编码为 JPEG 格式
  final compressedBytes = img.encodeJpg(compressedImage, quality: quality);

  // 组装压缩输出文件路径
  final outputFilePath = path.join(path.dirname(originalFile.path),
      'compressed_${path.basename(originalFile.path)}');

  // 将压缩后的图像保存到输出文件中
  final compressedFile = File(outputFilePath);
  await compressedFile.writeAsBytes(compressedBytes);

  return compressedFile;
}
