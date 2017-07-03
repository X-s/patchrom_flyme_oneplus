.class Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder$2;
.super Ljava/lang/Object;
.source "GridViewItemAdapter.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder$2;->this$1:Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThumbnailImageDecoded(Lcom/oneplus/base/Handle;Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p3, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 161
    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder$2;->this$1:Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    iget-object v2, v2, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->media:Lcom/oneplus/gallery2/media/Media;

    if-ne v2, p2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder$2;->this$1:Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->highThumbDecoded:Z

    .line 164
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder$2;->this$1:Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    iget-boolean v2, v2, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->isViewBinding:Z

    if-eqz v2, :cond_1

    .line 166
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 167
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;

    sget-object v2, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;->CENTER_CROP:Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;

    invoke-direct {v1, v2, v0}, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;-><init>(Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;Landroid/graphics/drawable/Drawable;)V

    .line 168
    .local v1, "transitionDrawable":Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder$2;->this$1:Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    iget-object v2, v2, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "transitionDrawable":Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder$2;->this$1:Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    iget-object v2, v2, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 174
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;

    if-eqz v2, :cond_2

    move-object v1, v0

    .line 175
    check-cast v1, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;

    .line 181
    .restart local v1    # "transitionDrawable":Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;
    :goto_1
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v1, v2, v4, v5}, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->startTransition(Landroid/graphics/drawable/Drawable;J)V

    .line 182
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder$2;->this$1:Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    iget-object v2, v2, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->this$0:Lcom/oneplus/gallery2/GridViewItemAdapter;

    invoke-virtual {v2, p2}, Lcom/oneplus/gallery2/GridViewItemAdapter;->removeDecodingHandle(Lcom/oneplus/gallery2/media/Media;)V

    goto :goto_0

    .line 178
    .end local v1    # "transitionDrawable":Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;
    :cond_2
    new-instance v1, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;

    sget-object v2, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;->CENTER_CROP:Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;

    iget-object v3, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder$2;->this$1:Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    iget-object v3, v3, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->this$0:Lcom/oneplus/gallery2/GridViewItemAdapter;

    # getter for: Lcom/oneplus/gallery2/GridViewItemAdapter;->m_EmptyThumbDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/oneplus/gallery2/GridViewItemAdapter;->access$300(Lcom/oneplus/gallery2/GridViewItemAdapter;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;-><init>(Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;Landroid/graphics/drawable/Drawable;)V

    .line 179
    .restart local v1    # "transitionDrawable":Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder$2;->this$1:Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    iget-object v2, v2, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
