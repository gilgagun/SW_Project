package buspj;
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;       // 이벤트 처리에 필요한 기본 클래스들의 경로명


class AdministratorLoginAndSignup extends JPanel {
    AdministratorMain frame;

    public AdministratorLoginAndSignup(AdministratorMain frame) {
        Color mycor=new Color(189,215,238);
        setBackground(mycor);
        this.frame = frame;

        setLayout(new FlowLayout(FlowLayout.RIGHT, 10, 5));


        ImageIcon logout = new ImageIcon("project__java/buspj/image/reout.png");
        Image relogout = logout.getImage();
        Image reUpdate1 = relogout.getScaledInstance(60,50, Image.SCALE_SMOOTH);
        ImageIcon reUpdateIcon2 = new ImageIcon(reUpdate1);

        ImageIcon logout2 = new ImageIcon("project__java/buspj/image/reout1.png");
        Image relogout2 = logout2.getImage();
        Image reUpdate12 = relogout2.getScaledInstance(60,50, Image.SCALE_SMOOTH);
        ImageIcon reUpdateIcon22 = new ImageIcon(reUpdate12);
        JButton logoutButton = new JButton(reUpdateIcon2);
        //logoutButton.setPreferredSize(new Dimension(120, 50));
        //.setFont(new Font("굴림", Font.BOLD, 20));
        logoutButton.setRolloverIcon(reUpdateIcon22);
        logoutButton.setBorderPainted(false);
        logoutButton.setFocusPainted(false);
        logoutButton.setContentAreaFilled(false);
        logoutButton.setOpaque(false);
        add(logoutButton);

        // 로그아웃 버튼 클릭 시 이벤트
        logoutButton.addMouseListener(new MouseAdapter() {
            public void mouseClicked(MouseEvent e) {
                int answer = JOptionPane.showConfirmDialog(null, "로그아웃 하시겠습니까?","로그아웃",JOptionPane.YES_NO_OPTION);
                if (answer == JOptionPane.YES_OPTION) {
                    new login_interface();
                    frame.dispose();
                }
            }
        });
    }
}


public class AdministratorMain extends JFrame {
    public AdministratorMain() {
        setTitle("버스타슈~");
        setSize(500,350);  // 900 800
        setResizable(false);
        setLocationRelativeTo(null);  // 프레임을 화면 정중앙에 뜨도록 설정
        setDefaultCloseOperation(JFrame.DO_NOTHING_ON_CLOSE);

        Container mainContainer = getContentPane();
        mainContainer.setLayout(new GridLayout(2, 1));

//        mainContainer.add(new AdministratorNorthPanel(this), BorderLayout.NORTH);
//        mainContainer.add(new AdministratorCenterPanel(), BorderLayout.CENTER);

        // 회원관리~
        ImageIcon user_management = new ImageIcon("project__java/buspj/image/회원관리.png");
        Image user_managementImg = user_management.getImage();
        Image user_managementUpdate = user_managementImg.getScaledInstance(500,175,Image.SCALE_SMOOTH);  //픽셀 단위
        ImageIcon user_managementUpdateIcon = new ImageIcon(user_managementUpdate);

        ImageIcon user_management2 = new ImageIcon("project__java/buspj/image/회원관리투명.png");  // 마우스를 올렸을 때의 투명한 이미지
        Image user_managementImg2 =user_management2.getImage();
        Image user_managementUpdate2 = user_managementImg2.getScaledInstance(500,175,Image.SCALE_SMOOTH);
        ImageIcon user_managementUpdateIcon2 = new ImageIcon(user_managementUpdate2);

        // 운영정보 관리 ~
        ImageIcon bus_info = new ImageIcon("project__java/buspj/image/운행정보관리.png");
        Image bus_infoImg = bus_info.getImage();
        Image bus_infoUpdate = bus_infoImg.getScaledInstance(500,175,Image.SCALE_SMOOTH);  //픽셀 단위
        ImageIcon bus_infoUpdateIcon = new ImageIcon(bus_infoUpdate);

        ImageIcon bus_info2 = new ImageIcon("project__java/buspj/image/운행정보관리투명.png");  // 마우스를 올렸을 때의 투명한 이미지
        Image bus_infoImg2 = bus_info2.getImage();
        Image bus_infoUpdate2 = bus_infoImg2.getScaledInstance(500,175,Image.SCALE_SMOOTH);
        ImageIcon bus_infoUpdateIcon2 = new ImageIcon(bus_infoUpdate2);

        // 화면의 버튼
        JButton btn1 = new JButton(user_managementUpdateIcon);
        JButton btn2 = new JButton(bus_infoUpdateIcon);

        // 마우스를 올렸을 때 이미지 변환
        btn1.setBorderPainted(false);
        btn1.setRolloverIcon(user_managementUpdateIcon2); // 버튼에 마우스가 올라갈떄 이미지 변환
        btn2.setBorderPainted(false);
        btn2.setRolloverIcon(bus_infoUpdateIcon2); // 버튼에 마우스가 올라갈떄 이미지 변환

        add(btn1); add(btn2);

        // 회원관리 버튼 클릭 시 이벤트
        btn1.addMouseListener(new MouseAdapter() {
            public void mouseClicked(MouseEvent e) {
                new UserList("root");
                //dispose();
            }
        });


        // 운행정보 관리 버튼 클릭 시 이벤트
        btn2.addMouseListener(new MouseAdapter() {
            public void mouseClicked(MouseEvent e) {
                new BusList("root");
                //dispose();
            }
        });

        addWindowListener(new JFrameWindowClosingEventHandler());

        setVisible(true);
    }
}