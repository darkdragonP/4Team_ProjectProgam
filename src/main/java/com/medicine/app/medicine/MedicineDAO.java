package com.medicine.app.medicine;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class MedicineDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public Integer countsMedicine() {
		return sqlSession.selectOne("medicine.countsMedicine");
	}

	public List<MedicineVO> selectMedicineList(Map<String, Integer> vo) {
		return sqlSession.selectList("medicine.selectMedicineList", vo);
	}

	public List<MedicineVO> searchTextMedicine(Map<String, String> vo) {
		return sqlSession.selectList("medicine.searchTextMedicine", vo);
	}

	public MedicineVO selectMedicine(String mdIdx) {
		return sqlSession.selectOne("medicine.selectMedicine", mdIdx);
	}

	public void updateHits(MedicineVO vo) {
		sqlSession.update("medicine.updateHits", vo);
	}

	public void updateMdRating(MedicineVO vo) {
		sqlSession.update("medicine.updateMdRating", vo);
	}

	public List<MedicineVO> searchRadioMedicine(Map<String, String> vo) {
		return sqlSession.selectList("medicine.searchRadioMedicine", vo);
	}

	public Integer searchCountMedicine(String text) {
		return sqlSession.selectOne("medicine.searchCountMedicine", text);
	}
	public Integer searchCountMedicine2(Map<String, String> vo) {
		return sqlSession.selectOne("medicine.searchCountMedicine2", vo);
	}
	
	public Integer searchOcrCountMedicine(String text) {
		return sqlSession.selectOne("medicine.searchCountMedicine2", text);
	}
	public List<MedicineVO> searchOcrTextMedicine(Map<String, Object> vo) {
		return sqlSession.selectList ("medicine.searchOcrTextMedicine", vo);
	}
	
	public List<MedicineVO> searchOcrImageMedicine(Map<String, Object> vo) {
		return sqlSession.selectList("medicine.searchOcrImageMedicine", vo);
	}
	
	public Integer searchOcrTCountMedicine(String text) {
		return sqlSession.selectOne("medicine.searchOcrTCountMedicine", text);
	}
	public Integer searchOcrICountMedicine(String text) {
		return sqlSession.selectOne("medicine.searchOcrICountMedicine", text);
	}
}
