<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Product;

class ShowProducts extends Component
{
    public function render()
    {
        $latests = Product::all()->random(3);

        return view('livewire.show-products', compact('latests'));
    }
}
