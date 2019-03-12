package com.persistence;
 
import java.util.List;
 
import javax.annotation.Resource;
 
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
 
import com.domain.Curriculum;
import com.mapper.CurriculumRowMapper;
 
@Repository("curriculumDAO")
public class CurriculumDAOImpl implements CurriculumDAO {
 
	@Resource(name="jdbcTemplate")
    private JdbcTemplate jdbcTemplateObject;
 
    //출력
    // 과정번호|과정명|삭제가능여부
    @Override
    public List<Curriculum> list() {
        String sql="SELECT curriculum_id,curriculum_name,(SELECT COUNT(*) FROM open_curriculum oc\r\n" + 
        		"WHERE oc.curriculum_id = c.curriculum_id) deletable\r\n" + 
        		"FROM curriculum c\r\n" + 
        		"ORDER BY curriculum_id";
        
        return this.jdbcTemplateObject.query(sql, new CurriculumRowMapper());
    }
 
    //입력
    @Override
    public int addCur(Curriculum c) {
        String sql = "INSERT INTO curriculum(curriculum_id,curriculum_name)\r\n" + 
        		"VALUES((SELECT CONCAT('C',LPAD(IFNULL(SUBSTR(MAX(curriculum_id),2),0)+1,2,0)) AS newId\r\n" + 
        		"FROM curriculum c),?)";
        return this.jdbcTemplateObject.update(sql, c.getCurriculum_name());
    }
 
    //수정
    @Override
    public int updateCur(Curriculum c) {
        String sql = "UPDATE curriculum\r\n" + 
        		"SET curriculum_name = ?\r\n" + 
        		"WHERE curriculum_id = ?";
        return this.jdbcTemplateObject.update(sql, c.getCurriculum_name(), c.getCurriculum_id());
    }
 
    //삭제
    @Override
    public int delCur(String curriculum_id) {
        String sql = "DELETE FROM curriculum\r\n" + 
        		"WHERE curriculum_id = ?";
        return this.jdbcTemplateObject.update(sql, curriculum_id);
    }
}
 