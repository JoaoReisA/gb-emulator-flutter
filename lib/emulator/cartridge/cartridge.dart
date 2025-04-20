import 'dart:ffi';

abstract class Cartridge {
  Cartridge({
    required this.entry,
    required this.logo,
    required this.title,
    required this.newLicCode,
    required this.sgbFlag,
    required this.type,
    required this.romSize,
    required this.ramSize,
    required this.destCode,
    required this.licCode,
    required this.version,
    required this.checksum,
    required this.globalChecksum,
  });

  final List<Uint8> entry;
  final List<Uint8> logo;
  final String title;
  final Uint16 newLicCode;
  final Uint8 sgbFlag;
  final Uint8 type;
  final Uint8 romSize;
  final Uint8 ramSize;
  final Uint8 destCode;
  final Uint8 licCode;
  final Uint8 version;
  final Uint8 checksum;
  final Uint16 globalChecksum;

  bool cartridgeLoad({required String cartridge});
}

abstract class CartridgeContext {
  CartridgeContext({
    required this.fileName,
    required this.romSize,
    required this.romData,
    required this.romHeader,
  });

  final String fileName;
  final Uint32 romSize;
  Uint8 romData;
  Cartridge romHeader;
}
