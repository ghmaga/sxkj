<?php

namespace App\Admin\Controllers;

use App\Models\Slide;
use App\Models\Category;
use Encore\Admin\Tree;

use Image;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;

class SlideController extends Controller
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

            $content->header('轮换图管理');
            $content->description('轮换图列表');

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

            $content->header('轮换图管理');
            $content->description('轮换图编辑');

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

            $content->header('轮换图管理');
            $content->description('轮换图创建');

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
        return Admin::grid(Slide::class, function (Grid $grid) {

            $grid->id('ID')->sortable();
            //$grid->img('图片');
            $grid->image('图片')->image('', 50, 50);

            //$grid->parent_id('所属栏目')->options(Category::selectOptions());
            $grid->name('图片名称');
            //$grid->description('图片描述');
            //$grid->link('图片链接');

            //$grid->created_at();
            //$grid->updated_at();
        });
    }

    protected function treeView()
    {
        return Category::tree(function (Tree $tree) {
            $tree->disableCreate();
            return $tree;
        });
    }
    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Admin::form(Slide::class, function (Form $form) {

            $form->display('id', 'ID');
           
            $form->select('parent_id', '所属栏目')->options(Category::where(['parent_id' => 1])->pluck('name'));
            $form->image('image', '图片上传')->rules('mimes:gif,jpg,png,jpeg');

            $form->text('name', '图片标题')->rules('required|min:3');
            $form->text('en_name', '英文图片标题')->rules('required');
            $form->text('description', '图片描述')->rules('required');
            $form->text('en_description', '英文图片描述')->rules('required');
            $form->url('link', '图片链接')->rules('required');
            // $form->tags('keywords');
        });
    }
}
