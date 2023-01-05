<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>homePage</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  </head>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  <style>
    #footer {
      width: auto;
      height: 200px;
      background-color: rgba( 27, 120, 95, 1);
      margin-top: 50px;
    }
  </style>
  <body>
    <nav class="navbar bg-white">
        <div class="container" >
          <a class="navbar-brand" href="#">
            <img src="../picture/homepage/logo icon.png" class="d-inline-block align-text-top" alt="logo" width="auto" height="auto">
            HAOS
          </a>
          <ul class="nav justify-content-end">
            <li class="nav-item">
                <button class="btn btn-outline-success me-2" type="button" data-bs-toggle="modal" data-bs-target="#login">登入</button>
            </li>
            <li class="nav-item">
                <button class="btn btn-outline-success me-2" type="button" data-bs-toggle="modal" data-bs-target="#signup">註冊</button>
            </li>
        </div>
    </nav>
    <div class="modal fade" id="login" tabindex="-1" aria-labelledby="login" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" style="margin: 0;"></button>
              <h5 class="modal-title" id="login" style="margin-right: 45%;">登入</h5>
            </div>
            <div class="modal-body" style="margin: 0 auto;">
              <div class="col-xl">
                <label for="inputEmail4" class="form-label">Email</label>
                <input type="email" class="form-control" id="inputEmail4">
              </div>
              <div class="col-xl">
                <label for="inputPassword4" class="form-label">密碼</label>
                <input type="password" class="form-control" id="inputPassword4">
              </div>
            </div>
            <button type="button" class="btn btn-primary" style="width: 80%; margin: 0 auto;" data-bs-dismiss="modal">送出</button>
            <hr>
          </div>
        </div>
    </div>
      <div class="modal fade" id="signup" tabindex="-1" aria-labelledby="signup" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" style="margin: 0;"></button>
              <h5 class="modal-title" id="signup" style="margin-right: 45%;">註冊</h5>
            </div>
            <form:form action="processForm" method="GET" modelAttribute="userVo">
             <div class="modal-body" style="margin: 0 auto;">
              <div class="col-xl">
                <label for="inputEmail4" class="form-label">Email</label>
                <form:input type="email" class="form-control" id="inputEmail4" path="email"/>
              </div>
              <div class="col-xl">
                <label for="inputPassword4" class="form-label">密碼</label>
                <form:input type="password" class="form-control" id="inputPassword4" path="password"/>
              </div>
            </div>
            <input type="submit" class="btn btn-primary" style="width: 80%; margin: 0 auto;" data-bs-dismiss="modal">送出</input>
            </form:form>
            <hr>
          </div>
        </div>
    </div>
    <img src="../picture/homepage/hero image.png" width="auto" height="auto">
    <div class="bg-warning shadow-sm row" style="width: 840px; height: 90px; margin: 0 auto; position: relative;
    bottom: 45px; border-radius:9px; padding: 20px 20px;">
      <select class="form-select" aria-label="select" style="width: 24%; height: 50px;  margin: 0 auto;">
        <option value="" disabled selected hidden>縣市</option>
        <option value="1">嘉義縣</option>
        <option value="2">嘉義市</option>
      </select>
      <select class="form-select" aria-label="Default select example" style="width: 24%;  margin: 0 auto; height: 50px;">
        <option value="" disabled selected hidden>鄉鎮市區</option>
        <option value="1">中埔鄉</option>
        <option value="2">六腳鄉</option>
        <option value="3">大埔鄉</option>
        <option value="4">大林鎮</option>
        <option value="5">太保市</option>
        <option value="6">布袋鎮</option>
      </select>
      <select class="form-select" aria-label="Default select example" style="width: 24%;  margin: 0 auto; height: 50px;">
        <option value="" disabled selected hidden>住宅空間</option>
        <option value="1">嘉義縣</option>
        <option value="2">嘉義市</option>
      </select>
      <button class="btn btn-outline-success me-2" style="width: 24%; height: 50px; margin: 0 auto;" type="button">搜尋</button>
    </div>
    <div style="margin: 50px 120px;">
        <h3>精選推薦</h3>
        <div class="row">
          <div class="card shadow-sm" style="width: 18rem; margin: 0 auto;">
            <img src="..." class="card-img-top" alt="...">
            <div class="card-body">
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            </div>
          </div>
          <div class="card shadow-sm" style="width: 18rem; margin: 0 auto;">
            <img src="..." class="card-img-top" alt="...">
            <div class="card-body">
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            </div>
          </div>
          <div class="card shadow-sm" style="width: 18rem; margin: 0 auto;">
            <img src="..." class="card-img-top" alt="...">
            <div class="card-body">
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            </div>
          </div>
          <div class="card shadow-sm" style="width: 18rem; margin: 0 auto;">
            <img src="..." class="card-img-top" alt="...">
            <div class="card-body">
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            </div>
          </div>
        </div>
    </div>
    <div style="margin: 50px 120px;">
      <h3>平台理念</h3>
      <div class="row">
        <div class="card shadow-sm" style="width: 18rem; margin: 0 auto;">
          <img src="..." class="card-img-top" alt="...">
          <div class="card-body">
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          </div>
        </div>
        <div class="card shadow-sm" style="width: 18rem; margin: 0 auto;">
          <img src="..." class="card-img-top" alt="...">
          <div class="card-body">
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          </div>
        </div>
        <div class="card shadow-sm" style="width: 18rem; margin: 0 auto;">
          <img src="..." class="card-img-top" alt="...">
          <div class="card-body">
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          </div>
        </div>
        <div class="card shadow-sm" style="width: 18rem; margin: 0 auto;">
          <img src="..." class="card-img-top" alt="...">
          <div class="card-body">
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          </div>
        </div>
      </div>
    </div>
    <div style="margin: 50px 120px;">
      <h3>最新學生評價</h3>
      <div class="row">
        <div class="card shadow-sm" style="width: 18rem; margin: 0 auto;">
          <img src="..." class="card-img-top" alt="...">
          <div class="card-body">
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          </div>
        </div>
        <div class="card shadow-sm" style="width: 18rem; margin: 0 auto;">
          <img src="..." class="card-img-top" alt="...">
          <div class="card-body">
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          </div>
        </div>
        <div class="card shadow-sm" style="width: 18rem; margin: 0 auto;">
          <img src="..." class="card-img-top" alt="...">
          <div class="card-body">
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          </div>
        </div>
        <div class="card shadow-sm" style="width: 18rem; margin: 0 auto;">
          <img src="..." class="card-img-top" alt="...">
          <div class="card-body">
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          </div>
        </div>
      </div>
    </div>
    <div style="margin: 50px 120px;">
      <h3>合作單位</h3>
      <div class="row">
        <div style="width: 18rem; margin: 0 auto;">
          <img style="height: 151px;" src="HAOS - Icon _ Image/homepage/partner 3.png" class="card-img-top shadow-sm" alt="...">
        </div>
        <div style="width: 18rem; margin: 0 auto;">
          <img style="height: 151px;" src="HAOS - Icon _ Image/homepage/logo-1.png" class="card-img-top shadow-sm" alt="...">
        </div>
        <div  style="width: 18rem; margin: 0 auto;">
          <img style="height: 151px;" src="HAOS - Icon _ Image/homepage/partner 1.png" class="card-img-top shadow-sm" alt="...">
        </div>
        <div style="width: 18rem; margin: 0 auto;">
          <img style="height: 151px;" src="HAOS - Icon _ Image/homepage/partner 2.png" class="card-img-top shadow-sm" alt="...">
        </div>
      </div>
    </div>
    <div id="footer">

    </div>
  </body>
</html>