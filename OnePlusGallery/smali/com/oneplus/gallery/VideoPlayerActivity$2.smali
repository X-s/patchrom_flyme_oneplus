.class Lcom/oneplus/gallery/VideoPlayerActivity$2;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/VideoPlayerActivity;
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
    .line 116
    iput-object p1, p0, Lcom/oneplus/gallery/VideoPlayerActivity$2;->this$0:Lcom/oneplus/gallery/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity$2;->this$0:Lcom/oneplus/gallery/VideoPlayerActivity;

    # invokes: Lcom/oneplus/gallery/VideoPlayerActivity;->onVideoSurfaceChanged()V
    invoke-static {v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->access$300(Lcom/oneplus/gallery/VideoPlayerActivity;)V

    .line 133
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity$2;->this$0:Lcom/oneplus/gallery/VideoPlayerActivity;

    # invokes: Lcom/oneplus/gallery/VideoPlayerActivity;->onVideoSurfaceCreated()V
    invoke-static {v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->access$200(Lcom/oneplus/gallery/VideoPlayerActivity;)V

    .line 127
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity$2;->this$0:Lcom/oneplus/gallery/VideoPlayerActivity;

    # invokes: Lcom/oneplus/gallery/VideoPlayerActivity;->onVideoSurfaceDestroyed()V
    invoke-static {v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->access$100(Lcom/oneplus/gallery/VideoPlayerActivity;)V

    .line 121
    return-void
.end method
