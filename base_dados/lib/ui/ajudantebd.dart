import 'dart:ffi';
import 'dart:io';
import 'dart:async';

import 'package:base_dados/modelos/usuario.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';


class BDadosAjudante {
  static final BDadosAjudante _instance = new BDadosAjudante.internal();
  factory BDadosAjudante() => _instance;

  final String tabelaUsuario = "tabelaUsuario";
  final String colunaId = "id";
  final String colunaNome = "nome";
  final String colunaSenha = "senha";

  static Database _db;
  Future<Database> get db async{
    if(_db != null){
      return _db;
    }
    _db = await initBd();
  }

  BDadosAjudante.internal();

  //iniciar a base
  initBd(){
    Directory documentoDiretorio = await getApplicationDocumentsDirectory();
    String caminho = join(
      documentoDiretorio.path, "db_principal.db");

    var nossoBD = await openDatabase(caminho, version: 1,onCreate:  _onCreate);
    return nossoBD;
  }

  void _onCreate(Database db, int version) async {
    await db.execute("CREATE TABLE $tabelaUsuario($colunaId INTEGER PRIMARY KEY,"
    "$colunaNome TEXT,"
    "$colunaSenha TEXT");
  }

  //INSERIR
  Future<int> inserirUsuario(Usuario usuario) async{
    var dbCliente = await db;
    int res = await dbCliente.insert("$tabelaUsuario", usuario.toMap());
    return res;
  }

  //RETIRAR
  Future<List> pegarUsuarios() async {
    var bdCliente = await db;
    var res = await bdCliente.rawQuery("SELECT * FROM $tabelaUsuario");

    return res.toList();
  }

  //CONTAGEM
  Future<int> pegarContagem() async {
    var bdCliente = await db;
    return Sqflite.firstIntValue(
        await bdCliente.rawQuery("SELECT COUNT(*) FROM $tabelaUsuario"));
  }


}