<!-- Header -->
<header class="main-header" id="top">
    <div class="logo-explore-container">
        <!-- Logo and Name -->
        <div class="header-logo">
            <a href="home.php">
                <img id="Logo_White" src="res/Logo_White.png">
                <img id="AnimaniacTxt_White" src="res/AnimaniacTxt_White.png">
            </a>
        </div>
        <!-- Explore Dropdown -->
        <div class="explore">
            <button class="explorebtn">Explore
                <div class="fas fa-caret-down" id="search-btn"></div>
            </button>
            <div class="explore-content">
                <table style="width:100%">
                    <tr>
                        <th><a href="gallery.php"><b><u>Gallery</u></b></a></th>
                        <th><a href="news.php"><b><u>News</u></b></a></th>
                    </tr>
                    <tr>
                        <td><a href="special.php">Artist</a></td>
                    </tr>
                    <tr>
                        <td><a href="submit.php">Submit Artworks</a></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>

    <div class="search-filter-container">
        <!-- Filter -->
        <div class="filter-container">
            <select name="filter" id="filter">
                <option value="" disabled selected hidden>Filter by</option>
                <option value="all">All</option>
                <option value="figures">Figures</option>
                <option value="books">Books</option>
                <option value="clothing">Clothing</option>
                <option value="news">News</option>
                <option value="artworks">Artworks</option>
            </select>
        </div>
        <!-- Search Bar -->
        <div class="search">
            <input type="text" placeholder="Search...">
            <a href="#">
                <div class="fas fa-search" id="search-btn"></div>
            </a>
        </div>
    </div>

    <!-- Icons -->
    <div class="icons">
        <a href="wishlist.php" class="wish">
            <div class="fas fa-heart" id="wishlist-btn"></div>
        </a>
        <a href="shop.php" class="cart">
            <div class="fas fa-shopping-cart" id="cart-btn"></div>
        </a>
        <a href="feedbackAwaiting.php" class="notif">
            <div class="fas fa-bell" id="notif-btn"></div>
        </a>
        <a href="#" class="user">
            <div class="fas fa-user" id="user-btn"></div>
        </a>
    </div>
</header>