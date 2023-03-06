<div>
   <section id="latest" class="section">
    <h2 class="section-title">Últimos productos</h2>
    <div class="center">
        @foreach($latests as $latest)
        <div class="card-product">
            <img src="http://localhost/cloud_store/resources/img/{{ $latest->img }}" alt="producto">
            <h3>{{ $latest->name }}</h3>
            <h2>{{ $latest->price }} <span>$</span></h2>
            <a href="#"><i class="fas fa-shopping-cart"></i> Añadir al carrito</a>
        </div>
    @endforeach
    </div>
    
    
</section>
</div>
