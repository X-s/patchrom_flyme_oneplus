.class public Lcom/oneplus/gallery/VideoPlayerActivity;
.super Lcom/oneplus/gallery/SingleMediaActivity;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/VideoPlayerActivity$29;,
        Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;,
        Lcom/oneplus/gallery/VideoPlayerActivity$ViewVisibilityState;
    }
.end annotation


# static fields
.field private static final AUDIOFOCUS_REQUEST_UNKNOWN:I = -0x1

.field private static final DELAY_HIDE_CONTROLS_UI_TIME_MILLIS:J = 0xbb8L

.field private static final DELAY_PAUSE_VIDEO_PLAYER:J = 0x64L

.field private static final DURATION_ANIMATION:J = 0x96L

.field private static final EXTRA_IS_READ_ONLY:Ljava/lang/String; = "IsReadOnly"

.field private static final EXTRA_IS_SECURE_MODE:Ljava/lang/String; = "IsSecureMode"

.field private static final INTERVAL_UPDATE_ELAPSED_TIME_MILLIS:I = 0x3e8

.field private static final MSG_HIDE_CONTROLS_UI:I = 0x2712

.field private static final MSG_PAUSE_VIDEO_PLAYER:I = 0x2713

.field private static final MSG_UPDATE_ELAPSED_TIME:I = 0x2711

.field private static final RESULT_EXTRA_IS_COLLECTED:Ljava/lang/String; = "IsCollected"

.field private static final STATE_KEY_CURRENT_POSITION:Ljava/lang/String; = "com.oneplus.gallery.VideoPlayerActivity.currentPosition"


# instance fields
.field private m_ActionBarContainer:Landroid/view/View;

.field private m_AudioFocusResult:I

.field private m_CollectButton:Landroid/widget/ImageButton;

.field private m_CollectButtonContainer:Landroid/view/View;

.field private m_ControlsVisibilityState:Lcom/oneplus/gallery/VideoPlayerActivity$ViewVisibilityState;

.field private m_CurrentMediaSet:Lcom/oneplus/gallery/media/MediaSet;

.field private m_DefaultVideoElapsedTimeMillis:I

.field private m_DefaultVideoPlaying:Z

.field private m_DeleteButton:Landroid/widget/ImageButton;

.field private m_DeleteButtonContainer:Landroid/view/View;

.field private m_FooterContainer:Landroid/view/View;

.field private m_GestureDetector:Landroid/view/GestureDetector;

.field private m_InvalidTextView:Landroid/widget/TextView;

.field private m_IsControlsVisible:Z

.field private m_IsPauseBySeekBar:Z

.field private m_IsReadOnlyMode:Z

.field private m_IsVideoCannotPlay:Z

.field private m_Media:Lcom/oneplus/gallery/media/Media;

.field private m_MediaControlContainer:Landroid/view/View;

.field private m_MediaControlDurationTextView:Landroid/widget/TextView;

.field private m_MediaControlElapsedTextView:Landroid/widget/TextView;

.field private m_MediaControlSeekBar:Landroid/widget/SeekBar;

.field private m_MediaDefaultMarginBottom:I

.field private m_MediaDetailsDialog:Lcom/oneplus/gallery/MediaDetailsDialog;

.field private m_OnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private m_PlayButton:Landroid/widget/ImageButton;

.field private m_ResultIntent:Landroid/content/Intent;

.field private m_ScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field private m_ShareButton:Landroid/widget/ImageButton;

.field private m_StatusBarColorHandle:Lcom/oneplus/base/Handle;

.field private m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;

.field private m_TouchReceiver:Landroid/view/View;

.field private m_VideoDurationTimeMillis:I

.field private m_VideoElapsedTimeMillis:I

.field private m_VideoPlayerState:Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;

.field private m_VideoSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

.field private m_VideoUri:Landroid/net/Uri;

.field private m_VideoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 48
    invoke-direct {p0}, Lcom/oneplus/gallery/SingleMediaActivity;-><init>()V

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_AudioFocusResult:I

    .line 69
    sget-object v0, Lcom/oneplus/gallery/VideoPlayerActivity$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/VideoPlayerActivity$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_ControlsVisibilityState:Lcom/oneplus/gallery/VideoPlayerActivity$ViewVisibilityState;

    .line 72
    iput-boolean v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_DefaultVideoPlaying:Z

    .line 79
    iput-boolean v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_IsReadOnlyMode:Z

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_IsVideoCannotPlay:Z

    .line 97
    sget-object v0, Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;->IDLE:Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;

    iput-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoPlayerState:Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;

    .line 103
    new-instance v0, Lcom/oneplus/gallery/VideoPlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/VideoPlayerActivity$1;-><init>(Lcom/oneplus/gallery/VideoPlayerActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_ScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 115
    new-instance v0, Lcom/oneplus/gallery/VideoPlayerActivity$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/VideoPlayerActivity$2;-><init>(Lcom/oneplus/gallery/VideoPlayerActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    .line 138
    new-instance v0, Lcom/oneplus/gallery/VideoPlayerActivity$3;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/VideoPlayerActivity$3;-><init>(Lcom/oneplus/gallery/VideoPlayerActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_OnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 168
    return-void
.end method

.method private abandonAudioFocus()V
    .locals 4

    .prologue
    .line 183
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v3, "abandonAudioFocus()"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/VideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 185
    .local v0, "audioManager":Landroid/media/AudioManager;
    iget-object v2, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_OnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :goto_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_AudioFocusResult:I

    .line 192
    return-void

    .line 187
    :catch_0
    move-exception v1

    .line 189
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v3, "abandonAudioFocus() - Error when abandon audio focus"

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/oneplus/gallery/VideoPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/VideoPlayerActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/gallery/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/VideoPlayerActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->onVideoSurfaceDestroyed()V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/gallery/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/VideoPlayerActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->hideControlsUIDelay()V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/gallery/VideoPlayerActivity;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/VideoPlayerActivity;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/VideoPlayerActivity;->onVideoViewSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/oneplus/gallery/VideoPlayerActivity;Landroid/media/MediaPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/VideoPlayerActivity;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/VideoPlayerActivity;->onVideoPrepared(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/oneplus/gallery/VideoPlayerActivity;Landroid/media/MediaPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/VideoPlayerActivity;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/VideoPlayerActivity;->onVideoCompletion(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/oneplus/gallery/VideoPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/VideoPlayerActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/oneplus/gallery/VideoPlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/VideoPlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_IsVideoCannotPlay:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/oneplus/gallery/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/VideoPlayerActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->stop()V

    return-void
.end method

.method static synthetic access$1700(Lcom/oneplus/gallery/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/VideoPlayerActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->updateViewWhileError()V

    return-void
.end method

.method static synthetic access$1800(Lcom/oneplus/gallery/VideoPlayerActivity;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/VideoPlayerActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_GestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/oneplus/gallery/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/VideoPlayerActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->onPlayButtonClick()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/gallery/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/VideoPlayerActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->onVideoSurfaceCreated()V

    return-void
.end method

.method static synthetic access$2000(Lcom/oneplus/gallery/VideoPlayerActivity;Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/VideoPlayerActivity;
    .param p1, "x1"    # Landroid/widget/SeekBar;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/VideoPlayerActivity;->onSeekBarProgressChanged(Landroid/widget/SeekBar;IZ)V

    return-void
.end method

.method static synthetic access$2100(Lcom/oneplus/gallery/VideoPlayerActivity;Landroid/widget/SeekBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/VideoPlayerActivity;
    .param p1, "x1"    # Landroid/widget/SeekBar;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/VideoPlayerActivity;->onSeekBarStartTracking(Landroid/widget/SeekBar;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/oneplus/gallery/VideoPlayerActivity;Landroid/widget/SeekBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/VideoPlayerActivity;
    .param p1, "x1"    # Landroid/widget/SeekBar;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/VideoPlayerActivity;->onSeekBarStopTracking(Landroid/widget/SeekBar;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/oneplus/gallery/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/VideoPlayerActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->showDetails()V

    return-void
.end method

.method static synthetic access$2400(Lcom/oneplus/gallery/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/VideoPlayerActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->shareMedia()V

    return-void
.end method

.method static synthetic access$2500(Lcom/oneplus/gallery/VideoPlayerActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/VideoPlayerActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_CollectButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/oneplus/gallery/VideoPlayerActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/VideoPlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/VideoPlayerActivity;->collectMedia(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/oneplus/gallery/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/VideoPlayerActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->deleteMedia()V

    return-void
.end method

.method static synthetic access$2800(Lcom/oneplus/gallery/VideoPlayerActivity;)Landroid/widget/VideoView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/VideoPlayerActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/oneplus/gallery/VideoPlayerActivity;Lcom/oneplus/gallery/MediaDetailsDialog;)Lcom/oneplus/gallery/MediaDetailsDialog;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/VideoPlayerActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery/MediaDetailsDialog;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_MediaDetailsDialog:Lcom/oneplus/gallery/MediaDetailsDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/oneplus/gallery/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/VideoPlayerActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->onVideoSurfaceChanged()V

    return-void
.end method

.method static synthetic access$3000(Lcom/oneplus/gallery/VideoPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/VideoPlayerActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/oneplus/gallery/VideoPlayerActivity;Lcom/oneplus/gallery/VideoPlayerActivity$ViewVisibilityState;)Lcom/oneplus/gallery/VideoPlayerActivity$ViewVisibilityState;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/VideoPlayerActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery/VideoPlayerActivity$ViewVisibilityState;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_ControlsVisibilityState:Lcom/oneplus/gallery/VideoPlayerActivity$ViewVisibilityState;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/oneplus/gallery/VideoPlayerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/VideoPlayerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/VideoPlayerActivity;->updatePlayButtonVisibility(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/oneplus/gallery/VideoPlayerActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/VideoPlayerActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_MediaControlContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/oneplus/gallery/VideoPlayerActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/VideoPlayerActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_ActionBarContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/oneplus/gallery/VideoPlayerActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/VideoPlayerActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_FooterContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/gallery/VideoPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/VideoPlayerActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/gallery/VideoPlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/VideoPlayerActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->pause()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/oneplus/gallery/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/VideoPlayerActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->start()V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/gallery/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/VideoPlayerActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->abandonAudioFocus()V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/gallery/VideoPlayerActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/VideoPlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/VideoPlayerActivity;->finish(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/gallery/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/VideoPlayerActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->cancelHideControlsUI()V

    return-void
.end method

.method private cancelHideControlsUI()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "cancelHideControlsUI()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/16 v0, 0x2712

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 200
    return-void
.end method

.method private checkReadOnlyMode()V
    .locals 3

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 207
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 208
    const-string v1, "IsReadOnly"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_IsReadOnlyMode:Z

    .line 209
    :cond_0
    return-void
.end method

.method private collectMedia(Z)V
    .locals 4
    .param p1, "isCollected"    # Z

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->hideControlsUIDelay()V

    .line 219
    iget-object v2, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_Media:Lcom/oneplus/gallery/media/Media;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_Media:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v2}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 220
    .local v0, "contentUri":Landroid/net/Uri;
    :goto_0
    if-nez v0, :cond_1

    .line 232
    :goto_1
    return-void

    .line 219
    .end local v0    # "contentUri":Landroid/net/Uri;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 224
    .restart local v0    # "contentUri":Landroid/net/Uri;
    :cond_1
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v2

    const-class v3, Lcom/oneplus/gallery/media/OPMediaManager;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/OPMediaManager;

    .line 225
    .local v1, "mediaManager":Lcom/oneplus/gallery/media/OPMediaManager;
    invoke-interface {v1, v0, p1}, Lcom/oneplus/gallery/media/OPMediaManager;->setFavorite(Landroid/net/Uri;Z)Z

    .line 228
    iget-object v2, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_ResultIntent:Landroid/content/Intent;

    if-nez v2, :cond_2

    .line 229
    new-instance v2, Landroid/content/Intent;

    const-string v3, ""

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v2, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_ResultIntent:Landroid/content/Intent;

    .line 230
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_ResultIntent:Landroid/content/Intent;

    const-string v3, "IsCollected"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 231
    const/4 v2, -0x1

    iget-object v3, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_ResultIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/gallery/VideoPlayerActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1
.end method

.method private deleteMedia()V
    .locals 4

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->hideControlsUIDelay()V

    .line 242
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_Media:Lcom/oneplus/gallery/media/Media;

    if-nez v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->pause()Z

    .line 249
    invoke-virtual {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_CurrentMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    iget-object v2, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_Media:Lcom/oneplus/gallery/media/Media;

    new-instance v3, Lcom/oneplus/gallery/VideoPlayerActivity$4;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/VideoPlayerActivity$4;-><init>(Lcom/oneplus/gallery/VideoPlayerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/gallery/Gallery;->deleteMedia(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;)Z

    goto :goto_0
.end method

.method private finish(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 275
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "finish()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-super {p0}, Lcom/oneplus/gallery/SingleMediaActivity;->finish()V

    .line 277
    if-eqz p1, :cond_0

    .line 278
    const v0, 0x10a0001

    invoke-virtual {p0, v2, v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->overridePendingTransition(II)V

    .line 281
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-virtual {p0, v2, v2}, Lcom/oneplus/gallery/VideoPlayerActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method private getVideoDurationText(J)Ljava/lang/String;
    .locals 11
    .param p1, "seconds"    # J

    .prologue
    const-wide/16 v4, 0xe10

    const-wide/16 v6, 0x3c

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 297
    div-long v0, p1, v4

    .line 298
    .local v0, "hours":J
    mul-long/2addr v4, v0

    sub-long/2addr p1, v4

    .line 299
    div-long v2, p1, v6

    .line 300
    .local v2, "minutes":J
    mul-long v4, v2, v6

    sub-long/2addr p1, v4

    .line 301
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 302
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%02d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 304
    :goto_0
    return-object v4

    :cond_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private hideControlsUIDelay()V
    .locals 6

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v0

    .line 337
    .local v0, "gallery":Lcom/oneplus/gallery/Gallery;
    iget-boolean v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_IsControlsVisible:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/oneplus/gallery/Gallery;->PROP_HAS_DIALOG:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/oneplus/gallery/Gallery;->PROP_IS_SHARING_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v2, "hideControlsUIDelay()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const/16 v1, 0x2712

    const/4 v2, 0x1

    const-wide/16 v4, 0xbb8

    invoke-static {p0, v1, v2, v4, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 342
    :cond_0
    return-void
.end method

.method private isSecureMode()Z
    .locals 4

    .prologue
    .line 356
    const/4 v1, 0x0

    .line 357
    .local v1, "isSecureMode":Z
    invoke-virtual {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 358
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 359
    const-string v2, "IsSecureMode"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 360
    :cond_0
    return v1
.end method

.method private onPlayButtonClick()V
    .locals 2

    .prologue
    .line 799
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->hideControlsUIDelay()V

    .line 802
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoPlayerState:Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;

    sget-object v1, Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;->PLAY:Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;

    if-ne v0, v1, :cond_0

    .line 803
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->pause()Z

    .line 806
    :goto_0
    return-void

    .line 805
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->start()V

    goto :goto_0
.end method

.method private onSeekBarProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 840
    if-eqz p3, :cond_0

    .line 841
    invoke-direct {p0, p2}, Lcom/oneplus/gallery/VideoPlayerActivity;->seekToProgress(I)V

    .line 842
    :cond_0
    return-void
.end method

.method private onSeekBarStartTracking(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 849
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->cancelHideControlsUI()V

    .line 852
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->pause()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_IsPauseBySeekBar:Z

    .line 854
    :cond_0
    return-void
.end method

.method private onSeekBarStopTracking(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 861
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->hideControlsUIDelay()V

    .line 864
    iget-boolean v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_IsPauseBySeekBar:Z

    if-eqz v0, :cond_0

    .line 866
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_IsPauseBySeekBar:Z

    .line 867
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->start()V

    .line 869
    :cond_0
    return-void
.end method

.method private onVideoCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 914
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onVideoCompletion()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    const/16 v0, 0x2711

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 918
    iget v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoDurationTimeMillis:I

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->setVideoElapsedTimeMillis(I)V

    .line 921
    invoke-virtual {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->finish()V

    .line 922
    return-void
.end method

.method private onVideoPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 929
    sget-object v0, Lcom/oneplus/gallery/VideoPlayerActivity$29;->$SwitchMap$com$oneplus$gallery$VideoPlayerActivity$PlayerState:[I

    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoPlayerState:Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;

    invoke-virtual {v1}, Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 952
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onVideoPrepared() - Preparation has been cancelled"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    :goto_0
    return-void

    .line 932
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onVideoPrepared()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    sget-object v0, Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;->READY:Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->setVideoPlayerState(Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;)V

    .line 938
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->setVideoDurationTimeMillis(I)V

    .line 941
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->updateSeekBarMax()V

    .line 944
    iget v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_DefaultVideoElapsedTimeMillis:I

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->seekTo(I)V

    .line 947
    iget-boolean v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_DefaultVideoPlaying:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->start(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 929
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onVideoSurfaceChanged()V
    .locals 2

    .prologue
    .line 961
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onVideoSurfaceChanged()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    return-void
.end method

.method private onVideoSurfaceCreated()V
    .locals 2

    .prologue
    .line 968
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onVideoSurfaceCreated()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    invoke-virtual {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->isInitialPermissionsRequestCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 973
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->prepare()V

    .line 979
    :goto_0
    return-void

    .line 977
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onVideoSurfaceCreated() - requesting permission"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onVideoSurfaceDestroyed()V
    .locals 2

    .prologue
    .line 985
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onVideoSurfaceDestroyed()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->stop()V

    .line 991
    sget-object v0, Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;->IDLE:Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->setVideoPlayerState(Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;)V

    .line 992
    return-void
.end method

.method private onVideoViewSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 999
    iget-boolean v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_IsControlsVisible:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/oneplus/gallery/VideoPlayerActivity;->setControlsVisibility(ZZ)V

    .line 1001
    return v1

    .line 999
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pause()Z
    .locals 1

    .prologue
    .line 1008
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->pause(Z)Z

    move-result v0

    return v0
.end method

.method private pause(Z)Z
    .locals 3
    .param p1, "showControls"    # Z

    .prologue
    const/4 v0, 0x1

    .line 1012
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoPlayerState:Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;

    sget-object v2, Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;->PLAY:Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;

    if-ne v1, v2, :cond_2

    .line 1014
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v2, "pause()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1016
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->pause()V

    .line 1017
    :cond_0
    sget-object v1, Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;->PAUSE:Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/VideoPlayerActivity;->setVideoPlayerState(Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;)V

    .line 1018
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->updatePlayButtonIcon()V

    .line 1019
    if-eqz p1, :cond_1

    .line 1020
    invoke-direct {p0, v0, v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->setControlsVisibility(ZZ)V

    .line 1021
    :cond_1
    const/16 v1, 0x2711

    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 1022
    invoke-virtual {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 1025
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepare()V
    .locals 3

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoPlayerState:Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;

    sget-object v1, Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;->IDLE:Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;

    if-ne v0, v1, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 1037
    sget-object v0, Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;->PREPARING:Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->setVideoPlayerState(Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;)V

    .line 1038
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare() - Prepare video : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 1048
    :cond_0
    :goto_0
    return-void

    .line 1044
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "prepare() - No video URI"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    invoke-virtual {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->finish()V

    goto :goto_0
.end method

.method private requestAudioFocus()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 1055
    iget v3, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_AudioFocusResult:I

    if-ne v3, v2, :cond_1

    .line 1071
    :cond_0
    :goto_0
    return v2

    .line 1061
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v4, "requestAudioFocus()"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/VideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1063
    .local v0, "audioManager":Landroid/media/AudioManager;
    iget-object v3, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_OnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_AudioFocusResult:I

    .line 1064
    iget v3, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_AudioFocusResult:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v3, v2, :cond_0

    .line 1071
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1067
    :catch_0
    move-exception v1

    .line 1069
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v3, "requestAudioFocus() - Error when request audio focus"

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private seekTo(I)V
    .locals 3
    .param p1, "timeMillis"    # I

    .prologue
    .line 1079
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/VideoPlayerActivity;->setVideoElapsedTimeMillis(I)V

    .line 1081
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "seekTo() - Time: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1084
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 1085
    return-void
.end method

.method private seekToProgress(I)V
    .locals 7
    .param p1, "progress"    # I

    .prologue
    .line 1092
    const/16 v1, 0x3e8

    .line 1093
    .local v1, "timeMillisPerInterval":I
    mul-int v0, p1, v1

    .line 1096
    .local v0, "timeMillis":I
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->setVideoElapsedTimeMillis(I)V

    .line 1098
    iget-object v2, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v3, "seekToProgress() - Progress: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ", time: "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1101
    iget-object v2, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoView:Landroid/widget/VideoView;

    invoke-virtual {v2, v0}, Landroid/widget/VideoView;->seekTo(I)V

    .line 1102
    return-void
.end method

.method private setControlsVisibility(ZZ)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "animation"    # Z

    .prologue
    .line 1109
    iget-boolean v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_IsControlsVisible:Z

    if-ne v0, p1, :cond_0

    .line 1123
    :goto_0
    return-void

    .line 1113
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_IsControlsVisible:Z

    .line 1116
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->updateCollectButtonVisibility()V

    .line 1119
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->updateDeleteButtonVisibility()V

    .line 1122
    invoke-direct {p0, p2}, Lcom/oneplus/gallery/VideoPlayerActivity;->updateControlsVisibility(Z)V

    goto :goto_0
.end method

.method private setVideoDurationTimeMillis(I)V
    .locals 3
    .param p1, "timeMillis"    # I

    .prologue
    .line 1130
    iget v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoDurationTimeMillis:I

    if-ne v0, p1, :cond_0

    .line 1140
    :goto_0
    return-void

    .line 1133
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "setVideoDurationTimeMillis() - Duration: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1136
    iput p1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoDurationTimeMillis:I

    .line 1139
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->updateMediaControlDurationTextView()V

    goto :goto_0
.end method

.method private setVideoElapsedTimeMillis(I)V
    .locals 3
    .param p1, "timeMillis"    # I

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "setVideoElapsedTimeMillis() - Elapsed: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1153
    iput p1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoElapsedTimeMillis:I

    .line 1156
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->updateMediaControlElapsedTextView()V

    .line 1157
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->updateSeekBarPosition()V

    .line 1158
    return-void
.end method

.method private setVideoPlayerState(Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;)V
    .locals 4
    .param p1, "state"    # Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoPlayerState:Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;

    if-eq p1, v0, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "setVideoPlayerState() - State: "

    iget-object v2, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoPlayerState:Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;

    const-string v3, " -> "

    invoke-static {v0, v1, v2, v3, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1167
    iput-object p1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoPlayerState:Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;

    .line 1169
    :cond_0
    return-void
.end method

.method private shareMedia()V
    .locals 2

    .prologue
    .line 1176
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->hideControlsUIDelay()V

    .line 1179
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_Media:Lcom/oneplus/gallery/media/Media;

    if-nez v0, :cond_0

    .line 1187
    :goto_0
    return-void

    .line 1183
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->pause()Z

    .line 1186
    invoke-virtual {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_Media:Lcom/oneplus/gallery/media/Media;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/Gallery;->shareMedia(Lcom/oneplus/gallery/media/Media;)Z

    goto :goto_0
.end method

.method private showDetails()V
    .locals 2

    .prologue
    .line 1194
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->hideControlsUIDelay()V

    .line 1197
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_Media:Lcom/oneplus/gallery/media/Media;

    if-nez v0, :cond_0

    .line 1199
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "showDetails() - m_Media is null."

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    :goto_0
    return-void

    .line 1204
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->pause()Z

    .line 1207
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_MediaDetailsDialog:Lcom/oneplus/gallery/MediaDetailsDialog;

    if-eqz v0, :cond_1

    .line 1209
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "showDetails() - m_MediaDetailsDialog is not null."

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1214
    :cond_1
    new-instance v0, Lcom/oneplus/gallery/MediaDetailsDialog;

    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_Media:Lcom/oneplus/gallery/media/Media;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/gallery/MediaDetailsDialog;-><init>(Landroid/app/Activity;Lcom/oneplus/gallery/media/Media;)V

    iput-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_MediaDetailsDialog:Lcom/oneplus/gallery/MediaDetailsDialog;

    .line 1215
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_MediaDetailsDialog:Lcom/oneplus/gallery/MediaDetailsDialog;

    new-instance v1, Lcom/oneplus/gallery/VideoPlayerActivity$20;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/VideoPlayerActivity$20;-><init>(Lcom/oneplus/gallery/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/MediaDetailsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/oneplus/gallery/MediaDetailsDialog;

    .line 1224
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_MediaDetailsDialog:Lcom/oneplus/gallery/MediaDetailsDialog;

    invoke-virtual {v0}, Lcom/oneplus/gallery/MediaDetailsDialog;->show()V

    goto :goto_0
.end method

.method private start()V
    .locals 1

    .prologue
    .line 1231
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->start(Z)V

    .line 1232
    return-void
.end method

.method private start(Z)V
    .locals 3
    .param p1, "pauseImmediately"    # Z

    .prologue
    .line 1237
    if-nez p1, :cond_1

    .line 1239
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->requestAudioFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1241
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "start() - Cannot aquire audio focus"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    :cond_0
    :goto_0
    return-void

    .line 1247
    :cond_1
    sget-object v0, Lcom/oneplus/gallery/VideoPlayerActivity$29;->$SwitchMap$com$oneplus$gallery$VideoPlayerActivity$PlayerState:[I

    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoPlayerState:Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;

    invoke-virtual {v1}, Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1271
    :goto_1
    :pswitch_0
    if-eqz p1, :cond_0

    .line 1272
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->pause()Z

    goto :goto_0

    .line 1253
    :pswitch_1
    sget-object v0, Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;->PLAY:Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->setVideoPlayerState(Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;)V

    .line 1256
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 1257
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "start() - Position: "

    iget-object v2, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1260
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->updatePlayButtonIcon()V

    .line 1263
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->updateElapsedTime(Z)V

    .line 1266
    invoke-virtual {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_1

    .line 1247
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private stop()V
    .locals 2

    .prologue
    .line 1281
    sget-object v0, Lcom/oneplus/gallery/VideoPlayerActivity$29;->$SwitchMap$com$oneplus$gallery$VideoPlayerActivity$PlayerState:[I

    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoPlayerState:Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;

    invoke-virtual {v1}, Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1302
    :goto_0
    return-void

    .line 1286
    :pswitch_0
    sget-object v0, Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;->READY:Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->setVideoPlayerState(Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;)V

    .line 1289
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 1290
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "stop()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->updatePlayButtonIcon()V

    .line 1294
    const/16 v0, 0x2711

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 1295
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->setVideoElapsedTimeMillis(I)V

    goto :goto_0

    .line 1299
    :pswitch_1
    sget-object v0, Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;->IDLE:Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->setVideoPlayerState(Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;)V

    goto :goto_0

    .line 1281
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateCollectButtonSelection()V
    .locals 2

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_Media:Lcom/oneplus/gallery/media/Media;

    if-nez v0, :cond_0

    .line 1314
    :goto_0
    return-void

    .line 1313
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_CollectButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_Media:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v1}, Lcom/oneplus/gallery/media/Media;->isFavorite()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0
.end method

.method private updateCollectButtonVisibility()V
    .locals 2

    .prologue
    .line 1320
    iget-boolean v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_IsReadOnlyMode:Z

    if-eqz v0, :cond_0

    .line 1321
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_CollectButtonContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1324
    :goto_0
    return-void

    .line 1323
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_CollectButtonContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateControlsMargins(Z)V
    .locals 10
    .param p1, "visible"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1331
    iget-object v6, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_ActionBarContainer:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_FooterContainer:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_MediaControlContainer:Landroid/view/View;

    if-nez v6, :cond_1

    .line 1362
    :cond_0
    :goto_0
    return-void

    .line 1335
    :cond_1
    sget-object v6, Lcom/oneplus/gallery/GalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery/VideoPlayerActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/base/ScreenSize;

    .line 1336
    .local v5, "screenSize":Lcom/oneplus/base/ScreenSize;
    iget-object v6, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_ActionBarContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1337
    .local v1, "headerParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1338
    .local v0, "footerParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_MediaControlContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1339
    .local v3, "mediaParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->isSecureMode()Z

    move-result v6

    if-nez v6, :cond_2

    iget v2, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_MediaDefaultMarginBottom:I

    .line 1340
    .local v2, "marginBottom":I
    :goto_1
    if-eqz p1, :cond_5

    .line 1342
    invoke-virtual {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v6

    sget-object v8, Lcom/oneplus/gallery/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v6, v8}, Lcom/oneplus/gallery/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/oneplus/base/ScreenSize;->getNavigationBarSize()I

    move-result v4

    .line 1343
    .local v4, "naviHeight":I
    :goto_2
    invoke-virtual {v5}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v8

    if-le v6, v8, :cond_4

    .line 1345
    iget v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v8, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v6, v8, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1346
    iget v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v6, v8, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1347
    iget v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3, v6, v7, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .end local v2    # "marginBottom":I
    .end local v4    # "naviHeight":I
    :cond_2
    move v2, v7

    .line 1339
    goto :goto_1

    .restart local v2    # "marginBottom":I
    :cond_3
    move v4, v7

    .line 1342
    goto :goto_2

    .line 1351
    .restart local v4    # "naviHeight":I
    :cond_4
    iget v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v8, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v6, v8, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1352
    iget v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v6, v8, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1353
    iget v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int v9, v2, v4

    invoke-virtual {v3, v6, v8, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 1358
    .end local v4    # "naviHeight":I
    :cond_5
    iget v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v8, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v9, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v6, v8, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1359
    iget v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v6, v8, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1360
    iget v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3, v6, v8, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_0
.end method

.method private updateControlsVisibility(Z)V
    .locals 10
    .param p1, "animation"    # Z

    .prologue
    const/16 v7, 0x8

    const-wide/16 v8, 0x96

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1368
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v2, "updateControlsVisibility() - Visible: "

    iget-boolean v3, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_IsControlsVisible:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1371
    iget-boolean v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_IsControlsVisible:Z

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/VideoPlayerActivity;->setSystemUiVisibility(Z)V

    .line 1373
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->isSecureMode()Z

    move-result v0

    .line 1375
    .local v0, "isSecureMode":Z
    iget-boolean v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_IsControlsVisible:Z

    if-eqz v1, :cond_4

    .line 1377
    if-eqz p1, :cond_2

    .line 1379
    sget-object v1, Lcom/oneplus/gallery/VideoPlayerActivity$29;->$SwitchMap$com$oneplus$gallery$VideoPlayerActivity$ViewVisibilityState:[I

    iget-object v2, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_ControlsVisibilityState:Lcom/oneplus/gallery/VideoPlayerActivity$ViewVisibilityState;

    invoke-virtual {v2}, Lcom/oneplus/gallery/VideoPlayerActivity$ViewVisibilityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1419
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_PlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery/VideoPlayerActivity$21;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/VideoPlayerActivity$21;-><init>(Lcom/oneplus/gallery/VideoPlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1430
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_MediaControlContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery/VideoPlayerActivity$22;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/VideoPlayerActivity$22;-><init>(Lcom/oneplus/gallery/VideoPlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1441
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_ActionBarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery/VideoPlayerActivity$23;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/VideoPlayerActivity$23;-><init>(Lcom/oneplus/gallery/VideoPlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1452
    if-nez v0, :cond_1

    .line 1454
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery/VideoPlayerActivity$24;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/VideoPlayerActivity$24;-><init>(Lcom/oneplus/gallery/VideoPlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1466
    :cond_1
    sget-object v1, Lcom/oneplus/gallery/VideoPlayerActivity$ViewVisibilityState;->IN_ANIMATING:Lcom/oneplus/gallery/VideoPlayerActivity$ViewVisibilityState;

    iput-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_ControlsVisibilityState:Lcom/oneplus/gallery/VideoPlayerActivity$ViewVisibilityState;

    .line 1601
    :goto_1
    :pswitch_0
    return-void

    .line 1383
    :pswitch_1
    invoke-direct {p0, v6}, Lcom/oneplus/gallery/VideoPlayerActivity;->updatePlayButtonVisibility(I)V

    .line 1384
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_PlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 1387
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_MediaControlContainer:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1388
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_MediaControlContainer:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1391
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_ActionBarContainer:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1392
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_ActionBarContainer:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1395
    if-nez v0, :cond_0

    .line 1397
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1398
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    .line 1404
    :pswitch_2
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_PlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1405
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_MediaControlContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1406
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_ActionBarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1407
    if-nez v0, :cond_0

    .line 1409
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto/16 :goto_0

    .line 1471
    :cond_2
    invoke-direct {p0, v6}, Lcom/oneplus/gallery/VideoPlayerActivity;->updatePlayButtonVisibility(I)V

    .line 1472
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_PlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 1475
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_MediaControlContainer:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1476
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_MediaControlContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1479
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_ActionBarContainer:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1480
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_ActionBarContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1483
    if-nez v0, :cond_3

    .line 1485
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1486
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1490
    :cond_3
    sget-object v1, Lcom/oneplus/gallery/VideoPlayerActivity$ViewVisibilityState;->VISIBLE:Lcom/oneplus/gallery/VideoPlayerActivity$ViewVisibilityState;

    iput-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_ControlsVisibilityState:Lcom/oneplus/gallery/VideoPlayerActivity$ViewVisibilityState;

    .line 1491
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->hideControlsUIDelay()V

    goto/16 :goto_1

    .line 1497
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->cancelHideControlsUI()V

    .line 1500
    if-eqz p1, :cond_7

    .line 1502
    sget-object v1, Lcom/oneplus/gallery/VideoPlayerActivity$29;->$SwitchMap$com$oneplus$gallery$VideoPlayerActivity$ViewVisibilityState:[I

    iget-object v2, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_ControlsVisibilityState:Lcom/oneplus/gallery/VideoPlayerActivity$ViewVisibilityState;

    invoke-virtual {v2}, Lcom/oneplus/gallery/VideoPlayerActivity$ViewVisibilityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 1538
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_PlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery/VideoPlayerActivity$25;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/VideoPlayerActivity$25;-><init>(Lcom/oneplus/gallery/VideoPlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1549
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_MediaControlContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery/VideoPlayerActivity$26;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/VideoPlayerActivity$26;-><init>(Lcom/oneplus/gallery/VideoPlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1560
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_ActionBarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery/VideoPlayerActivity$27;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/VideoPlayerActivity$27;-><init>(Lcom/oneplus/gallery/VideoPlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1571
    if-nez v0, :cond_6

    .line 1573
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery/VideoPlayerActivity$28;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/VideoPlayerActivity$28;-><init>(Lcom/oneplus/gallery/VideoPlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1584
    :cond_6
    sget-object v1, Lcom/oneplus/gallery/VideoPlayerActivity$ViewVisibilityState;->OUT_ANIMATING:Lcom/oneplus/gallery/VideoPlayerActivity$ViewVisibilityState;

    iput-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_ControlsVisibilityState:Lcom/oneplus/gallery/VideoPlayerActivity$ViewVisibilityState;

    goto/16 :goto_1

    .line 1506
    :pswitch_3
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_PlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 1509
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_MediaControlContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1512
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_ActionBarContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1515
    if-nez v0, :cond_5

    .line 1517
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_2

    .line 1523
    :pswitch_4
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_PlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1524
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_MediaControlContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1525
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_ActionBarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1526
    if-nez v0, :cond_5

    .line 1528
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto/16 :goto_2

    .line 1589
    :cond_7
    invoke-direct {p0, v7}, Lcom/oneplus/gallery/VideoPlayerActivity;->updatePlayButtonVisibility(I)V

    .line 1590
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_MediaControlContainer:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1591
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_ActionBarContainer:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1592
    if-nez v0, :cond_8

    .line 1594
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1598
    :cond_8
    sget-object v1, Lcom/oneplus/gallery/VideoPlayerActivity$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/VideoPlayerActivity$ViewVisibilityState;

    iput-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_ControlsVisibilityState:Lcom/oneplus/gallery/VideoPlayerActivity$ViewVisibilityState;

    goto/16 :goto_1

    .line 1379
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1502
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private updateDeleteButtonVisibility()V
    .locals 2

    .prologue
    .line 1607
    iget-boolean v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_IsReadOnlyMode:Z

    if-eqz v0, :cond_0

    .line 1608
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_DeleteButtonContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1611
    :goto_0
    return-void

    .line 1610
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_DeleteButtonContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateElapsedTime(Z)V
    .locals 8
    .param p1, "isLoop"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1618
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    .line 1621
    .local v0, "elapsed":I
    iget v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoDurationTimeMillis:I

    add-int/lit16 v1, v1, 0x1f4

    if-le v0, v1, :cond_1

    .line 1623
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v2, "updateElapsedTime() - Elapsed time larger than video duration, finish"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/VideoPlayerActivity;->onVideoCompletion(Landroid/media/MediaPlayer;)V

    .line 1632
    :cond_0
    :goto_0
    return-void

    .line 1629
    :cond_1
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->setVideoElapsedTimeMillis(I)V

    .line 1630
    if-eqz p1, :cond_0

    .line 1631
    const/16 v2, 0x2711

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    move-object v1, p0

    move v4, v3

    invoke-static/range {v1 .. v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;J)Z

    goto :goto_0
.end method

.method private updateMediaControlDurationTextView()V
    .locals 4

    .prologue
    .line 1646
    iget v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoDurationTimeMillis:I

    add-int/lit16 v1, v1, 0x1f4

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-direct {p0, v2, v3}, Lcom/oneplus/gallery/VideoPlayerActivity;->getVideoDurationText(J)Ljava/lang/String;

    move-result-object v0

    .line 1647
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_MediaControlDurationTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1648
    return-void
.end method

.method private updateMediaControlElapsedTextView()V
    .locals 4

    .prologue
    .line 1638
    iget v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoElapsedTimeMillis:I

    add-int/lit16 v1, v1, 0x1f4

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-direct {p0, v2, v3}, Lcom/oneplus/gallery/VideoPlayerActivity;->getVideoDurationText(J)Ljava/lang/String;

    move-result-object v0

    .line 1639
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_MediaControlElapsedTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1640
    return-void
.end method

.method private updatePlayButtonIcon()V
    .locals 2

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoPlayerState:Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;

    sget-object v1, Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;->PLAY:Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;

    if-ne v0, v1, :cond_0

    .line 1656
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_PlayButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200af

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/VideoPlayerActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1659
    :goto_0
    return-void

    .line 1658
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_PlayButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200b0

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/VideoPlayerActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updatePlayButtonVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 1664
    iget-boolean v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_IsVideoCannotPlay:Z

    if-eqz v0, :cond_0

    .line 1666
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_PlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1667
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_PlayButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1673
    :goto_0
    return-void

    .line 1671
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_PlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSeekBarMax()V
    .locals 4

    .prologue
    .line 1678
    iget v2, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoDurationTimeMillis:I

    add-int/lit16 v2, v2, 0x1f4

    div-int/lit16 v0, v2, 0x3e8

    .line 1679
    .local v0, "durationSecs":I
    const/4 v1, 0x1

    .line 1680
    .local v1, "intervalPerSecond":I
    iget-object v2, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_MediaControlSeekBar:Landroid/widget/SeekBar;

    mul-int v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1681
    return-void
.end method

.method private updateSeekBarPosition()V
    .locals 3

    .prologue
    .line 1687
    const/16 v1, 0x3e8

    .line 1688
    .local v1, "timeMillisPerInterval":I
    iget v2, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoElapsedTimeMillis:I

    add-int/lit16 v2, v2, 0x1f4

    div-int v0, v2, v1

    .line 1689
    .local v0, "progress":I
    iget-object v2, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_MediaControlSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1690
    return-void
.end method

.method private updateViewWhileError()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1695
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_InvalidTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1696
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->updatePlayButtonVisibility(I)V

    .line 1697
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_MediaControlSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1698
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->finish(Z)V

    .line 269
    return-void
.end method

.method protected getBeamUris()[Landroid/net/Uri;
    .locals 3

    .prologue
    .line 288
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 289
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoUri:Landroid/net/Uri;

    aput-object v2, v0, v1

    .line 290
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLaunchType()Lcom/oneplus/gallery/ActivityLaunchType;
    .locals 1

    .prologue
    .line 349
    sget-object v0, Lcom/oneplus/gallery/ActivityLaunchType;->VIDEO_PLAYER:Lcom/oneplus/gallery/ActivityLaunchType;

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 312
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 327
    :goto_0
    invoke-super {p0, p1}, Lcom/oneplus/gallery/SingleMediaActivity;->handleMessage(Landroid/os/Message;)V

    .line 330
    :goto_1
    return-void

    .line 315
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->updateElapsedTime(Z)V

    goto :goto_1

    .line 319
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->setControlsVisibility(ZZ)V

    goto :goto_1

    .line 323
    :pswitch_2
    iput-boolean v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_DefaultVideoPlaying:Z

    .line 324
    invoke-direct {p0, v1}, Lcom/oneplus/gallery/VideoPlayerActivity;->pause(Z)Z

    goto :goto_0

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 652
    invoke-super {p0, p1}, Lcom/oneplus/gallery/SingleMediaActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 653
    invoke-virtual {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->updateControlsMargins(Z)V

    .line 654
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v10, 0x0

    .line 369
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery/SingleMediaActivity;->onCreate(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 372
    const/high16 v7, 0x10a0000

    invoke-virtual {p0, v7, v10}, Lcom/oneplus/gallery/VideoPlayerActivity;->overridePendingTransition(II)V

    .line 375
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->isSecureMode()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/high16 v8, 0x80000

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 380
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 381
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    const-string v7, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 383
    iget-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_ScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v1}, Lcom/oneplus/gallery/VideoPlayerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 387
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->checkReadOnlyMode()V

    .line 390
    invoke-virtual {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/oneplus/gallery/Gallery;->setStatusBarColor(I)Lcom/oneplus/base/Handle;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_StatusBarColorHandle:Lcom/oneplus/base/Handle;

    .line 391
    invoke-virtual {p0, v10}, Lcom/oneplus/gallery/VideoPlayerActivity;->setStatusBarStyle(Z)Lcom/oneplus/base/Handle;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;

    .line 394
    const v7, 0x7f030004

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 395
    .local v4, "mainContainer":Landroid/view/View;
    invoke-virtual {p0, v4}, Lcom/oneplus/gallery/VideoPlayerActivity;->setContentView(Landroid/view/View;)V

    .line 398
    invoke-virtual {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 399
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoUri:Landroid/net/Uri;

    .line 401
    iget-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v8, "onCreate() - Uri: "

    iget-object v9, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoUri:Landroid/net/Uri;

    invoke-static {v7, v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 404
    invoke-virtual {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->enableBeam()V

    .line 407
    if-eqz p1, :cond_1

    .line 409
    const-string v7, "com.oneplus.gallery.VideoPlayerActivity.currentPosition"

    invoke-virtual {p1, v7, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_DefaultVideoElapsedTimeMillis:I

    .line 410
    iput-boolean v10, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_DefaultVideoPlaying:Z

    .line 411
    iget-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreate() - activity is recreate: m_DefaultVideoElapsedTimeMillis:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_DefaultVideoElapsedTimeMillis:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v2

    .line 416
    .local v2, "gallery":Lcom/oneplus/gallery/Gallery;
    sget-object v7, Lcom/oneplus/gallery/Gallery;->PROP_HAS_DIALOG:Lcom/oneplus/base/PropertyKey;

    new-instance v8, Lcom/oneplus/gallery/VideoPlayerActivity$5;

    invoke-direct {v8, p0}, Lcom/oneplus/gallery/VideoPlayerActivity$5;-><init>(Lcom/oneplus/gallery/VideoPlayerActivity;)V

    invoke-virtual {v2, v7, v8}, Lcom/oneplus/gallery/Gallery;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 429
    sget-object v7, Lcom/oneplus/gallery/Gallery;->PROP_IS_SHARING_MEDIA:Lcom/oneplus/base/PropertyKey;

    new-instance v8, Lcom/oneplus/gallery/VideoPlayerActivity$6;

    invoke-direct {v8, p0}, Lcom/oneplus/gallery/VideoPlayerActivity$6;-><init>(Lcom/oneplus/gallery/VideoPlayerActivity;)V

    invoke-virtual {v2, v7, v8}, Lcom/oneplus/gallery/Gallery;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 442
    new-instance v7, Landroid/view/GestureDetector;

    new-instance v8, Lcom/oneplus/gallery/VideoPlayerActivity$7;

    invoke-direct {v8, p0}, Lcom/oneplus/gallery/VideoPlayerActivity$7;-><init>(Lcom/oneplus/gallery/VideoPlayerActivity;)V

    invoke-direct {v7, p0, v8}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_GestureDetector:Landroid/view/GestureDetector;

    .line 470
    const v7, 0x7f060019

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_InvalidTextView:Landroid/widget/TextView;

    .line 473
    const v7, 0x7f060016

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/VideoView;

    iput-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoView:Landroid/widget/VideoView;

    .line 474
    iget-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoView:Landroid/widget/VideoView;

    invoke-virtual {v7}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v7

    iget-object v8, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v7, v8}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 475
    iget-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoView:Landroid/widget/VideoView;

    new-instance v8, Lcom/oneplus/gallery/VideoPlayerActivity$8;

    invoke-direct {v8, p0}, Lcom/oneplus/gallery/VideoPlayerActivity$8;-><init>(Lcom/oneplus/gallery/VideoPlayerActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 483
    iget-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoView:Landroid/widget/VideoView;

    new-instance v8, Lcom/oneplus/gallery/VideoPlayerActivity$9;

    invoke-direct {v8, p0}, Lcom/oneplus/gallery/VideoPlayerActivity$9;-><init>(Lcom/oneplus/gallery/VideoPlayerActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 491
    iget-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoView:Landroid/widget/VideoView;

    new-instance v8, Lcom/oneplus/gallery/VideoPlayerActivity$10;

    invoke-direct {v8, p0}, Lcom/oneplus/gallery/VideoPlayerActivity$10;-><init>(Lcom/oneplus/gallery/VideoPlayerActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 503
    invoke-virtual {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->isInitialPermissionsRequestCompleted()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 505
    iget-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoView:Landroid/widget/VideoView;

    iget-object v8, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 513
    :goto_0
    const v7, 0x7f060017

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_TouchReceiver:Landroid/view/View;

    .line 514
    iget-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_TouchReceiver:Landroid/view/View;

    new-instance v8, Lcom/oneplus/gallery/VideoPlayerActivity$11;

    invoke-direct {v8, p0}, Lcom/oneplus/gallery/VideoPlayerActivity$11;-><init>(Lcom/oneplus/gallery/VideoPlayerActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 536
    const v7, 0x7f060018

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_PlayButton:Landroid/widget/ImageButton;

    .line 537
    iget-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_PlayButton:Landroid/widget/ImageButton;

    new-instance v8, Lcom/oneplus/gallery/VideoPlayerActivity$12;

    invoke-direct {v8, p0}, Lcom/oneplus/gallery/VideoPlayerActivity$12;-><init>(Lcom/oneplus/gallery/VideoPlayerActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 547
    const v7, 0x7f06001a

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_MediaControlContainer:Landroid/view/View;

    .line 548
    iget-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_MediaControlContainer:Landroid/view/View;

    const v8, 0x7f06001d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_MediaControlDurationTextView:Landroid/widget/TextView;

    .line 549
    iget-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_MediaControlContainer:Landroid/view/View;

    const v8, 0x7f06001b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_MediaControlElapsedTextView:Landroid/widget/TextView;

    .line 550
    iget-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_MediaControlContainer:Landroid/view/View;

    const v8, 0x7f06001c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SeekBar;

    iput-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_MediaControlSeekBar:Landroid/widget/SeekBar;

    .line 551
    iget-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_MediaControlSeekBar:Landroid/widget/SeekBar;

    new-instance v8, Lcom/oneplus/gallery/VideoPlayerActivity$13;

    invoke-direct {v8, p0}, Lcom/oneplus/gallery/VideoPlayerActivity$13;-><init>(Lcom/oneplus/gallery/VideoPlayerActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 571
    invoke-virtual {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f050106

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_MediaDefaultMarginBottom:I

    .line 574
    const v7, 0x7f06001e

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_ActionBarContainer:Landroid/view/View;

    .line 575
    iget-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_ActionBarContainer:Landroid/view/View;

    const v8, 0x7f06001f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    .line 576
    .local v0, "actionBar":Landroid/widget/Toolbar;
    const v7, 0x7f0b0002

    invoke-virtual {v0, v7}, Landroid/widget/Toolbar;->inflateMenu(I)V

    .line 577
    const v7, 0x7f020060

    invoke-virtual {v0, v7}, Landroid/widget/Toolbar;->setNavigationIcon(I)V

    .line 578
    new-instance v7, Lcom/oneplus/gallery/VideoPlayerActivity$14;

    invoke-direct {v7, p0}, Lcom/oneplus/gallery/VideoPlayerActivity$14;-><init>(Lcom/oneplus/gallery/VideoPlayerActivity;)V

    invoke-virtual {v0, v7}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 587
    new-instance v7, Lcom/oneplus/gallery/VideoPlayerActivity$15;

    invoke-direct {v7, p0}, Lcom/oneplus/gallery/VideoPlayerActivity$15;-><init>(Lcom/oneplus/gallery/VideoPlayerActivity;)V

    invoke-virtual {v0, v7}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    .line 602
    sget-object v7, Lcom/oneplus/gallery/GalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery/VideoPlayerActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/base/ScreenSize;

    .line 603
    .local v6, "screenSize":Lcom/oneplus/base/ScreenSize;
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 604
    .local v5, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v6}, Lcom/oneplus/base/ScreenSize;->getStatusBarSize()I

    move-result v7

    invoke-virtual {v5, v10, v7, v10, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 607
    const v7, 0x7f060020

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_FooterContainer:Landroid/view/View;

    .line 608
    const v7, 0x7f060021

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_ShareButton:Landroid/widget/ImageButton;

    .line 609
    iget-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_ShareButton:Landroid/widget/ImageButton;

    new-instance v8, Lcom/oneplus/gallery/VideoPlayerActivity$16;

    invoke-direct {v8, p0}, Lcom/oneplus/gallery/VideoPlayerActivity$16;-><init>(Lcom/oneplus/gallery/VideoPlayerActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 617
    const v7, 0x7f060022

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_CollectButtonContainer:Landroid/view/View;

    .line 618
    const v7, 0x7f060023

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_CollectButton:Landroid/widget/ImageButton;

    .line 619
    iget-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_CollectButton:Landroid/widget/ImageButton;

    new-instance v8, Lcom/oneplus/gallery/VideoPlayerActivity$17;

    invoke-direct {v8, p0}, Lcom/oneplus/gallery/VideoPlayerActivity$17;-><init>(Lcom/oneplus/gallery/VideoPlayerActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 628
    const v7, 0x7f060024

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_DeleteButtonContainer:Landroid/view/View;

    .line 629
    const v7, 0x7f060025

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_DeleteButton:Landroid/widget/ImageButton;

    .line 630
    iget-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_DeleteButton:Landroid/widget/ImageButton;

    new-instance v8, Lcom/oneplus/gallery/VideoPlayerActivity$18;

    invoke-direct {v8, p0}, Lcom/oneplus/gallery/VideoPlayerActivity$18;-><init>(Lcom/oneplus/gallery/VideoPlayerActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    iget-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_CurrentMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    if-nez v7, :cond_2

    .line 641
    sget-object v7, Lcom/oneplus/gallery/Gallery;->PROP_CURRENT_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v7}, Lcom/oneplus/gallery/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/gallery/media/MediaSet;

    iput-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_CurrentMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    .line 644
    :cond_2
    invoke-virtual {p0, v10}, Lcom/oneplus/gallery/VideoPlayerActivity;->setSystemUiVisibility(Z)V

    .line 645
    invoke-direct {p0, v10, v10}, Lcom/oneplus/gallery/VideoPlayerActivity;->setControlsVisibility(ZZ)V

    .line 646
    invoke-direct {p0, v10}, Lcom/oneplus/gallery/VideoPlayerActivity;->updateControlsMargins(Z)V

    .line 647
    return-void

    .line 509
    .end local v0    # "actionBar":Landroid/widget/Toolbar;
    .end local v5    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6    # "screenSize":Lcom/oneplus/base/ScreenSize;
    :cond_3
    iget-object v7, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v8, "onCreate() - requesting permission"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 660
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->stop()V

    .line 666
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->isSecureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_ScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/VideoPlayerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 670
    :cond_0
    invoke-super {p0}, Lcom/oneplus/gallery/SingleMediaActivity;->onDestroy()V

    .line 673
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_StatusBarColorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_StatusBarColorHandle:Lcom/oneplus/base/Handle;

    .line 674
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;

    .line 675
    return-void
.end method

.method protected onInitialPermissionsRequestCompleted([Ljava/lang/String;[I)Z
    .locals 5
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I

    .prologue
    const/4 v2, 0x0

    .line 683
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery/SingleMediaActivity;->onInitialPermissionsRequestCompleted([Ljava/lang/String;[I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 684
    const/4 v3, 0x0

    .line 700
    :goto_0
    return v3

    .line 687
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->getMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v3

    if-nez v3, :cond_2

    .line 689
    invoke-virtual {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 690
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 691
    .local v0, "contentUri":Landroid/net/Uri;
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 692
    .local v2, "mimeType":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/oneplus/gallery/VideoPlayerActivity;->obtainMedia(Landroid/net/Uri;Ljava/lang/String;)Lcom/oneplus/base/Handle;

    .line 693
    iget-object v3, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v4, "onInitialPermissionsRequestCompleted() - call obtainMedia."

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->prepare()V

    .line 700
    const/4 v3, 0x1

    goto :goto_0

    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_3
    move-object v0, v2

    .line 690
    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 708
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown() - keyCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    .line 712
    .local v0, "repeatCount":I
    if-nez v0, :cond_0

    .line 713
    sparse-switch p1, :sswitch_data_0

    .line 728
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery/SingleMediaActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 719
    :sswitch_0
    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoPlayerState:Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;

    sget-object v2, Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;->PLAY:Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;

    if-ne v1, v2, :cond_1

    .line 720
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->pause()Z

    .line 723
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 722
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->start()V

    goto :goto_1

    .line 713
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMediaObtained(Lcom/oneplus/gallery/media/Media;)V
    .locals 3
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 737
    invoke-super {p0, p1}, Lcom/oneplus/gallery/SingleMediaActivity;->onMediaObtained(Lcom/oneplus/gallery/media/Media;)V

    .line 740
    instance-of v0, p1, Lcom/oneplus/gallery/media/VideoMedia;

    if-nez v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaObtained() - Invalid media : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    invoke-virtual {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->finish()V

    .line 752
    :goto_0
    return-void

    .line 748
    :cond_0
    iput-object p1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_Media:Lcom/oneplus/gallery/media/Media;

    .line 751
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->updateCollectButtonSelection()V

    goto :goto_0
.end method

.method protected onNavigationBarVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 760
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/VideoPlayerActivity;->updateControlsMargins(Z)V

    .line 761
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 769
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    sget-object v0, Lcom/oneplus/gallery/VideoPlayerActivity$29;->$SwitchMap$com$oneplus$gallery$VideoPlayerActivity$PlayerState:[I

    iget-object v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoPlayerState:Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;

    invoke-virtual {v1}, Lcom/oneplus/gallery/VideoPlayerActivity$PlayerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 788
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->abandonAudioFocus()V

    .line 791
    invoke-super {p0}, Lcom/oneplus/gallery/SingleMediaActivity;->onPause()V

    .line 792
    return-void

    .line 775
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause() - Video is not prepared yet, cancel preparation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoView:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_0

    .line 781
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_DefaultVideoElapsedTimeMillis:I

    .line 783
    const/16 v0, 0x2713

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-static {p0, v0, v1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    goto :goto_0

    .line 772
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 814
    const/16 v0, 0x2713

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 817
    invoke-super {p0}, Lcom/oneplus/gallery/SingleMediaActivity;->onResume()V

    .line 819
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    iget-boolean v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_DefaultVideoPlaying:Z

    if-nez v0, :cond_0

    .line 823
    invoke-direct {p0, v2, v2}, Lcom/oneplus/gallery/VideoPlayerActivity;->setControlsVisibility(ZZ)V

    .line 825
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 832
    .local p2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "com.oneplus.gallery.VideoPlayerActivity.currentPosition"

    iget v1, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_DefaultVideoElapsedTimeMillis:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 833
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery/SingleMediaActivity;->onSaveInstanceState(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 834
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 876
    invoke-super {p0}, Lcom/oneplus/gallery/SingleMediaActivity;->onStart()V

    .line 879
    invoke-virtual {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery/VideoPlayerActivity$19;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/VideoPlayerActivity$19;-><init>(Lcom/oneplus/gallery/VideoPlayerActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 887
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 894
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    iget-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_VideoView:Landroid/widget/VideoView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setBackgroundColor(I)V

    .line 900
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_IsControlsVisible:Z

    .line 901
    sget-object v0, Lcom/oneplus/gallery/VideoPlayerActivity$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/VideoPlayerActivity$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery/VideoPlayerActivity;->m_ControlsVisibilityState:Lcom/oneplus/gallery/VideoPlayerActivity$ViewVisibilityState;

    .line 904
    invoke-direct {p0}, Lcom/oneplus/gallery/VideoPlayerActivity;->cancelHideControlsUI()V

    .line 907
    invoke-super {p0}, Lcom/oneplus/gallery/SingleMediaActivity;->onStop()V

    .line 908
    return-void
.end method
