package com.medicine.app.admin;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.medicine.app.medicine.MedicineVO;

@Repository
public class AdminDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<MedicineVO> selectAdminList(Map<String, Integer> vo) {
		return sqlSession.selectList("medicine.selectMedicineList", vo);
	}

	public void insertMedicine(MedicineVO vo) {
		sqlSession.insert("medicine.insertMedicine", vo);
	}

	public String selectMaxMdIdx() {
		return sqlSession.selectOne("medicine.selectMaxMdIdx");
	}

	public void deleteAdminMedicine(String mdIdx) {
		sqlSession.delete("mdMark.deleteMdMark", mdIdx);
		sqlSession.delete("mdReply.delMdReply", mdIdx);
		sqlSession.delete("medicine.deleteAdminMedicine", mdIdx);
		
	}

	public void updateAdminMedicine(MedicineVO vo) {
		sqlSession.update("medicine.updateAdminMedicine", vo);
	}

}
