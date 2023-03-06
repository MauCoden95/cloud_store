<div>
    <section id="promo" class="section">
        <h2 class="section-title">Promociones</h2>
        <div class="center">
            @foreach($promos as $promo)
            <div class="card-promo">
                <img src="http://localhost/cloud_store/resources/img/{{ $promo->img }}" alt="producto">
                <div>
                    <h2>{{ $promo->name }}</h2>
                    <h3>50% OFF</h3>
                </div>
            </div>
            @endforeach
        </div>
    
    
    </section>
</div>
