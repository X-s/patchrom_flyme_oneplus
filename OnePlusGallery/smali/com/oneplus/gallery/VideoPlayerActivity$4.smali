.class Lcom/oneplus/gallery/VideoPlayerActivity$4;
.super Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/VideoPlayerActivity;->deleteMedia()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/oneplus/gallery/VideoPlayerActivity$4;->this$0:Lcom/oneplus/gallery/VideoPlayerActivity;

    invoke-direct {p0}, Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeletionCompleted(Lcom/oneplus/gallery/media/Media;Z)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p2, "success"    # Z

    .prologue
    .line 259
    return-void
.end method

.method public onDeletionStarted(Lcom/oneplus/gallery/media/Media;)V
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity$4;->this$0:Lcom/oneplus/gallery/VideoPlayerActivity;

    const/4 v1, 0x0

    # invokes: Lcom/oneplus/gallery/VideoPlayerActivity;->finish(Z)V
    invoke-static {v0, v1}, Lcom/oneplus/gallery/VideoPlayerActivity;->access$800(Lcom/oneplus/gallery/VideoPlayerActivity;Z)V

    .line 255
    return-void
.end method
