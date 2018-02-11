.class public final Lcom/android/settings_ex/gestures/GesturePreference;
.super Landroid/support/v14/preference/SwitchPreference;
.source "GesturePreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GesturePreference"


# instance fields
.field private mAnimationAvailable:Z

.field private final mContext:Landroid/content/Context;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPreviewResource:I

.field private mScrolling:Z

.field private mVideoPath:Landroid/net/Uri;

.field private mVideoReady:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/gestures/GesturePreference;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/gestures/GesturePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/gestures/GesturePreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/gestures/GesturePreference;->mScrolling:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/gestures/GesturePreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/gestures/GesturePreference;->mVideoReady:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/gestures/GesturePreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/gestures/GesturePreference;->mScrolling:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings_ex/gestures/GesturePreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/gestures/GesturePreference;->mVideoReady:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    iput-object p1, p0, Lcom/android/settings_ex/gestures/GesturePreference;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 55
    sget-object v4, Lcom/android/settings_ex/R$styleable;->GesturePreference:[I

    .line 53
    invoke-virtual {v3, p2, v4, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 58
    .local v1, "attributes":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 59
    .local v0, "animation":I
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v4, "android.resource"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 59
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 61
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 59
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/gestures/GesturePreference;->mVideoPath:Landroid/net/Uri;

    .line 63
    iget-object v3, p0, Lcom/android/settings_ex/gestures/GesturePreference;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings_ex/gestures/GesturePreference;->mVideoPath:Landroid/net/Uri;

    invoke-static {v3, v4}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/gestures/GesturePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 64
    iget-object v3, p0, Lcom/android/settings_ex/gestures/GesturePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/gestures/GesturePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    if-lez v3, :cond_0

    .line 65
    const v3, 0x7f04008a

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/gestures/GesturePreference;->setLayoutResource(I)V

    .line 68
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 67
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/gestures/GesturePreference;->mPreviewResource:I

    .line 70
    iget-object v3, p0, Lcom/android/settings_ex/gestures/GesturePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v4, Lcom/android/settings_ex/gestures/GesturePreference$1;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/gestures/GesturePreference$1;-><init>(Lcom/android/settings_ex/gestures/GesturePreference;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 77
    iget-object v3, p0, Lcom/android/settings_ex/gestures/GesturePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v4, Lcom/android/settings_ex/gestures/GesturePreference$2;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/gestures/GesturePreference$2;-><init>(Lcom/android/settings_ex/gestures/GesturePreference;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 83
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings_ex/gestures/GesturePreference;->mAnimationAvailable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    .end local v0    # "animation":I
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v2

    .line 86
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v3, "GesturePreference"

    const-string/jumbo v4, "Animation resource not found. Will not show animation."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 87
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 88
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    throw v3
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/support/v14/preference/SwitchPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 96
    iget-boolean v3, p0, Lcom/android/settings_ex/gestures/GesturePreference;->mAnimationAvailable:Z

    if-nez v3, :cond_0

    .line 97
    return-void

    .line 100
    :cond_0
    const v3, 0x7f110175

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/TextureView;

    .line 101
    .local v2, "video":Landroid/view/TextureView;
    const v3, 0x7f110176

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 102
    .local v0, "imageView":Landroid/widget/ImageView;
    iget v3, p0, Lcom/android/settings_ex/gestures/GesturePreference;->mPreviewResource:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    const v3, 0x7f110177

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 105
    .local v1, "playButton":Landroid/widget/ImageView;
    new-instance v3, Lcom/android/settings_ex/gestures/GesturePreference$3;

    invoke-direct {v3, p0, v1}, Lcom/android/settings_ex/gestures/GesturePreference$3;-><init>(Lcom/android/settings_ex/gestures/GesturePreference;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    new-instance v3, Lcom/android/settings_ex/gestures/GesturePreference$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/settings_ex/gestures/GesturePreference$4;-><init>(Lcom/android/settings_ex/gestures/GesturePreference;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 93
    return-void
.end method

.method public onDetached()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/settings_ex/gestures/GesturePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/settings_ex/gestures/GesturePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 166
    iget-object v0, p0, Lcom/android/settings_ex/gestures/GesturePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/gestures/GesturePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 169
    :cond_0
    invoke-super {p0}, Landroid/support/v14/preference/SwitchPreference;->onDetached()V

    .line 163
    return-void
.end method

.method onViewInvisible()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/settings_ex/gestures/GesturePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/gestures/GesturePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/settings_ex/gestures/GesturePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 182
    :cond_0
    return-void
.end method

.method onViewVisible()V
    .locals 2

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/android/settings_ex/gestures/GesturePreference;->mVideoReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/gestures/GesturePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/gestures/GesturePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/gestures/GesturePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_0
.end method

.method setScrolling(Z)V
    .locals 0
    .param p1, "scrolling"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/settings_ex/gestures/GesturePreference;->mScrolling:Z

    .line 172
    return-void
.end method
