# ApprovalServer

### 구현 내용
MSA 구현 교육을 기반으로 Off-line 결제 승인을 중계해주는 승인 서버를 MSA Architecture를 사용하여 구현해본다.
결제 흐름은 IC 단말기로부터부터 시작되는 승인 요청 데이터를 수신하고 VAN사 중계 혹은 카드사로 직승인 요청을 전달하고 처리 결과를 Client(POS 프로그램)로 응답해준다.
  - POS 프로그램 : Postman
  - VAN, 카드사 : Mok Server

### 구현 시나리오
  - 승인 서버는 여러개의 VAN사에 대해서 VAN Fee 비율에 맞게 분배해주고 특정 카드사는 카드사 직승인으로 승인 요청을 한다.
  - POS 프로그램으로부터 전달받은 승인 데이터로 VAN 혹은 카드사에 맞는 요청 데이터를 생성하고 송신한다.
  - VAN 혹은 카드사에서 주는 응답에 따라 응답 전문을 만들어 POS 프로그램에게 전달하며 승인 요청 응답이 없는 것을 고려하여 `망취소` 기능도 구현한다.
  - 승인 서버는 결제 대사 및 정산을 위해서 각 트랜잭션을 DB에 저장한다.

### 승인 서버의 기능
  - Header/Body 생성/분리
  - 송수신 데이터 암/복호화
  - 승인 데이터 분석 (VAN or 카드사 분기 및 VAN Fee)
  - 승인 전문 생성 및 VAN or 카드사로 전송
  - 카드사 직승인의 경우 통신이 안되면 VAN으로 우회 승인 요청
  - 망취소 기능
  - 기타 데이터 저장 기능

### 사용 기술 및 아키텍처
  - Spring Boot
  - JPA or Mybatis
  - Circuit breaker : Spring Cloud Hystrix
  - Load Balance : Spring Cloud Ribbon
  - Service Discovery : Spring Cloud Eureka
  - API Gateway
  - Message Queue : Kafka

### Docker 환경 구축


### MSA 참고 자료
https://github.com/justdoanything/self-study/blob/main/self-study/MSA.md


### 오프라인 결제와 온라인 결제의 정산
매입요청은 정상적으로 결제승인이 떨어진것에 대하여 가맹점 -> 카드사에게 매입해 달라고 요청(PG사가 대행)
매입요청을 받은 PG사는 이를 카드사에 통보하고 카드사는 고객이 결제한 금액 중 수수료를 제외한 나머지 금액을 PG사에게 대금정산(청구)
보통 승인이랑 매입요청은 동시에 이루어지고,
VAN에서 그날 전체 거래건 모았다가 00시에 카드사로 보내는걸
매입청구라고 하는거 같던뎅

* PG 정산
  승인>매입요청(PG)>매입청구(VAN)>매입진행(카드사)>대금지급(카드사-PG)>가맹점에정산(PG)
  승인이 발생 > PG(가맹점)가 VAN에게 매입 요청 > VAN이 00시에 카드사에서 거래건 모아서 요청
  > 카드사가 PG에게 바로 대금 지급 > PG가 가맹점에 정산
  (승인, 매입 fee는 카드사가 VAN에게 따로 지급, 업무대행 수수료이기 때문에 VAN한테 별도로 지급)
  (PG정산은 PG에서 수수료 떼고 별도 지급)


* 오프라인 결제 정산
대사 > 밴사통해서 전달받은 승인내역중에 누락이있을까봐 가맹점에 직접 대사내역 받음
청구 > 거래건 모두 취합 후 밴사에 오늘거래건 마감이라고 청구넣음
매입 > 우리 청구내역 받은 밴사가 각 카드사에 매입요청
입반송 > 카드사에서 입금인지 아닌지 밴사에 결과내려줌
입반송적용 > 전달받은 입반송결과를 우리가갖고있는 청구내역에 반영함
정산 > 가맹점에서 한달치 통장내역 올려주면 입반송적용한데까지 금액이맞는지 누락된건없는지 짝맞춰봄
