<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class siswa extends Model
{
    protected $table = 'siswa';
    protected $guarded = [];

    public function sekolah()
    {
        // field id di kategori relasi sama category_id di product
        // id category == product.category_id
        return $this->belongsTo(Sekolah::class, 'sekolah_id');
    }
}
