package com.hana.onemoim;

import com.hana.onemoim.member.service.MemberService;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class OnemoimApplicationTests {
	@Autowired
	private MemberService memberService;
	@Test
	void contextLoads() {
	}


	@Test
	void a() {
		String loginId = "11";
		Assertions.assertThat(memberService.isLoginIdExist(loginId)).isTrue();
	}
}
