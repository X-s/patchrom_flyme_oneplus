.class Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView$1;
.super Ljava/lang/Object;
.source "FingerprintLocationAnimationVideoView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mTextureToDestroy:Landroid/graphics/SurfaceTexture;

.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView$1;->mTextureToDestroy:Landroid/graphics/SurfaceTexture;

    .line 61
    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 4
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 67
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView;->setVisibility(I)V

    .line 68
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView;

    invoke-virtual {v1}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView;->getFingerprintLocationAnimation()Landroid/net/Uri;

    move-result-object v0

    .line 69
    .local v0, "videoUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView;

    iget-object v1, v1, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView;

    iget-object v1, v1, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView$1;->mTextureToDestroy:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView$1;->mTextureToDestroy:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 74
    iput-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView$1;->mTextureToDestroy:Landroid/graphics/SurfaceTexture;

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView;

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView;

    invoke-static {v2}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView;->-get0(Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 77
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView;

    iget-object v1, v1, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 78
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView;

    iget-object v1, v1, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView$1$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView$1$1;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView$1;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 84
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView;

    iget-object v1, v1, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView$1$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView$1$2;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView$1;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 94
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView;

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView;

    iget-object v2, v2, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView;

    iget-object v3, v3, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v1, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView;->mAspect:F

    .line 95
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView;

    invoke-virtual {v1}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView;->requestLayout()V

    .line 96
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView;

    invoke-virtual {v1}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView;->startAnimation()V

    .line 66
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationVideoView$1;->mTextureToDestroy:Landroid/graphics/SurfaceTexture;

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 101
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 111
    return-void
.end method
