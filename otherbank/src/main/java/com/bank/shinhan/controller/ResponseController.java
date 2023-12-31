package com.bank.shinhan.controller;

import com.bank.shinhan.dto.AccountDto;
import com.bank.shinhan.dto.AccountTransferDto;
import com.bank.shinhan.dto.PaymentTransferWrapper;
import com.bank.shinhan.service.OpenBankingService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
public class ResponseController {

    private final OpenBankingService openBankingService;

    // 오픈뱅킹 연결된 타행계좌조회
    @GetMapping("/openbanking/get-registered-account-list")
    public List<AccountDto> getRegisteredAccountList(@RequestParam String personalIdNumber) {
        return openBankingService.getAllRegisteredAccount(personalIdNumber);
    }

    // 전체계좌조회
    @GetMapping("/openbanking/get-account-list")
    public List<AccountDto> getAccountList(@RequestParam String personalIdNumber) {
        return openBankingService.getAllAccount(personalIdNumber);
    }

    // 오픈뱅킹 연결 해제
    @PutMapping("/openbanking/disconnect-account")
    public ResponseEntity<?> updateOpenbankingRegistered(@RequestParam String accountNumber) {
        openBankingService.updateOpenbankingRegistered(accountNumber);
        return ResponseEntity.ok().body("update success");
    }

    // 오픈뱅킹 연결
    @PutMapping("/openbanking/registration-account")
    public ResponseEntity<?> updateOpenbankingRegisteredTrue(@RequestParam String accountNumber) {
        openBankingService.updateOpenbankingRegisteredTrue(accountNumber);
        return ResponseEntity.ok().body("update success");
    }

    // 커뮤니티 - 오픈뱅킹 회비납부
    @PostMapping("/openbanking/payment-other")
    public ResponseEntity<Boolean> processTransfer(@RequestBody PaymentTransferWrapper paymentTransferWrapper) {
        AccountTransferDto accountTransferDto = paymentTransferWrapper.getAccountTransferDto();
        int gatheringId = paymentTransferWrapper.getGatheringId();
        int gatheringMemberId = paymentTransferWrapper.getGatheringMemberId();;
        boolean transferSuccess = openBankingService.paymentTransfer(accountTransferDto, gatheringId, gatheringMemberId);
        return ResponseEntity.ok(transferSuccess);
    }
}