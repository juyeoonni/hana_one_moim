package com.hana.onemoim.gathering.dto;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class GatheringDto {

    private int gatheringId; // 모임ID
    private int gatheringLeaderId; // 모임장ID
    private String gatheringLeaderName; // 모임장 이름
    private String gatheringName; // 모임명
    private String gatheringDescription; // 모임설명
    private String gatheringCoverImageUrl; // 모임대표이미지 URL
    private String isPublic; // 모임 공개 여부
    private int gatheringMemberNumber; // 모임원 수
    private boolean isJoined; // 로그인 시 회원의 모임 가입 여부
    private List<String> interestList; // 모임 관심사

    private int memberStatusCode; // 모임원상태코드
}
