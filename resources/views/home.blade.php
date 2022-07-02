@extends('layout')

@section('content')
    @php

    $user = Session::get('user');
    $time = $user['time'];
    $userID = $user['user']->id;
    @endphp
    <input type="hidden" value="{{ date('H:i:s', strtotime($time . ' +5 minutes')) }}" id="timeConvert">
    <input type="hidden" value="{{ $userID }}" id="userID">
    <div class="container mt-4">
        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Book</th>
                    <th scope="col">Author Name</th>
                    <th scope="col">Price</th>
                </tr>
            </thead>
            <tbody>
                @php
                    $i = 1;
                @endphp
                @foreach ($allBooks as $book)
                    <tr>
                        <th scope="row"> {{ $i }}</th>
                        <td>{{ $book->book }}</td>
                        <td>{{ $book->author_name }}</td>
                        <td>{{ $book->price }}</td>
                    </tr>
                    @php
                        $i++;
                    @endphp
                @endforeach

            </tbody>
        </table>
    </div>
@endsection

@section('extra-js')
    <script>
        $(document).ready(function() {
            var time = $('#timeConvert').val();
            var uId = $('#userID').val();
            var currentTime = new Date($.now());
            var ret = currentTime.toString().split(" ");
            var actTime = ret[4];

            if( time = actTime){
                changeToken();
            }
            function changeToken() {
                $.ajax({
                    url: '{{ route("updateToken") }}',
                    method: 'post',
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    data: {
                        id: uId,
                    },
                }).then(function(result) {
                    var modiTime = new Date($.now());
                    var modiret = modiTime.toString().split(" ");
                    var modiactTime = ret[4];
                    $('#timeConvert').val(modiactTime);
                });
            }

        });
    </script>
@endsection
