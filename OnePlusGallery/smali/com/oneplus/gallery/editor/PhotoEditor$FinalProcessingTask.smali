.class final Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/editor/PhotoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FinalProcessingTask"
.end annotation


# instance fields
.field public volatile autoSelectOutputPath:Z

.field public volatile clipRect:Landroid/graphics/RectF;

.field public volatile contentUri:Landroid/net/Uri;

.field public final filters:[Lcom/oneplus/gallery/editor/PhotoEditorFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/oneplus/gallery/editor/PhotoEditorFilter",
            "<*>;"
        }
    .end annotation
.end field

.field public volatile flipX:Z

.field public volatile flipY:Z

.field private volatile isCancelled:Z

.field public final media:Lcom/oneplus/gallery/media/PhotoMedia;

.field public volatile mimeType:Ljava/lang/String;

.field public volatile orientation:I

.field public volatile outputFormat:Landroid/graphics/Bitmap$CompressFormat;

.field public volatile outputSize:Landroid/util/Size;

.field public volatile outputUri:Landroid/net/Uri;

.field public final overlays:[Lcom/oneplus/gallery/editor/PhotoEditorOverlay;

.field public volatile success:Z

.field final synthetic this$0:Lcom/oneplus/gallery/editor/PhotoEditor;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/editor/PhotoEditor;Lcom/oneplus/gallery/media/PhotoMedia;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p2, "media"    # Lcom/oneplus/gallery/media/PhotoMedia;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery/media/PhotoMedia;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/editor/PhotoEditorOverlay;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/editor/PhotoEditorFilter",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p3, "overlays":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/editor/PhotoEditorOverlay;>;"
    .local p4, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/editor/PhotoEditorFilter<*>;>;"
    iput-object p1, p0, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->this$0:Lcom/oneplus/gallery/editor/PhotoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p2, p0, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->media:Lcom/oneplus/gallery/media/PhotoMedia;

    .line 265
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/oneplus/gallery/editor/PhotoEditorOverlay;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery/editor/PhotoEditorOverlay;

    iput-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->overlays:[Lcom/oneplus/gallery/editor/PhotoEditorOverlay;

    .line 266
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/oneplus/gallery/editor/PhotoEditorFilter;

    invoke-interface {p4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery/editor/PhotoEditorFilter;

    iput-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->filters:[Lcom/oneplus/gallery/editor/PhotoEditorFilter;

    .line 267
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->isCancelled:Z

    .line 273
    return-void
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->isCancelled:Z

    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 287
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->this$0:Lcom/oneplus/gallery/editor/PhotoEditor;

    # invokes: Lcom/oneplus/gallery/editor/PhotoEditor;->processFinalResult(Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;)V
    invoke-static {v1, p0}, Lcom/oneplus/gallery/editor/PhotoEditor;->access$200(Lcom/oneplus/gallery/editor/PhotoEditor;Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_0
    iget-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->this$0:Lcom/oneplus/gallery/editor/PhotoEditor;

    invoke-virtual {v1}, Lcom/oneplus/gallery/editor/PhotoEditor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask$1;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask$1;-><init>(Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 301
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 291
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->this$0:Lcom/oneplus/gallery/editor/PhotoEditor;

    # getter for: Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/gallery/editor/PhotoEditor;->access$300(Lcom/oneplus/gallery/editor/PhotoEditor;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "processFinalResult() - Handled error"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
