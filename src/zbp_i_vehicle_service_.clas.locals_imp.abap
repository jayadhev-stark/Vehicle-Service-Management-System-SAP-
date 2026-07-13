CLASS lhc_ZI_VEHICLE_SERVICE_ DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations
      FOR zi_vehicle_service_
      RESULT result.



ENDCLASS.

CLASS lhc_ZI_VEHICLE_SERVICE_ IMPLEMENTATION.

  METHOD get_instance_authorizations.
   LOOP AT keys ASSIGNING FIELD-SYMBOL(<key>).

      APPEND VALUE #(
        %tky = <key>-%tky

        %update = if_abap_behv=>auth-allowed
        %delete = if_abap_behv=>auth-allowed

      ) TO result.
      ENDLOOP.

  ENDMETHOD.


ENDCLASS.
