const API = "http://localhost:3000";
let allDishes = [];
let currentFilter = "All";
let quizQuestions = [];
let currentQuestion = 0;
let userAnswers = [];
let currentQuizDish = "";

async function loadDishes() {
    try {
        const res = await fetch(API + "/recipes");
        allDishes = await res.json();
        renderMenu();
        renderQuizGrid();
        renderFilterBar();
    } catch (e) {
        document.getElementById("menuGrid").innerHTML =
            '<p style="text-align:center;color:#ff6666;grid-column:1/-1">Could not connect to server. Make sure the Haskell backend is running on port 3000.</p>';
    }
}

function renderFilterBar() {
    const cuisines = ["All"];
    allDishes.forEach(function(d) {
        if (cuisines.indexOf(d.cuisine) === -1) cuisines.push(d.cuisine);
    });
    var filterBar = document.getElementById("filterBar");
    filterBar.innerHTML = cuisines.map(function(c) {
        return '<button class="filter-btn ' + (c === currentFilter ? "active" : "") + '" onclick="setCuisineFilter(\'' + c + '\')">' + c + '</button>';
    }).join("");
}

function setCuisineFilter(cuisine) {
    currentFilter = cuisine;
    renderFilterBar();
    filterDishes();
}

function filterDishes() {
    var search = document.getElementById("searchInput").value.toLowerCase();
    var filtered = allDishes.filter(function(d) {
        var matchesSearch = d.dishName.toLowerCase().indexOf(search) !== -1 ||
            d.cuisine.toLowerCase().indexOf(search) !== -1 ||
            d.description.toLowerCase().indexOf(search) !== -1;
        var matchesCuisine = currentFilter === "All" || d.cuisine === currentFilter;
        return matchesSearch && matchesCuisine;
    });
    renderDishCards(filtered, "menuGrid", false);
}

function renderMenu() {
    renderDishCards(allDishes, "menuGrid", false);
}

function escapeAttr(str) {
    return str.replace(/&/g, "&amp;").replace(/'/g, "&#39;").replace(/"/g, "&quot;").replace(/</g, "&lt;").replace(/>/g, "&gt;");
}

function renderDishCards(dishes, containerId, isQuiz) {
    var container = document.getElementById(containerId);
    if (dishes.length === 0) {
        container.innerHTML = '<p style="text-align:center;color:#aaa;grid-column:1/-1">No dishes found.</p>';
        return;
    }
    container.innerHTML = dishes.map(function(d) {
        var onclick = isQuiz
            ? "startQuiz('" + escapeAttr(d.dishName) + "')"
            : "openRecipe('" + escapeAttr(d.dishName) + "')";
        return '<div class="card" onclick="' + onclick + '">' +
            '<h3>' + d.dishName + '</h3>' +
            '<span class="cuisine-tag">' + d.cuisine + '</span>' +
            '<span class="difficulty-tag difficulty-' + d.difficulty + '">' + d.difficulty + '</span>' +
            '<p>' + d.description + '</p>' +
            '<div class="meta">&#x23F1; ' + d.cookingTime + ' | &#x1F37D; ' + d.servings + ' servings | ' + d.ingredients.length + ' ingredients</div>' +
            '</div>';
    }).join("");
}

function renderQuizGrid() {
    renderDishCards(allDishes, "quizGrid", true);
}

function showSection(id) {
    var sections = document.querySelectorAll('.section');
    for (var i = 0; i < sections.length; i++) sections[i].classList.remove('active');
    document.getElementById(id).classList.add('active');
    var navBtns = document.querySelectorAll('.nav-btn');
    for (var i = 0; i < navBtns.length; i++) navBtns[i].classList.remove('active');
    if (id === 'menu' || id === 'recipe-detail') {
        navBtns[0].classList.add('active');
    } else {
        navBtns[1].classList.add('active');
    }
}

async function openRecipe(name) {
    try {
        var res = await fetch(API + "/recipe/" + encodeURIComponent(name));
        var dish = await res.json();
        if (dish.error) { alert("Dish not found!"); return; }
        renderRecipeDetail(dish);
        showSection('recipe-detail');
    } catch(e) {
        alert("Error loading recipe.");
    }
}

function renderRecipeDetail(dish) {
    var ingredientsHtml = dish.ingredients.map(function(i) {
        return '<div class="ingredient-item"><span class="ing-name">' + i.name + '</span><span class="ing-qty">' + i.quantity + '</span></div>';
    }).join("");

    var stepsHtml = dish.steps.map(function(s) {
        var ingTag = s.stepIngredient ? '<span class="step-ingredient-tag">&#x1F944; ' + s.stepIngredient + ' - ' + s.stepQuantity + '</span>' : '';
        return '<div class="step-card">' +
            '<div class="step-number">' + s.stepNumber + '</div>' +
            '<div class="step-content"><h4>' + s.instruction + '</h4>' +
            '<p>' + s.detail + '</p>' + ingTag + '</div></div>';
    }).join("");

    var html = '<div class="recipe-header">' +
        '<h2>' + dish.dishName + '</h2>' +
        '<div class="tags">' +
        '<span class="cuisine-tag">' + dish.cuisine + '</span>' +
        '<span class="difficulty-tag difficulty-' + dish.difficulty + '">' + dish.difficulty + '</span>' +
        '<span class="cuisine-tag">&#x23F1; ' + dish.cookingTime + '</span>' +
        '<span class="cuisine-tag">&#x1F37D; ' + dish.servings + ' servings</span>' +
        '</div>' +
        '<p style="color:#aaa;margin-top:10px">' + dish.description + '</p>' +
        '</div>' +
        '<div class="chef-tip">' + dish.chefTip + '</div>' +
        '<div class="ingredients-section"><h3>&#x1F4E6; Ingredients</h3>' +
        '<div class="ingredients-list">' + ingredientsHtml + '</div></div>' +
        '<div class="steps-section"><h3>&#x1F468;&#x200D;&#x1F373; Step-by-Step Instructions</h3>' +
        stepsHtml + '</div>' +
        '<div class="recipe-actions">' +
        '<button class="action-btn" onclick="startQuiz(\'' + escapeAttr(dish.dishName) + '\')">&#x1F4DD; Take the Cooking Test for This Dish</button>' +
        '</div>';
    document.getElementById("recipeContent").innerHTML = html;
}

async function startQuiz(dishName) {
    try {
        var res = await fetch(API + "/quiz/" + encodeURIComponent(dishName));
        quizQuestions = await res.json();
        currentQuizDish = dishName;
        currentQuestion = 0;
        userAnswers = new Array(quizQuestions.length).fill(null);
        renderQuizQuestion();
        showSection('quiz');
    } catch(e) {
        alert("Error loading quiz.");
    }
}

function renderQuizQuestion() {
    var q = quizQuestions[currentQuestion];
    var progress = ((currentQuestion + 1) / quizQuestions.length * 100).toFixed(0);

    var optionsHtml = q.qOptions.map(function(opt) {
        var cls = userAnswers[currentQuestion] === opt ? " selected" : "";
        return '<button class="option-btn' + cls + '" onclick="selectAnswer(\'' + escapeAttr(opt) + '\')">' + opt + '</button>';
    }).join("");

    var typeLabel = q.qType === 'ingredient' ? '&#x1F955; Ingredient Selection' : '&#x2696; Quantity Selection';
    var typeClass = q.qType === 'ingredient' ? 'type-ingredient' : 'type-quantity';

    var navHtml = '<div class="quiz-nav">' +
        '<button onclick="prevQuestion()" ' + (currentQuestion === 0 ? 'disabled' : '') + '>&#x2190; Previous</button>';
    if (currentQuestion === quizQuestions.length - 1) {
        navHtml += '<button onclick="submitQuiz()">&#x1F3C6; Submit Answers</button>';
    } else {
        navHtml += '<button onclick="nextQuestion()">Next &#x2192;</button>';
    }
    navHtml += '</div>';

    var html = '<h2>&#x1F4DD; Cooking Test: ' + currentQuizDish + '</h2>' +
        '<div class="quiz-progress">Question ' + (currentQuestion + 1) + ' of ' + quizQuestions.length +
        '<div class="progress-bar"><div class="progress-fill" style="width:' + progress + '%"></div></div></div>' +
        '<div class="question-card">' +
        '<span class="question-type ' + typeClass + '">' + typeLabel + '</span>' +
        '<h3>' + q.qText + '</h3>' +
        '<div class="options">' + optionsHtml + '</div></div>' + navHtml;

    document.getElementById("quizContent").innerHTML = html;
}

function selectAnswer(answer) {
    userAnswers[currentQuestion] = answer;
    renderQuizQuestion();
}

function nextQuestion() {
    if (currentQuestion < quizQuestions.length - 1) {
        currentQuestion++;
        renderQuizQuestion();
    }
}

function prevQuestion() {
    if (currentQuestion > 0) {
        currentQuestion--;
        renderQuizQuestion();
    }
}

async function submitQuiz() {
    var correct = 0;
    quizQuestions.forEach(function(q, i) {
        if (userAnswers[i] === q.qAnswer) correct++;
    });
    var total = quizQuestions.length;

    try {
        var res = await fetch(API + "/score/" + correct + "/" + total);
        var score = await res.json();
        renderScore(score);
        showSection('score');
    } catch(e) {
        var pct = total > 0 ? Math.floor((correct * 100) / total) : 0;
        var stars, ratingStr, feedbackStr;
        if (pct >= 90) { stars = 5; ratingStr = "Master Chef"; feedbackStr = "Outstanding! You cook like a world-class professional chef!"; }
        else if (pct >= 75) { stars = 4; ratingStr = "Sous Chef"; feedbackStr = "Excellent work! You have strong culinary skills!"; }
        else if (pct >= 60) { stars = 3; ratingStr = "Line Cook"; feedbackStr = "Good effort! You know the basics but need more practice."; }
        else if (pct >= 40) { stars = 2; ratingStr = "Home Cook"; feedbackStr = "Decent start! Keep studying the recipes carefully."; }
        else { stars = 1; ratingStr = "Kitchen Apprentice"; feedbackStr = "Keep practicing! Study the recipes and try again!"; }
        renderScore({ totalQuestions: total, correctAnswers: correct, percentage: pct, stars: stars, rating: ratingStr, feedback: feedbackStr });
        showSection('score');
    }
}

function renderScore(score) {
    var starStr = "";
    for (var i = 0; i < score.stars; i++) starStr += "\u2B50";
    for (var i = score.stars; i < 5; i++) starStr += "\u2606";

    var html = '<div class="score-container">' +
        '<h2 style="color:#ffa500;font-size:1.5em;margin-bottom:10px">&#x1F3C6; Cooking Test Results</h2>' +
        '<h3 style="color:#aaa">' + currentQuizDish + '</h3>' +
        '<div class="stars-display">' + starStr + '</div>' +
        '<div class="score-title">' + score.rating + '</div>' +
        '<div class="score-percentage">' + score.percentage + '%</div>' +
        '<div class="score-detail">' + score.correctAnswers + ' correct out of ' + score.totalQuestions + ' questions</div>' +
        '<div class="score-feedback">' + score.feedback + '</div>' +
        '<div class="score-actions">' +
        '<button onclick="showSection(\'quiz-select\')">&#x1F504; Try Another Dish</button>' +
        '<button onclick="startQuiz(\'' + escapeAttr(currentQuizDish) + '\')">&#x1F501; Retry This Dish</button>' +
        '<button onclick="showSection(\'menu\')">&#x1F4D6; View Recipes</button>' +
        '</div></div>';
    document.getElementById("scoreContent").innerHTML = html;
}

loadDishes();