import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:proyecto/utils/responsive_grid.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

var alertStyle = AlertStyle(
  titleStyle: Get.context!.width > 600
      ? const TextStyle(fontSize: 30)
      : const TextStyle(fontSize: 25),
  animationType: AnimationType.fromTop,
  isCloseButton: true,
  isOverlayTapDismiss: true,
  descStyle: const TextStyle(
    fontWeight: FontWeight.bold,
  ),
  descTextAlign: TextAlign.start,
  animationDuration: const Duration(milliseconds: 400),
  alertBorder: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(5.0),
    side: const BorderSide(
      color: Color.fromARGB(255, 0, 0, 0),
      width: 2,
    ),
  ),
  alertAlignment: Alignment.topCenter,
  overlayColor: const Color.fromRGBO(38, 38, 38, 0.4),
);

openPopup(context, titulo, Widget formulario,
    {Function? aceptar,
    Function? cancelar,
    AlertType type = AlertType.create}) {
  Alert(
      context: context,
      style: alertStyle,
      title: titulo,
      content: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: formulario,
      ),
      buttons: [
        if (type != AlertType.read)
          DialogButton(
              color: Colors.blue,
              width: 200,
              onPressed: () => aceptar!(),
              child: RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        type == AlertType.create ? Icons.save : Icons.check,
                        size: Responsive.sizeIcon,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                        text: type == AlertType.create
                            ? "guardar".tr
                            : "aceptar".tr,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: Get.context!.width > 600 ? 18 : 14)),
                  ],
                ),
              )),
        DialogButton(
          color: Colors.red,
          width: 200,
          onPressed: () {
            if (cancelar != null) cancelar();
            Navigator.pop(context);
          },
          child: RichText(
            text: TextSpan(
              children: [
                WidgetSpan(
                  child: Icon(
                    Icons.cancel,
                    size: Responsive.sizeIcon,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                    text: type == AlertType.read ? 'cerrar'.tr : 'cancelar'.tr,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: Get.context!.width > 600 ? 18 : 14)),
              ],
            ),
          ),
        ),
      ]).show();
}

openPopupDelete({Function? eliminar}) {
  openPopup(Get.context, "eliminar".tr, Text("eliminarCuerpo".tr),
      type: AlertType.delete, aceptar: eliminar);
}

openToastMensage({ToastType type = ToastType.sucess, String mensaje = ""}) {
  switch (type) {
    case ToastType.error:
      mensaje = mensaje.isEmpty ? "error".tr : mensaje;
      MotionToast.error(description: Text(mensaje)).show(Get.context!);
      break;
    case ToastType.warning:
      mensaje = mensaje.isEmpty ? "exito".tr : mensaje;
      MotionToast.warning(description: Text(mensaje)).show(Get.context!);
      break;
    default:
      mensaje = mensaje.isEmpty ? "exito".tr : mensaje;
      MotionToast.success(description: Text(mensaje)).show(Get.context!);
      break;
  }
}

Future showAlert(String tipo, String mensaje) {
  return Get.dialog(
    AlertDialog(
      title: Text(tipo),
      content: Text(mensaje),
      actions: <Widget>[
        TextButton(
          child: const Text('Ok'),
          onPressed: () => Get.back(),
        ),
      ],
    ),
  );
}

SnackbarController showSnack(Color tipo, String mensaje) {
  return Get.snackbar('Atencion !!', mensaje,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: tipo,
      colorText: Colors.white,
      duration: 1.seconds,
      maxWidth: 500);
}

enum AlertType { create, update, read, delete }

enum ToastType { sucess, warning, error }
