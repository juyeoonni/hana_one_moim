package com.hana.onemoim.gathering.service;

import com.hana.onemoim.gathering.dto.CardBenefitWrapper;
import com.hana.onemoim.gathering.dto.GatheringCreateDto;
import com.hana.onemoim.gathering.dto.GatheringDto;
import com.hana.onemoim.member.dto.MemberDto;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface GatheringService {

    // 모임 개설
    void createGathering(GatheringCreateDto gatheringCreateDto, MultipartFile file);

    // 모임 조회
    List<GatheringDto> findAllGatheringByMemberId(int memberId);

    // 모임카드 개설
    int createdGatheringCard(int gatheringId, String accountNumber, String gatheringName);

    // 카드 혜택 설정
    void settingCardBenefit(CardBenefitWrapper cardBenefitWrapper, int gatheringCardId);

    // 모임 검색
    List<GatheringDto> findAllGatheringByKeyword(String keyword, int memberId);

    // 모임 검색 결과 수
    int countGatheringByKeyword(String keyword);

    // 모임 관심사 설정
    void registerGatheringInterest(int gatheringId, List<String> interestNames);

    // 모임 분류 조회
    List<GatheringDto> findGatheringByInterest(String interest, int memberId);

    // 모임 추천
    List<GatheringDto> findGatheringByMemberInterest(int memberId, int num);

    // 모임 ID로 모임 조회
    GatheringDto findGatheringByGatheringId(boolean onlyPublic, int gatheringId);

    // 모임 정보 조회(모달용)
    GatheringDto getGatheringInfoForModal(boolean onlyPublic, int gatheringId, int memberId);

    // 모임장 ID 확인
    int getGatheringLeaderId(int gatheringId);

    // 모임 가입
    void joinGathering(int gatheringId, MemberDto memberDto);
}
