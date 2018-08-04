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

class UserRetreatDetail extends Model
{
    /**
     * {@inheritDoc}
     */
    protected $table = 'user_retreat_details';

    protected $dates = ['created_at', 'updated_at'];

    /**
     * {@inheritDoc}
     */
    protected $fillable = [
        'user_id',
        'qr_code',
        'first_dinner_status',
        'second_breakfast_status',
        'third_lunch_status',
        'first_snack_status',
        'second_snack_status',
        'room_no',
        'description'
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
        return $this->belongsTo('App\User');
    }

}