package dao;

import bean.Account;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AccountDao {

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

    public static int save(Account a) {

        int status = 0;
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("insert into account(accountName,accountInfo,accountOpen,accountManagment) values (?,?,?,?)");
            ps.setString(1, a.getAccountName());
            ps.setString(2, a.getAccountInfo());
            ps.setString(3, a.getAccountOpen());
            ps.setString(4, a.getAccountManagment());
            status = ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }

        return status;
    }

    public static int update(Account a) {

        int status = 0;
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("update account set accountName=?, accountInfo=?, accountOpen=?, accountManagment=?");
            ps.setString(1, a.getAccountName());
            ps.setString(2, a.getAccountInfo());
            ps.setString(3, a.getAccountOpen());
            ps.setString(4, a.getAccountManagment());
            ps.setInt(5, a.getId());
            status = ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return status;
    }

    public static int delete(Account a) {

        int status = 0;
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("delete from account where id=?");
            ps.setInt(1, a.getId());
        } catch (SQLException e) {
            System.out.println(e);
        }
        return status;
    }

    public static List<Account> getAllRecords() {
        List<Account> list = new ArrayList<>();

        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from account where id=?");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setId(rs.getInt("id"));
                a.setAccountName(rs.getString("accountName"));
                a.setAccountInfo(rs.getString("accountInfo"));
                a.setAccountOpen(rs.getString("accountOpen"));
                a.setAccountManagment(rs.getString("accountManagment"));
                list.add(a);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public static Account getRecordById(int id) {

        Account a = null;
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from account where id=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                a = new Account();
                a.setId(rs.getInt("id"));
                a.setAccountName(rs.getString("accountName"));
                a.setAccountInfo(rs.getString("accountInfo"));
                a.setAccountOpen(rs.getString("accountOpen"));
                a.setAccountManagment(rs.getString("accountManagment"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return a;
    }

}
