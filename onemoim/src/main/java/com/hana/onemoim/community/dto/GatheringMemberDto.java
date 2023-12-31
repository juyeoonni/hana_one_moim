package com.hana.onemoim.community.dto;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class GatheringMemberDto {
    private int gatheringMemberId; // 모임원ID
    private int gatheringId; // 모임ID
    private int memberId; // 회원ID
    private int memberStatusCode; // 회원상태코드
    private String memberName; // 회원명
    private String createdAt; // createdAt
    private String modifiedAt; // modifiedAt

    @Builder
    public GatheringMemberDto(int gatheringId, int memberId, int memberStatusCode, String memberName) {
        this.gatheringId = gatheringId;
        this.memberId = memberId;
        this.memberStatusCode = memberStatusCode;
        this.memberName = memberName;
    }
}
