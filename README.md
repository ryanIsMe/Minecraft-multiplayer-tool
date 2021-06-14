# Minecraft Multiplayer Tool Beta
Sử dụng Dropbox, Rclone, playit
## 1. Giới thiệu 
Nếu bạn không có đủ tiền để thuê server thì việc tự host rồi sau đó port-forwarding để chia sẽ cho bạn bè cùng join thì rất bình thường. Nhưng việc đó thường xảy ra vấn đề là mỗi lần bạn của bạn muốn chơi thì phải nhờ bạn mở server và không phải khi nào bạn cũng rãnh và máy cũng mở 24/24. Do đó Minecraft Multiplayer Tool ra đời giúp bạn xử lí vấn đề trên.
## 2. Nguyên lí hoạt động
Tool này giúp đồng bộ server minecraft của bạn lên máy tính của từng thành viên trong nhóm (với số lượng thành viên ít) để mỗi lần người đó muốn chơi không cần nhờ bạn host server 
Tool sử dụng Dropbox làm nơi chứa server sau đó mỗi lần bạn muốn chơi tool sẽ download file server mới nhất (bằng rclone) rồi bắt đầu host server như bình thường sau đó port-forwarding bằng playit. Sau khi bạn tắt server thì máy sẽ up file server đó lên.
## 3. Cách cài đặt
Download file cần cài [tại đây](https://drive.google.com/file/d/1zmwKE2QnwfwssaYv4f-tilJzXdeLKu-D/view?usp=sharing "tại đây") 
Để tool này hoạt động bạn cần một người cấu hình rclone,dropbox và playit
- **Đối với rclone** : tạo tài khoản dropbox sau đó lên mạng search [cách cấu hình rclone và dropbox](https://news.cloud365.vn/huong-dan-cau-hinh-rclone-ket-noi-voi-dropbox/ "cách cấu hình rclone và dropbox"). Nếu cấu hình đúng vào đường dẫn *"C:\Users"* gồm các folder là tên username của bạn và 1 folder tên *Public*. Sau đó vào các folder là tên username của bạn copy folder tên *.config* gửi cho bạn bè
- **Đối với Dropbox** : tạo tài khoản xong vô dropbox tạo thư mục tên mà hồi nãy cấu hình trên rclone (lưu ý ghi đúng từng chữ hoa thường)
- **Đối với playit** : chạy app có tên là dạng playit.exe trong file cần cài đặt sau đó vào tìm kiếm search *%appdata%* vào folder tên *playit* copy file *config.json* gửi cho bạn bè

Sau khi bạn bè của các bạn có 1 folder tên *.config* và 1 file *config.json* thì làm theo các bước sau : 
- Cần tải file cần cài ở phía trên
- Giải nén và chạy app có tên là dạng *playit.exe* 
- Đăng nhập vào dropbox với acc bạn của bạn cung cấp
- Search *%appdata%* và chép đè file *config.jon* bạn của bạn cung cấp vào folder tên *playit*
- Vào đường dẫn *C:\Users* gồm các folder là tên username của bạn và 1 folder tên *Public* .Sau đó vào các folder là tên username của bạn và paste folder tên *.config*  trên

Chạy lần đầu tiên thì cấu hình cài file jar chứa server vào folder tên *Server* rồi ra ngoài chạy file *start.bat* rồi làm theo như hướng dẫn cài server trên youtube
Sau khi cấu hình server xong thì chạy file *sync_up.bat* để up lên dropbox

------------


1. Để khởi động cần chạy file *RUNME.exe*
2. Khi chạy file đó lúc sau sẽ bật web playit kéo xuống gặp cái ghi connected và đường link thì cái đó là link vào server (link này luôn giống nhau mỗi lần chạy)
3. Lúc tắt thì tắt cái *MERGE_RUN* hình con shiba ở góc dưới bên phải trước sau đó vào cái Minecraft Server tắt nó
4. Lúc tắt cái đó xong thì cái *2M Tool* đang upload lên server trong lúc up nó hiện gì kệ nó (lỗi thường gặp là *too_many_write_operation* thì kệ còn mấy lỗi khác thì tra google)
5. Sau khi upload xong hiện lên chữ *FINISH !*   thì tắt nó và xuống góc dưới bên phải tắt file *RUNME.exe*  hình con cheem để tắt hoàn toàn

------------

#### Lưu Ý 
Để tránh tình trạng bị xung đột server thì mỗi lần muốn chơi vào game coi vào server được không mới chạy file *RUNME.exe*

------------

## 4. Các file cần biết
- ***RUNME.exe*** :  Để chạy server và auto sync
- ***start.bat*** : Chứa script để cấu hình server chạy bao nhiêu gb (nếu muốn chơi ít tránh treo máy thì chỉnh cỡ 512MB)
- **Folder *Server*** : chứa file server - vô đây để cài mod, chỉnh file *server.properties*,..
- ***sync_down*** :_Để tải server về từ dropbox. Trong trường hợp nếu tải lỗi thì chạy file này
- ***sync_up*** : upload server lên dropbox. Trong trường hợp nếu upload lỗi thì chạy file này

------------

Đây chỉ là bản beta nên còn vài lỗi vặt mong nhận được feedback từ mọi người. Mọi ý kiến đóng góp vui lòng gửi đến mail *ndlnguyen22@gmail.com*
