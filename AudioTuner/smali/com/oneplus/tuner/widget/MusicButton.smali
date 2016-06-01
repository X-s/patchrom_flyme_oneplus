.class public Lcom/oneplus/tuner/widget/MusicButton;
.super Landroid/widget/ImageButton;
.source "MusicButton.java"

# interfaces
.implements Lcom/oppo/music/MusicPlayer$IMusicStateChangeListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicButton"


# instance fields
.field private mIsPlaying:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/oneplus/tuner/widget/MusicButton;->init(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/tuner/widget/MusicButton;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/widget/MusicButton;

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/oneplus/tuner/widget/MusicButton;->mIsPlaying:Z

    return v0
.end method

.method private stateChange()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/oneplus/tuner/widget/MusicButton;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 111
    :cond_0
    return-void
.end method


# virtual methods
.method public OnMusicPlaybackCompleted()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public OnMusicQueueChanged()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v1, Lcom/oneplus/tuner/widget/MusicButton$1;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/widget/MusicButton$1;-><init>(Lcom/oneplus/tuner/widget/MusicButton;)V

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/widget/MusicButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 48
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/CommunityApplication;

    .line 55
    .local v0, "app":Lcom/oppo/tribune/CommunityApplication;
    invoke-direct {p0}, Lcom/oneplus/tuner/widget/MusicButton;->stateChange()V

    .line 67
    return-void
.end method

.method public onMetaChanged()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public onMusicServiceConnected()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public onMusicServiceDisconnected()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public onPlayStatechanged()V
    .locals 2

    .prologue
    .line 71
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/tuner/widget/MusicButton;->mIsPlaying:Z

    .line 74
    iget-boolean v1, p0, Lcom/oneplus/tuner/widget/MusicButton;->mIsPlaying:Z

    if-eqz v1, :cond_0

    .line 75
    invoke-static {}, Lcom/waves/maxxaudio/MaxxAudioManager;->getInstance()Lcom/waves/maxxaudio/MaxxAudioManager;

    move-result-object v0

    .line 76
    .local v0, "manager":Lcom/waves/maxxaudio/MaxxAudioManager;
    invoke-virtual {v0}, Lcom/waves/maxxaudio/MaxxAudioManager;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/waves/maxxaudio/MaxxAudioManager;->setEnabled(Z)V

    .line 79
    .end local v0    # "manager":Lcom/waves/maxxaudio/MaxxAudioManager;
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/tuner/widget/MusicButton;->stateChange()V

    .line 80
    return-void
.end method
