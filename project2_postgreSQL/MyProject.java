import java.sql.*;

public class MyProject{
	public static void main(String[] args){

		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;

		String uri = "jdbc:postgresql://localhost:5432/MovieDataFinal";
		String username = "postgres";
		String password = "rawnok1212";

		try{
			con = DriverManager.getConnection(uri, username, password);

			//LAB 06 ---------------------------------------------------
			System.out.println("	LAB 06 - A and D\n");

			String qry1 = "SELECT director_id, "
                           + "       first_name, "
                           + "       surname "
                           + "FROM director INNER JOIN locations "
                           + "ON locations.location_id = director.location_id "
                           + "WHERE country = ?; ";
           
			String country = "USA";

			pst = con.prepareStatement(qry1);

			pst.setString(1, country);

			rs = pst.executeQuery();

			while(rs.next()){
				System.out.format(
					"%10s | %10s | %-10s \n",
					rs.getString(1),
					rs.getString(2),
					rs.getString(3));
			}

			System.out.println("\n");

			String qry2 = "SELECT director_id, "
                           + "       first_name, "
                           + "       surname "
                           + "FROM director "
                           + "WHERE surname LIKE ? "
                           + "OR surname LIKE ? ";
            
            
			String surname1 = "S%";
			String surname2 = "Y%";

			pst = con.prepareStatement(qry2);

			pst.setString(1, surname1);
			pst.setString(2, surname2);

			rs = pst.executeQuery();

			while(rs.next()){
				System.out.format(
					"%10s | %10s | %-10s \n",
					rs.getString(1),
					rs.getString(2),
					rs.getString(3));
			}

			System.out.println("\n");

			// LAB 07 ------------------------------------------------
			System.out.println("	LAB 07 - A and D\n");

			String qry3 = "SELECT ? - AVG(birth_year) "
                           + " AS ave_age "
                           + "FROM actors; ";

            int year = 2017;

			pst = con.prepareStatement(qry3);

			pst.setInt(1, year);

			rs = pst.executeQuery();

			while(rs.next()){
				System.out.format(
					"	%10s \n",
					rs.getString(1));
			}

			System.out.println("\n");

			String qry4 = "SELECT COUNT(*) AS num_movies "
                           + "FROM actors INNER JOIN casted "
                           + "ON actors.actor_id = casted.actor_id "
                           + "INNER JOIN movies "
                           + "ON casted.movie_id = movies.movie_id "
                           + "WHERE name = ? "
                           + "AND surname = ? ;";
           
            String name1 = "James";
			String surname3 = "McAvoy";

			pst = con.prepareStatement(qry4);

			pst.setString(1, name1);
			pst.setString(2, surname3);

			rs = pst.executeQuery();

			while(rs.next()){
				System.out.format(
					"%10s \n",
					rs.getString(1));
			}

		}catch(SQLException ex){
			System.out.println(ex.getMessage());
		}finally{
			try{
				if(rs != null){
					rs.close();
				}
				if(pst != null){
					pst.close();
				}
				if(con != null) {
					con.close();
				}
			}catch(SQLException ex){
				System.out.println(ex.getMessage());
			}
		}
	}
}