@extends('layout')

@section('content')
    <main class="login-form">
        <div class="cotainer">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Login</div>
                        <div class="card-body">

                            <form>
                                @csrf
                                <div class="form-group row">
                                    <label for="email" class="col-md-4 col-form-label text-md-right">E-Mail Address</label>
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
                                    <button type="button" class="btn btn-primary" onclick="loginUser()">
                                        Login
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
        function loginUser() {
            var email = $('#email').val();
            var password = $('#password').val();
            var _token = $('input[name=_token]').val();
            $.ajax({
                method: "GET",
                url: "{{ route('loginUser') }}",
                data: {
                    email: email,
                    password: password,
                    _token: _token
                },
                success: function(response) {
                    console.log(response);
                    if (response) {
                        swal.fire({
                            position: 'top-end',
                            icon: 'success',
                            title: 'User has been registered Successfully',
                            showConfirmButton: false,
                            timer: 2000
                        });
                        setTimeout(function() {
                            window.location = '{{ route("viewBooks") }}'
                        }, 2500);

                    }
                },
                error: function(data) {
                    $("#errorDiv").empty();
                    var errors = data.responseJSON;
                    $.each(errors, function(key, item) {
                        $("#errorDiv").append("<li class='alert alert-danger'>" + item +
                            "</li>")
                    });
                }
            });
        }
    </script>
@endsection
