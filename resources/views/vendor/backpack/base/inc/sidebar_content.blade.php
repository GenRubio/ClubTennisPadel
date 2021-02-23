<!-- This file is used to store sidebar items, starting with Backpack\Base 0.9.0 -->
<li class="nav-item"><a class="nav-link" href="{{ backpack_url('dashboard') }}"><i class="la la-home nav-icon"></i> {{ trans('backpack::base.dashboard') }}</a></li>
<li class="nav-item nav-dropdown">
    <a class="nav-link nav-dropdown-toggle" href="#"><i class="nav-icon la la-newspaper-o"></i>Administrar web</a>
    <ul class="nav-dropdown-items">
        <li class='nav-item'><a class='nav-link' href='{{ backpack_url('shoparticle') }}'><i class='nav-icon la la-question'></i> Tienda articulos</a></li>
        <li class='nav-item'><a class='nav-link' href='{{ backpack_url('alquilerpista') }}'><i class='nav-icon la la-question'></i> Alquiler pistas</a></li>
    </ul>
</li>
<li class="nav-item nav-dropdown">
    <a class="nav-link nav-dropdown-toggle" href="#"><i class="nav-icon la la-newspaper-o"></i>Casal</a>
    <ul class="nav-dropdown-items">
        <li class='nav-item'><a class='nav-link' href='{{ backpack_url('casalinscripcionesvalidade') }}'>Alumnos inscritos</a></li>
        <li class='nav-item'><a class='nav-link' href='{{ backpack_url('casalinscripcione') }}'>Inscripciones pendientes</a></li>
        <li class='nav-item'><a class='nav-link' href='{{ backpack_url('casalhistorial') }}'>Historial</a></li>
    </ul>
</li>
