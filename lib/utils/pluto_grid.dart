import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:proyecto/utils/responsive_grid.dart';

class FilterPlutoCustom implements PlutoFilterType {
  @override
  String get title => 'Contiene';

  @override
  get compare => ({
        required String? base,
        required String? search,
        required PlutoColumn? column,
      }) {
        var keys = search!.split(',').map((e) => e.toUpperCase()).toList();
        return keys.contains(base!.toUpperCase());
      };
  const FilterPlutoCustom();
}

PlutoGridConfiguration setConfigPlutto() {
  return PlutoGridConfiguration(
    columnFilter: PlutoGridColumnFilterConfig(
      filters: [
        ...FilterHelper.defaultFilters,
        const FilterPlutoCustom(),
      ],
      resolveDefaultColumnFilter: (column, resolver) {
        if (column.field == 'text') {
          return resolver<PlutoFilterTypeContains>() as PlutoFilterType;
        } else if (column.field == 'number') {
          return resolver<PlutoFilterTypeGreaterThan>() as PlutoFilterType;
        } else if (column.field == 'date') {
          return resolver<PlutoFilterTypeLessThan>() as PlutoFilterType;
        } else if (column.field == 'select') {
          return resolver<FilterPlutoCustom>() as PlutoFilterType;
        } else {
          return resolver<PlutoFilterTypeContains>() as PlutoFilterType;
        }
      },
    ),
  );
}

PlutoPagination setPagePagination(PlutoGridStateManager stateManager) {
  stateManager.setPageSize(10, notify: false);
  stateManager.setConfiguration(
    const PlutoGridConfiguration(
        style: PlutoGridStyleConfig(iconColor: Colors.black)),
  );
  return PlutoPagination(stateManager);
}

Row buttonsOperationDialog(
  rendererContext, {
  Function? publishFunction,
  Function? viewFunction,
  Function? editFunction,
  Function? deleteFunction,
  bool? renderedEdit = true,
  bool? renderedView = true,
  bool? renderedDelete = true,
  bool? renderedPublish = true,
}) {
  return Row(
    children: [
      if (renderedPublish == true)
        Expanded(
          child: IconButton(
            icon: Responsive.web
                ? const Icon(Icons.publish)
                : const Icon(Icons.publish),
            onPressed: () {
              publishFunction!();
            },
            tooltip: 'publicarAhora'.tr,
            iconSize: Responsive.sizeIcon,
            color: Colors.blue,
          ),
        ),
      if (renderedEdit == true)
        Expanded(
          child: IconButton(
            icon: Responsive.web
                ? Row(
                    children: const [Icon(Icons.edit)],
                  )
                : const Icon(Icons.edit),
            onPressed: () {
              editFunction!();
            },
            tooltip: 'editar'.tr,
            iconSize: Responsive.sizeIcon,
            color: Colors.blue,
          ),
        ),
      if (renderedView == true)
        Expanded(
          child: IconButton(
            icon: Responsive.web
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [Icon(Icons.visibility)],
                  )
                : const Icon(Icons.visibility),
            onPressed: () {
              viewFunction!();
            },
            tooltip: 'ver'.tr,
            iconSize: Responsive.sizeIcon,
            color: Colors.green,
          ),
        ),
      if (renderedDelete == true)
        Expanded(
          child: IconButton(
            tooltip: 'Cancelar/Eliminar'.tr,
            icon: Responsive.web
                ? Row(children: const [Icon(Icons.cancel_rounded)])
                : const Icon(
                    Icons.cancel_rounded,
                    color: Colors.red,
                  ),
            onPressed: () {
              deleteFunction!();
            },
            iconSize: Responsive.sizeIcon,
            color: Colors.red,
          ),
        ),
    ],
  );
}
