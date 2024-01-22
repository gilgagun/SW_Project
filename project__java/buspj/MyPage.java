package buspj;
import java.awt.*;             // 폰트 등 그래픽 처리를 위한 클래스들의 경로명
import java.awt.event.*;       // 이벤트 처리에 필요한 기본 클래스들의 경로명
import javax.swing.*;          // 스윙 컴포넌트 클래스들 경로명

class MyDialog extends JDialog{
    JLabel comment = new JLabel();
    JTextField pw = new JTextField(10);
    JButton ok = new JButton("ok");
    public MyDialog(MyPage frame, String id){
        comment = new JLabel("비밀번호를 입력해주세요");
        add(comment);
        setLocationRelativeTo(null);
        setLayout(new FlowLayout());
        add(pw);
        add(ok);
        setSize(200,100);
        ok.addMouseListener(new MouseAdapter() {
            public void mouseClicked(MouseEvent e) {
                String user_pw = pw.getText();
                DB_connect db = new DB_connect();
                int n = db.login(id, user_pw);
                if (n==1){
                    int key = db.login_out(id);
                    if (key==1){
                        JOptionPane.showMessageDialog(null, "삭제되었습니다.");
                        setVisible(false);
                        new login_interface();
                        //JFrame frames = (JFrame)e.getSource();

                        frame.dispose();  // 화면이 안 닫히는 에러.
                    }
                    else{
                        JOptionPane.showMessageDialog(null, "db오류.");
                    }
                }
                else {
                    JOptionPane.showMessageDialog(null, "비밀번호 미일치");
                }
            }
        });
    }
}

public class MyPage extends JFrame {
    public MyPage(String id) {
        setTitle("버스타슈~");
        setSize(500,700);
        setResizable(false);
        setLocationRelativeTo(null);  // 프레임을 화면 정중앙에 뜨도록 설정
        setDefaultCloseOperation(JFrame.DO_NOTHING_ON_CLOSE);
        setLayout(null);

        Container mainContainer = getContentPane();
        Color bgmycor=new Color(196,216,242);   // 배경 색상
        mainContainer.setBackground(bgmycor);

        // 뒤로가기 버튼 이미지
        ImageIcon backIcon = new ImageIcon("project__java/buspj/image/back.png");
        Image backImg = backIcon.getImage();
        Image backUpdate = backImg.getScaledInstance(100,50, Image.SCALE_SMOOTH);
        ImageIcon backUpdateIcon = new ImageIcon(backUpdate);

        ImageIcon backIcon2 = new ImageIcon("project__java/buspj/image/back2.png");
        Image backImg2 = backIcon2.getImage();
        Image backUpdate2 = backImg2.getScaledInstance(100,50, Image.SCALE_SMOOTH);
        ImageIcon backUpdateIcon2 = new ImageIcon(backUpdate2);

        // 뒤로가기 버튼
        JButton btn1;

        btn1=new JButton();
        btn1.setBackground(new Color(65, 98, 166));
        btn1.setFont(new Font("한컴 말랑말랑 Bold", 0, 18));
        btn1.setForeground(new Color(255, 255, 255));
        btn1.setText("뒤로가기");
        btn1.setBounds(17, 13, 130, 40);

        add(btn1);

        // 뒤로가기 버튼 클릭 시
        btn1.addMouseListener(new MouseAdapter() {
            public void mouseClicked(MouseEvent e) {
                new Main(id);
                dispose();
            }
        });

        // '마이페이지' 문구 이미지
        ImageIcon my = new ImageIcon("project__java/buspj/image/my.png");
        Image myImg = my.getImage();
        Image myUpdate = myImg.getScaledInstance(220,80,Image.SCALE_SMOOTH);
        ImageIcon myUpdateIcon = new ImageIcon(myUpdate);

        // '마이페이지' 글씨
        JLabel mypage = new JLabel(myUpdateIcon);
        mypage.setBounds(130,60,220,80);
        add(mypage);

        // 프로필 이미지
        ImageIcon profile = new ImageIcon("project__java/buspj/image/myuser.png");
        Image profileImg = profile.getImage();
        Image profileUpdate = profileImg.getScaledInstance(80,80,Image.SCALE_SMOOTH);
        ImageIcon profileUpdateIcon = new ImageIcon(profileUpdate);

        // 프로필 이미지 JLabel
        JLabel profileImage = new JLabel(profileUpdateIcon);
        profileImage.setBounds(198,140,80,80);
        add(profileImage);

        // 고객 이름 띄우기
        JLabel name = new JLabel(id);
        name.setFont(new Font("한컴 말랑말랑 Bold", Font.BOLD, 20));
        name.setBounds(190,225,200,50);
        add(name);

        // 마일리지 칸
        DB_connect DB = new DB_connect();
        int usermileage = DB.mileage(id);  // 마일리지 받아오기
        JLabel mileages = new JLabel("" + usermileage);
        mileages.setBounds(295,323,100,50);
        mileages.setFont(new Font("한컴 말랑말랑 Bold", Font.BOLD, 25));
        add(mileages);

        // 마일리지 출력
        ImageIcon mile = new ImageIcon("project__java/buspj/image/mile.png");
        Image mileImg = mile.getImage();
        Image mileUpdate = mileImg.getScaledInstance(400,100,Image.SCALE_SMOOTH);
        ImageIcon mileUpdateIcon = new ImageIcon(mileUpdate);

        JLabel mileage = new JLabel(mileUpdateIcon);
        mileage.setBounds(41,300,400,100);
        add(mileage);

        // 카드관리 표시
        ImageIcon cardcheck = new ImageIcon("project__java/buspj/image/cardcheck.png");
        Image cardImg = cardcheck.getImage();
        Image cardUpdate = cardImg.getScaledInstance(230,190,Image.SCALE_SMOOTH);
        ImageIcon cardUpdateIcon = new ImageIcon(cardUpdate);

        ImageIcon cardcheck2 = new ImageIcon("project__java/buspj/image/cardcheck2.png");
        Image cardImg2 = cardcheck2.getImage();
        Image cardUpdate2 = cardImg2.getScaledInstance(230,190,Image.SCALE_SMOOTH);
        ImageIcon cardUpdateIcon2 = new ImageIcon(cardUpdate2);

        JButton card = new JButton(cardUpdateIcon);
        card.setBounds(23, 420, 230, 190);
        card.setBorderPainted(false); // 버튼 테두리 설정해제
        card.setRolloverIcon(cardUpdateIcon2); // 버튼에 마우스가 올라갈떄 이미지 변환
        card.setFocusPainted(false);
        card.setContentAreaFilled(false);
        card.setOpaque(false);
        add(card);

        // 카드관리 클릭 시
        card.addMouseListener(new MouseAdapter() {
            public void mouseClicked(MouseEvent e) {
                new MyCard(id);
            }
        });

        // 회원탈퇴 표시
        ImageIcon byeuser = new ImageIcon("project__java/buspj/image/byeuser.png");
        Image byeImg = byeuser.getImage();
        Image byeUpdate = byeImg.getScaledInstance(230,190,Image.SCALE_SMOOTH);
        ImageIcon byeUpdateIcon = new ImageIcon(byeUpdate);

        ImageIcon byeuser2 = new ImageIcon("project__java/buspj/image/byeuser2.png");
        Image byeImg2 = byeuser2.getImage();
        Image byeUpdate2 = byeImg2.getScaledInstance(230,190,Image.SCALE_SMOOTH);
        ImageIcon byeUpdateIcon2 = new ImageIcon(byeUpdate2);

        JButton bye = new JButton(byeUpdateIcon);
        bye.setBounds(230, 420, 230, 190);
        bye.setBorderPainted(false); // 버튼 테두리 설정해제
        bye.setRolloverIcon(byeUpdateIcon2); // 버튼에 마우스가 올라갈떄 이미지 변환
        bye.setFocusPainted(false);
        bye.setContentAreaFilled(false);
        bye.setOpaque(false);
        add(bye);

        // 회원탈퇴 클릭
        MyDialog dialog = new MyDialog(this, id);
        bye.addMouseListener(new MouseAdapter() {
            public void mouseClicked(MouseEvent e) {
                int answer = JOptionPane.showConfirmDialog(null, "탈퇴 하시겠습니까?","회원탈퇴",JOptionPane.YES_NO_OPTION);
                if(answer==0){
                    dialog.setVisible(true);
                    //new login_interface();
                    //frame.dispose();
                }
            }
        });
//        mainContainer.setLayout(new BorderLayout());

//        mainContainer.add(new MyNorthPanel(this, id), BorderLayout.NORTH);
//        mainContainer.add(new MyCenterPanel(this, id), BorderLayout.CENTER);

        addWindowListener(new JFrameWindowClosingEventHandler());
        setVisible(true);
    }
}