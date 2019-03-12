package com.persistence;
 
import java.util.List;
 
import javax.annotation.Resource;
 
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
 
import com.domain.Subject;
import com.mapper.SubjectRowMapper;
 
@Repository("subjectDAO")
public class SubjectDAOImpl implements SubjectDAO {
    
	@Resource(name="jdbcTemplate")
    private JdbcTemplate jdbcTemplateObject;
 
    //異쒕젰
    // 怨쇰ぉ踰덊샇|怨쇰ぉ紐�|�궘�젣媛��뒫�뿬遺�
    @Override
    public List<Subject> list() {
        String sql="SELECT subject_id,subject_name,(SELECT COUNT(*) FROM open_subject os\r\n" + 
        		"WHERE os.subject_id = s.subject_id) deletable\r\n" + 
        		"FROM subject_ s\r\n" + 
        		"ORDER BY subject_id";
        
        return this.jdbcTemplateObject.query(sql, new SubjectRowMapper());
    }
 
    //�엯�젰
    @Override
    public int addSub(Subject s) {
        String sql = "INSERT INTO subject_(subject_id,subject_name)\r\n" + 
        		"VALUES((SELECT CONCAT('SUB',LPAD(IFNULL(SUBSTR(MAX(subject_id),4),0)+1,2,0)) AS newId\r\n" + 
        		"FROM subject_ s),?)";
        return this.jdbcTemplateObject.update(sql, s.getSubject_name());
    }
 
    //�닔�젙
    @Override
    public int updateSub(Subject s) {
        String sql = "UPDATE subject_\r\n" + 
        		"SET subject_name = ?\r\n" + 
        		"WHERE subject_id = ?";
        return this.jdbcTemplateObject.update(sql, s.getSubject_name(), s.getSubject_id());
    }
 
    //�궘�젣
    @Override
    public int delSub(String subject_id) {
        String sql = "DELETE FROM subject_\r\n" + 
        		"WHERE subject_id = ?";
        return this.jdbcTemplateObject.update(sql, subject_id);

    }
}
 