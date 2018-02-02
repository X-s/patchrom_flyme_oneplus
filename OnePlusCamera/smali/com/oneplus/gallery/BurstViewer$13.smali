.class Lcom/oneplus/gallery/BurstViewer$13;
.super Lcom/oneplus/gallery2/media/Media$DeletionCallback;
.source "BurstViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/BurstViewer;->deleteMedia(Ljava/util/Collection;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/BurstViewer;

.field final synthetic val$closeViewerWhenCompleted:Z

.field final synthetic val$deletionCountRef:Lcom/oneplus/base/Ref;

.field final synthetic val$dialog:Lcom/oneplus/camera/ui/ProgressDialog;

.field final synthetic val$selectionCount:I


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/BurstViewer;Lcom/oneplus/base/Ref;Lcom/oneplus/camera/ui/ProgressDialog;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/gallery/BurstViewer;
    .param p3, "val$dialog"    # Lcom/oneplus/camera/ui/ProgressDialog;
    .param p4, "val$selectionCount"    # I
    .param p5, "val$closeViewerWhenCompleted"    # Z

    .prologue
    .line 611
    .local p2, "val$deletionCountRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/oneplus/gallery/BurstViewer$13;->this$0:Lcom/oneplus/gallery/BurstViewer;

    iput-object p2, p0, Lcom/oneplus/gallery/BurstViewer$13;->val$deletionCountRef:Lcom/oneplus/base/Ref;

    iput-object p3, p0, Lcom/oneplus/gallery/BurstViewer$13;->val$dialog:Lcom/oneplus/camera/ui/ProgressDialog;

    iput p4, p0, Lcom/oneplus/gallery/BurstViewer$13;->val$selectionCount:I

    iput-boolean p5, p0, Lcom/oneplus/gallery/BurstViewer$13;->val$closeViewerWhenCompleted:Z

    invoke-direct {p0}, Lcom/oneplus/gallery2/media/Media$DeletionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeletionCancelled(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 616
    invoke-virtual {p0, p1, v0, v0}, Lcom/oneplus/gallery/BurstViewer$13;->onDeletionCompleted(Lcom/oneplus/gallery2/media/Media;ZI)V

    .line 614
    return-void
.end method

.method public onDeletionCompleted(Lcom/oneplus/gallery2/media/Media;ZI)V
    .locals 3
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "success"    # Z
    .param p3, "flags"    # I

    .prologue
    .line 622
    iget-object v1, p0, Lcom/oneplus/gallery/BurstViewer$13;->val$deletionCountRef:Lcom/oneplus/base/Ref;

    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$13;->val$deletionCountRef:Lcom/oneplus/base/Ref;

    invoke-interface {v0}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 623
    iget-object v1, p0, Lcom/oneplus/gallery/BurstViewer$13;->val$dialog:Lcom/oneplus/camera/ui/ProgressDialog;

    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$13;->val$deletionCountRef:Lcom/oneplus/base/Ref;

    invoke-interface {v0}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/oneplus/gallery/BurstViewer$13;->val$selectionCount:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/oneplus/camera/ui/ProgressDialog;->setProgress(F)V

    .line 624
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$13;->val$deletionCountRef:Lcom/oneplus/base/Ref;

    invoke-interface {v0}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/oneplus/gallery/BurstViewer$13;->val$selectionCount:I

    if-lt v0, v1, :cond_0

    .line 626
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$13;->val$dialog:Lcom/oneplus/camera/ui/ProgressDialog;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/ProgressDialog;->dismiss()V

    .line 627
    iget-boolean v0, p0, Lcom/oneplus/gallery/BurstViewer$13;->val$closeViewerWhenCompleted:Z

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$13;->this$0:Lcom/oneplus/gallery/BurstViewer;

    invoke-static {v0}, Lcom/oneplus/gallery/BurstViewer;->-get0(Lcom/oneplus/gallery/BurstViewer;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "deleteMedia() - Close viewer when completed"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$13;->this$0:Lcom/oneplus/gallery/BurstViewer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/BurstViewer;->close(I)V

    .line 620
    :cond_0
    return-void
.end method
