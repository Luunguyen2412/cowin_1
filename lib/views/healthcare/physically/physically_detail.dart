
import 'dart:io';

import 'package:cowin_1/common/config/texts_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhysicallyDetail extends StatefulWidget {
  final int id;
  const PhysicallyDetail(this.id,{Key? key}) : super(key: key);

  @override
  State<PhysicallyDetail> createState() => _PhysicallyDetailState();
}

class _PhysicallyDetailState extends State<PhysicallyDetail> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Hero(
        tag: "physically_detail${widget.id}",
        child: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  children: [
                    ClipPath(
                      clipper: MyCustomClipper(),
                      child:    Container(
                        height: 280.h,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.black12,
                        child: Image.asset("assets/images/py.png"),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Column(
                        children: [
                          SizedBox(height: 10.h,),
                          Text("6 bài tập vận động tại giường cho bệnh nhân Covid-19",style: kText30Bold_3,),
                          SizedBox(height: 10.h,),

                          Container(

                            child: Text("""Nên tập thể dục, nghe nhạc, đọc sách, xem phim, hoặc học một nhạc cụ mới để giảm căng thẳng khi cách ly tại nhà, chuyên gia gợi ý.

Bác sĩ Nguyễn Viết Chung, Khoa Sức khỏe Tâm thần, Bệnh viện E, cho biết dịch Covid-19 kéo dài và phức tạp, ảnh hưởng rất lớn đến cuộc sống, làm thay đổi nhiều thói quen của mọi người. Trong đó, nhóm F0, F1 cách ly tại nhà dễ gặp phải biểu hiện căng thẳng hơn như cảm giác sợ hãi, lo mình mắc bệnh hoặc buồn bã, thất vọng khi mình là nguồn lây cho gia đình. Nhóm này có thể thay đổi về cảm giác thèm ăn, mong muốn và sở thích; khó ngủ, stress.

Đại dịch còn tác động mạnh mẽ đến một số doanh nghiệp khiến họ phải lao đao xoay xở kinh tế, nếu bị cách ly cũng dễ căng thẳng và lo lắng hơn rất nhiều.

Bác sĩ Chung khuyên để kiểm soát căng thẳng, mọi người cần học cách thích nghi, chấp nhận "sống chung an toàn" với dịch bệnh và thực hiện cách ly đúng thời hạn với tâm lý thoải mái, không tự tạo áp lực cho bản thân, không suy nghĩ quá nhiều.

Thường xuyên liên hệ với các thành viên gia đình, bạn bè và đồng nghiệp qua điện thoại, tin nhắn, gọi video mỗi ngày. Trong thời gian giãn cách xã hội, nếu cách ly cùng gia đình thì hãy dành thời gian chăm sóc họ nhiều hơn để giảm suy nghĩ tiêu cực.

Khi cách ly tại nhà, bạn nên duy trì chế độ ăn uống lành mạnh, trong đó chú ý các thực phẩm có hàm lượng đạm dễ hấp thụ như: tôm, cua, cá... đặc biệt là đạm có nguồn gốc thực vật như đậu nành. Các loại thực phẩm này giàu chất kẽm, vitamin B, selen, acid béo, acid amino, trytophan. Bổ sung các loại hoa quả, rau xanh, củ như: quả mâm xôi, khoai tây, chuối, quả bơ, cam, quýt, kiwi. Những loại quả này giàu vitamin C, vitamin B, kali, axit amino... giúp làm dịu hệ thần kinh.

Dành thời gian tập thể dục tại nhà, giúp giảm hormone căng thẳng của cơ thể, sống khỏe mạnh và tích cực hơn. Nghe nhạc, đọc sách, ngồi thiền hoặc xem phim giải trí.

Trường hợp vẫn phải làm việc khi cách ly, bạn nên sắp xếp thời gian và lên thời gian biểu phù hợp. Không ngồi quá lâu trước máy tính, thỉnh thoảng đứng dậy đi lại để đầu óc thoải mái hơn.

Lựa chọn thông tin tích cực để đọc, giảm tin về tình hình Covid-19. Tránh các chất kích thích như rượu, caffeine và nicotine trước khi đi ngủ. Ngủ đủ 7 - 8 tiếng mỗi ngày.

Dự trữ đầy đủ một số loại thuốc cần thiết như hạ sốt, vitamin C, tiêu chảy, dạ dày, xịt khoáng, khẩu trang,... để chủ động trong mọi trường hợp.

Ở trẻ em, việc nghỉ học kéo dài, hạn chế vui chơi bên ngoài, phụ huynh nên hạn chế cho trẻ chơi điện thoại, máy tính dẫn đến cận thị, nghiện game, xao nhãng việc học. Gia đình cần sắp xếp thời gian để chơi với con, dạy con chơi nhạc cụ hoặc các trò chơi khác để cách ly đỡ nhàm chán.

Người già, người có bệnh nền cần uống thuốc đều đặn, rèn luyện dưỡng sinh và thông báo tình hình sức khỏe của mình mỗi ngày đến nhân viên y tế, tránh lo lắng khi cách ly một mình.
                                """,style: kText16Normal_3,),
                          ),

                        ],
                      ),
                    )
                  ],
                ),

                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 50.h,
                      width: 50.h,
                      margin: EdgeInsets.only(top: 10.h, right: 10.w),
                      child: Icon(
                        Icons.cancel_outlined,
                        color: Colors.white,
                        size: 45.h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 2, size.height-80, size.width, size.height);
    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}