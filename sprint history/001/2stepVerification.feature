# -*- coding: utf-8 -*-

Feature: 2단계 인증

  Background: common steps
    Given Chrome 브라우저를 실행한다
    And 메가존 로그인 페이지로 이동한다



# 2단계 인증 설정 안내페이지

  @시나리오-1(TestCaseID:2단계인증001)
  Scenario: 2단계 인증 설정 안내페이지에서 OTP 설정 페이지로 이동한다
    When 2단계 인증 필요한 계정의 이메일을 입력한다
    And 2단계 인증 필요한 계정의 비밀번호를 입력한다
    And 메가존 로그인 페이지에서 [로그인]버튼을 클릭한다
    And 2단계 인증 설정 안내페이지에서 [설정하기]버튼을 클릭한다
    Then OTP 설정 페이지로 이동한다
    And Megazone Cloud 로고가 출력된다
    And OTP 설정 페이지 안내가 출력된다
    And OTP 설정 페이지에서 [Google Play]링크가 출력된다
    And OTP 설정 페이지에서 [App Store]링크가 출력된다
    And OTP 설정 페이지에서 QR코드가 출력된다
    And OTP 설정 페이지에서 [스캔할 수 없나요?]버튼이 출력된다
    And OTP 설정 페이지에서 인증 코드 입력필드가 출력된다
    And OTP 설정 페이지에서 [설정하기]버튼이 출력된다
    And OTP 설정 페이지에서 [다른 계정으로 로그인]링크가 출력된다
    And Copyright가 출력된다
    And 다국어 설정이 출력된다
    #And [이용약관]텍스트가 출력된다
    #And [개인정보처리방침]텍스트가 출력된다

  @시나리오-2(TestCaseID:2단계인증002)
  Scenario: 2단계 인증 설정 안내페이지에서 로그인 페이지로 이동한다
    When 2단계 인증 필요한 계정의 이메일을 입력한다
    And 2단계 인증 필요한 계정의 비밀번호를 입력한다
    And 메가존 로그인 페이지에서 [로그인]버튼을 클릭한다
    And 2단계 인증 설정 안내페이지에서 [다른 계정으로 로그인]링크를 클릭한다
    Then 메가존 로그인 페이지로 이동한다

 # OTP 설정 페이지

  @시나리오-3(TestCaseID:2단계인증003)
  Scenario: OTP 설정 페이지에서 Google Play의 Google OTP 다운로드 페이지로 이동한다
    When 2단계 인증 필요한 계정의 이메일을 입력한다
    And 2단계 인증 필요한 계정의 비밀번호를 입력한다
    And 메가존 로그인 페이지에서 [로그인]버튼을 클릭한다
    And 2단계 인증 설정 안내페이지에서 [설정하기]버튼을 클릭한다
    And OTP 설정 페이지에서 [Google Play]링크를 클릭한다
    Then Google Play 페이지로 이동한다

  @시나리오-4(TestCaseID:2단계인증004)
  Scenario: OTP 설정 페이지에서 App Store의 Google OTP 다운로드 페이지로 이동한다
    When 2단계 인증 필요한 계정의 이메일을 입력한다
    And 2단계 인증 필요한 계정의 비밀번호를 입력한다
    And 메가존 로그인 페이지에서 [로그인]버튼을 클릭한다
    And 2단계 인증 설정 안내페이지에서 [설정하기]버튼을 클릭한다
    And OTP 설정 페이지에서 [App Store]링크를 클릭한다
    Then App Store 페이지로 이동한다

  @시나리오-5(TestCaseID:2단계인증005)
  Scenario: OTP 설정 페이지에서 비밀 키를 발급받는다
    When 2단계 인증 필요한 계정의 이메일을 입력한다
    And 2단계 인증 필요한 계정의 비밀번호를 입력한다
    And 메가존 로그인 페이지에서 [로그인]버튼을 클릭한다
    And 2단계 인증 설정 안내페이지에서 [설정하기]버튼을 클릭한다
    And OTP 설정 페이지에서 [스캔할 수 없나요?]버튼을 클릭한다
    # 비밀 키 값은 알 수 없음
    Then OTP 설정 페이지에서 비밀 키 정보가 출력된다

  @시나리오-6(TestCaseID:2단계인증006)
  Scenario: OTP 설정 페이지에서 발급받은 비밀 키를 복사한다
   When 2단계 인증 필요한 계정의 이메일을 입력한다
    And 2단계 인증 필요한 계정의 비밀번호를 입력한다
    And 메가존 로그인 페이지에서 [로그인]버튼을 클릭한다
    And 2단계 인증 설정 안내페이지에서 [설정하기]버튼을 클릭한다
    And OTP 설정 페이지에서 [스캔할 수 없나요?]버튼을 클릭한다
    And OTP 설정 페이지에서 [복사]버튼을 클릭한다
    Then OTP 설정 페이지에서 비밀 키가 복사되었다는 토스트가 출력된다

#  @시나리오-(TestCaseID:2단계인증007)    # 복사한 키를 붙혀넣기하는 동작 불가
#  Scenario: OTP 설정 페이지에서 복사한 비밀 키를 확인한다
#    When 2단계 인증 필요한 계정의 이메일을 입력한다
#    And 2단계 인증을 설정하지 않은 계정의 비밀번호를 입력한다
#    And 메가존 로그인 페이지에서 [로그인]버튼을 클릭한다
#    And 2단계 인증 설정 안내페이지에서 [설정하기]버튼을 클릭한다
#    And OTP 설정 페이지에서 [스캔할 수 없나요?]버튼을 클릭한다
#    And OTP 설정 페이지에서 [복사]버튼을 클릭한다
#    # 키보드 제어 필요
#    # And OTP 설정 페이지에서 인증 코드 입력필드에 붙혀넣기한다
#    # 복사한 비밀 키 값은 알 수 없다
#    #Then OTP 설정 페이지에서 인증 코드 입력필드에 복사한 비밀 키가 붙혀넣기된다

  @시나리오-7(TestCaseID:2단계인증010)
  Scenario: OTP 설정 페이지에서 인증 코드를 입력하지 않고 설정을 시도한다
    When 2단계 인증 필요한 계정의 이메일을 입력한다
    And 2단계 인증 필요한 계정의 비밀번호를 입력한다
    And 메가존 로그인 페이지에서 [로그인]버튼을 클릭한다
    And 2단계 인증 설정 안내페이지에서 [설정하기]버튼을 클릭한다
    And OTP 설정 페이지에서 [설정하기]버튼을 클릭한다
    Then OTP 설정 페이지에서 인증 코드를 입력하라는 메시지가 출력된다

  @시나리오-8(TestCaseID:2단계인증011)
  Scenario: OTP 설정 페이지에서 인증 코드를 유효하지 않게 입력하고 설정을 시도한다 (한글)
    When 2단계 인증 필요한 계정의 이메일을 입력한다
    And 2단계 인증 필요한 계정의 비밀번호를 입력한다
    And 메가존 로그인 페이지에서 [로그인]버튼을 클릭한다
    And 2단계 인증 설정 안내페이지에서 [설정하기]버튼을 클릭한다
    And OTP 설정 페이지에서 인증 코드에 미지원 문자(한글)을 입력한다
    And OTP 설정 페이지에서 [설정하기]버튼을 클릭한다
    Then OTP 설정 페이지에서 숫자만 입력하라는 메시지가 출력된다

  @시나리오-9(TestCaseID:2단계인증012)
  Scenario: OTP 설정 페이지에서 인증 코드를 유효하지 않게 입력하고 설정을 시도한다 (영어)
    When 2단계 인증 필요한 계정의 이메일을 입력한다
    And 2단계 인증 필요한 계정의 비밀번호를 입력한다
    And 메가존 로그인 페이지에서 [로그인]버튼을 클릭한다
    And 2단계 인증 설정 안내페이지에서 [설정하기]버튼을 클릭한다
    And OTP 설정 페이지에서 인증 코드에 미지원 문자(영어)를 입력한다
    And OTP 설정 페이지에서 [설정하기]버튼을 클릭한다
    Then OTP 설정 페이지에서 숫자만 입력하라는 메시지가 출력된다

  @시나리오-10(TestCaseID:2단계인증013)
  Scenario: OTP 설정 페이지에서 인증 코드를 유효하지 않게 입력하고 설정을 시도한다 (특수문자)
    When 2단계 인증 필요한 계정의 이메일을 입력한다
    And 2단계 인증 필요한 계정의 비밀번호를 입력한다
    And 메가존 로그인 페이지에서 [로그인]버튼을 클릭한다
    And 2단계 인증 설정 안내페이지에서 [설정하기]버튼을 클릭한다
    And OTP 설정 페이지에서 인증 코드에 미지원 문자(특수문자)를 입력한다
    And OTP 설정 페이지에서 [설정하기]버튼을 클릭한다
    Then OTP 설정 페이지에서 숫자만 입력하라는 메시지가 출력된다

  @시나리오-11(TestCaseID:2단계인증014)
  Scenario: OTP 설정 페이지에서 인증 코드를 유효하지 않게 입력하고 설정을 시도한다 (틀린 값)
    When 2단계 인증 필요한 계정의 이메일을 입력한다
    And 2단계 인증 필요한 계정의 비밀번호를 입력한다
    And 메가존 로그인 페이지에서 [로그인]버튼을 클릭한다
    And 2단계 인증 설정 안내페이지에서 [설정하기]버튼을 클릭한다
    And OTP 설정 페이지에서 유효하지 않은 인증 코드를 입력한다
    And OTP 설정 페이지에서 [설정하기]버튼을 클릭한다
    Then OTP 설정 페이지에서 인증 코드를 정확하게 입력하라는 메시지가 출력된다

  @시나리오-12(TestCaseID:2단계인증001)
  Scenario: OTP 설정 페이지에서 로그인 화면으로 이동한다
    When 2단계 인증 필요한 계정의 이메일을 입력한다
    And 2단계 인증 필요한 계정의 비밀번호를 입력한다
    And 메가존 로그인 페이지에서 [로그인]버튼을 클릭한다
    And 2단계 인증 설정 안내페이지에서 [설정하기]버튼을 클릭한다
    And OTP 설정 페이지에서 [다른 계정으로 로그인]링크를 클릭한다
    Then 메가존 로그인 페이지가 출력된다




# 2단계 인증 설정완료 페이지

#  @시나리오-(TestCaseID:2단계인증015) # OTP 값 조회하고 입력 불가
#  Scenario: OTP 설정 페이지에서 스캔하여 인증받은 코드를 입력하고 OTP를 설정한다
#    When 2단계 인증 필요한 계정의 이메일을 입력한다
#    And 2단계 인증 필요한 계정의 비밀번호를 입력한다
#    And 메가존 로그인 페이지에서 [로그인]버튼을 클릭한다
#    And 2단계 인증 설정 안내페이지에서 [설정하기]버튼을 클릭한다
#    And OTP 설정 페이지에서 [스캔할 수 없나요?]버튼을 클릭한다
#    And OTP 설정 페이지에서 유효한 인증 코드를 입력한다
#    And OTP 설정 페이지에서 [설정하기]버튼을 클릭한다
#    And 2단계 인증 설정완료 페이지에서 [확인]버튼을 클릭한다
#    Then 대시보드 페이지가 출력된다


#  @시나리오-(TestCaseID:2단계인증016) # OTP 값 조회하고 입력 불가
#  Scenario: OTP 설정 페이지에서 발급받은 비밀 키로 인증받은 코드를 입력하고 OTP를 설정한다
#    When 2단계 인증 필요한 계정의 이메일을 입력한다
#    And 2단계 인증 필요한 계정의 비밀번호를 입력한다
#    And 메가존 로그인 페이지에서 [로그인]버튼을 클릭한다
#    And 2단계 인증 설정 안내페이지에서 [설정하기]버튼을 클릭한다
#    And OTP 설정 페이지에서 [스캔할 수 없나요?]버튼을 클릭한다
#    And OTP 설정 페이지에서 발급받은 비밀 키를 OTP앱에 입력하고 인증을 받는다
#    And OTP 설정 페이지에서 유효한 인증 코드를 입력한다
#    And OTP 설정 페이지에서 [설정하기]버튼을 클릭한다
#    Then 2단계 인증 설정완료 페이지로 이동한다
#    And Megazone Cloud 로고가 출력된다
#    And 2단계 인증 설정완료 페이지 안내가 출력된다
#    And 2단계 인증 설정완료 페이지에서 [확인]버튼이 출력된다
#    And Copyright가 출력된다
#    And 다국어 설정이 출력된다
#    #And [이용약관]텍스트가 출력된다
#    #And [개인정보처리방침]텍스트가 출력된다




# 2단계 인증 페이지

  @시나리오-13(TestCaseID:2단계인증018)
  Scenario: 2단계 인증페이지에서 인증 코드를 입력하지 않고 설정을 시도한다
    When 2단계 인증 설정된 계정의 이메일을 입력한다
    And 2단계 인증 설정된 계정의 비밀번호를 입력한다
    And 메가존 로그인 페이지에서 [로그인]버튼을 클릭한다
    And 2단계 인증페이지에서 [로그인]버튼을 클릭한다
    Then 2단계 인증페이지에서 인증 코드를 입력하라는 메시지가 출력된다

  @시나리오-14(TestCaseID:2단계인증019)
  Scenario: 2단계 인증페이지에서 인증 코드를 유효하지 않게 입력하고 로그인을 시도한다 (한글)
    When 2단계 인증 설정된 계정의 이메일을 입력한다
    And 2단계 인증 설정된 계정의 비밀번호를 입력한다
    And 메가존 로그인 페이지에서 [로그인]버튼을 클릭한다
    And 2단계 인증페이지에서 인증 코드에 미지원 문자(한글)를 입력한다
    And 2단계 인증페이지에서 [로그인]버튼을 클릭한다
    Then 2단계 인증페이지에서 숫자만 입력하라는 메시지가 출력된다

  @시나리오-15(TestCaseID:2단계인증020)
  Scenario: 2단계 인증페이지에서 인증 코드를 유효하지 않게 입력하고 로그인을 시도한다 (영어)
    When 2단계 인증 설정된 계정의 이메일을 입력한다
    And 2단계 인증 설정된 계정의 비밀번호를 입력한다
    And 메가존 로그인 페이지에서 [로그인]버튼을 클릭한다
    And 2단계 인증페이지에서 인증 코드에 미지원 문자(영어)를 입력한다
    And 2단계 인증페이지에서 [로그인]버튼을 클릭한다
    Then 2단계 인증페이지에서 숫자만 입력하라는 메시지가 출력된다

  @시나리오-16(TestCaseID:2단계인증021)
  Scenario: 2단계 인증페이지에서 인증 코드를 유효하지 않게 입력하고 로그인을 시도한다 (특수문자)
    When 2단계 인증 설정된 계정의 이메일을 입력한다
    And 2단계 인증 설정된 계정의 비밀번호를 입력한다
    And 메가존 로그인 페이지에서 [로그인]버튼을 클릭한다
    And 2단계 인증페이지에서 인증 코드에 미지원 문자(특수문자)를 입력한다
    And 2단계 인증페이지에서 [로그인]버튼을 클릭한다
    Then 2단계 인증페이지에서 숫자만 입력하라는 메시지가 출력된다

  @시나리오-17(TestCaseID:2단계인증022)
  Scenario: 2단계 인증페이지에서 인증 코드를 유효하지 않게 입력하고 로그인을 시도한다 (틀린 값)
    When 2단계 인증 설정된 계정의 이메일을 입력한다
    And 2단계 인증 설정된 계정의 비밀번호를 입력한다
    And 메가존 로그인 페이지에서 [로그인]버튼을 클릭한다
    And 2단계 인증페이지에서 유효하지 않은 인증 코드를 입력한다
    And 2단계 인증페이지에서 [로그인]버튼을 클릭한다
    Then 2단계 인증페이지에서 인증 코드를 정확하게 입력하라는 메시지가 출력된다

  @시나리오-18(TestCaseID:2단계인증024)
  Scenario: 2단계 인증페이지에서 로그인 페이지로 이동한다
    When 2단계 인증 설정된 계정의 이메일을 입력한다
    And 2단계 인증 설정된 계정의 비밀번호를 입력한다
    And 메가존 로그인 페이지에서 [로그인]버튼을 클릭한다
    And 2단계 인증페이지에서 [다른 계정으로 로그인]링크를 클릭한다
    Then 메가존 로그인 페이지가 출력된다