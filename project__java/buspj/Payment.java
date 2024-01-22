package buspj;

import javax.swing.*;
import java.awt.*;
import javax.swing.border.LineBorder;
import javax.swing.border.TitledBorder;
import javax.swing.event.*;
import javax.swing.table.DefaultTableModel;
import javax.swing.text.AttributeSet;
import javax.swing.text.BadLocationException;
import javax.swing.text.JTextComponent;
import javax.swing.text.PlainDocument;
import java.awt.event.*;
import java.util.ArrayList;

// 카드 정보 클래스
class Card {
    ArrayList<String> bank = new ArrayList<String>();
    ArrayList<String> cardNum = new ArrayList<String>();
    ArrayList<String> pw = new ArrayList<String>();

    public void insertCard(String bank, String cardNum, String pw) {
        this.bank.add(bank);
        this.cardNum.add(cardNum);
        this.pw.add(pw);
    }
}

// 결재 페이지 메인
public class Payment extends JFrame implements ItemListener {
    Payment thisFrame = this;
    String start;
    String end;
    String date;
    String starttime;
    int number;
    int totalPrice;
    int seatNum;
    JComboBox<String> myCard = new JComboBox<String>();  // 카드 선택 콤보박스
    Card ca;
    DB_connect DB = new DB_connect();  // DB 연결
    JTextField cardNumber1;
    JTextField cardNumber2;
    JTextField cardNumber3;
    JTextField cardNumber4;
    JPasswordField password;
    JTextField mileage;
    String pw;
    public Payment(SeatsSelect frame, String id, String start, String end, String date, String starttime, int price, int seatNum) {
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
                frame.setVisible(true);
                thisFrame.setVisible(false);
            }
        });

        // '예매 정보 확인' 글자
        JLabel checkFont = new JLabel("예매 정보 확인");
        checkFont.setFont(new Font("한컴 말랑말랑 Bold", 0, 20));
        checkFont.setForeground(new Color(255, 255, 255));
        checkFont.setBounds(25, 68, 200, 80);
        add(checkFont);

        // 예매 정보 확인 글자 배경
        JPanel checkBack = new JPanel();
        checkBack.setBackground(new Color(65, 98, 166));
        checkBack.setBounds(0, 90, 1000,40);
        add(checkBack);

        // 출발 날짜 글자
        JLabel dateFont = new JLabel("" + date);
        dateFont.setFont(new Font("한컴 말랑말랑 Bold", 0,18));
        dateFont.setBounds(25, 115, 120, 80);
        add(dateFont);

        // 출발 시간, 도착 시간 글자
        Ticket t = DB.ticket_load(start, end, date, starttime);
        String end_time = t.getEnd_time();
        JLabel timeFont = new JLabel("" + starttime + "  ~  " + end_time);
        timeFont.setFont(new Font("한컴 말랑말랑 Bold", 0,18));
        timeFont.setBounds(145, 115, 160, 80);
        add(timeFont);

        // 좌석 번호 글자
        JLabel seatnumFont = new JLabel("" + seatNum + "번 좌석");
        seatnumFont.setFont(new Font("한컴 말랑말랑 Bold", 0,18));
        seatnumFont.setBounds(275, 115, 100, 80);
        add(seatnumFont);

        // 터미널 글자
        JLabel terminalFont = new JLabel("" + start + "     →     " + end);
        terminalFont.setFont(new Font("한컴 말랑말랑 Bold", 0,18));
        terminalFont.setBounds(25, 148, 500, 80);
        add(terminalFont);

        // 결제금액 글자
        JLabel paymentFont = new JLabel("결제금액   :");
        paymentFont.setFont(new Font("한컴 말랑말랑 Bold", 0,20));
        paymentFont.setForeground(new Color(255, 255, 255));
        paymentFont.setBounds(25, 192, 100, 80);
        add(paymentFont);

        // 결제금액 표시
        JLabel payment = new JLabel("" + price + "원");
        payment.setFont(new Font("한컴 말랑말랑 Bold", 0,20));
        payment.setBounds(155, 192, 100, 80);
        payment.setForeground(new Color(255, 255, 255));
        add(payment);

        // 결제금액 배경
        JPanel paymentBack = new JPanel();
        paymentBack.setBackground(new Color(65, 98, 166));
        paymentBack.setBounds(0, 214, 1000,40);
        add(paymentBack);

        // 카드선택 글자
        JLabel cardselectFont = new JLabel("카드선택");
        cardselectFont.setFont(new Font("한컴 말랑말랑 Bold", 0,20));
        cardselectFont.setBounds(25, 260, 100, 80);
        add(cardselectFont);

        // 카드선택 콤보박스
        myCard.setPreferredSize(new Dimension(150,30));
        myCard.setBounds(25, 324,150,30);
        // 카드 선택 콤보박스에 카드 은행명 삽입
        ca = DB.load_card(id);
        myCard.addItem("없음");  // 디폴트
        for (int i=0; i<ca.bank.size(); i++){
            myCard.addItem(ca.bank.get(i));
        }
        add(myCard);

        // 카드선택 마우스 이벤트
        myCard.addItemListener(this);

        // 마일리지 글자
        JLabel mileageFont = new JLabel("마일리지 적용");
        mileageFont.setFont(new Font("한컴 말랑말랑 Bold", 0,20));
        mileageFont.setBounds(255, 260, 180, 80);
        add(mileageFont);

        // 마일리지 입력창
        mileage = new JTextField();
        mileage.setBounds(255,324,120,30);
        add(mileage);

        // 카드번호 글자
        JLabel cardnumFont = new JLabel("카드번호");
        cardnumFont.setFont(new Font("한컴 말랑말랑 Bold", 0,20));
        cardnumFont.setBounds(25, 360, 100, 80);
        add(cardnumFont);

        // 카드 번호 텍스트 필드
        cardNumber1 = new JTextField();
        cardNumber1.setBounds(25,424,55,30);
        add(cardNumber1);

        JLabel slash1 = new JLabel("ㅡ");
        slash1.setBounds(85,429,45,15);
        slash1.setHorizontalAlignment(JLabel.CENTER);
        slash1.setFont(new Font("맑은 고딕", Font.BOLD, 20));
        add(slash1);

        cardNumber2 = new JTextField();
        cardNumber2.setBounds(135,424,55,30);
        add(cardNumber2);

        JLabel slash2 = new JLabel("ㅡ");
        slash2.setBounds(195,429,45,15);
        slash2.setHorizontalAlignment(JLabel.CENTER);
        slash2.setFont(new Font("맑은 고딕", Font.BOLD, 20));
        add(slash2);

        cardNumber3 = new JTextField();
        cardNumber3.setBounds(245,424,55,30);
        add(cardNumber3);

        JLabel slash3 = new JLabel("ㅡ");
        slash3.setBounds(305,429,45,15);
        slash3.setHorizontalAlignment(JLabel.CENTER);
        slash3.setFont(new Font("맑은 고딕", Font.BOLD, 20));
        add(slash3);

        cardNumber4 = new JTextField();
        cardNumber4.setBounds(355,424,55,30);
        add(cardNumber4);

        // 카드 비밀번호 글자
        JLabel passwordFont = new JLabel("카드 비밀번호");
        passwordFont.setFont(new Font("한컴 말랑말랑 Bold", 0,20));
        passwordFont.setBounds(25, 460, 200, 80);
        add(passwordFont);

        // 카드 비밀번호 입력창
        password = new JPasswordField();
        password.setDocument(new BoundDocument(4, password));
        password.setBounds(25,524,150,30);
        add(password);

        // 결제진행 버튼
        JButton btn2 = new JButton();
        btn2.setBackground(new Color(65, 98, 166));
        btn2.setFont(new Font("한컴 말랑말랑 Bold", 0, 18));
        btn2.setForeground(new Color(255, 255, 255));
        btn2.setText("결제진행");
        btn2.setBounds(175, 600, 130, 40);
        add(btn2);

        // 결제진행 버튼 클릭 시
        btn2.addMouseListener(new MouseAdapter() {
            public void mouseClicked(MouseEvent e) {
                String card = myCard.getSelectedItem().toString();
                String pass = password.getText();
                String num1 = cardNumber1.getText();
                String num2 = cardNumber2.getText();
                String num3 = cardNumber3.getText();
                String num4 = cardNumber4.getText();
                String mile = "";
                int text;

                // 문자열 형태인 마일리지를 정수형으로 바꾸자! 정수연.
                try {
                    mile = mileage.getText();
                    text = Integer.parseInt(mile);
                } catch(NumberFormatException k) {
                    text = 100;
                }
                int usermileage = DB.mileage(id);  // 마일리지 받아오기

                if (password.getText().equals(pw) || (card.equals("없음") && !pass.equals("")
                        && !num1.equals("") && !num2.equals("") && !num3.equals("") && !num4.equals(""))) {
                    System.out.println(text);
                    if (!mile.equals("") && text < 1000) {
                        JOptionPane.showMessageDialog(null,"마일리지는 1000점 이상부터 사용 가능합니다.");
                    } else if (mile.equals("") || (text >= 1000 && text <= price && usermileage >= text)) {
                        // 마일리지를 적용한 경우
                        if (text >= 1000 && usermileage >= text) {
                            usermileage -= text;
                            DB.set_mileage(id, usermileage);

                            // 적용한 마일리지 내역 업데이트
                            int used_mileage = DB.used_mileage_get(id);
                            used_mileage += text;
                            DB.set_used_mileage(id, used_mileage);
                        }
                        // 예매 DB에 저장 후 dispose
                        DB.saveUserReservation(id, start, end, date, starttime, price, seatNum);
                        DB.set_payment(seatNum, 1);  // 해당 좌석이 결제되었다는 뜻
//                    DB.minus_seats(start,end,date,info);  // 해당 표의 좌석 수 -1
                        int point = DB.mileage(id);
                        point += 10;
                        DB.set_mileage(id, point);
                        JOptionPane.showMessageDialog(null, "예매에 성공하였습니다.");

                        new Main(id);
                        thisFrame.dispose();
                    } else if (usermileage < text) {
                        JOptionPane.showMessageDialog(null, "마일리지가 부족합니다.");
                    } else if (text > price) {
                        JOptionPane.showMessageDialog(null, "적용되는 마일리지가 결제금액보다 큽니다.");
                    }
                } else if (card.equals("없음")
                        && (num1.equals("") || num2.equals("") || num3.equals("") || num4.equals(""))) {
                    JOptionPane.showMessageDialog(null,"카드번호를 입력하세요.");
                } else if (card.equals("없음") && (pass.equals("")
                        && (!num1.equals("") && !num2.equals("") && !num3.equals("") && !num4.equals("")))) {
                    JOptionPane.showMessageDialog(null,"비밀번호를 입력하세요.");
                }
                else {
                    JOptionPane.showMessageDialog(null,"비밀번호가 일치하지 않습니다.");
                }
            }
        });

        addWindowListener(new JFrameWindowClosingEventHandler());
        setVisible(true);
    }

    // 내 카드 콤보박스에서 이벤트 처리
    @Override
    public void itemStateChanged(ItemEvent event) {
        if (event.getStateChange() == ItemEvent.SELECTED) {
            String item = (String) event.getItem();
//            String bank1 = myCard.getSelectedItem().toString();   // 해당 카드 은행
            if (item.equals("없음")) {
                cardNumber1.setText("");
                cardNumber2.setText("");
                cardNumber3.setText("");
                cardNumber4.setText("");
                password.setText("");
            } else {
                int index = ca.bank.indexOf(item);             // 해당 카드 은행의 인덱스 추출
                String num = ca.cardNum.get(index);             // 해당 카드 은행의 카드 번호 추출
                String[] numList = new String[4];
                numList[0] = num.substring(0,4);                  // 카드 번호 나눠 배열에 저장
                numList[1] = num.substring(4,8);
                numList[2] = num.substring(8,12);
                numList[3] = num.substring(12);

                cardNumber1.setText(numList[0]);
                cardNumber2.setText(numList[1]);
                cardNumber3.setText(numList[2]);
                cardNumber4.setText(numList[3]);

                pw = ca.pw.get(index);     // 해당 카드의 비밀번호 추출
            }
        }
    }
}