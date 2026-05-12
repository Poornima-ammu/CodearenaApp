<%@ page import="com.codearena.entity.User" %>

<%
User user = (User) session.getAttribute("user");
%>

<nav class="navbar navbar-expand-lg custom-navbar px-4">

    <div class="container-fluid">

        <!-- BRAND -->
        <a class="navbar-brand brand-logo"
           href="dashboard">

            ⚡ CodeArena

        </a>

        <!-- MOBILE TOGGLER -->
        <button class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarContent">

            <span class="navbar-toggler-icon"></span>

        </button>

        <!-- NAV ITEMS -->
        <div class="collapse navbar-collapse justify-content-end"
             id="navbarContent">

            <div class="d-flex gap-3 align-items-center">

                <a class="nav-btn"
                   href="dashboard">

                    Dashboard

                </a>

                <a class="nav-btn"
                   href="problems">

                    Problems

                </a>

                <a class="nav-btn"
                   href="submissions">

                    Submissions

                </a>

                <a class="nav-btn leaderboard-btn"
                   href="leaderboard">

                    Leaderboard

                </a>

                <!-- PROFILE (important placement) -->
                <a class="nav-btn profile-btn"
                   href="profile">

                    👤 <%= (user != null ? user.getUsername() : "Profile") %>

                </a>

                <!-- LOGOUT -->
                <a class="logout-btn"
                   href="logout">

                    Logout

                </a>

            </div>

        </div>

    </div>

</nav>