<!DOCTYPE html>
<html lang="en">
    <meta charset="UTF" >
    <title>Registration - page</title>
    <link rel="stylesheet" href="C:\C_WAD\CSS\style.css">
<body>
       
    
<?php include_once("template/nav.php");?>
    
    <h1>Forms</h1>
    <form action="">
        <input type="text" placeholder="FullName"><br><br>
        <input type="text" Id="ID/BirthCertificateNo"><br><br>
        <input type="number"placeholder="Age"><br><br>
        <input type="password"placeholder="Password"><br><br>
        <input type="email"placeholder="Email Address"><br><br>
        <input type="text"placeholder="Nationality"><br><br>
        <input type="text"placeholder="Grade"><br><br>

        
        <br><br>
        <input type="checkbox" id="swahili" value="Swahili" name="Swahili">
        <label for="Swahili">Swahili</label><br>
        <input type="checkbox" id="English" value="English" name="English">
        <label for="English">English</label><br>
        <input type="checkbox" id="Spanish" value="Spanish" name="Spanish">
        <label for="Spanish">Spanish</label><br>

        <select name="" id="">
            <option value="">---Select course of preference-</option>
            <option value="1">---Bachelor  of business Information Technology-</option>
            <option value="2">---Bachelor of Medicine-</option>
            <option value="3">---Bachelor of Pharmaceuticals-</option>
            <option value="4">---Bachelor of Information Computer science-</option>
            <option value="5">---Bachelor of Law-</option>
            <option value="6">---Diploma in Business Management-</option>
            <option value="7">---Diploma in Business Information Technology-</option>
        </select>
        <br><br>
<input type="submit" value="Save Details">

<br>
<br>
<br>
<br>
<br>
<br>
        
    </form>

    <?php include_once ("template/footer.php");?>
</body>

</html>