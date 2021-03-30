@extends('layouts.app')

@section('personal-style')
    <style>
        .icons-home {
            font-size: 70px;
            color: #e3342f;
            margin-top: 23px;
        }

        .circle-home {
            height: 120px;
            width: 120px;
            border-radius: 50%;
            background-color: black;
        }

        .button-see-more {
            background-color: black !important;
        }

        .text-color-white {
            color: whitesmoke !important;
        }

        h2 {
            color: whitesmoke;
        }

        .texto-blanco {
            color: whitesmoke;
        }

        .img-noticias {
            display: block;
            margin: 0 auto;
            max-width: 100%;
            width: 100%;
        }

        .color-red {
            color: #e3342f;
        }

        .torneos {
            width: 90%;
            margin: 0px auto;
            backface-visibility: visible;
        }

        .slick-slide {
            margin: 10px;
            height: 370px;
        }

        .slick-slide img {
            height: auto !important;
            left: 50% !important;
            position: absolute !important;
            top: 50% !important;
            transform: translate(-50%, -50%) !important;
            transition: 0.3s !important;
            max-width: none !important;
            width: 100% !important;
        }

        #particles-js {
            position: absolute;
            width: 100%;
            height: 538px;
            background-repeat: no-repeat;
            background-size: cover;
            background-position: 50% 50%;
        }

        .cristal-effect {
            --transition-duration: 500ms;
            --transition-easing: ease-out;
            transition: transform var(--transition-duration) var(--transition-easing);
            overflow: hidden;
        }

        .cristal-effect::before {
            content: '';
            background: rgba(255, 255, 255, 0.4);
            width: 60%;
            height: 100%;
            top: 0%;
            left: -125%;
            transform: skew(45deg);
            position: absolute;
            transition: left var(--transition-duration) var(--transition-easing);
        }

        .cristal-effect:hover::before {
            left: 150%;
        }

        .url-instalaciones:hover {
            text-decoration: none;
        }

        .container-img-instalacion {
            position: relative;
            width: 100%;
            height: 400px;
            overflow: hidden;
        }

        .img-instalacion {
            height: 100%;
            left: 50%;
            position: absolute;
            top: 50%;
            transform: translate(-50%, -50%);
            transition: 0.3s;
            max-width: none;
            width: auto;

        }

        .parallax {
            background-size: cover;
            background-attachment: fixed;
            height: 400px;
            position: relative;
        }

        .parallax:before {
            content: '' !important;
            position: absolute !important;
            top: 0 !important;
            bottom: 0 !important;
            left: 0 !important;
            right: 0 !important;
            background-color: rgba(0, 0, 0, 0.685) !important;
        }

        .parallax h3 {
            margin-top: 105px;
            font-size: 38px;
            font-weight: bold;
            color: #fff;
            position: relative
        }

        .parallax h2 {
            font-size: 49px;
            font-weight: bold;
            color: #fff;
            position: relative
        }

        .category-div {
            height: 150px;
            overflow: hidden;
        }

        .ver-mas-button {
            color: #e3342f;
            font-size: 18px;
            -webkit-transition: all .3s linear;
            -o-transition: all .3s linear;
            transition: all .3s linear
        }

        .ver-mas-button:hover {
            color: white !important;
            font-weight: bold !important;
        }

    </style>
@endsection
@section('content')
    <br> <br> <br><br>
    <div class="container">
        <div class="row">
            <div class="col-lg-3 d-none d-lg-block">
                <div class="d-flex justify-content-center">
                    <div class="circle-home shadow-lg">
                        <!--Icono--->
                        <div class="d-flex justify-content-center h-100">
                            <i class="far fa-newspaper icons-home"></i>
                        </div>
                    </div>
                </div>
                <br>
                <div class="d-flex justify-content-center">
                    <h2 class="text-color-white">Noticias</h2>
                </div>
                <div class="category-div">
                    <p class="text-color-white">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quasi alias nam
                        similique aut cum doloremque
                        eaque, rerum non error ipsum numquam consequuntur voluptatum sint libero molestias earum consectetur
                        cupiditate voluptatibus.</p>
                </div>

                <div class="d-flex justify-content-center">
                    <button id="tag1" class="btn btn-secondary mb-2 button-see-more">
                        <strong>Ver más</strong></button>
                </div>
            </div>
            <div class="col-lg-3 d-none d-lg-block">
                <div class="d-flex justify-content-center">
                    <div class="circle-home shadow-lg">
                        <!--Icono--->
                        <div class="d-flex justify-content-center h-100">
                            <i class="fas fa-trophy icons-home"></i>
                        </div>
                    </div>
                </div>
                <br>
                <div class="d-flex justify-content-center">
                    <h2 class="text-color-white">Torneos</h2>
                </div>
                <div class="category-div">
                    <p class="text-color-white">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Dolorum quam
                        expedita
                        soluta fugiat dolor
                        natus. Labore architecto, consequuntur vel modi temporibus, nesciunt, repellendus minus repudiandae
                        aperiam doloribus ipsum. Reiciendis, atque.</p>
                </div>
                <div class="d-flex justify-content-center">
                    <button id="tag2" class="btn btn-secondary mb-2 button-see-more">
                        <strong>Ver más</strong>
                    </button>
                </div>
            </div>
            <div class="col-lg-3 d-none d-lg-block">
                <div class="d-flex justify-content-center">
                    <div class="circle-home shadow-lg">
                        <!--Icono--->
                        <div class="d-flex justify-content-center h-100">
                            <i class="far fa-calendar-alt icons-home"></i>
                        </div>
                    </div>
                </div>
                <br>
                <div class="d-flex justify-content-center">
                    <div class="my-auto">
                        <h2 class="text-color-white">Eventos</h2>
                    </div>
                </div>
                <div class="category-div">
                    <p class="text-color-white">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptatem modi
                        illo
                        inventore similique
                        facilis, ipsum eaque iste ipsa, atque consectetur adipisci exercitationem ab debitis. Eaque magnam
                        perferendis ducimus ea corrupti.</p>
                </div>
                <div class="d-flex justify-content-center">
                    <div class="d-flex justify-content-center">
                        <button id="tag3" class="btn btn-secondary mb-2 button-see-more">
                            <strong>Ver más</strong>
                        </button>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 d-none d-lg-block">
                <div class="d-flex justify-content-center">
                    <div class="circle-home shadow-lg">
                        <!--Icono--->
                        <div class="d-flex justify-content-center h-100">
                            <i class="fas fa-home icons-home"></i>
                        </div>
                    </div>
                </div>
                <br>
                <div class="d-flex justify-content-center">
                    <div class="my-auto">
                        <h2 class="text-color-white">Instalaciones</h2>
                    </div>
                </div>
                <div class="category-div">
                    <p class="text-color-white">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptatem modi
                        illo
                        inventore similique
                        facilis, ipsum eaque iste ipsa, atque consectetur adipisci exercitationem ab debitis. Eaque magnam
                        perferendis ducimus ea corrupti.</p>
                </div>


                <div class="d-flex justify-content-center">
                    <div class="d-flex justify-content-center">
                        <button id="tag4" class="btn btn-secondary mb-2 button-see-more">
                            <strong>Ver más</strong>
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <!-- START THE FEATURETTES -->
        <br> <br>
        <h1 class="color-red" style="font-weight: bold;">
            Ultimas noticias
            <span style="font-size: 14px;">
                <a href="#" class="ver-mas-button" style="text-decoration: none;">Ver más <i
                        class="fas fa-arrow-right"></i></a>
            </span>
        </h1>
        <p style="color: whitesmoke; font-size: 16px;">Mantente informado de todas nuestras novedades</p>
        <hr class="featurette-divider" id="section1">
        <br>
        <livewire:home.noticias />
        <br>
        <br>
        <br>
    </div>
    <div id="particles-js"></div>
    <div class="container-fluid" style="background-color: black">
        <div class="container">
            <br><br>
            <h1 class="color-red" style="font-weight: bold; z-index:-1;">
                Eventos & Torneos
                <span style="font-size: 14px; position: relative;">
                    <a href="#" class="ver-mas-button" style="text-decoration: none;">Ver más <i
                            class="fas fa-arrow-right"></i></a>
                </span>
            </h1>
        </div>
        <div class="torneos">
            <img src="{{ url('/images/home/torneos/actualidad_526710657_162107073_855x1140.jpg') }}">
            <img src="{{ url('/images/home/torneos/C0BFD825-DD3B-493B-B6B9-5ED502469E23-540x750.jpeg') }}">


            <img src="{{ url('/images/home/torneos/Grand-Slam-Tenis-Portada-274_Abril-2020.jpg') }}">


            <img src="{{ url('/images/home/torneos/Grand-Slam-Tenis-Portada-274_Abril-2020.jpg') }}">

            <img src="{{ url('/images/home/torneos/Grand-Slam-Tenis-Portada-274_Abril-2020.jpg') }}">

            <img src="{{ url('/images/home/torneos/Grand-Slam-Tenis-Portada-274_Abril-2020.jpg') }}">

            <img src="{{ url('/images/home/torneos/Grand-Slam-Tenis-Portada-274_Abril-2020.jpg') }}">

        </div>
        <br>
    </div>
    <br>
    <div class="container">
        <br><br>
        <h1 class="color-red" style="font-weight: bold;">
            Calendario de eventos
        </h1>
        <hr class="featurette-divider" id="section34">
        <br>
        <div class="row featurette">
            <div class="col-md-5">
                <h2 class="featurette-heading">CALENDARIO DE EVENTOS</h2>
                <p class="lead text-color-white">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Dicta iure
                    laborum minima quis,
                    dolores laboriosam nulla, perferendis facilis ipsa praesentium adipisci, aliquid voluptatum maiores.
                    Sint quia itaque aliquam quam asperiores. Lorem ipsum dolor sit amet consectetur adipisicing elit. Nemo
                    totam quisquam tenetur dicta laudantium ipsam, quam optio consectetur necessitatibus sapiente,
                    recusandae eaque enim. Rem voluptatibus deleniti sapiente, nemo deserunt iure?</p>
            </div>
            <div class="col-md-7">
                @include('components.calendar')
            </div>
        </div>
        <br>
        <hr class="featurette-divider">
        <br>
    </div>
    <div class="parallax" style="background-image: url({{ url('/images/reserva/gral.jpeg') }})">
        <div class="container">
            <div class="d-flex justify-content-center">
                <h3>RESERVA</h3>
            </div>
            <div class="d-flex justify-content-center">
                <h2>LA TEVA PISTA</h2>
            </div>
            <br>
            <div class="d-flex justify-content-center">
                <a class="btn btn-danger" style="position: relative;">
                    <strong>RESERVAR PISTA</strong>
                </a>
            </div>
        </div>

    </div>
    <div class="container">
        <br>
        <br>
        <h1 class="color-red" style="font-weight: bold; z-index:999;">Instalaciones</h1>
        <p style="color: whitesmoke; font-size: 16px;">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Amet
            deleniti </p>
        <hr class="featurette-divider" id="instalaciones">
        <br>
        @foreach ($instalaciones as $index => $instalacion)
            @if ($index % 2 == 0)
                <div class="row featurette">
                    <div class="col-md-6">
                        @if ($index == 0)
                            <div class="h-100">
                                <div class="h-50">
                                    <div class="d-flex justify-content-center">
                                        <h2 class="featurette-heading">{{ $instalacion->titulo }}</h2>
                                    </div>
                                    <div class="d-flex justify-content-center">
                                        <div class="lead" style="color: whitesmoke">Donec ullamcorper nulla non metus auctor
                                            fringilla. Vestibulum id ligula porta felis
                                            euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur.
                                            Fusce
                                            dapibus,
                                            tellus ac cursus commodo.</div>
                                    </div>
                                </div>
                                <div class="d-flex align-items-end justify-content-center h-50">
                                    <a href="{{ route('instalacion', $instalacion->slug) }}" type="button"
                                        class="btn btn-danger mb-4">
                                        <i class="far fa-eye"></i> Ver instalacion
                                    </a>
                                </div>
                            </div>
                        @else
                            <div class="mt-4 h-100">
                                <div class="h-50">
                                    <div class="d-flex justify-content-center">
                                        <h2 class="featurette-heading">{{ $instalacion->titulo }}</h2>
                                    </div>
                                    <div class="d-flex justify-content-center">
                                        <div class="lead" style="color: whitesmoke">Donec ullamcorper nulla non metus auctor
                                            fringilla. Vestibulum id ligula porta felis
                                            euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur.
                                            Fusce
                                            dapibus,
                                            tellus ac cursus commodo.</div>
                                    </div>
                                </div>
                                <div class="d-flex align-items-end justify-content-center h-50">
                                    <a href="{{ route('instalacion', $instalacion->slug) }}" type="button"
                                        class="btn btn-danger mb-5">
                                        <i class="far fa-eye"></i> Ver instalacion
                                    </a>
                                </div>
                            </div>
                        @endif
                    </div>
                    <div class="col-md-6">
                        <div class="container-img-instalacion">
                            <img class="featurette-image img-fluid mx-auto img-instalacion headline"
                                src="{{ $instalacion->image }}" alt="Generic placeholder image">
                        </div>
                    </div>
                </div>
            @else
                <div class="row featurette">
                    <div class="col-md-6 order-md-2">
                        <div class="mt-4 h-100">
                            <div class="h-50">
                                <div class="d-flex justify-content-center">
                                    <h2 class="featurette-heading">{{ $instalacion->titulo }}</h2>
                                </div>
                                <div class="d-flex justify-content-center">
                                    <div class="lead" style="color: whitesmoke">Donec ullamcorper nulla non metus auctor
                                        fringilla. Vestibulum id ligula porta felis
                                        euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur.
                                        Fusce
                                        dapibus,
                                        tellus ac cursus commodo.</div>
                                </div>
                            </div>
                            <div class="d-flex align-items-end justify-content-center h-50">
                                <a href="{{ route('instalacion', $instalacion->slug) }}" type="button"
                                    class="btn btn-danger mb-5">
                                    <i class="far fa-eye"></i> Ver instalacion
                                </a>
                            </div>
                        </div>

                    </div>
                    <div class="col-md-6 order-md-1">
                        <div class="container-img-instalacion">
                            <img class="featurette-image img-fluid mx-auto img-instalacion headline"
                                src="{{ $instalacion->image }}" alt="Generic placeholder image">
                        </div>
                    </div>
                </div>
            @endif
        @endforeach
        <br>
        <br>
    </div>
    <br>
    <br>
    @include('components.footer')
    <script src="{{ url('/js/scrollreveal.js') }}"></script>
@endsection

@section('personal-script')
    <script src="{{ url('/js/parallax/parallax.js') }}"></script>
    <script src="{{ url('/js/particles.js') }}"></script>
    <script src="{{ url('/js/particulas.js') }}"></script>
    <script>
        ScrollReveal({
            reset: true
        });
        ScrollReveal().reveal('.headline');


        $(document).ready(function() {

            $("#tag1").click(function() {
                $('html, body').animate({
                    scrollTop: $("#section1").offset().top
                }, 1000);
            });
            $("#tag2").click(function() {
                $('html, body').animate({
                    scrollTop: $("#particles-js").offset().top
                }, 2000);
            });
            $("#tag3").click(function() {
                $('html, body').animate({
                    scrollTop: $("#section34").offset().top
                }, 2000);
            });
            $("#tag4").click(function() {
                $('html, body').animate({
                    scrollTop: $("#instalaciones").offset().top
                }, 2000);
            });
        });
        $('.torneos').slick({
            dots: true,
            infinite: true,
            speed: 300,
            slidesToShow: 5,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 2000,
            adaptiveHeight: false,
            responsive: [{
                    breakpoint: 1440,
                    settings: {
                        slidesToShow: 4,
                        slidesToScroll: 1
                    }
                },
                {
                    breakpoint: 1160,
                    settings: {
                        slidesToShow: 3,
                        slidesToScroll: 1
                    }
                },
                {
                    breakpoint: 920,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 1
                    }
                },
                {
                    breakpoint: 540,
                    settings: {
                        slidesToShow: 1,
                        slidesToScroll: 1
                    }
                }
            ]
        });

    </script>
@endsection
