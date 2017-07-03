.class Lcom/oneplus/gallery2/VideoPlayerActivity$4;
.super Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/VideoPlayerActivity;->deleteMedia()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/oneplus/gallery2/VideoPlayerActivity$4;->this$0:Lcom/oneplus/gallery2/VideoPlayerActivity;

    invoke-direct {p0}, Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeletionCompleted(Lcom/oneplus/gallery2/media/Media;Z)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "success"    # Z

    .prologue
    .line 258
    return-void
.end method

.method public onDeletionStarted(Lcom/oneplus/gallery2/media/Media;)V
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/oneplus/gallery2/VideoPlayerActivity$4;->this$0:Lcom/oneplus/gallery2/VideoPlayerActivity;

    const/4 v1, 0x0

    # invokes: Lcom/oneplus/gallery2/VideoPlayerActivity;->finish(Z)V
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/VideoPlayerActivity;->access$800(Lcom/oneplus/gallery2/VideoPlayerActivity;Z)V

    .line 254
    return-void
.end method
