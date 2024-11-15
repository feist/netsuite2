module NetSuite
  module Records
    class OtherChargePurchaseItem
      include Support::Fields
      include Support::RecordRefs
      include Support::Records
      include Support::Actions
      include Namespaces::ListAcct

      actions :get, :get_list, :add, :update, :delete, :upsert, :search

      attr_reader   :internal_id
      attr_accessor :external_id

      fields :accounting_book_detail_list,
        :available_to_partners,
        :cost,
        :cost_estimate,
        :cost_estimate_type,
        :cost_estimate_units,
        :created_date,
        :display_name,
        :enforce_min_qty_internally,
        :generate_accruals,
        :include_children,
        :is_fulfillable,
        :is_gco_compliant,
        :is_inactive,
        :is_online,
        :is_taxable,
        :item_id,
        :last_modified_date,
        :minimum_quantity,
        :minimum_quantity_units,
        :offer_support,
        :overall_quantity_pricing_type,
        :prices_include_tax,
        :pricing_group,
        :purchase_tax_code,
        :purchase_description,
        :quantity_pricing_schedule,
        :rate,
        :sales_description,
        :soft_descriptor,
        :upc_code,
        :use_marginal_rates,
        :vsoe_deferral,
        :vsoe_delivered,
        :vsoe_permit_discount,
        :vsoe_price,
        :vsoe_sop_group

      record_refs :billing_schedule, :klass, :cost_category, :custom_form, :deferred_revenue_account,
                  :department, :income_account, :issue_product, :location, :matrix_type, :rev_rec_schedule,
                  :units_type, :sales_tax_code, :sale_unit, :tax_schedule, :parent, :purchase_unit, :expense_account

      field :custom_field_list, CustomFieldList
      # :pricing_matrix,
      # :translations_list,
      # :matrix_option_list,
      # :item_options_list
      # :subsidiary_list,

      def initialize(attributes = {})
        @internal_id = attributes.delete(:internal_id) || attributes.delete(:@internal_id)
        @external_id = attributes.delete(:external_id) || attributes.delete(:@external_id)
        initialize_from_attributes_hash(attributes)
      end

      def self.search_class_name
        "Item"
      end

    end
  end
end
