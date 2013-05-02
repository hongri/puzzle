<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Index extends CI_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('images_model');
	}

	public function index()
	{
		$this->data['images'] = array_slice($this->images_model->getValueList(),0,50);
		$this->load->view('header');
		$this->load->view('index',$this->data);
		$this->load->view('footer');
	}

	public function image($id=1)
	{
		$type = $this->images_model->getType($id);
		$arr = $this->images_model->getValueByType($type);
		$number;
		$count = count($arr);
		for( $i=0 ; $i < $count; $i++)
		{
			$arr[$i]['href'] = $i+1;
			if($arr[$i]['id'] == $id)
			{
				$number = $i+1;
			}
		}
		// 初始话画面
		$this->data['id'] = $number;
		$this->data['images'] = $arr;
		/*
		if($number<=7)
		{
			$this->data['images'] = array_slice($arr,0,21);
		}
		else if($number>$count-7){
			$this->data['images'] = array_slice($arr,intval(($count-1)/7)*7-13,21);
		}
		else{
			$this->data['images'] = array_slice($arr,intval(($number-1)/7)*7-6,21);
		}
		*/
		$this->load->view('header');
		$this->load->view('image',$this->data);
		$this->load->view('footer');
	}

	public function getImage()
	{
		$json = json_decode(file_get_contents('php://input'),true);
		$number = $json['number'];
		$totalNum = $this->images_model->totalRows();		
		if($number<=($totalNum-20))
		{
			$result = array_slice($this->images_model->getValueList(),$number,20);
		}
		else
		{
			$result = array_slice($this->images_model->getValueList(),$number,$totalNum-$number);
		}
		echo(json_encode($result));
	}

	public function loadNextImage()
	{
		$json = json_decode(file_get_contents('php://input'),true);
		$id = $json['id'];
		$type = $this->images_model->getType($id);
		$arr = $this->images_model->getValueByType($type);
		$number;
		$count = count($arr);
		for( $i=0 ; $i < $count; $i++)
		{
			$arr[$i]['href'] = $i+1;
			if($arr[$i]['id'] == $id)
			{
				$number = $i+1;
			}
		}
		// 初始话画面
		if($number>$count-7){
			$result = array_slice($arr,$number,$count-$number);
		}
		else{
			$result = array_slice($arr,$number,7);
		}
		echo(json_encode($result));
	}
}
