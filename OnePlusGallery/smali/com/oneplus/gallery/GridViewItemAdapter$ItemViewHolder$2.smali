.class Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder$2;
.super Ljava/lang/Object;
.source "GridViewItemAdapter.java"

# interfaces
.implements Lcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;


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
    .line 142
    iput-object p1, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder$2;->this$1:Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThumbnailImageDecoded(Lcom/oneplus/base/Handle;Lcom/oneplus/gallery/media/Media;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p3, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 146
    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder$2;->this$1:Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    iget-object v2, v2, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->media:Lcom/oneplus/gallery/media/Media;

    if-ne v2, p2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder$2;->this$1:Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->highThumbDecoded:Z

    .line 149
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder$2;->this$1:Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    iget-boolean v2, v2, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->isViewBinding:Z

    if-eqz v2, :cond_1

    .line 151
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 152
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;

    sget-object v2, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;->CENTER_CROP:Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;

    invoke-direct {v1, v2, v0}, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;-><init>(Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;Landroid/graphics/drawable/Drawable;)V

    .line 153
    .local v1, "transitionDrawable":Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder$2;->this$1:Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    iget-object v2, v2, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "transitionDrawable":Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder$2;->this$1:Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    iget-object v2, v2, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 159
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;

    if-eqz v2, :cond_2

    move-object v1, v0

    .line 160
    check-cast v1, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;

    .line 166
    .restart local v1    # "transitionDrawable":Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;
    :goto_1
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v1, v2, v4, v5}, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->startTransition(Landroid/graphics/drawable/Drawable;J)V

    .line 167
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder$2;->this$1:Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    iget-object v2, v2, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->this$0:Lcom/oneplus/gallery/GridViewItemAdapter;

    invoke-virtual {v2, p2}, Lcom/oneplus/gallery/GridViewItemAdapter;->removeDecodingHandle(Lcom/oneplus/gallery/media/Media;)V

    goto :goto_0

    .line 163
    .end local v1    # "transitionDrawable":Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;
    :cond_2
    new-instance v1, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;

    sget-object v2, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;->CENTER_CROP:Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;

    iget-object v3, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder$2;->this$1:Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    iget-object v3, v3, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->this$0:Lcom/oneplus/gallery/GridViewItemAdapter;

    # getter for: Lcom/oneplus/gallery/GridViewItemAdapter;->m_EmptyThumbDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/oneplus/gallery/GridViewItemAdapter;->access$200(Lcom/oneplus/gallery/GridViewItemAdapter;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;-><init>(Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;Landroid/graphics/drawable/Drawable;)V

    .line 164
    .restart local v1    # "transitionDrawable":Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder$2;->this$1:Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    iget-object v2, v2, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
