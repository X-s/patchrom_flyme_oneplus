.class Lcom/oneplus/gallery/media/BaseMediaSet$5;
.super Ljava/lang/Object;
.source "BaseMediaSet.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaDeletionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/BaseMediaSet;->deleteMedia(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/MediaDeletionCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/BaseMediaSet;

.field final synthetic val$callback:Lcom/oneplus/gallery/media/MediaDeletionCallback;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/BaseMediaSet;Lcom/oneplus/gallery/media/MediaDeletionCallback;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lcom/oneplus/gallery/media/BaseMediaSet$5;->this$0:Lcom/oneplus/gallery/media/BaseMediaSet;

    iput-object p2, p0, Lcom/oneplus/gallery/media/BaseMediaSet$5;->val$callback:Lcom/oneplus/gallery/media/MediaDeletionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeletionCompleted(Lcom/oneplus/gallery/media/Media;Z)V
    .locals 8
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p2, "success"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 562
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaSet$5;->val$callback:Lcom/oneplus/gallery/media/MediaDeletionCallback;

    if-eqz v1, :cond_0

    .line 563
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaSet$5;->val$callback:Lcom/oneplus/gallery/media/MediaDeletionCallback;

    invoke-interface {v1, p1, p2}, Lcom/oneplus/gallery/media/MediaDeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery/media/Media;Z)V

    .line 566
    :cond_0
    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 567
    .local v2, "mediaId":J
    new-instance v0, Lcom/oneplus/gallery/media/BaseMediaSet$5$1;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/gallery/media/BaseMediaSet$5$1;-><init>(Lcom/oneplus/gallery/media/BaseMediaSet$5;Lcom/oneplus/gallery/media/Media;)V

    .line 587
    .local v0, "callback":Lcom/oneplus/base/OperationCallback;, "Lcom/oneplus/base/OperationCallback<Ljava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Object;>;"
    sget-object v1, Lcom/oneplus/gallery/media/BaseMediaSet$7;->$SwitchMap$com$oneplus$gallery$media$MediaType:[I

    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/gallery/media/MediaType;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    .line 596
    :goto_0
    return-void

    .line 590
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaSet$5;->this$0:Lcom/oneplus/gallery/media/BaseMediaSet;

    new-array v4, v6, [J

    aput-wide v2, v4, v5

    invoke-virtual {v1, v7, v4, v0}, Lcom/oneplus/gallery/media/BaseMediaSet;->updatePhotoIdTable([J[JLcom/oneplus/base/OperationCallback;)Z

    goto :goto_0

    .line 593
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaSet$5;->this$0:Lcom/oneplus/gallery/media/BaseMediaSet;

    new-array v4, v6, [J

    aput-wide v2, v4, v5

    invoke-virtual {v1, v7, v4, v0}, Lcom/oneplus/gallery/media/BaseMediaSet;->updateVideoIdTable([J[JLcom/oneplus/base/OperationCallback;)Z

    goto :goto_0

    .line 587
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDeletionStarted(Lcom/oneplus/gallery/media/Media;)V
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 554
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet$5;->val$callback:Lcom/oneplus/gallery/media/MediaDeletionCallback;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet$5;->val$callback:Lcom/oneplus/gallery/media/MediaDeletionCallback;

    invoke-interface {v0, p1}, Lcom/oneplus/gallery/media/MediaDeletionCallback;->onDeletionStarted(Lcom/oneplus/gallery/media/Media;)V

    .line 556
    :cond_0
    return-void
.end method
