.class public Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationVideoView;
.super Landroid/view/TextureView;
.source "FingerprintLocationAnimationVideoView.java"

# interfaces
.implements Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintFindSensorAnimation;


# instance fields
.field protected mAspect:F

.field protected mMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationVideoView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationVideoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationVideoView;->resourceEntryToUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationVideoView;->mAspect:F

    .line 42
    return-void
.end method

.method private static resourceEntryToUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    const/16 v3, 0x2f

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 105
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 106
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 107
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 108
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Landroid/view/TextureView;->onFinishInflate()V

    .line 58
    new-instance v0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationVideoView$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationVideoView$1;-><init>(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationVideoView;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 56
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 50
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 51
    .local v1, "originalWidth":I
    iget v2, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationVideoView;->mAspect:F

    int-to-float v3, v1

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 52
    .local v0, "height":I
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {p0, p1, v2}, Landroid/view/TextureView;->onMeasure(II)V

    .line 48
    return-void
.end method

.method public pauseAnimation()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 128
    :cond_0
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0
.end method

.method public stopAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 123
    iput-object v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 119
    :cond_0
    return-void
.end method
