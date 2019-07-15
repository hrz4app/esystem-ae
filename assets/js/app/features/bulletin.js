var spinner =
    '<div class="loader"></div>';

function getFlashNews(loading = false) {
    $.ajax({
        type: 'get',
        url: 'bulletin/ajax_flash_news',
        cache: false,
        beforeSend: function () {
            if (loading) {
                $('#flashNews').html(spinner);
            }
        },
        error: function () {
            console.log('There is an error when getting data.');
        },
        success: function (data) {
            $('#flashNews').html(data);
        }
    });
    return false;
}
getFlashNews(true);
setInterval(function () {
    getFlashNews();
}, 5000);

function getNewsUpdate(loading = false) {
    $.ajax({
        type: 'get',
        url: 'bulletin/ajax_news_update',
        cache: false,
        beforeSend: function () {
            if (loading) {
                $('#newsUpdate').html(spinner);
            }
        },
        error: function () {
            console.log('There is an error when getting data.');
        },
        success: function (data) {
            $('#newsUpdate').html(data);
        }
    });
    return false;
}
getNewsUpdate(true);
setInterval(function () {
    getNewsUpdate();
}, 5000);

function getNewsByCat1(loading = false) {
    $.ajax({
        type: 'get',
        url: 'bulletin/ajax_news_categories/1',
        cache: false,
        beforeSend: function () {
            if (loading) {
                $('#newsByCat1').html(spinner);
            }
        },
        error: function () {
            console.log('There is an error when getting data.');
        },
        success: function (data) {
            $('#newsByCat1').html(data);
        }
    });
    return false;
}
getNewsByCat1(true);
setInterval(function () {
    getNewsByCat1();
}, 5000);

function getNewsByCat2(loading = false) {
    $.ajax({
        type: 'get',
        url: 'bulletin/ajax_news_categories/2',
        cache: false,
        beforeSend: function () {
            if (loading) {
                $('#newsByCat2').html(spinner);
            }
        },
        error: function () {
            console.log('There is an error when getting data.');
        },
        success: function (data) {
            $('#newsByCat2').html(data);
        }
    });
    return false;
}
getNewsByCat2(true);
setInterval(function () {
    getNewsByCat2();
}, 5000);

function getNewsByCat3(loading = false) {
    $.ajax({
        type: 'get',
        url: 'bulletin/ajax_news_categories/3',
        cache: false,
        beforeSend: function () {
            if (loading) {
                $('#newsByCat3').html(spinner);
            }
        },
        error: function () {
            console.log('There is an error when getting data.');
        },
        success: function (data) {
            $('#newsByCat3').html(data);
        }
    });
    return false;
}
getNewsByCat3(true);
setInterval(function () {
    getNewsByCat3();
}, 5000);

function getYotube(loading = false) {
    $.ajax({
        type: 'get',
        url: 'bulletin/ajax_youtube',
        cache: false,
        beforeSend: function () {
            if (loading) {
                $('#youtube').html(spinner);
            }
        },
        error: function () {
            console.log('There is an error when getting data.');
        },
        success: function (data) {
            $('#youtube').html(data);
        }
    });
    return false;
}
getYotube(true);
setInterval(function () {
    getYotube();
}, 900000); // 15minutes

function getApps(loading = false) {
    $.ajax({
        type: 'get',
        url: 'bulletin/ajax_apps',
        cache: false,
        beforeSend: function () {
            if (loading) {
                $('#apps').html(spinner);
            }
        },
        error: function () {
            console.log('There is an error when getting data.');
        },
        success: function (data) {
            $('#apps').html(data);
        }
    });
    return false;
}
getApps(true);
setInterval(function () {
    getApps();
}, 5000);

function getRunningText() {
    $.ajax({
        type: 'get',
        url: 'bulletin/ajax_running_text',
        cache: false,
        error: function () {
            console.log('There is an error when getting data.');
        },
        success: function (data) {
            $('#runningText').html(data);
        }
    });
    return false;
}
getRunningText();
setInterval(function () {
    getRunningText();
}, 360000); // 6minutes