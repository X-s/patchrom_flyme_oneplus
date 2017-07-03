.class Lcom/oneplus/gallery2/VideoPlayerActivity$9;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/VideoPlayerActivity;->onCreate(Landroid/os/Bundle;Ljava/util/Map;)V
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
    .line 483
    iput-object p1, p0, Lcom/oneplus/gallery2/VideoPlayerActivity$9;->this$0:Lcom/oneplus/gallery2/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 487
    iget-object v0, p0, Lcom/oneplus/gallery2/VideoPlayerActivity$9;->this$0:Lcom/oneplus/gallery2/VideoPlayerActivity;

    # invokes: Lcom/oneplus/gallery2/VideoPlayerActivity;->onVideoCompletion(Landroid/media/MediaPlayer;)V
    invoke-static {v0, p1}, Lcom/oneplus/gallery2/VideoPlayerActivity;->access$1300(Lcom/oneplus/gallery2/VideoPlayerActivity;Landroid/media/MediaPlayer;)V

    .line 488
    return-void
.end method
