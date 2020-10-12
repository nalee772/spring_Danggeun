<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="includeJSP.jsp" %>
<html lang="ko">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>글수정하기 :: 당근나라</title>
        <link rel="stylesheet" href="../../css/common.css" />
        <script
            src="https://kit.fontawesome.com/797af710b1.js"
            crossorigin="anonymous"
            defer
        ></script>
        <script
            src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"
            defer
        ></script>
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
        
        <article class="article">
          <form action="buyPostUpdate.do" method="post" enctype="multipart/form-data">
            <div class="article__buy-board-update">
                <!-- 게시글에대한 카테고리 불러오기 -->
                <div class="buy-board-update__sort">
                    <select
                        class="buy-board-update__category"
                        name="ctcode"
                        required
                    >
                    	<option value="${bPost.ctcode }" selected hidden>${bPost.ctkinds }</option>
                        <option value="1">디지털/가전</option>
                        <option value="2">가구/인테리어</option>
                        <option value="3">유아동/유아도서</option>
                        <option value="4">생활/가공식품</option>
                        <option value="5">스포츠/레저</option>
                        <option value="6">여성잡화</option>
                        <option value="7">여성의류</option>
                        <option value="8">남성패션/잡화</option>
                        <option value="9">게임/취미</option>
                        <option value="10">뷰티/미용</option>
                        <option value="11">반려동물용품</option>
                        <option value="12">도서/티켓/음반</option>
                        <option value="13">기타중고물품</option>
                    </select>
                    <select
                        class="buy-board-update__category"
                        name="pstatus"
                        required
                    >
                        <option value="1">거래가능</option>
                        <option value="2">거래중</option>
                        <option value="3">거래완료</option>
                    </select>
                </div>
                <div class="buy-board-update__info">
                    <div class="buy-board-update__location">
                        <label
                            class="buy-board-update__location--label"
                            for="buy-board-update__location--input"
                            >활동 지역</label
                        >
                        <input
                        	name="maddr"
                            class="buy-board-update__location--input"
                            type="text"
                            readonly
                            value="서울시 강남구" 
                        /> <!-- 통합 후 session에서 maddr가져오기 -->
                    </div>
                    <div class="buy-board-update__price">
                        <label
                            class="buy-board-update__price--label"
                            for="buy-board-update__price--input"
                            >거래 가격</label
                        >
                        <input
                            class="buy-board-update__price--input"
                            name="pprice"
                            type="text"
                            placeholder="가격을 입력해주세요"
                            value="${bPost.pprice }"
                            required
                        />
                    </div>
                </div>
                <div class="buy-board-update__image">
                    <div class="buy-board-update__image--title">사진 첨부</div>
                    <div class="buy-board-update__image--container">
                        <!-- 이미지경로 받아오기 -->
                        <div class="image--input-container">
                            <label class="image--input-label">
                                <div class="image--input-button button-1">
                                    <img
                                    	class="update-image1 image-1"
                                        src="/image/${bPost.pimg1}"
                                        alt="이미지1"
                                    />
                                    <div class="del-btn1 del-btn"></div>
                                </div>
                                <input
                                	name ="img"
                                    class="image--input image-1"
                                    type="file"
                                    accept=".jpg, .jpeg, .png"
                                />
                            </label>
                        </div>
                        <div class="image--input-container">
                            <label class="image--input-label">
                                <div class="image--input-button button-2">
                                <c:if test="${bPost.pimg2 != 'null'}">
                                    <img
                                    	class="update-image2 image-2"
                                        src="/image/${bPost.pimg2}"
                                        alt="이미지2"
                                    />
                                    <div class="del-btn2 del-btn"></div>
                                </c:if>
                                </div>
                                <input
                                	name ="img"
                                    class="image--input image-2"
                                    type="file"
                                    accept=".jpg, .jpeg, .png"
                                />
                            </label>
                        </div>
                        <div class="image--input-container">
                            <label class="image--input-label">
                                <div class="image--input-button button-3">
                                <c:if test="${bPost.pimg3 != 'null'}">
                                    <img
                                    	class="update-image3 image-3"
                                        src="/image/${bPost.pimg3 }"
                                        alt="이미지3"
                                    />
                                    <div class="del-btn3 del-btn"></div>
                                </c:if>
                                </div>
                                <input
                                	name ="img"
                                    class="image--input image-3"
                                    type="file"
                                    accept=".jpg, .jpeg, .png"
                                />
                            </label>
                        </div>
                        <div class="image--input-container">
                            <label class="image--input-label">
                                <div class="image--input-button button-4">
                                    <div class="image--input-button button-3">
                                    <c:if test="${bPost.pimg4 != 'null'}">
                                        <img
                                        	class="update-image4 image-4"
                                            src="/image/${bPost.pimg4 }"
                                            alt="이미지4"
                                        />
                                        <div class="del-btn4 del-btn"></div>
                                    </c:if>
                                    </div>
                                </div>
                                <input
                                	name ="img"
                                    class="image--input image-4"
                                    type="file"
                                    accept=".jpg, .jpeg, .png"
                                />
                            </label>
                        </div>
                        <div class="image--input-container">
                            <label class="image--input-label">
                                <div class="image--input-button button-5">
                                <c:if test="${bPost.pimg5 != 'null'}">
                                    <img
                                    	class="update-image5 image-5"
                                        src="/image/${bPost.pimg5 }"
                                        alt="이미지5"
                                    />
                                    <div class="del-btn5 del-btn"></div>
                                </c:if>
                                </div>
                                <input
                                	name ="img"
                                    class="image--input image-5"
                                    type="file"
                                    accept=".jpg, .jpeg, .png"
                                />
                            </label>
                        </div>
                    </div>
                </div>
                <div class="buy-board-update__title">
                    <textarea
                    	name="ptitle"
                        class="buy-board-update__title--textarea"
                        placeholder="제목을 입력해주세요"
                        required
                    >${bPost.ptitle }</textarea
                    >
                </div>
                <div class="buy-board-update__content">
                    <textarea
                    	name="pcontent"
                        class="buy-board-update__content--textarea"
                        placeholder="내용을 입력해주세요"
                        required
                    >${bPost.pcontent }</textarea
                    >
                </div>
                <div class="buy-board-update__btn-container">
                    <a href="#none">
                    	<div class="buy-board-update__list list--btn"> 돌아가기</div>
                    </a>
                    <input type="hidden" name="pnum" value="${bPost.pnum }" />
                    <input type="submit" value="수정하기" class="buy-board-update__submit">
                </div>
            </div>
          </form>
        </article>

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
