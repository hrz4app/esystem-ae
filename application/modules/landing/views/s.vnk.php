<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>
            {{ site_name() }} - Landing Page
        </title>
        <link rel="stylesheet" href="{{ css('landing.css') }}">
    </head>
    <body>
        <div class="flex-center position-ref full-height">
            <div class="top-right links">
                @if (is_anonymous())
                    <a href="{{ site_url('auth/login') }}">{{ lang('login_heading') }}</a>
                    <a href="{{ site_url('auth/register') }}">{{ lang('create_user_register_heading') }}</a>
                @else
                    <a href="{{ site_url('dashboard') }}">{{ lang('dashboard_heading') }}</a>
                @endif
            </div>
            <div class="content">
                <div class="title m-b-md">{{ strtoupper(site_name()) }}</div>
                <div class="links">
                    <a href="{{ site_url('features/bulletin') }}" target="_blank">Bulletin</a>
                    <a href="{{ site_url('features/news') }}" target="_blank">News</a>
                    <a href="{{ site_url('features/products') }}" target="_blank">Products</a>
                    <a href="{{ site_url('features/rooms') }}" target="_blank">Rooms</a>
                    <a href="{{ site_url('features/booking_room') }}">Booking Rooms</a>
                </div>
            </div>
        </div>
    </body>
</html>
