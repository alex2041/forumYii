<?php
/* @var $this PostController */
/* @var $data Post */
?>
<div class="block">
    <div class="title_s" id="b<?php echo $data->id; ?>">
       <?php echo $data->title; ?>
    </div>
    <div class="author_s">
        <div class="ad_s">
            <?php 
                echo $data->author->nick; 
            ?>
        </div>
    </div>
    <div class="date_s">
        <div class="ad_s">
            <?php
                echo date('F j, Y \a\t h:i a',$data->create_time);
            ?>
        </div>
    </div>
    <div class="clear"></div>  
    <div class="clear"></div>
    <div class="post_content">
        <?php echo $data->content; ?>
    </div>
</div><!-- block -->
