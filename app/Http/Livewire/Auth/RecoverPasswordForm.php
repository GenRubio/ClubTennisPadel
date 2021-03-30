<?php

namespace App\Http\Livewire\Auth;

use App\Mail\RecoverPassword;
use App\Models\User;
use Illuminate\Support\Facades\Mail;
use Livewire\Component;

class RecoverPasswordForm extends Component
{
    public $email;
    public function render()
    {
        return view('livewire.auth.recover-password-form');
    }
    protected $rules = [
        'email' => ['required', 'email'],
    ];

    protected $messages = [
        'email.required' => 'Campo email no puede estar vacio.',
        'email.email' => 'El formato de email es incorrecto.',
    ];
    public function search()
    {
        $this->validate();

        if (User::where('email', $this->email)->first()) {
            $user = User::where('email', $this->email)
                ->first();

            $user->token_recover_email = md5(uniqid(mt_rand(), false));
            $user->active_token_email = 1;
            $user->save();

            $url = route('recover.password.validate') . "?id=" . encrypt($user->id) . "&token=" . $user->token_recover_email;

            //Enviar email de recumeracion
            Mail::to($this->email)
            ->send(new RecoverPassword($url, $user->first_name . ', ' . $user->second_name));

            $this->dispatchBrowserEvent(
                'alert', ['message' => 'Te hemos enviado un email de recuperación. Revisa tu bandeja de entrada.']);

        } else {
            session()->flash('error', 'Email incorecto.');
        }

        $this->resetForm();
    }
    public function resetForm()
    {
        $this->email = "";
    }
}
