.class public Lcom/android/keyguard/KeyguardTransportControlView;
.super Landroid/widget/FrameLayout;
.source "KeyguardTransportControlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardTransportControlView$SavedState;,
        Lcom/android/keyguard/KeyguardTransportControlView$Metadata;,
        Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;,
        Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBadge:Landroid/widget/ImageView;

.field private mBtnNext:Landroid/widget/ImageView;

.field private mBtnPlay:Landroid/widget/ImageView;

.field private mBtnPrev:Landroid/widget/ImageView;

.field private mCurrentPlayState:I

.field private mFormat:Ljava/text/DateFormat;

.field private final mFutureSeekRunnable:Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;

.field private mInfoContainer:Landroid/view/ViewGroup;

.field private mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

.field private final mMetadataChangeTransition:Landroid/transition/TransitionSet;

.field private mMetadataContainer:Landroid/view/ViewGroup;

.field private final mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mPopulateMetadataWhenAttached:Landroid/media/RemoteController$MetadataEditor;

.field private mRCClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

.field private mRemoteController:Landroid/media/RemoteController;

.field private final mResetToMetadata:Ljava/lang/Runnable;

.field private mSeekEnabled:Z

.field private mTempDate:Ljava/util/Date;

.field private mTrackArtistAlbum:Landroid/widget/TextView;

.field private mTrackTitle:Landroid/widget/TextView;

.field private mTransientSeek:Landroid/view/View;

.field private mTransientSeekBar:Landroid/widget/SeekBar;

.field private mTransientSeekTimeElapsed:Landroid/widget/TextView;

.field private mTransientSeekTimeTotal:Landroid/widget/TextView;

.field private final mTransportCommandListener:Landroid/view/View$OnClickListener;

.field mTransportControlCallback:Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;

.field private mTransportControlFlags:I

.field private final mTransportShowSeekBarListener:Landroid/view/View$OnLongClickListener;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mUpdateSeekBars:Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 271
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    new-instance v5, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;-><init>(Lcom/android/keyguard/KeyguardTransportControlView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    .line 93
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTempDate:Ljava/util/Date;

    .line 98
    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mPopulateMetadataWhenAttached:Landroid/media/RemoteController$MetadataEditor;

    .line 100
    new-instance v5, Lcom/android/keyguard/KeyguardTransportControlView$1;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardTransportControlView$1;-><init>(Lcom/android/keyguard/KeyguardTransportControlView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRCClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 156
    new-instance v5, Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;

    invoke-direct {v5, p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;-><init>(Lcom/android/keyguard/KeyguardTransportControlView;Lcom/android/keyguard/KeyguardTransportControlView$1;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateSeekBars:Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;

    .line 158
    new-instance v5, Lcom/android/keyguard/KeyguardTransportControlView$2;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardTransportControlView$2;-><init>(Lcom/android/keyguard/KeyguardTransportControlView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mResetToMetadata:Ljava/lang/Runnable;

    .line 164
    new-instance v5, Lcom/android/keyguard/KeyguardTransportControlView$3;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardTransportControlView$3;-><init>(Lcom/android/keyguard/KeyguardTransportControlView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportCommandListener:Landroid/view/View$OnClickListener;

    .line 181
    new-instance v5, Lcom/android/keyguard/KeyguardTransportControlView$4;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardTransportControlView$4;-><init>(Lcom/android/keyguard/KeyguardTransportControlView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportShowSeekBarListener:Landroid/view/View$OnLongClickListener;

    .line 228
    new-instance v5, Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;-><init>(Lcom/android/keyguard/KeyguardTransportControlView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mFutureSeekRunnable:Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;

    .line 230
    new-instance v5, Lcom/android/keyguard/KeyguardTransportControlView$5;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardTransportControlView$5;-><init>(Lcom/android/keyguard/KeyguardTransportControlView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 260
    new-instance v5, Lcom/android/keyguard/KeyguardTransportControlView$6;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardTransportControlView$6;-><init>(Lcom/android/keyguard/KeyguardTransportControlView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 273
    new-instance v5, Landroid/media/AudioManager;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mAudioManager:Landroid/media/AudioManager;

    .line 274
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mCurrentPlayState:I

    .line 275
    new-instance v5, Landroid/media/RemoteController;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRCClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    invoke-direct {v5, p1, v6}, Landroid/media/RemoteController;-><init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    .line 277
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 278
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 279
    .local v0, "dim":I
    iget-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v5, v7, v0, v0}, Landroid/media/RemoteController;->setArtworkConfiguration(ZII)Z

    .line 281
    new-instance v3, Landroid/transition/ChangeText;

    invoke-direct {v3}, Landroid/transition/ChangeText;-><init>()V

    .line 282
    .local v3, "tc":Landroid/transition/ChangeText;
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Landroid/transition/ChangeText;->setChangeBehavior(I)Landroid/transition/ChangeText;

    .line 283
    new-instance v2, Landroid/transition/TransitionSet;

    invoke-direct {v2}, Landroid/transition/TransitionSet;-><init>()V

    .line 284
    .local v2, "inner":Landroid/transition/TransitionSet;
    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v5

    new-instance v6, Landroid/transition/ChangeBounds;

    invoke-direct {v6}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {v5, v6}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 285
    new-instance v4, Landroid/transition/TransitionSet;

    invoke-direct {v4}, Landroid/transition/TransitionSet;-><init>()V

    .line 286
    .local v4, "tg":Landroid/transition/TransitionSet;
    new-instance v5, Landroid/transition/Fade;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v5

    new-instance v6, Landroid/transition/Fade;

    invoke-direct {v6, v7}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 288
    invoke-virtual {v4, v7}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 289
    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    .line 290
    iput-object v4, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadataChangeTransition:Landroid/transition/TransitionSet;

    .line 291
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardTransportControlView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardTransportControlView;->updatePlayPauseState(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardTransportControlView;)Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateSeekBars:Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardTransportControlView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardTransportControlView;->sendMediaButtonClick(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardTransportControlView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mSeekEnabled:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardTransportControlView;)Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mFutureSeekRunnable:Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardTransportControlView;)Ljava/util/Date;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTempDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardTransportControlView;)Ljava/text/DateFormat;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardTransportControlView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeekTimeElapsed:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardTransportControlView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardTransportControlView;->setEnableMarquee(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardTransportControlView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardTransportControlView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;

    .prologue
    .line 60
    iget v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mCurrentPlayState:I

    return v0
.end method

.method static synthetic access$400(I)Z
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 60
    invoke-static {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->playbackPositionShouldMove(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardTransportControlView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardTransportControlView;->updateTransportControls(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardTransportControlView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPrev:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardTransportControlView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnNext:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardTransportControlView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    return-object v0
.end method

.method private static final playbackPositionShouldMove(I)Z
    .locals 1
    .param p0, "playstate"    # I

    .prologue
    .line 212
    packed-switch p0, :pswitch_data_0

    .line 224
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 219
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private populateMetadata()V
    .locals 13

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x1

    .line 466
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->isLaidOut()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadataContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    .line 467
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadataContainer:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadataChangeTransition:Landroid/transition/TransitionSet;

    invoke-static {v7, v9}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 470
    :cond_0
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v7}, Landroid/media/RemoteController;->getRemoteControlClientPackageName()Ljava/lang/String;

    move-result-object v3

    .line 471
    .local v3, "remoteClientPackage":Ljava/lang/String;
    const/4 v0, 0x0

    .line 473
    .local v0, "badgeIcon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 477
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardTransportControlView;->setBadgeIcon(Landroid/graphics/drawable/Drawable;)V

    .line 478
    iget-object v9, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTrackTitle:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1800(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1800(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1700(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 483
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_1

    .line 484
    const-string v7, " - "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    :cond_1
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1700(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    :cond_2
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1900(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 489
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_3

    .line 490
    const-string v7, " - "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    :cond_3
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1900(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 496
    .local v6, "trackArtistAlbum":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTrackArtistAlbum:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .end local v6    # "trackArtistAlbum":Ljava/lang/String;
    :goto_2
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2000(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_9

    .line 500
    invoke-virtual {p0, v12}, Lcom/android/keyguard/KeyguardTransportControlView;->setSeekBarsEnabled(Z)V

    .line 501
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2000(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/android/keyguard/KeyguardTransportControlView;->setSeekBarDuration(J)V

    .line 505
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2000(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    cmp-long v7, v8, v10

    if-ltz v7, :cond_7

    .line 506
    const-string v5, "DDD kk mm ss"

    .line 512
    .local v5, "skeleton":Ljava/lang/String;
    :goto_3
    new-instance v7, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v8, v5}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mFormat:Ljava/text/DateFormat;

    .line 515
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mFormat:Ljava/text/DateFormat;

    const-string v8, "GMT+0"

    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 520
    .end local v5    # "skeleton":Ljava/lang/String;
    :goto_4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2100(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchSetBackground(Landroid/graphics/Bitmap;)V

    .line 521
    iget v2, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportControlFlags:I

    .line 522
    .local v2, "flags":I
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPrev:Landroid/widget/ImageView;

    invoke-static {v7, v2, v12}, Lcom/android/keyguard/KeyguardTransportControlView;->setVisibilityBasedOnFlag(Landroid/view/View;II)V

    .line 523
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnNext:Landroid/widget/ImageView;

    const/16 v8, 0x80

    invoke-static {v7, v2, v8}, Lcom/android/keyguard/KeyguardTransportControlView;->setVisibilityBasedOnFlag(Landroid/view/View;II)V

    .line 524
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    const/16 v8, 0x3c

    invoke-static {v7, v2, v8}, Lcom/android/keyguard/KeyguardTransportControlView;->setVisibilityBasedOnFlag(Landroid/view/View;II)V

    .line 530
    iget v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mCurrentPlayState:I

    invoke-direct {p0, v7}, Lcom/android/keyguard/KeyguardTransportControlView;->updatePlayPauseState(I)V

    .line 531
    return-void

    .line 474
    .end local v2    # "flags":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 475
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "TransportControlView"

    const-string v9, "Couldn\'t get remote control client package icon"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    move-object v7, v8

    .line 478
    goto/16 :goto_1

    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v6    # "trackArtistAlbum":Ljava/lang/String;
    :cond_6
    move-object v6, v8

    .line 496
    goto/16 :goto_2

    .line 507
    .end local v6    # "trackArtistAlbum":Ljava/lang/String;
    :cond_7
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2000(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)J

    move-result-wide v8

    const-wide/32 v10, 0x36ee80

    cmp-long v7, v8, v10

    if-ltz v7, :cond_8

    .line 508
    const-string v5, "kk mm ss"

    .restart local v5    # "skeleton":Ljava/lang/String;
    goto :goto_3

    .line 510
    .end local v5    # "skeleton":Ljava/lang/String;
    :cond_8
    const-string v5, "mm ss"

    .restart local v5    # "skeleton":Ljava/lang/String;
    goto :goto_3

    .line 517
    .end local v5    # "skeleton":Ljava/lang/String;
    :cond_9
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardTransportControlView;->setSeekBarsEnabled(Z)V

    goto :goto_4
.end method

.method private sendMediaButtonClick(I)V
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/media/RemoteController;->sendMediaKeyEvent(Landroid/view/KeyEvent;)Z

    .line 708
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/media/RemoteController;->sendMediaKeyEvent(Landroid/view/KeyEvent;)Z

    .line 710
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportControlCallback:Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;->userActivity()V

    .line 711
    return-void
.end method

.method private setEnableMarquee(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTrackTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTrackTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTrackArtistAlbum:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTrackTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 319
    :cond_1
    return-void
.end method

.method private static setVisibilityBasedOnFlag(Landroid/view/View;II)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "flags"    # I
    .param p2, "flag"    # I

    .prologue
    .line 598
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    .line 599
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 603
    :goto_0
    return-void

    .line 601
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updatePlayPauseState(I)V
    .locals 8
    .param p1, "state"    # I

    .prologue
    .line 608
    iget v3, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mCurrentPlayState:I

    if-ne p1, v3, :cond_0

    .line 644
    :goto_0
    return-void

    .line 613
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 633
    sget v2, Lcom/android/keyguard/R$drawable;->ic_media_play:I

    .line 634
    .local v2, "imageResId":I
    sget v1, Lcom/android/keyguard/R$string;->keyguard_transport_play_description:I

    .line 638
    .local v1, "imageDescId":I
    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J
    invoke-static {v3}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2000(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    const/4 v0, 0x1

    .line 639
    .local v0, "clientSupportsSeek":Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardTransportControlView;->setSeekBarsEnabled(Z)V

    .line 641
    iget-object v3, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 642
    iget-object v3, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 643
    iput p1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mCurrentPlayState:I

    goto :goto_0

    .line 615
    .end local v0    # "clientSupportsSeek":Z
    .end local v1    # "imageDescId":I
    .end local v2    # "imageResId":I
    :sswitch_0
    sget v2, Lcom/android/keyguard/R$drawable;->stat_sys_warning:I

    .line 618
    .restart local v2    # "imageResId":I
    sget v1, Lcom/android/keyguard/R$string;->keyguard_transport_play_description:I

    .line 619
    .restart local v1    # "imageDescId":I
    goto :goto_1

    .line 622
    .end local v1    # "imageDescId":I
    .end local v2    # "imageResId":I
    :sswitch_1
    sget v2, Lcom/android/keyguard/R$drawable;->ic_media_pause:I

    .line 623
    .restart local v2    # "imageResId":I
    sget v1, Lcom/android/keyguard/R$string;->keyguard_transport_pause_description:I

    .line 624
    .restart local v1    # "imageDescId":I
    goto :goto_1

    .line 627
    .end local v1    # "imageDescId":I
    .end local v2    # "imageResId":I
    :sswitch_2
    sget v2, Lcom/android/keyguard/R$drawable;->ic_media_stop:I

    .line 628
    .restart local v2    # "imageResId":I
    sget v1, Lcom/android/keyguard/R$string;->keyguard_transport_stop_description:I

    .line 629
    .restart local v1    # "imageDescId":I
    goto :goto_1

    .line 638
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 613
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x8 -> :sswitch_2
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method private updateTransportControls(I)V
    .locals 1
    .param p1, "transportControlFlags"    # I

    .prologue
    .line 294
    iput p1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportControlFlags:I

    .line 295
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardTransportControlView;->setSeekBarsEnabled(Z)V

    .line 297
    return-void

    .line 295
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method cancelResetToMetadata()V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mResetToMetadata:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardTransportControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 586
    return-void
.end method

.method clearMetadata()V
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mPopulateMetadataWhenAttached:Landroid/media/RemoteController$MetadataEditor;

    .line 441
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->clear()V

    .line 442
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->populateMetadata()V

    .line 443
    return-void
.end method

.method delayResetToMetadata()V
    .locals 4

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mResetToMetadata:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardTransportControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 581
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mResetToMetadata:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/KeyguardTransportControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 582
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 350
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 352
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mPopulateMetadataWhenAttached:Landroid/media/RemoteController$MetadataEditor;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mPopulateMetadataWhenAttached:Landroid/media/RemoteController$MetadataEditor;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardTransportControlView;->updateMetadata(Landroid/media/RemoteController$MetadataEditor;)V

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mPopulateMetadataWhenAttached:Landroid/media/RemoteController$MetadataEditor;

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->clear()V

    .line 358
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerRemoteController(Landroid/media/RemoteController;)Z

    .line 359
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 360
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 364
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 365
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 366
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 367
    .local v0, "dim":I
    iget-object v2, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v0}, Landroid/media/RemoteController;->setArtworkConfiguration(ZII)Z

    .line 368
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 373
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 375
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteController(Landroid/media/RemoteController;)V

    .line 376
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 377
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->clear()V

    .line 378
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateSeekBars:Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardTransportControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 379
    return-void
.end method

.method public onFinishInflate()V
    .locals 8

    .prologue
    .line 323
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 324
    sget v6, Lcom/android/keyguard/R$id;->info_container:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mInfoContainer:Landroid/view/ViewGroup;

    .line 325
    sget v6, Lcom/android/keyguard/R$id;->metadata_container:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadataContainer:Landroid/view/ViewGroup;

    .line 326
    sget v6, Lcom/android/keyguard/R$id;->badge:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBadge:Landroid/widget/ImageView;

    .line 327
    sget v6, Lcom/android/keyguard/R$id;->title:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTrackTitle:Landroid/widget/TextView;

    .line 328
    sget v6, Lcom/android/keyguard/R$id;->artist_album:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTrackArtistAlbum:Landroid/widget/TextView;

    .line 329
    sget v6, Lcom/android/keyguard/R$id;->transient_seek:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    .line 330
    sget v6, Lcom/android/keyguard/R$id;->transient_seek_bar:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SeekBar;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeekBar:Landroid/widget/SeekBar;

    .line 331
    iget-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeekBar:Landroid/widget/SeekBar;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 332
    sget v6, Lcom/android/keyguard/R$id;->transient_seek_time_elapsed:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeekTimeElapsed:Landroid/widget/TextView;

    .line 333
    sget v6, Lcom/android/keyguard/R$id;->transient_seek_time_remaining:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeekTimeTotal:Landroid/widget/TextView;

    .line 334
    sget v6, Lcom/android/keyguard/R$id;->btn_prev:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPrev:Landroid/widget/ImageView;

    .line 335
    sget v6, Lcom/android/keyguard/R$id;->btn_play:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    .line 336
    sget v6, Lcom/android/keyguard/R$id;->btn_next:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnNext:Landroid/widget/ImageView;

    .line 337
    const/4 v6, 0x3

    new-array v1, v6, [Landroid/view/View;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPrev:Landroid/widget/ImageView;

    aput-object v7, v1, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    aput-object v7, v1, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnNext:Landroid/widget/ImageView;

    aput-object v7, v1, v6

    .line 338
    .local v1, "buttons":[Landroid/view/View;
    move-object v0, v1

    .local v0, "arr$":[Landroid/view/View;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 339
    .local v5, "view":Landroid/view/View;
    iget-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportCommandListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iget-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportShowSeekBarListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 338
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 342
    .end local v5    # "view":Landroid/view/View;
    :cond_0
    iget-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v4

    .line 343
    .local v4, "screenOn":Z
    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardTransportControlView;->setEnableMarquee(Z)V

    .line 345
    iget-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportShowSeekBarListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 346
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 394
    instance-of v1, p1, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;

    if-nez v1, :cond_0

    .line 395
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 406
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 398
    check-cast v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;

    .line 399
    .local v0, "ss":Lcom/android/keyguard/KeyguardTransportControlView$SavedState;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 400
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->artist:Ljava/lang/String;

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1702(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 401
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->trackTitle:Ljava/lang/String;

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1802(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 402
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->albumTitle:Ljava/lang/String;

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1902(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 403
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    iget-wide v2, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->duration:J

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J
    invoke-static {v1, v2, v3}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2002(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;J)J

    .line 404
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->bitmap:Landroid/graphics/Bitmap;

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2102(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 405
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->populateMetadata()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 383
    new-instance v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 384
    .local v0, "ss":Lcom/android/keyguard/KeyguardTransportControlView$SavedState;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1700(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->artist:Ljava/lang/String;

    .line 385
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1800(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->trackTitle:Ljava/lang/String;

    .line 386
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1900(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->albumTitle:Ljava/lang/String;

    .line 387
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J
    invoke-static {v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2000(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->duration:J

    .line 388
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2100(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->bitmap:Landroid/graphics/Bitmap;

    .line 389
    return-object v0
.end method

.method resetToMetadata()V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mInfoContainer:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 572
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 574
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadataContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 577
    :cond_0
    return-void
.end method

.method scrubTo(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/media/RemoteController;->seekTo(J)Z

    .line 594
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportControlCallback:Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;->userActivity()V

    .line 595
    return-void
.end method

.method setBadgeIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "bmp"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 409
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBadge:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 411
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 412
    .local v0, "cm":Landroid/graphics/ColorMatrix;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 413
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBadge:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 414
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBadge:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setXfermode(Landroid/graphics/Xfermode;)V

    .line 415
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBadge:Landroid/widget/ImageView;

    const/16 v2, 0xef

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 416
    return-void
.end method

.method setSeekBarDuration(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeekBar:Landroid/widget/SeekBar;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 590
    return-void
.end method

.method setSeekBarsEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mSeekEnabled:Z

    if-ne p1, v0, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mSeekEnabled:Z

    .line 303
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadataContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 306
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->cancelResetToMetadata()V

    goto :goto_0
.end method

.method public setTransportControlCallback(Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;)V
    .locals 0
    .param p1, "transportControlCallback"    # Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportControlCallback:Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;

    .line 313
    return-void
.end method

.method tryToggleSeekBar()Z
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 547
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mInfoContainer:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 549
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 551
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadataContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 552
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->cancelResetToMetadata()V

    .line 553
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateSeekBars:Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardTransportControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 564
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportControlCallback:Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;->userActivity()V

    .line 565
    const/4 v0, 0x1

    return v0

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadataContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 557
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->delayResetToMetadata()V

    .line 558
    iget v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mCurrentPlayState:I

    invoke-static {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->playbackPositionShouldMove(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateSeekBars:Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;->run()V

    goto :goto_0

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateSeekBars:Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;->updateOnce()Z

    goto :goto_0
.end method

.method updateMetadata(Landroid/media/RemoteController$MetadataEditor;)V
    .locals 4
    .param p1, "data"    # Landroid/media/RemoteController$MetadataEditor;

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1700(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/media/RemoteController$MetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1702(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 449
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1800(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/media/RemoteController$MetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1802(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 451
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1900(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/media/RemoteController$MetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1902(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 453
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    const/16 v1, 0x9

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/media/RemoteController$MetadataEditor;->getLong(IJ)J

    move-result-wide v2

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J
    invoke-static {v0, v2, v3}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2002(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;J)J

    .line 454
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2100(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/media/RemoteController$MetadataEditor;->getBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2102(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 456
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->populateMetadata()V

    .line 460
    :goto_0
    return-void

    .line 458
    :cond_0
    iput-object p1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mPopulateMetadataWhenAttached:Landroid/media/RemoteController$MetadataEditor;

    goto :goto_0
.end method

.method updateSeekBars()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 647
    iget-object v2, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v2}, Landroid/media/RemoteController;->getEstimatedMediaPosition()J

    move-result-wide v2

    long-to-int v0, v2

    .line 649
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 650
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 651
    const/4 v1, 0x1

    .line 656
    :goto_0
    return v1

    .line 653
    :cond_0
    const-string v2, "TransportControlView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating seek bars; received invalid estimated media position ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "). Disabling seek."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardTransportControlView;->setSeekBarsEnabled(Z)V

    goto :goto_0
.end method

.method updateSeekDisplay()V
    .locals 4

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mFormat:Ljava/text/DateFormat;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTempDate:Ljava/util/Date;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v1}, Landroid/media/RemoteController;->getEstimatedMediaPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 536
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeekTimeElapsed:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mFormat:Ljava/text/DateFormat;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTempDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTempDate:Ljava/util/Date;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J
    invoke-static {v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2000(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 538
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeekTimeTotal:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mFormat:Ljava/text/DateFormat;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTempDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    :cond_0
    return-void
.end method
