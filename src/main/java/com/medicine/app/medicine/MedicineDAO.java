package com.medicine.app.medicine;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class MedicineDAO {

	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<MedicineVO> selectMedicineList()  {
		return sqlSession.selectList("medicine.selectMedicineList");
	}
	
	public MedicineVO selectMedicine(String mdIdx) {
		return sqlSession.selectOne("medicine.selectMedicine", mdIdx);
	}
	
	
	
}
