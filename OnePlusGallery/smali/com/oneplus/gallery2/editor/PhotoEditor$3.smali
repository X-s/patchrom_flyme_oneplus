.class Lcom/oneplus/gallery2/editor/PhotoEditor$3;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/editor/PhotoEditor;->onMediaProcessed(Lcom/oneplus/gallery2/editor/PhotoEditor$FinalProcessingTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/editor/PhotoEditor;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/editor/PhotoEditor;)V
    .locals 0

    .prologue
    .line 1244
    iput-object p1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$3;->this$0:Lcom/oneplus/gallery2/editor/PhotoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaObtained(Lcom/oneplus/gallery2/media/MediaSource;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaSource;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "mediaId"    # Ljava/lang/String;
    .param p4, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$3;->this$0:Lcom/oneplus/gallery2/editor/PhotoEditor;

    # invokes: Lcom/oneplus/gallery2/editor/PhotoEditor;->onFinalMediaObtained(Lcom/oneplus/gallery2/media/Media;)V
    invoke-static {v0, p4}, Lcom/oneplus/gallery2/editor/PhotoEditor;->access$800(Lcom/oneplus/gallery2/editor/PhotoEditor;Lcom/oneplus/gallery2/media/Media;)V

    .line 1249
    return-void
.end method
