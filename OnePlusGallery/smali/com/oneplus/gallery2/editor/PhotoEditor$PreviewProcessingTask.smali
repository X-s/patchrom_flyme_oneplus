.class final Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;
.super Landroid/os/AsyncTask;
.source "PhotoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/editor/PhotoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreviewProcessingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final filters:[Lcom/oneplus/gallery2/editor/PhotoEditorFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/oneplus/gallery2/editor/PhotoEditorFilter",
            "<*>;"
        }
    .end annotation
.end field

.field public final flags:I

.field public final originalPreviewImage:Landroid/graphics/Bitmap;

.field public volatile overlayImage:Landroid/graphics/Bitmap;

.field public final overlays:[Lcom/oneplus/gallery2/editor/PhotoEditorOverlay;

.field public volatile previewImage:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/oneplus/gallery2/editor/PhotoEditor;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/editor/PhotoEditor;Landroid/graphics/Bitmap;Ljava/util/List;Ljava/util/List;I)V
    .locals 1
    .param p2, "originalPreviewImage"    # Landroid/graphics/Bitmap;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/editor/PhotoEditorOverlay;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/editor/PhotoEditorFilter",
            "<*>;>;I)V"
        }
    .end annotation

    .prologue
    .line 331
    .local p3, "overlays":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/editor/PhotoEditorOverlay;>;"
    .local p4, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/editor/PhotoEditorFilter<*>;>;"
    iput-object p1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;->this$0:Lcom/oneplus/gallery2/editor/PhotoEditor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 332
    iput-object p2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;->originalPreviewImage:Landroid/graphics/Bitmap;

    .line 333
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/oneplus/gallery2/editor/PhotoEditorOverlay;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/editor/PhotoEditorOverlay;

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;->overlays:[Lcom/oneplus/gallery2/editor/PhotoEditorOverlay;

    .line 334
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/oneplus/gallery2/editor/PhotoEditorFilter;

    invoke-interface {p4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/editor/PhotoEditorFilter;

    iput-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;->filters:[Lcom/oneplus/gallery2/editor/PhotoEditorFilter;

    .line 335
    iput p5, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;->flags:I

    .line 336
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 319
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;->this$0:Lcom/oneplus/gallery2/editor/PhotoEditor;

    # invokes: Lcom/oneplus/gallery2/editor/PhotoEditor;->processPreviewImages(Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;)V
    invoke-static {v0, p0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->access$500(Lcom/oneplus/gallery2/editor/PhotoEditor;Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;)V

    .line 343
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 319
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 349
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 350
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;->this$0:Lcom/oneplus/gallery2/editor/PhotoEditor;

    # getter for: Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewProcessingTask:Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;
    invoke-static {v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->access$600(Lcom/oneplus/gallery2/editor/PhotoEditor;)Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;->this$0:Lcom/oneplus/gallery2/editor/PhotoEditor;

    # getter for: Lcom/oneplus/gallery2/editor/PhotoEditor;->m_PreviewProcessingTask:Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;
    invoke-static {v0}, Lcom/oneplus/gallery2/editor/PhotoEditor;->access$600(Lcom/oneplus/gallery2/editor/PhotoEditor;)Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 352
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 319
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;->this$0:Lcom/oneplus/gallery2/editor/PhotoEditor;

    iget-object v1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;->previewImage:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;->overlayImage:Landroid/graphics/Bitmap;

    # invokes: Lcom/oneplus/gallery2/editor/PhotoEditor;->onPreviewImagesProcessed(Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    invoke-static {v0, p0, v1, v2}, Lcom/oneplus/gallery2/editor/PhotoEditor;->access$700(Lcom/oneplus/gallery2/editor/PhotoEditor;Lcom/oneplus/gallery2/editor/PhotoEditor$PreviewProcessingTask;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 359
    return-void
.end method
