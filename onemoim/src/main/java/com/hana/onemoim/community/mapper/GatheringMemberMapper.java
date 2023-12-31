package com.hana.onemoim.community.mapper;

import com.hana.onemoim.community.dto.GatheringMemberDto;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface GatheringMemberMapper {

    // gathering_id 가져오기
    List<GatheringMemberDto> selectGatheringMemberByGatheringId(int gatheringId);

    // 모임원 상태 코드 확인
    Integer isMemberStatusCodeActive(@Param("gatheringId") int gatheringId,
                                 @Param("memberId") int memberId);

    // 모임원 상태 코드 변경
    void updateMemberStatusCode(@Param("memberStatusCode") int memberStatusCode,
                                @Param("memberId") int memberId,
                                @Param("gatheringId") int gatheringId);

    // 모임원 이름 조회
    String selectGatheringMemberName(int gatheringMemberId);

    // gathering_member_id 조회
    int selectGatheringMemberId(@Param("memberId") int memberId,
                                @Param("gatheringId") int gatheringId);

    // 모임원 수 COUNT
    int countGatheringMemberByGatheringId(int gatheringId);
}
