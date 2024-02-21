<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<c:if test="${user.gijang_Member_IsAdmin != 'Y' }">
	<script>
		alert('잘못된 접근 입니다.');
		location.href = '${cpath}';
	</script>
</c:if>

<div id="detailProduct">
	<div class="frame">
		<div class="datailProduct_frame">
			<div class="product_buy flex">
				<div class="product_img">
					<img src="${cpath }/upload/${dto.gijang_SaleBoard_ImgFileName}">
				</div>
				<div class="buy_form">
					<div class="buy_frame">
						<h3>${dto.gijang_SaleBoard_Title }</h3>
						<p>${dto.gijang_SaleBoard_Price }원</p>
					</div>
				</div>
			</div>
		</div>
		<div class="detailAddForm">
			<form method="POST" enctype="multipart/form-data" style="text-align: center">
				<div class="productImgAdd">
					<p>상품설명 1</p>
					<p><input type="file" name="productDetail_Img1" multiple="multiple"></p>
				</div>
				<div class="productImgAdd">
					<p>상품설명 2</p>
					<p><input type="file" name="productDetail_Img2" multiple="multiple"></p>
				</div>
				<div class="productImgAdd">
					<p>상품설명 3</p>
					<p><input type="file" name="productDetail_Img3" multiple="multiple"></p>
				</div>
				<div class="productImgAdd">
					<p>상품설명 4</p>
					<p><input type="file" name="productDetail_Img4" multiple="multiple"></p>
				</div>
				<div class="productImgAdd">
					<p>상품설명 5</p>
					<p><input type="file" name="productDetail_Img5" multiple="multiple"></p>
				</div>
				<div class="productImgAdd">
					<p>상품설명 6</p>
					<p><input type="file" name="productDetail_Img6" multiple="multiple"></p>
				</div>
				<div class="productImgAdd">
					<p>상품설명 7</p>
					<p><input type="file" name="productDetail_Img7" multiple="multiple"></p>
				</div>
				<div class="productImgAdd">
					<p>상품설명 8</p>
					<p><input type="file" name="productDetail_Img8" multiple="multiple"></p>
				</div>
				<div class="productImgAdd">
					<p>상품설명 9</p>
					<p><input type="file" name="productDetail_Img9" multiple="multiple"></p>
				</div>
				<div class="productImgAdd">
					<p>상품설명 10</p>
					<p><input type="file" name="productDetail_Img10" multiple="multiple"></p>
				</div>
				<div class="productImgAdd">
					<p>상품설명 11</p>
					<p><input type="file" name="productDetail_Img11" multiple="multiple"></p>
				</div>
				<div class="productImgAdd">
					<p>상품설명 12</p>
					<p><input type="file" name="productDetail_Img12" multiple="multiple"></p>
				</div>
				<div class="productImgAdd">
					<p>상품설명 13</p>
					<p><input type="file" name="productDetail_Img13" multiple="multiple"></p>
				</div>
				<div class="productImgAdd">
					<p>상품설명 14</p>
					<p><input type="file" name="productDetail_Img14" multiple="multiple"></p>
				</div>
				<div class="productImgAdd">
					<p>상품설명 15</p>
					<p><input type="file" name="productDetail_Img15" multiple="multiple"></p>
				</div>
				<div class="productImgAdd">
					<p>상품설명 16</p>
					<p><input type="file" name="productDetail_Img16" multiple="multiple"></p>
				</div>
				<div class="productImgAdd">
					<p>상품설명 17</p>
					<p><input type="file" name="productDetail_Img17" multiple="multiple"></p>
				</div>
				<div class="productImgAdd">
					<p>상품설명 18</p>
					<p><input type="file" name="productDetail_Img18" multiple="multiple"></p>
				</div>
				<div class="productImgAdd">
					<p>상품설명 19</p>
					<p><input type="file" name="productDetail_Img19" multiple="multiple"></p>
				</div>
				<div class="productImgAdd">
					<p>상품설명 20</p>
					<p><input type="file" name="productDetail_Img20" multiple="multiple"></p>
				</div>
				<div class="productImgAdd">
					<p>상품설명 21</p>
					<p><input type="file" name="productDetail_Img21" multiple="multiple"></p>
				</div>
				<div class="productImgAdd">
					<p>상품설명 22</p>
					<p><input type="file" name="productDetail_Img22" multiple="multiple"></p>
				</div>
				<div class="productImgAdd">
					<p>상품설명 23</p>
					<p><input type="file" name="productDetail_Img23" multiple="multiple"></p>
				</div>
				<div class="productImgAdd">
					<p>상품설명 24</p>
					<p><input type="file" name="productDetail_Img24" multiple="multiple"></p>
				</div>
				<div class="productImgAdd">
					<p>상품설명 25</p>
					<p><input type="file" name="productDetail_Img25" multiple="multiple"></p>
				</div>
				<div class="productImgAdd">
					<p>상품설명 26</p>
					<p><input type="file" name="productDetail_Img26" multiple="multiple"></p>
				</div>
				<div class="productImgAdd">
					<p>상품설명 27</p>
					<p><input type="file" name="productDetail_Img27" multiple="multiple"></p>
				</div>
				<p><input type="submit" value="작성"></p>
			</form>
		</div>
	</div>
</div>

<footer>
	<h3>footer</h3>
</footer>

</body>
</html>