<?php

namespace App\Rules;
use App\Project;

use Illuminate\Contracts\Validation\Rule;

class CheckExistsProject implements Rule
{
    /**
     * Create a new rule instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Determine if the validation rule passes.
     *
     * @param  string  $attribute
     * @param  mixed  $value
     * @return bool
     */
    public function passes($attribute, $value)
    {
        
        $checkproject= Project::find($value);

        if (!empty($checkproject)) {
            
            return true;

        }else {
            
            return false;
        }

            }

    /**
     * Get the validation error message.
     *
     * @return string
     */
    public function message()
    {
        return trans('admin.projects_not_found');
    }
}
