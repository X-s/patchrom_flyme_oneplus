.class Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3;
.super Ljava/lang/Object;
.source "MediaSetListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->createCoverImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3;->this$1:Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 466
    move-object v3, p0

    .line 467
    .local v3, "r":Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3;
    iget-object v4, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3;->this$1:Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;

    iget-object v4, v4, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    iget-object v5, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3;->this$1:Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;

    iget-object v5, v5, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    # invokes: Lcom/oneplus/gallery2/MediaSetListFragment;->getMediaSetImageKey(Lcom/oneplus/gallery2/media/MediaSet;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$1700(Lcom/oneplus/gallery2/MediaSetListFragment;Lcom/oneplus/gallery2/media/MediaSet;)Ljava/lang/String;

    move-result-object v1

    .line 468
    .local v1, "coverImageKey":Ljava/lang/String;
    # getter for: Lcom/oneplus/gallery2/MediaSetListFragment;->m_CoverImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;
    invoke-static {}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$1800()Lcom/oneplus/cache/HybridBitmapLruCache;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v1, v5, v6, v7}, Lcom/oneplus/cache/HybridBitmapLruCache;->get(Ljava/io/Serializable;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 469
    .local v2, "initCoverImage":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 471
    move-object v0, v2

    .line 472
    .local v0, "coverImage":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3;->this$1:Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;

    iget-object v4, v4, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    invoke-virtual {v4}, Lcom/oneplus/gallery2/MediaSetListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3$1;

    invoke-direct {v5, p0, v3, v0}, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3$1;-><init>(Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3;Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 505
    .end local v0    # "coverImage":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 490
    :cond_0
    iget-object v4, p0, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3;->this$1:Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;

    iget-object v4, v4, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    invoke-virtual {v4}, Lcom/oneplus/gallery2/MediaSetListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3$2;

    invoke-direct {v5, p0, v3}, Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3$2;-><init>(Lcom/oneplus/gallery2/MediaSetListFragment$CoverImageCreationTask$3;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
