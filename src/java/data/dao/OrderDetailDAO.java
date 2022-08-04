/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Map;
import sessionmodel.Cart;
import utils.DBUtils;

/**
 *
 * @author Thiep Ngo
 */
public class OrderDetailDAO {

    public void saveOrderDetail(int orderID, Map<Integer, Cart> carts) throws SQLException {

        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            String sql = "INSERT INTO [dbo].[tblOrderDetail]\n"
                    + "           ([orderID]\n"
                    + "           ,[productID]\n"
                    + "           ,[price]\n"
                    + "           ,[quantity]\n"
                    + "           ,[status])\n"
                    + "     VALUES\n"
                    + "          (?,?,?,?,?)";
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(sql);
                ptm.setInt(1, orderID);
                for (Map.Entry<Integer, Cart> entry : carts.entrySet()) {
                    Cart cart = entry.getValue();
                    ptm.setInt(2, cart.getProduct().getProductID());
                    ptm.setDouble(3, cart.getProduct().getPrice());
                    ptm.setInt(4, cart.getQuantity());
                    ptm.setInt(5, 1);
                    ptm.executeUpdate();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
    }
}
