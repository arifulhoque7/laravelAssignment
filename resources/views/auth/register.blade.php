@extends('layout')

@section('content')
    <main class="login-form">
        <div class="cotainer">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Register</div>
                        <div class="card-body">

                            <div class="col-md-12" id="errorDiv">
                                @if ($errors->any())
                                    <div class="alert alert-danger">
                                        <ul>
                                            @foreach ($errors->all() as $error)
                                                <li>{{ $error }}</li>
                                            @endforeach
                                        </ul>
                                    </div>
                                @endif
                            </div>

                            <form>
                                @csrf
                                <div class="form-group row">
                                    <label for="first_name" class="col-md-4 col-form-label text-md-right">First Name</label>
                                    <div class="col-md-6">
                                        <input type="text" id="first_name" class="form-control" name="first_name"
                                            required autofocus>
                                        
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="last_name" class="col-md-4 col-form-label text-md-right">Last Name</label>
                                    <div class="col-md-6">
                                        <input type="text" id="last_name" class="form-control" name="last_name" required
                                            autofocus>
                                     
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="email" class="col-md-4 col-form-label text-md-right">E-Mail
                                        Address</label>
                                    <div class="col-md-6">
                                        <input type="text" id="email" class="form-control" name="email" required
                                            autofocus>
                                    
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="password" class="col-md-4 col-form-label text-md-right">Password</label>
                                    <div class="col-md-6">
                                        <input type="password" id="password" class="form-control" name="password" required>
                                    </div>
                                </div>



                                <div class="col-md-6 offset-md-4">
                                    <button type="button" class="btn btn-primary" onclick="registerUser()">
                                        Register
                                    </button>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
@endsection

@section('extra-js')
    <script>
        function registerUser() {
            var first_name = $('#first_name').val();
            var last_name = $('#last_name').val();
            var email = $('#email').val();
            var password = $('#password').val();
            var _token = $('input[name=_token]').val();
            $.ajax({
                method: "POST",
                url: "{{ route('api.registerUser') }}",
                data: {
                    first_name: first_name,
                    last_name: last_name,
                    email: email,
                    password: password,
                    _token: _token
                },
                success: function(response) {
                    if (response) {
                        swal.fire({
                            position: 'top-end',
                            icon: 'success',
                            title: 'User has been registered Successfully',
                            showConfirmButton: false,
                            timer: 2000
                        });
                        setTimeout(function() {
                            window.location = '{{ route('userLogin') }}'
                        }, 2500);
                       
                    }
                },
                error: function(data) {
                    $("#errorDiv").empty();
                    var errors = data.responseJSON;
                    $.each(errors, function(key, item) {
                        setTimeout(function() {
                            $("#errorDiv").append("<li class='alert alert-danger'>" + item +
                                "</li>")
                        });
                    });
                }
            });
        }
    </script>
@endsection
