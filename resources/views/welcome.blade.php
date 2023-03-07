<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">

        <!-- Styles -->
        <link rel="stylesheet" href="http://localhost/cloud_store/resources/css/Styles.css">

        <!-- Scripts -->
        <script src="http://localhost/cloud_store/resources/js/Main.js" defer></script>

        <!-- Font Awesome -->
        <script src="https://kit.fontawesome.com/7483adbd94.js" crossorigin="anonymous"></script>    

        <!-- Swiper -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
    </head>
    <body>
       <x-header-top/>
       <x-header/>
       <x-banner/>

       <div id="services">
            <div class="center">
                <div class="service_card">
                    <img src="http://localhost/cloud_store/resources/img/Truck.png">
                    <h3>Envíos rápidos</h3>
                    <p>Donec efficitur vestibulum est at tristique. Pellentesque a diam augue.</p>
                </div>

                <div class="service_card">
                    <img src="http://localhost/cloud_store/resources/img/Exchange.png">
                    <h3>10 días para cambiar</h3>
                    <p>Donec efficitur vestibulum est at tristique. Pellentesque a diam augue.</p>
                </div>

                <div class="service_card">
                    <img src="http://localhost/cloud_store/resources/img/Support.png">
                    <h3>Soporte 24/7</h3>
                    <p>Donec efficitur vestibulum est at tristique. Pellentesque a diam augue.</p>
                </div>
            </div>
       </div>

        <x-latest/>
        <x-categories/>
        <x-promo/>
        <x-footer/>
        

       <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
    </body>
</html>
