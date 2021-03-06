package com.hrs.mediarequesttool.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;

import com.hrs.mediarequesttool.pojos.User;

@MapperScan
public interface UserMapper {
	
	User getbyUserID (@Param("user_id") String userId);
	
	User get (@Param("id") int userAutoId, @Param("user_role") int userRole);
	
	List<User> getListDirector(@Param("current_user_id") int currentUserId, @Param("user_role") int userRole);
	
	void countLoginFailure(@Param("id") int id);
	
	void updateLastLoginTime(@Param("id") int id);

}
