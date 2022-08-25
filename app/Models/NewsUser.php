<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Relations\Pivot;

class NewsUser extends Pivot
{
    public function news() {
        return $belongsToMany(News::class);
    }

    public function users() {
        return $belongsTo(User::class);
    }
}
