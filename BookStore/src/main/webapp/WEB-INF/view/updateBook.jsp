<!doctype html>
<html lang="en">
  <head>
   
    <h2>Update Book Details...</h2>

<form action="update" method="POST">
<div class="form-group row">
    <label for="inputbookid" class="col-sm-2 col-form-label">Book Id</label>
    <div class="col-sm-10">
      <input type="Book Id"   value="${Book.getBid()}" class="form-control" id="inputbookid" name="bid" placeholder="Book Id">
    </div>
  </div>

  <div class="form-group row">
    <label for="inputbookname" class="col-sm-2 col-form-label">Book Name</label>
    <div class="col-sm-10">
      <input type="Book Name" value="${Book.getBookname()}" class="form-control" id="inputbookname" name="bookname"  placeholder="Book Name">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputauthor" class="col-sm-2 col-form-label">Author</label>
    <div class="col-sm-10">
      <input type="Author" value="${Book.getAuthor()}" class="form-control" id="inputauthor"  name="author" placeholder="Author">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputpublisher" class="col-sm-2 col-form-label">Publisher</label>
    <div class="col-sm-10">
      <input type="Publisher" value="${Book.getPublisher()}" class="form-control" id="inputpublisher"  name="publisher" placeholder="Publisher">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputprice" class="col-sm-2 col-form-label">Price</label>
    <div class="col-sm-10">
      <input type="Price" value="${Book.getPrice()}" class="form-control" id="inputprice"  name="price" placeholder="Price">
    </div>
  </div>
  

<div class="form-group row">
    <div class="col-sm-10">
      <button type="submit" class="btn btn-primary">ADD</button>
    </div>
  </div>
  
</form>
 



</body>



</html>