
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<link rel="stylesheet" href="css/bootstrap.min.css">

<link rel="stylesheet" href="css/indexstyle.css">
</head>
<%@include file="htmlTemplates/navigationBar.html"%>
<body>
	<main>
		<section>
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-sm-12">
						<div class="text-center">
							<h2>About us</h2>

							<br>

							<p class="lead">With 6 stations located across 6 car rental
								locations in Bulgaria, planning your journey couldn't be easier
								with Car Rental Kensev. Find a wide range of brand new economy and luxury
								car models available across Bulgaria, with both short and long
								term car hire options available. We pride ourselves on providing
								world class service, catering to a range of customer needs, with
								car rental deals available all year round. So whether you are
								looking for car rental in Bulgaria on a budget, or you want to
								rent a luxury car for a special event, Car Rental Kensev will have the
								rental car for you.</p>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section>
			<div class="container">
				<div class="text-center">
					<h1>Offers</h1>
					<br>
					<p class="lead">Below you can find our top offers:</p>
				</div>
			</div>
		</section>
		<section class="section-background">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-sm-4">
						<div class="courses-thumb courses-thumb-secondary">
							<div class="courses-top">
								<div class="courses-image">
									<img src="images/offer-1-720x480.jpg" class="img-responsive"
										alt="">
								</div>
							</div>

							<div class="courses-detail">
								<h3>
									<a href="fleet.html">Lorem ipsum dolor sit amet.</a>
								</h3>
								<p class="lead">
									<small>from</small> <strong>$99</strong> <small>per
										weekend</small>
								</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
							</div>
						</div>
					</div>

					<div class="col-md-4 col-sm-4">
						<div class="courses-thumb courses-thumb-secondary">
							<div class="courses-top">
								<div class="courses-image">
									<img src="images/offer-2-720x480.jpg" class="img-responsive"
										alt="">
								</div>
							</div>

							<div class="courses-detail">
								<h3>
									<a href="fleet.html">Animi eligendi minus</a>
								</h3>
								<p class="lead">
									<small>from</small> <strong>$99</strong> <small>per
										weekend</small>
								</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
							</div>
						</div>
					</div>

					<div class="col-md-4 col-sm-4">
						<div class="courses-thumb courses-thumb-secondary">
							<div class="courses-top">
								<div class="courses-image">
									<img src="images/offer-3-720x480.jpg" class="img-responsive"
										alt="">
								</div>
							</div>

							<div class="courses-detail">
								<h3>
									<a href="fleet.html">Rerum accusantium </a>
								</h3>
								<p class="lead">
									<small>from</small> <strong>$99</strong> <small>per
										weekend</small>
								</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
							</div>
						</div>
					</div>

					<div class="col-md-4 col-sm-4">
						<div class="courses-thumb courses-thumb-secondary">
							<div class="courses-top">
								<div class="courses-image">
									<img src="images/offer-4-720x480.jpg" class="img-responsive"
										alt="">
								</div>
							</div>

							<div class="courses-detail">
								<h3>
									<a href="fleet.html">Deleniti magni cupiditate</a>
								</h3>
								<p class="lead">
									<small>from</small> <strong>$99</strong> <small>per
										weekend</small>
								</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
							</div>
						</div>
					</div>

					<div class="col-md-4 col-sm-4">
						<div class="courses-thumb courses-thumb-secondary">
							<div class="courses-top">
								<div class="courses-image">
									<img src="images/offer-5-720x480.jpg" class="img-responsive"
										alt="">
								</div>
							</div>

							<div class="courses-detail">
								<h3>
									<a href="fleet.html">Voluptate officiis nesit</a>
								</h3>
								<p class="lead">
									<small>from</small> <strong>$99</strong> <small>per
										weekend</small>
								</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
							</div>
						</div>
					</div>

					<div class="col-md-4 col-sm-4">
						<div class="courses-thumb courses-thumb-secondary">
							<div class="courses-top">
								<div class="courses-image">
									<img src="images/offer-6-720x480.jpg" class="img-responsive"
										alt="">
								</div>
							</div>

							<div class="courses-detail">
								<h3>
									<a href="fleet.html">Lorem ipsum dolor sit amet.</a>
								</h3>
								<p class="lead">
									<small>from</small> <strong>$99</strong> <small>per
										weekend</small>
								</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>

	<!-- CONTACT -->
	<section id="contact">
		<div class="container">
			<div class="row">

				<div class="col-md-6 col-sm-12">
					<form id="contact-form" role="form" action="" method="post">
						<div class="section-title">
							<h2>
								Contact us <small>we love conversations. let us talk!</small>
							</h2>
						</div>

						<div class="col-md-12 col-sm-12">
							<input type="text" class="form-control"
								placeholder="Enter full name" name="name" required> <input
								type="email" class="form-control"
								placeholder="Enter email address" name="email" required>

							<textarea class="form-control" rows="6"
								placeholder="Tell us about your message" name="message" required></textarea>
						</div>

						<div class="col-md-4 col-sm-12">
							<input type="submit" class="form-control" name="send message"
								value="Send Message">
						</div>

					</form>
				</div>

				<div class="col-md-6 col-sm-12">
					<div class="contact-image">
						<img src="images/contact-1-600x400.jpg" class="img-responsive"
							alt="Smiling Two Girls">
					</div>
				</div>

			</div>
		</div>
	</section>

	<!-- FOOTER -->
	<footer id="footer">
		<div class="container">
			<div class="row">

				<div class="col-md-4 col-sm-6">
					<div class="footer-info">
						<div class="section-title">
							<h2>Headquarter</h2>
						</div>
						<address>
							<p>
								bul. Bulgaria 142 B <br>Sofia, 1700
							</p>
						</address>

						<ul class="social-icon">
							<li><a href="#" class="fa fa-facebook-square"
								attr="facebook icon"></a></li>
							<li><a href="#" class="fa fa-twitter"></a></li>
							<li><a href="#" class="fa fa-instagram"></a></li>
						</ul>

						<div class="copyright-text">
							<p>Copyright &copy; 2020 Kensev Car Rental</p>
							<p>
								All rights reserved: <a href="https://www.phpjabbers.com/">Kenan,
									Iskren, Ivan</a>
							</p>
						</div>
					</div>
				</div>

				<div class="col-md-4 col-sm-6">
					<div class="footer-info">
						<div class="section-title">
							<h2>Contact Info</h2>
						</div>
						<address>
							<p>+359 8766 17490</p>
							<p>
								<a href="mailto:contact@company.com">info@kensev.com</a>
							</p>
						</address>
					</div>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>

