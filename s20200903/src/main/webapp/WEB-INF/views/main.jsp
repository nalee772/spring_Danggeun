<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="includeJSP.jsp" %>
<html lang="ko">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>당신 근처의 당근나라</title>
        <link rel="stylesheet" href="../../css/common.css" />
        <script src="../../javascript/common.js" defer></script>
        <link
            rel="shortcut icon"
            type="image/x-icon"
            href="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2Fcz9VUi%2FbtqJt0b2VUe%2FiiBIEnDkufPInk4hKsunE1%2Fimg.png"
        />
        <link
            href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700;900&display=swap"
            rel="stylesheet"
        />
    </head>

    <body>
        
        <!-- 섹션 시작 -->
        <section class="main__section section-1">
            <div class="main__section-container">
                <div class="main__section-content section-1-text">
                    <h1>당신 근처의<br />당근나라</h1>
                    <p>
                        중고 거래부터 동네 정보까지, 이웃과 함께 해요 <br />
                        가깝고 따뜻한 당신의 근처를 만들어요.
                    </p>
                </div>
                <div class="main__section-content section-1-image"></div>
            </div>
        </section>
        <section class="main__section section-2">
            <div class="main__section-container">
                <div class="main__section-content section-2-image"></div>
                <div class="main__section-content section-2-text">
                    <h1>우리 동네<br />중고 직거래 마켓</h1>
                    <p>동네 주민들과 가깝고 따뜻한 거래를 지금 경험해보세요.</p>
                    <div
                        class="main__section-content section2-button-container"
                    >
                        <input
                            class="section-2-btn"
                            type="button"
                            value="인기매물 보기"
                            onclick='location.href="https://www.daangn.com/hot_articles"'
                        />
                        <input
                            class="section-2-btn"
                            type="button"
                            value="믿을 수 있는 중고거래"
                            onclick='location.href="https://www.daangn.com/trust"'
                        />
                    </div>
                </div>
            </div>
        </section>
        <section class="main__section section-3">
            <div class="main__section-container">
                <div class="main__section-content section-3-text">
                    <h1>이웃과 함께 하는<br />동네 생활</h1>
                    <p>우리 동네의 다양한 이야기를 이웃과 함께 나누어요.</p>
                    <ul class="section-3-text-list">
                        <li class="section-3-text-list-content">
                            <div
                                class="section-3-text-list-content-icon icon-question"
                            ></div>
                            <div>
                                <strong>우리동네질문</strong>
                                <p>
                                    궁금한 게 있을 땐<br />이웃에게 물어보세요.
                                </p>
                            </div>
                        </li>
                        <li class="section-3-text-list-content">
                            <div
                                class="section-3-text-list-content-icon icon-lost"
                            ></div>
                            <div>
                                <strong>동네분실센터</strong>
                                <p>
                                    무언가를 잃어버렸을때,<br />함께 찾을 수
                                    있어요.
                                </p>
                            </div>
                        </li>
                        <li class="section-3-text-list-content">
                            <div
                                class="section-3-text-list-content-icon icon-group"
                            ></div>
                            <div>
                                <strong>동네모임</strong>
                                <p>
                                    관심사가 비슷한 이웃과<br />온오프라인으로
                                    만나요.
                                </p>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="main__section-content section-3-image"></div>
            </div>
        </section>
        <section class="main__section section-4">
            <div class="main__section-container">
                <div class="main__section-content section-4-image"></div>
                <div class="main__section-content section-4-text">
                    <h1>내 근처에서 찾는<br />우리 나눔 장터</h1>
                    <p>
                        우리 동네 나눔을 찾고 있나요?<br />동네 주민과 함께
                        나눔을 해보아요.
                    </p>
                    <div
                        class="main__section-content section4-button-container"
                    >
                        <input
                            class="section-4-btn"
                            type="button"
                            value="우리동네 나눔글 찾기"
                            onclick='location.href="https://town.daangn.com/"'
                        />
                    </div>
                </div>
            </div>
        </section>
        <!-- 홈 버튼 -->
        <div class="scroll-btn"></div>
        <!-- 하단 카피라이트 -->
        <footer class="footer">
            <div class="footer-container">
                <div class="footer-top">
                    <div class="footer-top-logo"></div>
                    <ul class="footer-top-list">
                        <li class="footer-top-list-content">
                            <a href="https://www.daangn.com/trust"
                                >믿을 수 있는 중고거래</a
                            >
                        </li>
                        <li class="footer-top-list-content">
                            <a href="https://www.daangn.com/wv/faqs">
                                자주 묻는 질문</a
                            >
                        </li>
                    </ul>
                    <ul class="footer-top-list">
                        <li class="footer-top-list-content">
                            <a
                                href="https://www.notion.so/3d0197c137ec43d18ff739b5b254a3c8/"
                            >
                                회사 소개
                            </a>
                        </li>
                        <li class="footer-top-list-content">
                            <a href="https://ad.daangn.com/"> 광고주센터 </a>
                        </li>
                        <li class="footer-top-list-content">
                            <a href="https://town.daangn.com/"> 동네가게 </a>
                        </li>
                    </ul>
                    <ul class="footer-top-list">
                        <li class="footer-top-list-content">
                            <a href="https://www.daangn.com/policy/terms">
                                이용약관
                            </a>
                        </li>
                        <li class="footer-top-list-content">
                            <a href="https://www.daangn.com/policy/privacy">
                                개인정보 취급방침
                            </a>
                        </li>
                        <li class="footer-top-list-content">
                            <a href="https://www.daangn.com/policy/location">
                                위치기반서비스 이용약관
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="footer-bottom">
                    <div class="footer-bottom-copyright">
                        <ul class="footer-bottom-list-container">
                            <li class="footer-bottom-list-conent">
                                <address>고객문의 cs@daangnservice.com</address>
                                <address>제휴문의 contact@daangn.com</address>
                            </li>
                            <li class="footer-bottom-list-conent">
                                <address>
                                    사업자 등록번호 : 375-87-000-88
                                </address>
                                <address>
                                    서울특별시 구로구 디지털로 30길 28 609호
                                </address>
                            </li>
                            <li class="footer-bottom-list-conent">
                                ©Danggeun Market Inc.
                            </li>
                        </ul>
                    </div>
                    <div class="footer-bottom-sns">
                        <ul class="footer-bottom-sns-container">
                            <li class="sns-icon">
                                <a href="https://www.facebook.com/daangn">
                                    <img
                                        src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/footer/icon-facebook-0563f4a93852d073b41f13b8bcabb03d47af3bb3a6755cdfedd8a73686c7f18c.svg"
                                    />
                                </a>
                            </li>
                            <li class="sns-icon">
                                <a
                                    href="https://www.instagram.com/daangnmarket/"
                                >
                                    <img
                                        src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/footer/icon-instagram-2f6c88a461597907c114b7ce28eab053fcae791ed26417915fefb6f7c9f95756.svg"
                                    />
                                </a>
                            </li>
                            <li class="sns-icon">
                                <a href="https://blog.naver.com/daangn">
                                    <img
                                        src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/footer/icon-blog-e1b0d512d1766a6962ec5bbb5b0803d2a6a9c55ad97db5ba9eebb76013caceba.svg"
                                    />
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>
    </body>
</html>
