<?php foreach($block as $block): ?>
    <div class="block">
    <div class="block_name" id="b<?php echo $block->id; ?>">
        <?php echo $block->name; ?>
    </div>
<?php foreach($block->category as $category): ?>
<?php if($block->id==$category->id_block): ?> 
<div class="block_category" id="cat<?php echo $category->id; ?>">
		<div class="name_s"><?php echo CHtml::link(CHtml::encode($category->name), $category->url); ?></div>
        <div class="count_s">
            <?php /*
                if($post->commentCount>=1){
                    echo $post->commentCount>1 ? $post->commentCount . ' comments' : 'One comment'; 
                }else{
                    echo '-';
                }*/
                $postCount = count($category->post);
                if($postCount>=1){
                    echo $postCount>1 ? $postCount . ' posts' : 'One post'; 
                }else{
                    echo '-';
                }
            ?>
        </div>
        <div class="date_s">
            <?php
                if($postCount>=1){
                    $post = array_pop($category->post);
                    echo date('F j, Y \a\t h:i a',$post->create_time); 
                }else{
                    echo '-';
                }
                
            ?>
        </div>
        <div class="clear"></div>
</div><!-- category -->
<?php endif; ?>
<?php endforeach; ?>
</div><!-- block -->
<?php endforeach; ?>