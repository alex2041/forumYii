<?php

/**
 * This is the model class for table "{{post}}".
 *
 * The followings are the available columns in table '{{post}}':
 * @property integer $id
 * @property string $title
 * @property string $content
 * @property integer $id_author
 * @var integer $create_time
 * @var integer $update_time
 * @property integer $id_cat
 */
class Post extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return '{{post}}';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('title, content, id_cat', 'required'),
			array('id_author, id_cat', 'numerical', 'integerOnly'=>true),
			array('title', 'length', 'max'=>50),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, title, content, id_author, id_cat', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
    {
    return array(
        'author' => array(self::BELONGS_TO, 'User', 'id_author'),
        'comments' => array(self::HAS_MANY, 'Comment', 'id_post'),
        'commentCount' => array(self::STAT, 'Comment', 'id_post'),
    );
    }
    
        // Генерация урл
    public function getUrl()
	{
		return Yii::app()->createUrl('post/view', array(
			'id'=>$this->id,
			'title'=>$this->title,
		));
	}
    
    	/**
	 * Adds a new comment to this post.
	 * This method will set status and post_id of the comment accordingly.
	 * @param Comment the comment to be added
	 * @return boolean whether the comment is saved successfully
	 */
	public function addComment($comment)
	{
		$comment->id_post=$this->id;
		return $comment->save();
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'title' => 'Title',
			'content' => 'Content',
			'id_author' => 'Id Author',
            'create_time' => 'Create Time',
			'update_time' => 'Update Time',
			'id_cat' => 'Cat',
		);
	}
    
   /**
	 * This is invoked before the record is saved.
	 * @return boolean whether the record should be saved.
	 */
	protected function beforeSave()
	{
		if(parent::beforeSave())
		{
			if($this->isNewRecord)
			{
				$this->create_time=$this->update_time=time();
				$this->id_author=Yii::app()->user->id;
			}
			else
				$this->update_time=time();
			return true;
		}
		else
			return false;
	}
    
   	/**
	 * This is invoked after the record is deleted.
	 */
	protected function afterDelete()
	{
		parent::afterDelete();
		Comment::model()->deleteAll('id_post='.$this->id);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->compare('title',$this->title,true);
		$criteria->compare('content',$this->content,true);
		$criteria->compare('id_author',$this->id_author);
		$criteria->compare('id_cat',$this->id_cat);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Post the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
