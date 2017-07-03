.class Lcom/oneplus/gallery/media/BaseMediaSet$3;
.super Ljava/lang/Object;
.source "BaseMediaSet.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/BaseMediaSet;->delete(Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/BaseMediaSet;

.field final synthetic val$callback:Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/BaseMediaSet;Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/oneplus/gallery/media/BaseMediaSet$3;->this$0:Lcom/oneplus/gallery/media/BaseMediaSet;

    iput-object p2, p0, Lcom/oneplus/gallery/media/BaseMediaSet$3;->val$callback:Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeletionCompleted(Lcom/oneplus/gallery/media/MediaSet;Z)V
    .locals 1
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p2, "success"    # Z

    .prologue
    .line 500
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet$3;->val$callback:Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery/media/MediaSet;Z)V

    .line 503
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet$3;->this$0:Lcom/oneplus/gallery/media/BaseMediaSet;

    invoke-virtual {v0}, Lcom/oneplus/gallery/media/BaseMediaSet;->deleteMediaSet()V

    .line 504
    return-void
.end method

.method public onDeletionStarted(Lcom/oneplus/gallery/media/MediaSet;)V
    .locals 1
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    .line 494
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet$3;->val$callback:Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;

    invoke-interface {v0, p1}, Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;->onDeletionStarted(Lcom/oneplus/gallery/media/MediaSet;)V

    .line 495
    return-void
.end method
