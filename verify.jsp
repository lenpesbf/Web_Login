<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>OTP Verification</title>
<link rel="stylesheet"
	href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
<link rel="stylesheet" href="../../css/Verify.css">

</head>
<body>

	<div class="otp-container">
		<!-- <i class='bx bx-x close-btn'></i> -->
		<header>Nhập mã OTP</header>
		<p>Vui lòng kiểm tra số điện thoại +84 xx xxx xx xx để đăng nhập</p>
		<form action="<%=request.getContextPath()%>/verifyPhoneNumber" method="POST"
			onsubmit="return submitOtp();">
			<div class="otp-input">
				<input type="number" name="otp_verify" style="width: 100%;"
					oninput="this.value = this.value.slice(0, 4)" min="0" max="9999"
					pattern="[0-9]*"
					onkeydown="if(event.key === 'ArrowUp' || event.key === 'ArrowDown') event.preventDefault();"//ngăn không cho thay đổi giá trị mặc định khi click mũi tên lên xuống 
					onwheel="event.preventDefault();" //ngăn thay đổi khi lăn chuột>
			</div>


			<div class="resend-timer">
				<span class="resend-link">Gửi lại mã OTP</span>
			</div>

			<button type="submit" class="continue-btn">Tiếp tục</button>
		</form>
	</div>
</body>
</html>

