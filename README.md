## Dependencies

- เอาไว้ใช้สำหรับ JSON Serializable
    - json_annotation <<<< เอาไว้ใน dependencies:
    - meta <<<< เอาไว้ใน dependency_overrides:  เราต้องไปสร้างเอง  ส่วนนี้ผมไม่มั่นใจเพราะว่าใน document มันไม่ได้บอกว่าต้องลงตัวนี้แต่เครื่องผมมันมีปัญหาเลยใช้ตัวนี้มาช่วยครับ
    - build_runner && json_serializable <<<< เอาไว้ใน dev_dependency:

  หลังจากลง dependencies แล้วเราก็ไปสร้าง class model แล้วก็เอา part 'model_name.g.dart'; กับ  @JsonSerializable() ไปแปะบน class จากนั้นเราก็ใช้คำสั่ง flutter pub run build_runner build เพื่อ generate file

- สำหรับเกี่ยวกับรูป
    - image_picker <<< เอาไว้เพื่อเรียกการเปิดกล้องใน function onUploadImage()
    - http_parser <<< เอาไว้สำหรับตัว MediaType เพื่อเปลี่ยนชื่อ file ใน function _generateImageFromPath()

- Call API
    - http <<< เอาไว้ call พวก API  วิธีใช้ dependency ให้ import 'package:http/http.dart' as http; ใน /data/network/api_service.dart
    - dio <<< เอาไว้ใช้สำหรับพวก post formData และเอาไว้ใช้สร้าง form body ในหน้า home controller เราจะใช้ import 'package:dio/dio.dart' as form; แล้วมาสร้าง form ใน function onUploadImage() เพื่อส่งไปยัง povider

- dependencies อื่นๆ
  - intl <<<< เอาไว้เพื่อเป็นตัว format date
  - shared_preferences <<<< เก็บค่าลง local storage

# Folder
- Share เอาไว้เป็นพวก share widget หรือพวก icon ต่างๆ ใน ที่เป็น global ซึ่งโปรเจคนี้เอาใช้แค่ widget
- Utils เป็นที่เก็บพวก config ต่างๆใน โปรเจค หรือเป็นที่เก็บ global function เช่นเช็ค email reg แล้ว date formatter

# ถ้าจะใช้ ไฟล์ json หรือ รูป
เราต้องไปประกาศ ใน pubspec.yaml แล้วไป uncomment asset  แล้วก็ใส่ path ลงไป

# การใช้ ดึง json แทน API
เราจะไปทำที่ home provider แล้วก็ await rootBundle.loadString('lib/data/photos.json')  แทน  await ApiServices().getAllPhotos('/photos'); 
