<div class="taskbar">
    <div class="logo">
        <h3>Admin Dashboard</h3>
    </div>
    <div class="profile" onclick="toggleDropdown()">
        <p>Hello, <?php echo $_SESSION['username']; ?></p>
        <div class="dropdown-content" id="dropdown">
            <p><?php echo $_SESSION['email']; ?></p>
            <form method="POST" action="logout.php">
                <button type="submit" class="logout-button">Logout</button>
            </form>
        </div>
    </div>
</div>

<script>
    function toggleDropdown() {
        var dropdown = document.getElementById("dropdown");
        dropdown.style.display = (dropdown.style.display === "none" || dropdown.style.display === "") ? "block" : "none";
    }

    window.onclick = function(event) {
        if (!event.target.matches('.profile')) {
            var dropdown = document.getElementById("dropdown");
            if (dropdown.style.display === "block") {
                dropdown.style.display = "none";
            }
        }
    }
</script>
