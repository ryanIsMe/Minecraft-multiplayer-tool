# Minecraft Multiplayer Tool Beta
Sử dụng Dropbox, Rclone, playit
## 1. Giới thiệu 
Nếu bạn không có đủ tiền để thuê server thì việc tự host rồi sau đó port-forwarding để chia sẽ cho bạn bè cùng join thì rất bình thường. Nhưng việc đó thường xảy ra vấn đề là mỗi lần bạn của bạn muốn chơi thì phải nhờ bạn mở server và không phải khi nào bạn cũng rãnh và máy cũng mở 24/24. Do đó Minecraft Multiplayer Tool ra đời giúp bạn xử lí vấn đề trên.
## 2.Nguyên lí hoạt động
Tool này giúp đồng bộ server minecraft của bạn lên máy tính của từng thành viên trong nhóm (với số lượng thành viên ít) để mỗi lần người đó muốn chơi không cần nhờ bạn host server 
Tool sử dụng Dropbox làm nơi chứa server sau đó mỗi lần bạn muốn chơi tool sẽ download file server mới nhất (bằng rclone) rồi bắt đầu host server như bình thường sau đó port-forwarding bằng playit. Sau khi bạn tắt server thì máy sẽ up file server đó lên.
## 3.Cách cài đặt
Xem hướng dẫn [tại đây](https://drive.google.com/file/d/1O2GCD0swAhA2l5zxMNjDMDK9quAMZxJu/view?usp=sharing "tại đây")
#### Lưu Ý 
- Chỉ phù hợp cho Windows
- Để tránh tình trạng bị xung đột server thì mỗi lần muốn chơi vào game coi vào server được không mới chạy file *Minecraft Multiplayer TOOL.exe*
- File java chạy server cần được đặt bỏ vào thư mục server và đặt tên server.jar

## 4.Các chức năng cần biết
- Turn on/off menu : Ẩn hiện file đang chạy Server 
- Ram option : Chỉnh sửa ram cung cấp để chạy server
- Upload : Để up server lên dropbox trong trường hợp up bị lỗi
- Download : Để down server từ dropbox về máy trong trường hợp down bị lỗi
