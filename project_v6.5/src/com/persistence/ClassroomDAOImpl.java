package com.persistence;
 
import java.util.List;

import javax.annotation.Resource;
 
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
 
import com.domain.Classroom;
import com.mapper.ClassroomRowMapper;
import com.mapper.ClassroomRowMapper2;

@Repository("classroomDAO")
public class ClassroomDAOImpl implements ClassroomDAO {
	
	@Resource(name="jdbcTemplate")
	private JdbcTemplate jdbcTemplateObject;
 
    @Override
    public List<Classroom> list() {
        String sql="SELECT room_id,room_name,room_capacity,(SELECT COUNT(*) FROM open_curriculum oc\r\n" + 
        		"WHERE oc.room_id = cr.room_id) deletable\r\n" + 
        		"FROM classroom cr\r\n" + 
        		"ORDER BY room_id";
        return this.jdbcTemplateObject.query(sql, new ClassroomRowMapper());
    }
 
    @Override
    public int addClassroom(Classroom r) {
        String sql = "INSERT INTO classroom(room_id, room_name, room_capacity)\r\n" + 
        		"VALUES((SELECT CONCAT('R',LPAD(IFNULL(SUBSTR(MAX(room_id),2),0)+1,2,0)) AS newId\r\n" + 
        		"FROM classroom cr),?,?)";
        return this.jdbcTemplateObject.update(sql, r.getRoom_name(), r.getRoom_capacity());
    }
 
    @Override
    public int updateClassroom(Classroom r) {
        String sql = "UPDATE classroom\r\n" + 
        		"SET room_name = ?, room_capacity = ?\r\n" + 
        		"WHERE room_id = ?";
        return this.jdbcTemplateObject.update(sql, r.getRoom_name(), r.getRoom_capacity(), r.getRoom_id());
         
    }
 
    @Override
    public int delClassroom(String room_id) {
        String sql = "DELETE FROM classroom\r\n" + 
        		"WHERE room_id = ?";
        return this.jdbcTemplateObject.update(sql, room_id);

    }

	@Override
	public List<Classroom> roomNotice() {
		String sql = "SELECT oc_id, c.room_name, curriculum_name, oc_start_date, oc_end_date,\r\n" + 
				"	admissionCount, abandCount, c.room_capacity\r\n" + 
				"    , ceil((admissionCount-abandCount)/c.room_capacity * 100) ingRate\r\n" + 
				"    , ceil(abandCount/c.room_capacity * 100) abandRate\r\n" + 
				"    , ceil(dCount) progress\r\n" + 
				"	FROM classroom c LEFT JOIN roomStatus t ON t.room_name = c.room_name";
		return this.jdbcTemplateObject.query(sql, new ClassroomRowMapper2());
	}
}
 