package buspj;

import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableModel;
import java.awt.*;
import java.awt.event.*;
import java.lang.reflect.Array;
import java.util.*;
import java.text.*;

// 표 테이블에 들어갈 표 정보 클래스
class Ticket {
    int price;
    String end_time;

    public void insertTicket(int price, String end_time) {
        this.price = price;
        this.end_time = end_time;
    }
    public int getPrice() {
        return this.price;
    }

    public String getEnd_time() {
        return this.end_time;
    }
}

// '출발 날짜' 콤보 박스에 삽입할 날짜 배열 클래스 DuringDateTest
class DuringDateTest {
    String[] date = new String[100];   // 날짜를 담을 배열(사이즈를 100으로 설정)
    int length;                        // 배열에 저장된 날짜의 개수를 담을 변수

    public DuringDateTest() {
        String startDt = "20220610";  // 시작 날짜
        int endDt = 20220730;        // 끝 날짜

        int startYear = Integer.parseInt(startDt.substring(0,4));   // 시작 날짜에서 연도만 잘라서 저장
        int startMonth= Integer.parseInt(startDt.substring(4,6));   // 시작 날짜에서 월만 잘라서 저장
        int startDate = Integer.parseInt(startDt.substring(6,8));   // 시작 날짜에서 일만 잘라서 저장

        Calendar cal = Calendar.getInstance();    // Calendar 객체 생성

        // Calendar의 Month, Date는 0부터 시작하므로 -1 해준다.
        // Calendar의 기본 날짜를 startDt로 세팅해준다.
        cal.set(startYear, startMonth - 1, startDate - 1);

        int count = 0;    // 날짜를 배열에 저장할 때마다 증가할 count 변수
        int i = 0;
        while(true) {
            this.date[i] = getDateByString(cal.getTime());   // 시작 날짜부터 시작하여 날짜를 배열에 저장

            // Calendar의 날짜를 하루씩 증가한다.
            cal.add(Calendar.DATE, 1); // one day increment
            i += 1;
            count += 1;   // count + 1

            // 현재 날짜가 종료일자보다 크면 종료
            if(getDateByInteger(cal.getTime()) > endDt) break;
        }

        this.length = count;   // 최종 count 값을 length에 저장
    }

    public static int getDateByInteger(Date date) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
        return Integer.parseInt(sdf.format(date));
    }

    public static String getDateByString(Date date) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        return sdf.format(date);
    }
}

// '예약하기' 화면의 메인 부분
public class ReservationMain extends JFrame {
    ReservationMain frame = this;
    JComboBox<String> start = new JComboBox<String>();   // 출발 터미널 콤보박스
    JComboBox<String> end = new JComboBox<String>();     // 도착 터미널 콤보박스
    JComboBox<String> date = new JComboBox<String>();    // 출발 날짜 콤보박스
    JComboBox<String> time = new JComboBox<String>();    // 출발 시간 콤보박스
    DB_connect DB = new DB_connect();
    // 출발, 도착 터미널 정보, 출발 시간 정보를 담을 배열
    String[] start_terminal = new String[20000];
    String end_terminal[] = new String[20000];
    String start_time[] = new String[20000];
    public ReservationMain(String id) {
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

        // '출발 터미널' 글자
        JLabel startterminalFont = new JLabel("출발 터미널");
        startterminalFont.setFont(new Font("한컴 말랑말랑 Bold", 0, 25));
        startterminalFont.setForeground(new Color(255, 255, 255));
        startterminalFont.setBounds(25, 74, 200, 90);
        add(startterminalFont);

        // 출발 터미널 글자 배경
        JPanel startterminalBack = new JPanel();
        startterminalBack.setBackground(new Color(65, 98, 166));
        startterminalBack.setBounds(0, 95, 1000,50);
        add(startterminalBack);

        // '도착 터미널' 글자
        JLabel endterminalFont = new JLabel("도착 터미널");
        endterminalFont.setFont(new Font("한컴 말랑말랑 Bold", 0, 25));
        endterminalFont.setForeground(new Color(255, 255, 255));
        endterminalFont.setBounds(25, 197, 200, 90);
        add(endterminalFont);

        // 도착 터미널 글자 배경
        JPanel endterminalBack = new JPanel();
        endterminalBack.setBackground(new Color(65, 98, 166));
        endterminalBack.setBounds(0, 218, 1000,50);
        add(endterminalBack);

        // '출발 날짜' 글자
        JLabel dateFont = new JLabel("출발 날짜");
        dateFont.setFont(new Font("한컴 말랑말랑 Bold", 0, 25));
        dateFont.setForeground(new Color(255, 255, 255));
        dateFont.setBounds(25, 320, 200, 90);
        add(dateFont);

        // 출발 날짜 글자 배경
        JPanel dateBack = new JPanel();
        dateBack.setBackground(new Color(65, 98, 166));
        dateBack.setBounds(0, 341, 1000,50);
        add(dateBack);

        // '출발 시간' 글자
        JLabel timeFont = new JLabel("출발 시간");
        timeFont.setFont(new Font("한컴 말랑말랑 Bold", 0, 25));
        timeFont.setForeground(new Color(255, 255, 255));
        timeFont.setBounds(25, 443, 200, 90);
        add(timeFont);

        // 출발 시간 글자 배경
        JPanel timeBack = new JPanel();
        timeBack.setBackground(new Color(65, 98, 166));
        timeBack.setBounds(0, 464, 1000,50);
        add(timeBack);

        // 좌석선택 버튼
        JButton btn2 = new JButton();
        btn2.setBackground(new Color(65, 98, 166));
        btn2.setFont(new Font("한컴 말랑말랑 Bold", 0, 18));
        btn2.setForeground(new Color(255, 255, 255));
        btn2.setText("좌석선택");
        btn2.setBounds(175, 600, 130, 40);
        add(btn2);

        // '출발 터미널' 콤보박스에 정류장 리스트 삽입
//        start.setPreferredSize(new Dimension(220,20));
//        start.setLocation(23,135);
        start.setBounds(23,165,220,30);
        start_terminal = DB.start();
        for (int i=0; i<start_terminal.length; i++){
            start.addItem(start_terminal[i]);
        }
        add(start);

        // '도착 터미널' 콤보박스에 정류장 리스트 삽입
//        end.setPreferredSize(new Dimension(220,20));
//        end.setLocation(23,258);
        end.setBounds(23,288,220,30);
//        end_terminal = DB.end(start.getSelectedItem().toString());
//        for (int i=0; i<end_terminal.length; i++){
//            end.addItem(end_terminal[i]);
//        }
        add(end);

        // '출발 날짜' 콤보박스에 삽입할 날짜 정보 객체 생성
        DuringDateTest ddt = new DuringDateTest();

        // '출발 날짜' 콤보박스 사이즈 및 위치 설정
//        this.date.setPreferredSize(new Dimension(220,20));
//        this.date.setLocation(23,381);
        this.date.setBounds(23,411,220,30);

//        // '출발 날짜' 콤보박스에 ddt 객체에서 생성했던 날짜들 삽입
//        for (int i = 1; i <= ddt.length; i++) {
//            this.date.addItem(ddt.date[i]);
//        }
        add(this.date);

        // 출발 시간 콤보박스에 시간 리스트 삽입
        time.setBounds(23,534,220,30);
//        start_time = DB.time(start.getSelectedItem().toString(), end.getSelectedItem().toString());
//        for (int i=0; i<start_time.length; i++){
//            time.addItem(start_time[i]);
//        }
        add(time);

        // JCombobox 마우스 아이템 이벤트
        start.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                JComboBox cb = (JComboBox) e.getSource();  // 선택한 출발 터미널 소스 가져오기
                end.removeAllItems();   // 도착 터미널 콤보박스 내용물 다 지우기
                end_terminal = null;   // 선택한 출발 터미널에서 갈 수 있는 터미널 모음을 초기화
                end_terminal = DB.end(cb.getSelectedItem().toString());
                for (int i=0; i<end_terminal.length; i++) {
                    end.addItem(end_terminal[i]);   // 내용물 다 지운 도착 터미널 콤보박스에 꼬라박아 범퍼카!!!!
                }
                System.out.println("킹받네");
                add(end);
                // '출발 날짜' 콤보박스에 ddt 객체에서 생성했던 날짜들 삽입
                for (int i = 1; i <= ddt.length; i++) {
                    date.addItem(ddt.date[i]);
                }
                add(date);
            }
        });

        // JCombobox 마우스 아이템 이벤트
        end.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                JComboBox cd = (JComboBox) e.getSource();  // 선택한 출발 터미널 소스 가져오기
                time.removeAllItems();   // 도착 터미널 콤보박스 내용물 다 지우기
                start_time = null;   // 선택한 출발 터미널에서 갈 수 있는 터미널 모음을 초기화
                start_time = DB.time(start.getSelectedItem().toString(), cd.getSelectedItem().toString());  // 시발 다 가져와 도착 터미널!!!
                for (int i=0; i<start_time.length; i++) {
                    time.addItem(start_time[i]);   // 내용물 다 지운 도착 터미널 콤보박스에 꼬라박아 범퍼카!!!!
                }
                add(time);
            }
        });

        // 좌석선택 버튼 클릭 시
        btn2.addMouseListener(new MouseAdapter() {
            public void mouseClicked(MouseEvent e) {
                // 출발 터미널, 도착 터미널, 출발 날짜 등의 정보를 좌석 선택 페이지로 넘겨줌
                String st = start.getSelectedItem().toString();
                String ed = end.getSelectedItem().toString();
                String dt = date.getSelectedItem().toString();
                String tm = time.getSelectedItem().toString();
                System.out.println(st + ed + dt + tm);
                new SeatsSelect(frame, id, st, ed, dt, tm);
                frame.setVisible(false);
            }
        });

        addWindowListener(new JFrameWindowClosingEventHandler());
        setVisible(true);
    }

}