package dao;

import bean.Card;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CardDao {

    public static Connection getConnection() {

        Connection conn = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/probaa1", "root", "");
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }
        return conn;
    }

    public static int save(Card u) {

        int status = 0;
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("insert into card(cardName,cardInfo,cardOpen,cardManagment) values (?,?,?,?)");
            ps.setString(1, u.getCardName());
            ps.setString(2, u.getCardInfo());
            ps.setString(3, u.getCardOpen());
            ps.setString(4, u.getCardManagment());
            status = ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }

        return status;
    }

    public static int update(Card u) {

        int status = 0;
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("update card set cardName=?, cardInfo=?, cardOpen=?, cardManagment=?");
            ps.setString(1, u.getCardName());
            ps.setString(2, u.getCardInfo());
            ps.setString(3, u.getCardOpen());
            ps.setString(4, u.getCardManagment());
            ps.setInt(5, u.getId());
            status = ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return status;
    }

    public static int delete(Card u) {

        int status = 0;
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("delete from card where id=?");
            ps.setInt(1, u.getId());
        } catch (SQLException e) {
            System.out.println(e);
        }
        return status;
    }

    
    public static List<Card> getAllRecords() {
        List<Card> list = new ArrayList<>();

        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from card where id=?");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Card u = new Card();
                u.setId(rs.getInt("id"));
                u.setCardName(rs.getString("cardName"));
                u.setCardInfo(rs.getString("cardInfo"));
                u.setCardOpen(rs.getString("cardOpen"));
                u.setCardManagment(rs.getString("cardManagment"));
                list.add(u);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }   
        public static Card getRecordById(int id) {

        Card u = null;
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from card where id=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                u = new Card();
                u.setId(rs.getInt("id"));
                u.setCardName(rs.getString("cardName"));
                u.setCardInfo(rs.getString("cardIfo"));
                u.setCardOpen(rs.getString("cardOpen"));
                u.setCardManagment(rs.getString("cardManagment"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return u;
    }
}
