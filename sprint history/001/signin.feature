# -*- coding: utf-8 -*-

Feature: 로그인

  Background: common steps
    Given Chrome 브라우저를 실행한다
    #Given IE 11 브라우저를 실행한다
    #Given IE Edge 브라우저를 실행한다
    #Given Firefox 브라우저를 실행한다
    #Given Safari 브라우저를 실행한다 (Mac에서 실행)


  @시나리오-1(TestCaseID:로그인001)
  Scenario: 메가존 로그인 페이지로 이동한다
    When 메가존 로그인 페이지로 이동한다
    Then 메가존 로그인 페이지가 출력된다
    And 메가존 로그인 페이지에서 안내가 출력된다
    And Megazone Cloud 로고가 출력된다
    And 메가존 로그인 페이지에서 이메일 입력필드가 출력된다
    And 메가존 로그인 페이지에서 비밀번호 입력필드가 출력된다
    And 메가존 로그인 페이지에서 [로그인]버튼이 출력된다
    And 메가존 로그인 페이지에서 [비밀번호를 잃어버리셨나요?]버튼이 출력된다
    And Copyright가 출력된다
    And 다국어 설정이 출력된다
    # 미구현 And [이용약관]텍스트가 출력된다
    # 미구현 And [개인정보처리방침]텍스트가 출력된다

#  @시나리오- (TestCaseID:로그인002) # 타 앱에서 이동하는 케이스 다른 앱에서 연동되지 않았으므로 제외
#  Scenario: 앱에서 메가존 로그인 페이지로 이동한다
#    When 앱으로 이동한다
#    And 앱[로그인]버튼을 클릭한다
#    Then 메가존 로그인 페이지가 출력된다
#    And Megazone Cloud 로고가 출력된다
#    And 이메일 입력필드가 출력된다
#    And 비밀번호 입력필드가 출력된다
#    And [로그인]버튼이 출력된다
#    And [비밀번호를 잃어버리셨나요?]버튼이 출력된다
#    And Copyright가 출력된다
#    And 다국어 설정이 출력된다
#    And [이용약관]텍스트가 출력된다
#    And [개인정보처리방침]텍스트가 출력된다

  @시나리오-2(TestCaseID:로그인003)
  Scenario: 메가존 로그인 페이지에서 이메일 & 비밀번호를 입력하지 않고 로그인을 시도한다
    When 메가존 로그인 페이지로 이동한다
    And 메가존 로그인 페이지에서 [로그인]버튼을 클릭한다
    Then 메가존 로그인 페이지에서 이메일 & 비밀번호가 필수 항목이라는 메시지가 출력된다

  @시나리오-3(TestCaseID:로그인004)
  Scenario: 메가존 로그인 페이지에서 이메일을 입력하지 않고 로그인을 시도한다
    When 메가존 로그인 페이지로 이동한다
    And 2단계 인증 설정된 계정의 비밀번호를 입력한다
    And 메가존 로그인 페이지에서 [로그인]버튼을 클릭한다
    Then 메가존 로그인 페이지에서 이메일 필수 항목이라는 메시지가 출력된다

  @시나리오-4(TestCaseID:로그인005)
  Scenario: 메가존 로그인 페이지에서 이메일 입력필드에 미지원하는 텍스트(한글)을 입력한다
    When 메가존 로그인 페이지로 이동한다
    And 메가존 로그인 페이지에서 이메일 입력필드에 미지원 텍스트(한글)을 입력한다
    Then 메가존 로그인 페이지에서 이메일 형식으로 입력하라는 메시지가 출력된다

  @시나리오-5(TestCaseID:로그인006)
  Scenario: 메가존 로그인 페이지에서 이메일 입력필드에 미지원하는 텍스트(이메일에 허용안되는 특수문자)를 입력한다
    When 메가존 로그인 페이지로 이동한다
    And 메가존 로그인 페이지에서 이메일 입력필드에 미지원 텍스트(이메일에 허용안되는 특수문자)를 입력한다
    Then 메가존 로그인 페이지에서 이메일 형식으로 입력하라는 메시지가 출력된다

  @시나리오-6(TestCaseID:로그인007)
  Scenario: 메가존 로그인 페이지에서 비밀번호를 입력하지 않고 로그인을 시도한다
    When 메가존 로그인 페이지로 이동한다
    And 2단계 인증 필요없는 계정의 이메일을 입력한다
    And 메가존 로그인 페이지에서 [로그인]버튼을 클릭한다
    Then 메가존 로그인 페이지에서 비밀번호 필수 항목이라는 메시지가 출력된다

  @시나리오-7(TestCaseID:로그인008)
  Scenario: 메가존 로그인 페이지에서 비밀번호 입력필드에 최소 길이 미만의 텍스트를 입력한다
    When 메가존 로그인 페이지로 이동한다
    And 메가존 로그인 페이지에서 비밀번호 입력필드에 최소 길이 미만의 텍스트를 입력한다
    Then 메가존 로그인 페이지에서 비밀번호 최소 글자 수 이상으로 입력하라는 메시지가 출력된다

  @시나리오-8(TestCaseID:로그인009)
  Scenario: 메가존 로그인 페이지에서 이메일, 비밀번호를 유효하지 않게 입력하고 로그인을 시도한다 (틀린 값)
    When 메가존 로그인 페이지로 이동한다
    And 메가존 로그인 페이지에서 유효하지 않은 이메일을 입력한다
    And 2단계 인증 설정된 계정의 비밀번호를 입력한다
    And 메가존 로그인 페이지에서 [로그인]버튼을 클릭한다
    Then 메가존 로그인 페이지에서 이메일 또는 비밀번호를 정확하게 입력하라는 메시지가 출력된다

  @시나리오-9(TestCaseID:로그인010)
  Scenario: 메가존 로그인 페이지에서 비밀번호를 유효하지 않게 입력하고 로그인을 시도한다 (틀린 값)
    When 메가존 로그인 페이지로 이동한다
    And 2단계 인증 필요없는 계정의 이메일을 입력한다
    And 메가존 로그인 페이지에서 유효하지 않은 비밀번호를 입력한다
    And 메가존 로그인 페이지에서 [로그인]버튼을 클릭한다
    Then 메가존 로그인 페이지에서 이메일 또는 비밀번호를 정확하게 입력하라는 메시지가 출력된다

  @시나리오-10(TestCaseID:로그인011)
  Scenario: 2단계 인증 필요없는 계정으로 로그인을 한다
    When 메가존 로그인 페이지로 이동한다
    And 2단계 인증 필요없는 계정의 이메일을 입력한다
    And 2단계 인증 설정된 계정의 비밀번호를 입력한다
    And 메가존 로그인 페이지에서 [로그인]버튼을 클릭한다
    Then 대시보드 페이지로 이동한다

  @시나리오-11(TestCaseID:로그인012)
  Scenario: 2단계 인증 필요한 계정으로 로그인을 한다
    When 메가존 로그인 페이지로 이동한다
    And 2단계 인증 필요한 계정의 이메일을 입력한다
    And 2단계 인증 필요한 계정의 비밀번호를 입력한다
    And 메가존 로그인 페이지에서 [로그인]버튼을 클릭한다
    Then 2단계 인증 설정 안내페이지로 이동한다
    And Megazone Cloud 로고가 출력된다
    And 2단계 인증 설정 안내페이지 안내가 출력된다
    And 2단계 인증 설정 안내페이지에서 [설정하기]버튼이 출력된다
    And 2단계 인증 설정 안내페이지에서 [다른 계정으로 로그인]링크가 출력된다
    And Copyright가 출력된다
    And 다국어 설정이 출력된다
    #And [이용약관]텍스트가 출력된다
    #And [개인정보처리방침]텍스트가 출력된다

  @시나리오-12(TestCaseID:로그인013)
  Scenario: 2단계 인증 설정된 계정으로 로그인을 한다
    When 메가존 로그인 페이지로 이동한다
    And 2단계 인증 설정된 계정의 이메일을 입력한다
    And 2단계 인증 설정된 계정의 비밀번호를 입력한다
    And 메가존 로그인 페이지에서 [로그인]버튼을 클릭한다
    Then 2단계 인증 페이지가 출력된다
    And Megazone Cloud 로고가 출력된다
    And 2단계 인증 페이지 안내가 출력된다
    And 2단계 인증페이지에서 인증 코드 입력필드가 출력된다
    And 2단계 인증페이지에서 [로그인]버튼이 출력된다
    And 2단계 인증페이지에서 [다른 계정으로 로그인]링크가 출력된다
    And Copyright가 출력된다
    And 다국어 설정이 출력된다
    #And [이용약관]텍스트가 출력된다
    #And [개인정보처리방침]텍스트가 출력된다

  @시나리오-13(TestCaseID:로그인014)
  Scenario: 비밀번호 재설정 페이지로 이동한다
    When 메가존 로그인 페이지로 이동한다
    And 메가존 로그인 페이지에서 [비밀번호를 잃어버리셨나요?]버튼을 클릭한다
    Then 비밀번호 재설정 페이지가 출력된다
    And Megazone Cloud 로고가 출력된다
    And 비밀번호 재설정 페이지 안내가 출력된다
    And 비밀번호 재설정 페이지에서 이메일 입력필드가 출력된다
    And 비밀번호 재설정 페이지에서 [메일 발송]버튼이 출력된다
    And 비밀번호 재설정 페이지에서 [로그인 화면으로]링크가 출력된다
    And Copyright가 출력된다
    And 다국어 설정이 출력된다
    #And [이용약관]텍스트가 출력된다
    #And [개인정보처리방침]텍스트가 출력된다

  @시나리오-14(TestCaseID:로그인015)
  Scenario: Copyright를 확인한다
    When 메가존 로그인 페이지로 이동한다
    Then Copyright가 출력된다

  @시나리오-15(TestCaseID:로그인016)
  Scenario: 다국어 설정을 확인한다
    When 메가존 로그인 페이지로 이동한다
    Then 브라우저에서 설정한 언어가 출력된다


  @시나리오-16(TestCaseID:로그인017)
  Scenario: 다국어 설정가능한 언어를 확인한다
    When 메가존 로그인 페이지로 이동한다
    And 다국어 설정영역을 클릭한다
    Then 설정메뉴에 [한국어]가 출력된다
    And 설정메뉴에 [영어]가 출력된다


  @시나리오-17(TestCaseID:로그인018)
  Scenario: 다국어를 한국어로 설정한다
    When 메가존 로그인 페이지로 이동한다
    And 다국어 설정영역을 클릭한다
    And [한국어]를 선택한다
    Then [한국어]로 페이지가 출력된다


  @시나리오-18(TestCaseID:로그인019)
  Scenario: 다국어를 영어로 설정한다
    When 메가존 로그인 페이지로 이동한다
    And 다국어 설정영역을 클릭한다
    And [영어]를 선택한다
    Then [영어]로 페이지가 출력된다

#  @시나리오-(TestCaseID:로그인020)                                   ######### 미구현
#  Scenario: 이용약관 텍스트를 확인한다
#    When 메가존 로그인 페이지로 이동한다
#    Then [이용약관]텍스트가 출력된다

#  @시나리오-(TestCaseID:로그인021)                                ######### 미구현
#  Scenario: 개인정보처리방침 텍스트를 확인한다
#    When 메가존 로그인 페이지로 이동한다
#    Then [개인정보처리방침]텍스트가 출력된다

  @시나리오-19(TestCaseID:로그인022)
  Scenario: 로그인하고 로그아웃한다
    When 메가존 로그인 페이지로 이동한다
    And 2단계 인증 필요없는 계정의 이메일을 입력한다
    And 2단계 인증 설정된 계정의 비밀번호를 입력한다
    And 메가존 로그인 페이지에서 [로그인]버튼을 클릭한다
    And 브라우저에 로그아웃 url을 입력한다
    And 메가존 로그인 페이지로 이동한다
    Then 메가존 로그인 페이지가 출력된다

  @시나리오-20(TestCaseID:로그인023)
  Scenario: 존재하지 않는 페이지로 이동한다
    When 존재하지 않는 페이지로 이동한다
    Then 존재하지 않는 페이지가 출력된다
    And 존재하지 않는 페이지 이미지가 출력된다
    And 존재하지 않는 페이지 안내가 출력된다
    And 존재하지 않는 페이지 [확인]버튼이 출력된다
    And Copyright가 출력된다
    And 다국어 설정이 출력된다
    #And [이용약관]텍스트가 출력된다
    #And [개인정보처리방침]텍스트가 출력된다

  @시나리오-21(TestCaseID:로그인024)
  Scenario: 존재하지 않는 페이지에서 로그인 페이지로 이동한다
    When 존재하지 않는 페이지로 이동한다
    And 존재하지 않는 페이지 [확인]버튼을 클릭한다
    Then 메가존 로그인 페이지가 출력된다
    And 메가존 로그인 페이지에서 안내가 출력된다
    And Megazone Cloud 로고가 출력된다
    And 메가존 로그인 페이지에서 이메일 입력필드가 출력된다
    And 메가존 로그인 페이지에서 비밀번호 입력필드가 출력된다
    And 메가존 로그인 페이지에서 [로그인]버튼이 출력된다
    And 메가존 로그인 페이지에서 [비밀번호를 잃어버리셨나요?]버튼이 출력된다
    And Copyright가 출력된다
    And 다국어 설정이 출력된다
    #And [이용약관]텍스트가 출력된다
    #And [개인정보처리방침]텍스트가 출력된다