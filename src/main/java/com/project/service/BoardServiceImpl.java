package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.common.domain.PageRequest;
import com.project.domain.Board;
import com.project.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardMapper mapper;

	@Override
	public void register(Board board) throws Exception {
		mapper.create(board);

	}

	/*
	 * @Override public List<Board> list() throws Exception {
	 * 
	 * return mapper.list(); }
	 */

	// 페이징 요청 정보를 매개 변수로 받아 페이징 처리를 한 게시글 목록을 반환
	@Override
	public List<Board> list(PageRequest pageRequest) throws Exception {

		return mapper.list(pageRequest);
	}

	@Override
	public Board read(Integer boardNo) throws Exception {

		return mapper.read(boardNo);
	}

	@Override
	public void modify(Board board) throws Exception {
		mapper.update(board);

	}

	@Override
	public void remove(Integer boardNo) throws Exception {
		mapper.delete(boardNo);

	}

	@Override
	public int count(PageRequest pageRequest) throws Exception {

		return mapper.count(pageRequest);
	}

}
