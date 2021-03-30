@extends('layouts.app')
@section('meta')
    <meta property="og:title" content="{{ $noticia->titulo }}" />
    <meta property="og:image" content="{{ url($noticia->image) }}" />
    <meta property="og:type" content="website" />
@endsection
@section('personal-style')
    <style>
        .img-auto-width {
            height: auto;
            left: 50%;
            position: absolute;
            top: 50%;
            transform: translate(-50%, -50%);
            transition: 0.3s;
            max-width: none;
            width: 100%;
        }

        .div-image {
            position: relative;
            width: 100%;
            height: 100px;
            overflow: hidden;
        }

        .divider {
            background-color: #e3342f;
        }

        .color-whitesmoke {
            color: whitesmoke;
        }

        .color-red {
            color: #e3342f;
        }

        .margin-b-20 {
            margin-bottom: 20px;
        }

        .margin-b-10 {
            margin-bottom: 10px;
        }

        .margin-b-0 {
            margin-bottom: 0;
        }

        .font-size-17 {
            font-size: 17px;
        }

        .div-data-nuevas-noticias {
            margin-bottom: 0px;
            color: grey;
        }

        .login-link {
            font-weight: bold;
            font-size: 18px;
            margin-bottom: 10px;
            color: #e3342f;
        }

        .login-link:hover {
            color: #e3342f;
        }

    </style>
@endsection
@php
if (isset($noticia)) {
    $idNoticia = $noticia->id;
}
@endphp
@section('content')
    <br> <br> <br><br>
    <div class="container">
        @isset($noticia)
            <div class="row">
                <div class="col-xl-9 col-lg-12 col-md-12">
                    <div class="color-whitesmoke">
                        <h2><strong class="color-whitesmoke">{!! $noticia->titulo !!}</strong></h2>
                        <p>Publicado: {{ $noticia->created_at->format('jS F Y') }}</p>
                    </div>
                    <div>
                        {{-- <h5style="margin-bottom:20px;"><strong>!!$noticia->sub_titulo!!</strong></h5> --}}
                    </div>
                    @if ($noticia->image != '')
                        <img src="{{ url($noticia->image) }}" class="card-img-top margin-b-20">
                    @endif
                    <div class="d-flex justify-content-end">
                        <li>
                            <a href="#" id="gmail-btn"><i class="fa fa-envelope-o" aria-hidden="true"
                                    style="color: #cf3e39; font-size: 2rem"></i></a>
                        </li>
                        <li>
                            <a href="#" id="facebook-btn"><i class="fa fa-facebook-square" aria-hidden="true"
                                    style="color: #3b5998; font-size: 2rem"></i></a>
                        </li>
                        <li>
                            <a href="#" id="twitter-btn"><i class="fa fa-twitter-square" aria-hidden="true"
                                    style="color: #1da1f2; font-size: 2rem"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#" id="whatsapp-btn"><i class="fa fa-whatsapp" aria-hidden="true"
                                    style="color: #25d366; font-size: 2rem"></i>
                            </a>
                        </li>
                    </div>
                    <br>
                    <div class="color-whitesmoke">
                        <p class="font-size-17">{!! $noticia->descripcion !!}
                        <p>
                    </div>
                    <br>
                    <ul class="nav mt-3">
                        <li class="nav-item">
                            <a class="nav-link active p-0" href="{{ route('home') }}">
                                <button class="btn btn-danger">
                                    <strong>Volver</strong>
                                </button>
                            </a>
                        </li>
                    </ul>
                    <br> <br>
                    <h4>
                        <strong class="color-red">Respuestas </strong>
                        <span id="countComments" style="color: #e7e0e0;font-size: 16px;"></span>
                    </h4>
                    <hr class="featurette-divider">

                    @auth
                        <form id="createComment">
                            @csrf
                            <div class="form-group">
                                <textarea class="form-control" id="exampleFormControlTextarea1"
                                    placeholder="Escribe tu comentario aquí..." rows="5" name="comentario"></textarea>
                                <input type="hidden" name="noticia_id" value="{{ $noticia->id }}" />
                            </div>
                            <div class="d-flex justify-content-end">
                                <button type="reset" class="btn btn-outline-danger mr-3"><strong>Cancelar</strong></button>
                                <button type="submit" class="btn btn-danger"><strong>Publicar comentario</strong></button>
                            </div>
                        </form>
                        <br> <br>
                    @endauth
                    @if (Auth::check() == false)
                        <form>
                            <div class="d-flex justify-content-end">
                                <a href="{{ route('login') }}" class="login-link" style="text-decoration: none;">
                                    <i class="far fa-bell"></i> Iniciar sesión
                                </a>
                            </div>
                            <div class="form-group">
                                <textarea class="form-control" id="exampleFormControlTextarea1"
                                    placeholder="Escribe tu comentario aquí..." rows="5" disabled></textarea>
                            </div>
                            <div class="d-flex justify-content-end">
                                <a href="{{ route('registro') }}" class="btn btn-danger"><strong>Registrarse</strong></a>
                            </div>
                        </form>
                        <br> <br>
                    @endif
                    <div id="comentarios"></div>
                    <br><br>
                </div>
                <div class="col-xl-3 d-none d-xl-block border-left border-dark">
                    <h4><strong class="color-red">Ultimas noticias</strong></h4>
                    <div class="row">
                        @foreach ($ultimasNoticias as $noticia)
                            <div class="col-12">
                                <a href="{{ route('noticias', $noticia->slug) }}" style="text-decoration: none;">
                                    <div class="div-image margin-b-10">
                                        <img class="img-auto-width" src="{{ url($noticia->image) }}">
                                    </div>
                                    <div>
                                        <p class="text-muted card-text margin-b-0">
                                            <strong class="color-whitesmoke">{{ $noticia->titulo }}</strong>
                                        </p>
                                        <p class="div-data-nuevas-noticias">
                                            {{ $noticia->created_at->format('jS F Y') }}</p>
                                    </div>
                                </a>
                                <hr class="border border-dark">
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        @endisset
    </div>
    @include('components.footer')
@endsection

@section('personal-script')
    <script>
        $(document).ready(function() {

            load_data();

            function load_data(id = "") {
                $.ajax({
                    url: "{{ route('comentarios') }}",
                    method: 'POST',
                    data: {
                        id: id,
                        noticia: "{{ $idNoticia }}",
                        "_token": "{{ csrf_token() }}",
                    },
                    success: function(data) {
                        $('#load_more_button').remove();
                        $('#countComments').text(data.count + " comentarios");
                        $('#comentarios').append(data.content);
                    },
                    error: function(error) {
                        console.log(error);
                    }
                })
            }
            $('#createComment').on('submit', function(event) {
                event.preventDefault();
                $.ajax({
                    url: "{{ route('comments.store') }}",
                    method: "POST",
                    data: $(this).serialize(),
                    success: function(data) {
                        getComment();
                        $('#createComment')[0].reset();
                    },
                    error: function(error) {
                        console.log(error);
                    }
                })
            })

            function getComment() {
                $.ajax({
                    url: "{{ route('comentariosRefresh') }}",
                    method: "GET",
                    data: {
                        id: "{{ $noticia->id }}"
                    },
                    success: function(data) {
                        $('#countComments').text(data.count + " comentarios");
                        $('#comentarios').html(data.content);
                    },
                    error: function(error) {
                        console.log(error);
                    }
                })
            }
            $(document).on('click', '#load_more_button', function() {
                var id = $(this).data('id');
                $('#load_more_button').html('<b>Cargando...</b>')
                load_data(id);
            })
        });

    </script>
@endsection
