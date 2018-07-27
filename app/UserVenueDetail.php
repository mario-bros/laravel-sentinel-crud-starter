<?php

/**
 * Part of the Sentinel package.
 *
 * NOTICE OF LICENSE
 *
 * Licensed under the 3-clause BSD License.
 *
 * This source file is subject to the 3-clause BSD License that is
 * bundled with this package in the LICENSE file.
 *
 * @package    Sentinel
 * @version    2.0.11
 * @author     Cartalyst LLC
 * @license    BSD License (3-clause)
 * @copyright  (c) 2011-2015, Cartalyst LLC
 * @link       http://cartalyst.com
 */
namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class UserVenueDetail extends Model
{

    //use SoftDeletes;

    /**
     * {@inheritDoc}
     */
    protected $table = 'user_venue_details';

    protected $dates = ['deleted_at'];

    /**
     * {@inheritDoc}
     */
    protected $fillable = [
        'user_id',
        'qr_code',
        'receive_certificate_status',
        'receive_first_snack_status',
        'receive_second_snack_status',
        'receive_lunch_status',
        'seat_class',
        'seat_position'
    ];

    /**
     * {@inheritDoc}
     */
    protected $hidden = [
        'qr_code'
    ];

    /**
     * Returns the roles relationship.
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function user()
    {
        //return $this->belongsTo(static::$rolesModel, 'role_users', 'user_id', 'role_id')->withTimestamps();
        //return $this->belongsTo('App\User', 'user_id');
        return $this->belongsTo('App\User');
        //return $this->hasOne('App\User', 'user_id');
        //return $this->hasOne('App\User');
    }

}