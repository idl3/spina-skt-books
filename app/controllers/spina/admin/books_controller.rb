module Spina
  module Admin
    class ItemsController < AdminController
      before_filter :set_breadcrumb

      layout "spina/admin/website"

      def show
        @item = Item.find(params[:id])
      end

      def index
        @items = Item.all
      end

      def new
        add_breadcrumb t('spina.item.new'), spina.new_admin_item_path

        @item = Item.new
      end

      def edit
        @item = Item.find(params[:id])
        add_breadcrumb @item.name
      end

      def create
        @item = Item.new(item_params)

        add_breadcrumb t('spina.item.new')
        if @item.save
          redirect_to spina.admin_items_url, notice: t('spina.item.created')
        else
          render :new
        end
      end

      def update
        @item = Item.find(params[:id])

        add_breadcrumb @item.name
        if @item.update_attributes(item_params)
          redirect_to spina.admin_items_url, notice: "#{t('spina.item.name')} #{@item.name} #{t('spina.item.saved')}"
        else
          render :edit
        end
      end

      def destroy
        @item = Item.find(params[:id])
        @item.destroy
        redirect_to spina.admin_items_url, notice: "#{t('spina.item.name')} #{@item.name} #{t('spina.item.destroyed')}"
      end

      private

      def set_breadcrumb
        add_breadcrumb t('spina.item.name'), spina.admin_items_path
      end

      def item_params
        params.require(:item).permit(:name, :icon, :description)
      end
    end
  end
end