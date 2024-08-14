package com.project.mapper;

import java.util.List;

import com.project.domain.UserItem;

public interface UserItemMapper {
	// 구매 상품 등록 처리
	public void create(UserItem userItem) throws Exception;

	// 구매 상품 보기
	public UserItem read(Integer userItemNo) throws Exception;

	// 구매 상품 목록
	public List<UserItem> list(Integer userNo) throws Exception;
}
