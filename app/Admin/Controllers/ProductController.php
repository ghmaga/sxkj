<?php

namespace App\Admin\Controllers;

use App\Models\Product;
use App\Models\Category;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;

class ProductController extends Controller
{
    use ModelForm;

    /**
     * Index interface.
     *
     * @return Content
     */
    public function index()
    {
        return Admin::content(function (Content $content) {

            $content->header('产品列表');
            $content->description('');

            $content->body($this->grid());
        });
    }

    /**
     * Edit interface.
     *
     * @param $id
     * @return Content
     */
    public function edit($id)
    {
        return Admin::content(function (Content $content) use ($id) {

            $content->header('header');
            $content->description('description');

            $content->body($this->form()->edit($id));
        });
    }

    /**
     * Create interface.
     *
     * @return Content
     */
    public function create()
    {
        return Admin::content(function (Content $content) {

            $content->header('创建产品  ');
            $content->description('description');

            $content->body($this->form());
        });
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Admin::grid(Product::class, function (Grid $grid) {

            $grid->id('ID')->sortable();
            $grid->title('产品名称');

            $grid->created_at();
            $grid->updated_at();
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Admin::form(Product::class, function (Form $form) {

            $form->display('id', 'ID');
            $form->text('title', '产品名称')->rules('required');
            $form->text('en_title', '英文产品名称')->rules('required');
            $form->image('image', '封面图片')->crop(300, 300, [100,100])->rules('required');
            $form->select('parent_id', '产品分类')->options(Category::where(['parent_id' => 2])->pluck('name'));
            $form->select('brand_id', '厂牌分类')->options(Category::where(['parent_id' => 13])->pluck('name'));
            $form->hasMany('skus', '产品特征', function (Form\NestedForm $form) {
                $form->text('title', '特征名称')->rules('required');
                $form->text('en_title', '英文特征名称')->rules('required');
                $form->text('description', '特征描述')->rules('required');
                $form->text('en_description', '英文特征描述')->rules('required');
            });
            $form->file('file', '文件上传')->rules('mimes:doc,docx,xlsx');
            $form->file('video', '视频上传')->rules('mimes:mp4.avi.rmvb');

            $form->editor('body', '产品描述')->rules('required');
            $form->editor('en_body', '英文产品描述')->rules('required');
            // $states = [
            //     'on'  => ['value' => 1, 'text' => '打开', 'color' => 'success'],
            //     'off' => ['value' => 0, 'text' => '关闭', 'color' => 'danger'],
            // ];

            // $form->switch('push', '推荐')->states($states);
            //$form->editor('description', '商品描述')->rules('required');
            $form->text('order', '排序');
        });
    }
}
