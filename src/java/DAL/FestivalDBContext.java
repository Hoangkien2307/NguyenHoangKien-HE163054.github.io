/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import Model.Festival;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author kienb
 */
public class FestivalDBContext extends DBContext {

    public ArrayList<Festival> getFestivalAll() {
        ArrayList<Festival> list = new ArrayList<>();
        try {
            String sql = "SELECT [fesID]\n"
                    + "      ,[time_from]\n"
                    + "      ,[time_to]\n"
                    + "      ,[Festival_Name]\n"
                    + "      ,[co_feswork]\n"
                    + "  FROM [PRJ_BL5_Assignment].[dbo].[Festival]";
            PreparedStatement ptm = getConnection().prepareStatement(sql);
            ResultSet rs = ptm.executeQuery();
            while(rs.next()){
                Festival f = new Festival();
                f.setFesID(rs.getInt(1));
                f.setName(rs.getString(4));
                f.setFrom(rs.getDate(2));
                f.setTo(rs.getDate(3));
                list.add(f);
            }
        } catch (Exception ex) {
            Logger.getLogger(FestivalDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
}
