// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'RJ Number - Conversor de Arquivos';

  @override
  String get splashLoading => 'Carregando...';

  @override
  String get homeTitle => 'Escolha uma ação';

  @override
  String get homeExcelToVcf => 'Excel → VCF';

  @override
  String get homeExcelToVcfDesc => 'Converter arquivo Excel em contatos';

  @override
  String get homeVcfToExcel => 'VCF → Excel';

  @override
  String get homeVcfToExcelDesc => 'Converter contatos em arquivo Excel';

  @override
  String get homeFooter => 'Ruhid Javadov - Mr-Ruhid';

  @override
  String get homeVersion => 'Versão Lite';

  @override
  String get vcfToExcelTitle => 'Converter VCF em Excel';

  @override
  String get vcfToExcelStatusInitial =>
      'Selecione um arquivo VCF (.vcf) para começar';

  @override
  String get vcfToExcelStatusSuccess => 'Pronto! Arquivo salvo com sucesso.';

  @override
  String get vcfToExcelStatusCancelled => 'Seleção de arquivo cancelada.';

  @override
  String get vcfToExcelStatusSaveCancelled => 'Salvamento cancelado.';

  @override
  String get vcfToExcelStatusEmpty =>
      'Erro: Nenhum contato válido encontrado no arquivo.';

  @override
  String get vcfToExcelStatusError => 'Ocorreu um erro durante a conversão.';

  @override
  String get vcfToExcelButton => 'Selecionar Arquivo VCF';

  @override
  String get vcfToExcelPleaseWait => 'Aguarde...';

  @override
  String get vcfToExcelSaveDialogTitle => 'Salvar arquivo Excel';

  @override
  String get excelToVcfTitle => 'Converter Excel em VCF';

  @override
  String get excelToVcfStatusInitial =>
      'Selecione um arquivo Excel (.xlsx) para começar';

  @override
  String get excelToVcfStatusSuccess => 'Pronto! Arquivo salvo com sucesso.';

  @override
  String get excelToVcfStatusCancelled => 'Seleção de arquivo cancelada.';

  @override
  String get excelToVcfStatusSaveCancelled => 'Salvamento cancelado.';

  @override
  String get excelToVcfStatusEmpty =>
      'Erro: Nenhum contato válido encontrado no arquivo.';

  @override
  String get excelToVcfStatusError => 'Ocorreu um erro durante a conversão.';

  @override
  String get excelToVcfButton => 'Selecionar Arquivo Excel';

  @override
  String get excelToVcfPleaseWait => 'Aguarde...';

  @override
  String get excelToVcfSaveDialogTitle => 'Salvar arquivo VCF';

  @override
  String get processingTitle => 'Convertendo arquivo...';

  @override
  String get processingSubtitle => 'Aguarde, o processo está em execução.';

  @override
  String get licenseBadgeActive => 'Licença Ativa';

  @override
  String get licenseBadgeTrial => 'Versão de Teste';

  @override
  String get licenseDialogTitle => 'Limite de Teste Atingido';

  @override
  String get licenseDialogContent =>
      'Você já usou seu teste gratuito único. Para continuar, insira o código de licença.';

  @override
  String get licenseDialogClose => 'Fechar';

  @override
  String get licenseDialogEnter => 'Inserir Licença';

  @override
  String get licenseScreenTitle => 'Insira o código de licença para continuar';

  @override
  String get licenseFieldHint => 'Código de licença';

  @override
  String get licenseButtonVerify => 'Verificar';

  @override
  String get licenseErrorEmpty => 'Por favor, insira o código de licença.';

  @override
  String get licenseErrorInvalid =>
      'Código de licença inválido. Verifique novamente.';

  @override
  String get licenseSuccessTitle => 'Licença verificada!';

  @override
  String get licenseButtonBack => 'Voltar';

  @override
  String get aboutDescription =>
      'Uma ferramenta simples para converter arquivos Excel em contatos VCF e vice-versa.';

  @override
  String get aboutClose => 'Fechar';

  @override
  String get settingsTitle => 'Configurações';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get settingsThemeDark => 'Escuro';

  @override
  String get settingsThemeLight => 'Claro';

  @override
  String get settingsThemeSystem => 'Sistema';

  @override
  String get settingsDefaultFileName => 'Nome de arquivo padrão';

  @override
  String get settingsDefaultFileNameHint => 'Kontaktlar';

  @override
  String get settingsVcfVersion => 'Versão VCF';

  @override
  String get settingsLanguage => 'Idioma';

  @override
  String get settingsLanguageSystem => 'Sistema';

  @override
  String get aboutDownloadTemplate => 'Baixar modelo do Excel';

  @override
  String get settingsVcfVersion3 => '3.0';

  @override
  String get settingsVcfVersion4 => '4.0';
}
