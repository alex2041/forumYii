<?php
/* @var $this CategoryController */
/* @var $data Category */
?>
<div class="block">
<div class="block_name" id="b<?php echo $data->id; ?>">
    <div class="name_s"><?php echo $data->name; ?></div>
    <?php
        if(!Yii::app()->user->isGuest){
            echo '<div class="add_s">'.CHtml::link('+',array("post/create/$_GET[id]")).'</div>';
            }
    ?>
    <div class="clear"></div>
</div>
<?php foreach($data->post as $post): ?>
<?php if($data->id==$post->id_cat): ?> 
<div class="block_post" id="post<?php echo $post->id; ?>">
		<div class="name_s"><?php echo CHtml::link(CHtml::encode($post->title), $post->url); ?></div>
        <div class="count_s">
            <?php 
                if($post->commentCount>=1){
                    echo $post->commentCount>1 ? $post->commentCount . ' comments' : 'One comment'; 
                }else{
                    echo '-';
                }
            ?>
        </div>
        <div class="date_s">
            <?php
                if($post->commentCount>=1){
                    $comment = array_pop($post->comments);
                    echo date('F j, Y \a\t h:i a',$comment->create_time); 
                }else{
                    echo date('F j, Y \a\t h:i a',$post->create_time);
                }
                
            ?>
        </div>
        <div class="clear"></div>
</div><!-- post -->
<?php endif; ?>
<?php endforeach; ?>
</div><!-- block -->
