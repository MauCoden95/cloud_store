<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Product;


class ShowPromos extends Component
{
    public function render()
    {
        $promos = Product::all()->random(3);

        return view('livewire.show-promos', compact('promos'));
    }
}
