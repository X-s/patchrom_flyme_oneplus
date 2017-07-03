.class Lcom/oneplus/gallery/media/AlbumMediaSet$12;
.super Ljava/lang/Object;
.source "AlbumMediaSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/AlbumMediaSet;->rename(Ljava/lang/String;Lcom/oneplus/base/OperationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

.field final synthetic val$callback:Lcom/oneplus/base/OperationCallback;

.field final synthetic val$newName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/AlbumMediaSet;Lcom/oneplus/base/OperationCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 588
    iput-object p1, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$12;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    iput-object p2, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$12;->val$callback:Lcom/oneplus/base/OperationCallback;

    iput-object p3, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$12;->val$newName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 593
    iget-object v1, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$12;->val$callback:Lcom/oneplus/base/OperationCallback;

    if-eqz v1, :cond_0

    .line 594
    iget-object v1, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$12;->val$callback:Lcom/oneplus/base/OperationCallback;

    invoke-interface {v1, v4}, Lcom/oneplus/base/OperationCallback;->onStarted(Ljava/lang/Object;)V

    .line 597
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$12;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    # getter for: Lcom/oneplus/gallery/media/AlbumMediaSet;->m_AlbumId:J
    invoke-static {v1}, Lcom/oneplus/gallery/media/AlbumMediaSet;->access$400(Lcom/oneplus/gallery/media/AlbumMediaSet;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$12;->val$newName:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->updateAlbumInfoName(JLjava/lang/String;)I

    move-result v0

    .line 599
    .local v0, "rowCounts":I
    if-lez v0, :cond_2

    .line 602
    iget-object v1, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$12;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    const v2, 0x186a1

    iget-object v3, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$12;->val$newName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z

    .line 605
    iget-object v1, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$12;->val$callback:Lcom/oneplus/base/OperationCallback;

    if-eqz v1, :cond_1

    .line 606
    iget-object v1, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$12;->val$callback:Lcom/oneplus/base/OperationCallback;

    iget-object v2, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$12;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    invoke-interface {v1, v2}, Lcom/oneplus/base/OperationCallback;->onCompleted(Ljava/lang/Object;)V

    .line 613
    :cond_1
    :goto_0
    return-void

    .line 610
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$12;->val$callback:Lcom/oneplus/base/OperationCallback;

    if-eqz v1, :cond_1

    .line 611
    iget-object v1, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$12;->val$callback:Lcom/oneplus/base/OperationCallback;

    invoke-interface {v1, v4}, Lcom/oneplus/base/OperationCallback;->onCanceled(Ljava/lang/Object;)V

    goto :goto_0
.end method
