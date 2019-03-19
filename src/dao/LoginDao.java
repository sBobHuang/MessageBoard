package dao;

import java.sql.*;
import java.util.*;

import model.MessBoar;
import util.DBUtil;

public class LoginDao {
	Connection conn=DBUtil.getConnection();                                      //���ݿ����Ӷ���
	PreparedStatement pstmt;
	public String checkLogin(String name,String password){ //��֤�û�������
		try{
			pstmt=conn.prepareStatement("select * from users where name=? and password=?");
			pstmt.setString(1, name);                     //����SQL������
			pstmt.setString(2, password);                 //����SQL������
			ResultSet rs=pstmt.executeQuery();            //ִ�в�ѯ�����ؽ����
			if(rs.next()){                                //ͨ��JavaBean����ֵ
				DBUtil.close(conn);
				return name;                             //����JavaBean����
			}
			DBUtil.close(conn);
			return null;                                  //��֤ʧ�ܷ���null
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	public ArrayList<MessBoar> findMbInfo(){
		try{
			ArrayList<MessBoar> al=new ArrayList<MessBoar>();
			pstmt=conn.prepareStatement("select * from messages");
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()){
				MessBoar mb=new MessBoar();
				mb.setId(rs.getInt(1));
				mb.setName(rs.getString(2));
				mb.setTitle(rs.getString(3));
				mb.setMessage(rs.getString(4));
				mb.setTime(rs.getTimestamp(5));
				al.add(mb);
			}
			DBUtil.close(conn);
			return al;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

		public boolean addInfo( String name,String title,String message){
	    //System.out.println(title);
			
			try{
				pstmt=conn.prepareStatement("insert into messages(name,title,message) value(?,?,?)");
				pstmt.setString(1, name);
				pstmt.setString(2, title);
				pstmt.setString(3, message);
				pstmt.executeUpdate();
				DBUtil.close(conn);
				return true;
			}catch(Exception e){
				e.printStackTrace();
				return false;
			}
		}
		public boolean insertUser(String name,String password){
			try{
				pstmt=conn.prepareStatement("insert into users(name,password,role) value(?,?,?)");
				pstmt.setString(1, name);
				pstmt.setString(2, password);
				pstmt.setInt(3, 0);
				pstmt.executeUpdate();
				DBUtil.close(conn);
				return true;
			}catch(Exception e){
				e.printStackTrace();
				return false;
			}
		}
}
