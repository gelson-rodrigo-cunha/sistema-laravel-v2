@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Dashboard</div>


                <div class="panel-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif

                    Bem vindo a aplicação
                    <br><br>
           

              
                <br>Notícias
                 <li><a href="<?php echo url('/api/posts/create'); ?>"> Criar Notícia</a></li>
                       <li><a href="<?php echo url('/api/posts/'); ?>"> Listar Notícia</a></li>
               <br>  Usuários
                  <li><a href="<?php echo url('/api/clients/create'); ?>"> Criar Usuário</a></li>
                       <li><a href="<?php echo url('/api/clients/'); ?>"> Listar Usuários</a></li>
                <br>        
                </div>

            </div>
        </div>
    </div>
</div>
@endsection