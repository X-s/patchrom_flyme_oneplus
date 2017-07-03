.class Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder$1;
.super Lcom/oneplus/media/BitmapPool$Callback;
.source "GridViewItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder$1;->this$1:Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    invoke-direct {p0}, Lcom/oneplus/media/BitmapPool$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapDecoded(Lcom/oneplus/base/Handle;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 89
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder$1;->this$1:Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    iget-object v2, v2, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->lowResolutionThumbDecodeHandle:Lcom/oneplus/base/Handle;

    if-ne p1, v2, :cond_0

    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder$1;->this$1:Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    iget-boolean v2, v2, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->highThumbDecoded:Z

    if-nez v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder$1;->this$1:Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    iget-boolean v2, v2, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->isViewBinding:Z

    if-eqz v2, :cond_1

    .line 93
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 94
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;

    sget-object v2, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;->CENTER_CROP:Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;

    invoke-direct {v1, v2, v0}, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;-><init>(Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;Landroid/graphics/drawable/Drawable;)V

    .line 95
    .local v1, "transitionDrawable":Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder$1;->this$1:Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    iget-object v2, v2, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "transitionDrawable":Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder$1;->this$1:Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    iget-object v2, v2, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 100
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;

    if-eqz v2, :cond_2

    move-object v1, v0

    .line 101
    check-cast v1, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;

    .line 107
    .restart local v1    # "transitionDrawable":Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;
    :goto_1
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v1, v2, v4, v5}, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->startTransition(Landroid/graphics/drawable/Drawable;J)V

    goto :goto_0

    .line 104
    .end local v1    # "transitionDrawable":Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;
    :cond_2
    new-instance v1, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;

    sget-object v2, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;->CENTER_CROP:Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;

    iget-object v3, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder$1;->this$1:Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    iget-object v3, v3, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->this$0:Lcom/oneplus/gallery/GridViewItemAdapter;

    # getter for: Lcom/oneplus/gallery/GridViewItemAdapter;->m_EmptyThumbDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/oneplus/gallery/GridViewItemAdapter;->access$200(Lcom/oneplus/gallery/GridViewItemAdapter;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;-><init>(Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;Landroid/graphics/drawable/Drawable;)V

    .line 105
    .restart local v1    # "transitionDrawable":Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder$1;->this$1:Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    iget-object v2, v2, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public onBitmapDecoded(Lcom/oneplus/base/Handle;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 112
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder$1;->this$1:Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    iget-object v4, v4, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->this$0:Lcom/oneplus/gallery/GridViewItemAdapter;

    iget-object v5, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder$1;->this$1:Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    invoke-virtual {v5}, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->getAdapterPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery/GridViewItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/Media;

    .line 113
    .local v1, "media":Lcom/oneplus/gallery/media/Media;
    const/4 v2, 0x0

    .line 114
    .local v2, "mediaFilePath":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 115
    invoke-interface {v1}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 117
    :cond_0
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p3, :cond_1

    iget-object v4, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder$1;->this$1:Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    iget-boolean v4, v4, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->highThumbDecoded:Z

    if-nez v4, :cond_1

    .line 119
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder$1;->this$1:Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    iget-boolean v4, v4, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->isViewBinding:Z

    if-eqz v4, :cond_2

    .line 121
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 122
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v3, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;

    sget-object v4, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;->CENTER_CROP:Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;

    invoke-direct {v3, v4, v0}, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;-><init>(Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;Landroid/graphics/drawable/Drawable;)V

    .line 123
    .local v3, "transitionDrawable":Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder$1;->this$1:Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    iget-object v4, v4, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "transitionDrawable":Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;
    :cond_1
    :goto_0
    return-void

    .line 126
    :cond_2
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder$1;->this$1:Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    iget-object v4, v4, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 128
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v4, v0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;

    if-eqz v4, :cond_3

    move-object v3, v0

    .line 129
    check-cast v3, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;

    .line 135
    .restart local v3    # "transitionDrawable":Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;
    :goto_1
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const-wide/16 v6, 0x96

    invoke-virtual {v3, v4, v6, v7}, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->startTransition(Landroid/graphics/drawable/Drawable;J)V

    .line 136
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder$1;->this$1:Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    iget-object v4, v4, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->this$0:Lcom/oneplus/gallery/GridViewItemAdapter;

    invoke-virtual {v4, p2}, Lcom/oneplus/gallery/GridViewItemAdapter;->removeLowResDecodingHandle(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    .end local v3    # "transitionDrawable":Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;
    :cond_3
    new-instance v3, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;

    sget-object v4, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;->CENTER_CROP:Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;

    iget-object v5, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder$1;->this$1:Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    iget-object v5, v5, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->this$0:Lcom/oneplus/gallery/GridViewItemAdapter;

    # getter for: Lcom/oneplus/gallery/GridViewItemAdapter;->m_EmptyThumbDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/oneplus/gallery/GridViewItemAdapter;->access$200(Lcom/oneplus/gallery/GridViewItemAdapter;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;-><init>(Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;Landroid/graphics/drawable/Drawable;)V

    .line 133
    .restart local v3    # "transitionDrawable":Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder$1;->this$1:Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    iget-object v4, v4, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
