package buspj;
import java.awt.*;             // 폰트 등 그래픽 처리를 위한 클래스들의 경로명
import java.awt.event.*;       // 이벤트 처리에 필요한 기본 클래스들의 경로명
import javax.swing.*;          // 스윙 컴포넌트 클래스들 경로명


class Title extends JPanel {
    public Title() {
        Color mycor=new Color(189,215,238);
        setBackground(mycor);

        setLayout(new FlowLayout(FlowLayout.LEFT, 15, 16));

        JLabel title = new JLabel("저희 서비스를 이용해주셔서 감사합니다.");
        title.setFont(new Font("함초롬돋움", Font.PLAIN, 20));
        add(title);
    }
}

public class Main extends JFrame{
    public Main(String id) {
        setTitle("버스타슈~");
        setSize(500,700);
        setResizable(false);
        setLocationRelativeTo(null);  // 프레임을 화면 정중앙에 뜨도록 설정
        setDefaultCloseOperation(JFrame.DO_NOTHING_ON_CLOSE);

        Container mainContainer = getContentPane();

        mainContainer.setLayout(new GridLayout(4, 1));
//        mainContainer.add(new NorthPanel(this, id), BorderLayout.NORTH);
//        mainContainer.add(new CenterPanel(this, id), BorderLayout.CENTER);

        // '예매하기' 버튼 배경 이미지
        ImageIcon reservation = new ImageIcon("project__java/buspj/image/reservation.png");
        Image reserImg = reservation.getImage();
        Image reserUpdate = reserImg.getScaledInstance(500,175,Image.SCALE_SMOOTH);
        ImageIcon reserUpdateIcon = new ImageIcon(reserUpdate);

        ImageIcon reservation2 = new ImageIcon("project__java/buspj/image/reservation2.png");
        Image reserImg2 = reservation2.getImage();
        Image reserUpdate2 = reserImg2.getScaledInstance(500,175,Image.SCALE_SMOOTH);
        ImageIcon reserUpdateIcon2 = new ImageIcon(reserUpdate2);

        // '예매조회' 버튼 배경 이미지
        ImageIcon reservationCheck = new ImageIcon("project__java/buspj/image/reservationcheck.png");
        Image reserCheckImg = reservationCheck.getImage();
        Image reserCheckUpdate = reserCheckImg.getScaledInstance(500,175,Image.SCALE_SMOOTH);
        ImageIcon reserCheckUpdateIcon = new ImageIcon(reserCheckUpdate);

        ImageIcon reservationCheck2 = new ImageIcon("project__java/buspj/image/reservationcheck2.png");
        Image reserCheckImg2 = reservationCheck2.getImage();
        Image reserCheckUpdate2 = reserCheckImg2.getScaledInstance(500,175,Image.SCALE_SMOOTH);
        ImageIcon reserCheckUpdateIcon2 = new ImageIcon(reserCheckUpdate2);

        // '마이페이지' 버튼 배경 이미지
        ImageIcon myPage = new ImageIcon("project__java/buspj/image/mypage.png");
        Image myPageImg = myPage.getImage();
        Image myPageUpdate = myPageImg.getScaledInstance(500,175,Image.SCALE_SMOOTH);
        ImageIcon myPageUpdateIcon = new ImageIcon(myPageUpdate);

        ImageIcon myPage2 = new ImageIcon("project__java/buspj/image/mypage2.png");
        Image myPageImg2 = myPage2.getImage();
        Image myPageUpdate2 = myPageImg2.getScaledInstance(500,175,Image.SCALE_SMOOTH);
        ImageIcon myPageUpdateIcon2 = new ImageIcon(myPageUpdate2);

        // '챗봇상담' 버튼 배경 이미지
        ImageIcon chatbot = new ImageIcon("project__java/buspj/image/chatbotsangdam.png");
        Image chatbotImg = chatbot.getImage();
        Image chatbotUpdate = chatbotImg.getScaledInstance(500,175,Image.SCALE_SMOOTH);
        ImageIcon chatbotUpdateIcon = new ImageIcon(chatbotUpdate);

        ImageIcon chatbot2 = new ImageIcon("project__java/buspj/image/chatbotsangdam2.png");
        Image chatbotImg2 = chatbot2.getImage();
        Image chatbotUpdate2 = chatbotImg2.getScaledInstance(500,175,Image.SCALE_SMOOTH);
        ImageIcon chatbotUpdateIcon2 = new ImageIcon(chatbotUpdate2);

        // 각각 메인화면의 버튼
        JButton btn1 = new JButton(reserUpdateIcon);
        JButton btn2 = new JButton(reserCheckUpdateIcon);
        JButton btn3 = new JButton(myPageUpdateIcon);
        JButton btn4 = new JButton(chatbotUpdateIcon);

        btn1.setBorderPainted(false);
        btn1.setRolloverIcon(reserUpdateIcon2); // 버튼에 마우스가 올라갈떄 이미지 변환
        btn2.setBorderPainted(false);
        btn2.setRolloverIcon(reserCheckUpdateIcon2); // 버튼에 마우스가 올라갈떄 이미지 변환
        btn3.setBorderPainted(false);
        btn3.setRolloverIcon(myPageUpdateIcon2); // 버튼에 마우스가 올라갈떄 이미지 변환
        btn4.setBorderPainted(false);
        btn4.setRolloverIcon(chatbotUpdateIcon2); // 버튼에 마우스가 올라갈떄 이미지 변환
        add(btn1);
        add(btn2);
        add(btn3);
        add(btn4);

        // '예매하기' 버튼 클릭 시 이벤트
        btn1.addMouseListener(new MouseAdapter() {
            public void mouseClicked(MouseEvent e) {
                new ReservationMain(id);
                dispose();
            }
        });

        // '예매조회' 버튼 클릭 시 이벤트
        btn2.addMouseListener(new MouseAdapter() {
            public void mouseClicked(MouseEvent e) {
                new ReservationCheckUp(id);
            }
        });
        // '마이페이지' 버튼 클릭 시 이벤트
        btn3.addMouseListener(new MouseAdapter() {
            public void mouseClicked(MouseEvent e) {
                new MyPage(id);
                dispose();
            }
        });

        btn4.addMouseListener(new MouseAdapter() {
            public void mouseClicked(MouseEvent e) {
                ChatThread chats = new ChatThread();
                chats.run(id);
                //dispose();
            }
        });

        addWindowListener(new JFrameWindowClosingEventHandler());
        setVisible(true);
    }
}