.class Lcom/oneplus/gallery/editor/PhotoEditor$3;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaObtainCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/editor/PhotoEditor;->onMediaProcessed(Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/editor/PhotoEditor;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/editor/PhotoEditor;)V
    .locals 0

    .prologue
    .line 1236
    iput-object p1, p0, Lcom/oneplus/gallery/editor/PhotoEditor$3;->this$0:Lcom/oneplus/gallery/editor/PhotoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onObtained(JLcom/oneplus/gallery/media/Media;)V
    .locals 1
    .param p1, "mediaId"    # J
    .param p3, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor$3;->this$0:Lcom/oneplus/gallery/editor/PhotoEditor;

    # invokes: Lcom/oneplus/gallery/editor/PhotoEditor;->onFinalMediaObtained(Lcom/oneplus/gallery/media/Media;)V
    invoke-static {v0, p3}, Lcom/oneplus/gallery/editor/PhotoEditor;->access$800(Lcom/oneplus/gallery/editor/PhotoEditor;Lcom/oneplus/gallery/media/Media;)V

    .line 1241
    return-void
.end method
