package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.job;

public class JobDAO {
   
	private Connection conn;
   
	public JobDAO(Connection conn)  {
    	super();
    	this.conn=conn;
    	}
     public boolean addJobs(job j) {
    	 boolean f=false;
    	 try {
		String sql="insert into jobs(title,description,category,status,location) values(?,?,?,?,?)";                                                                                                  	
		PreparedStatement ps=conn.prepareStatement(sql);
    	ps.setString(1,j.getTitle());
    	ps.setString(2,j.getDescription());
    	ps.setString(3,j.getCategory());
    	ps.setString(4, j.getStatus());
    	ps.setString(5, j.getLocation());

    	int i=ps.executeUpdate();
    	if(i==1) {
    		f=true;
    	}
    	
		} catch (Exception e) {
           e.printStackTrace();
		}
		return f;
     }
     public List<job> getAllJobs(){
    	 List<job> list=new ArrayList<job>();
    	 job j=null;
    	 try {
			
    		 String sql="select * from jobs order by id desc";
    		 PreparedStatement ps=conn.prepareStatement(sql);
    		 ResultSet rs=ps.executeQuery();
    		 while(rs.next())
    		 {
    			 j=new job();
    			 j.setId(rs.getInt(1));
    			 j.setTitle(rs.getString(2));
    			 j.setDescription(rs.getString(3));
    			 j.setCategory(rs.getString(4));
    			 j.setStatus(rs.getString(5));
    			 j.setLocation(rs.getString(6));
    			 j.setPdate(rs.getTimestamp(7)+"");

    			 list.add(j);
    		 }
		} catch (Exception e) {
e.printStackTrace();
		}
    	 
    	 
    	 return list;
     }
     public List<job> getAllJobsForUser(){
    	 List<job> list=new ArrayList<job>();
    	 job j=null;
    	 try {
		
    		 String sql="select * from jobs where status=? order by id desc";
    		 PreparedStatement ps=conn.prepareStatement(sql);
    		 ps.setString(1,"Active");
    		 ResultSet rs=ps.executeQuery();
    		 while(rs.next())
    		 {
    			 j=new job();
    			 j.setId(rs.getInt(1));
    			 j.setTitle(rs.getString(2));
    			 j.setDescription(rs.getString(3));
    			 j.setCategory(rs.getString(4));
    			 j.setStatus(rs.getString(5));
    			 j.setLocation(rs.getString(6));
    			 j.setPdate(rs.getTimestamp(7)+"");

    			 list.add(j);
    		 }
		} catch (Exception e) {
e.printStackTrace();
		}
    	 return list;
     }
     public job getJobById(int id){
     
    	 job j=null;
    	 try {
			
    		 String sql="select * from jobs where id=?";
    		 PreparedStatement ps=conn.prepareStatement(sql);
    		 ps.setInt(1,id);;
    		 ResultSet rs=ps.executeQuery();
    		 while(rs.next())
    		 {
    			 j=new job();
    			 j.setId(rs.getInt(1));
    			 j.setTitle(rs.getString(2));
    			 j.setDescription(rs.getString(3));
    			 j.setCategory(rs.getString(4));
    			 j.setStatus(rs.getString(5));
    			 j.setLocation(rs.getString(6));
    			 j.setPdate(rs.getTimestamp(7)+"");
    		 }
		} catch (Exception e) {
        e.printStackTrace();
		}
    	 
    	 
    	 return j;
     }
     
     public boolean updateJob(job j) {
    	 boolean f=false;
    	 try {
		String sql="update jobs set title=?,description=?,category=?,status=?,location=? where id= ?";
		
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1,j.getTitle());
    	ps.setString(2,j.getDescription());
    	ps.setString(3,j.getCategory());
    	ps.setString(4, j.getStatus());
    	ps.setString(5, j.getLocation());
        ps.setInt(6,j.getId());

    	int i=ps.executeUpdate();
    	if(i==1) {
    		f=true;
    	}
    	
		} catch (Exception e) {
           e.printStackTrace();
		}
		return f;
     }
	public boolean deleteJobs(int id) {
		boolean f=false;
		try {
			String sql="delete  from jobs where id=? ";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
			int i=ps.executeUpdate();	
			if(i==1) {
			f=true;
			}
			} catch (Exception e) {
           e.printStackTrace();
			}
		
		
		return f;
	}
	public List<job> getJobsORLocationAndCat(String category,String location){
		List<job>list =new ArrayList<job>();
		job j=null;
		try {
			String sql="select * from jobs where category=? or location=? order by id DESC";
   		 PreparedStatement ps=conn.prepareStatement(sql);
   		 ps.setString(1,category);
   		 ps.setString(2,location);
   		 ResultSet rs=ps.executeQuery();
   		 while(rs.next())
   		 {
   			 j=new job();
   			 j.setId(rs.getInt(1));
   			 j.setTitle(rs.getString(2));
   			 j.setDescription(rs.getString(3));
   			 j.setCategory(rs.getString(4));
   			 j.setStatus(rs.getString(5));
   			 j.setLocation(rs.getString(6));
   			 j.setPdate(rs.getString(7));
   			 list.add(j);
   		 }
		} catch (Exception e) {
       e.printStackTrace();
		}
		return list;	
	}
	public List<job> getJobsANDLocationAndCat(String category, String location) {
	    System.out.println("getJobsANDLocationAndCat method is called");
	    List<job> list = new ArrayList<>();
	    job j = null;
	    
	    try {
	        String sql = "SELECT * FROM jobs WHERE category=? AND location=? ORDER BY id DESC";
	        PreparedStatement ps = conn.prepareStatement(sql);
	        ps.setString(1, category);
	        ps.setString(2, location);

	        System.out.println("Executing query with category: " + category + " and location: " + location);
	        ResultSet rs = ps.executeQuery();

	        while (rs.next()) {
	            j = new job();
	            j.setId(rs.getInt(1));
	            j.setTitle(rs.getString(2));
	            j.setDescription(rs.getString(3));
	            j.setCategory(rs.getString(4));
	            j.setStatus(rs.getString(5));
	            j.setLocation(rs.getString(6));
	            j.setPdate(rs.getString(7));
	            list.add(j);
	        }

	        System.out.println("Query executed, number of jobs retrieved: " + list.size());

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return list; // Return the list, even if empty, to avoid null issues.
	}

}

