package dao;

import bean.Credit;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CreditDao {

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

    public static int save(Credit c) {

        int status = 0;
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("insert into credit(creditName,creditInfo,creditAmount,repaymentCredit) values (?,?,?,?)");
            ps.setString(1, c.getCreditName());
            ps.setString(2, c.getCreditInfo());
            ps.setString(3, c.getCreditAmount());
            ps.setString(4, c.getRepaymentCredit());
            status = ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }

        return status;
    }

    public static int update(Credit c) {

        int status = 0;
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("update credit set creditName=?, creditInfo=?, creditAmount=?, repaymentCredit=?");
            ps.setString(1, c.getCreditName());
            ps.setString(2, c.getCreditInfo());
            ps.setString(3, c.getCreditAmount());
            ps.setString(4, c.getRepaymentCredit());
            ps.setInt(5, c.getId());
            status = ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return status;
    }

    public static int delete(Credit c) {

        int status = 0;
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("delete from credit where id=?");
            ps.setInt(1, c.getId());
        } catch (SQLException e) {
            System.out.println(e);
        }
        return status;
    }

    public static List<Credit> getAllRecords() {
        List<Credit> list = new ArrayList<>();

        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from credit where id=?");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Credit c = new Credit();
                c.setId(rs.getInt("id"));
                c.setCreditName(rs.getString("creditName"));
                c.setCreditInfo(rs.getString("creditInfo"));
                c.setCreditAmount(rs.getString("creditAmount"));
                c.setRepaymentCredit(rs.getString("repaymentCredit"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public static Credit getRecordById(int id) {

        Credit c = null;
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from credit where id=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                c = new Credit();
                c.setId(rs.getInt("id"));
                c.setCreditName(rs.getString("creditName"));
                c.setCreditInfo(rs.getString("creditInfo"));
                c.setCreditAmount(rs.getString("creditAmount"));
                c.setRepaymentCredit(rs.getString("repaymentCredit"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return c;
    }
}
