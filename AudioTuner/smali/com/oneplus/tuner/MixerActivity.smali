.class public Lcom/oneplus/tuner/MixerActivity;
.super Lcom/oneplus/tuner/base/BaseActivity;
.source "MixerActivity.java"

# interfaces
.implements Lcom/oneplus/tuner/listener/HeadsetPlugReceiver$HeadsetPlugListener;
.implements Lcom/oneplus/tuner/listener/SoundEffectDataChangeListener;
.implements Lcom/oneplus/tuner/listener/SoundEffectUsedDataChangeListener;
.implements Lcom/oneplus/tuner/view/ArcsProcessBar$OnChangeArcProgressListener;
.implements Lcom/oneplus/tuner/view/EqScrollView$OnScrollMoveListener;
.implements Lcom/oneplus/tuner/view/HLWaveFormBackground$OnMoveListener;
.implements Lcom/oneplus/tuner/widget/EqSeekBar$OnEqChangeListener;


# static fields
.field private static final MSG_REFRESH_UI:I = 0x1

.field private static final TAB_SELECTED_TEXT_SIZE_SP:I = 0xe

.field private static final TAB_UNSELECTED_TEXT_SIZE_SP:I = 0xd

.field private static final TAG:Ljava/lang/String; = "MixerActivity"


# instance fields
.field public AudioState:Z

.field MediaControllerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaController;",
            ">;"
        }
    .end annotation
.end field

.field protected OP_PLAYER_STATE:I

.field private categoryLayout:Landroid/widget/LinearLayout;

.field private earphoneLayout:Landroid/widget/LinearLayout;

.field helper:Landroid/media/session/MediaSessionLegacyHelper;

.field listPopupWindow:Landroid/widget/ListPopupWindow;

.field mArcsProcessBar0:Lcom/oneplus/tuner/view/ArcsProcessBar;

.field mArcsProcessBar1:Lcom/oneplus/tuner/view/ArcsProcessBar;

.field mBassSeek:Lcom/oneplus/tuner/view/ArcsProcessBar;

.field private mButton:Landroid/widget/Button;

.field private mCategoryTv:Landroid/widget/TextView;

.field mChannelSet:Lcom/oneplus/tuner/view/ArcsProcessBar;

.field private mClickableFlag:Z

.field mCustomConfigSpinner:Landroid/widget/FrameLayout;

.field mCustomConfigTextView:Landroid/widget/TextView;

.field private mCustomSettingView:Lcom/oneplus/tuner/widget/FragmentView;

.field private mDialog:Lcom/oneplus/uc/UcAlertDialog;

.field private mEarPhoneTv:Landroid/widget/TextView;

.field mEqButton:Landroid/widget/TextView;

.field mEqPanel:Landroid/widget/LinearLayout;

.field mEqScView:Lcom/oneplus/tuner/view/EqScrollView;

.field mEqSetting:Z

.field mEqStatus:Landroid/view/View;

.field mHWF:Lcom/oneplus/tuner/view/HLWaveFormFigure;

.field mHWFB:Lcom/oneplus/tuner/view/HLWaveFormBackground;

.field private mHandler:Landroid/os/Handler;

.field private mHasClickCollectBtn:Z

.field private mIntroTv:Landroid/widget/TextView;

.field private mIsFromList:Z

.field private mIsFromLocalList:Z

.field mMediaPlayer:Landroid/media/MediaPlayer;

.field mMoreSettingButton:Landroid/widget/TextView;

.field mMoreSettingPanel:Lcom/oneplus/tuner/view/CustomConfigScrollView;

.field mMoreSettingStatus:Landroid/view/View;

.field mMusicRemoteControl:Landroid/widget/ImageView;

.field private mNameResId:[I

.field private mPassInSoundEffect:Lcom/oneplus/tuner/providers/SoundEffectItem;

.field mPopupAdapter:Lcom/oneplus/tuner/adapter/ConfigSpinnerAdapter;

.field mResetButton:Landroid/widget/TextView;

.field mSaveButton:Landroid/widget/TextView;

.field mSeekBar:[Lcom/oneplus/tuner/widget/EqSeekBar;

.field mShareButton:Landroid/widget/TextView;

.field private mStatus:I

.field mStereoSeek:Lcom/oneplus/tuner/view/ArcsProcessBar;

.field private mTitleTv:Landroid/widget/TextView;

.field mVoiceSet:Lcom/oneplus/tuner/view/ArcsProcessBar;

.field mediaSessionManager:Landroid/media/session/MediaSessionManager;

.field transportControls:Landroid/media/session/MediaController$TransportControls;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/oneplus/tuner/base/BaseActivity;-><init>()V

    .line 84
    new-instance v0, Lcom/oneplus/tuner/MixerActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/tuner/MixerActivity$1;-><init>(Lcom/oneplus/tuner/MixerActivity;)V

    iput-object v0, p0, Lcom/oneplus/tuner/MixerActivity;->mHandler:Landroid/os/Handler;

    .line 150
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/oneplus/tuner/widget/EqSeekBar;

    iput-object v0, p0, Lcom/oneplus/tuner/MixerActivity;->mSeekBar:[Lcom/oneplus/tuner/widget/EqSeekBar;

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/tuner/MixerActivity;->AudioState:Z

    .line 160
    iput-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 162
    iput-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->MediaControllerList:Ljava/util/List;

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/tuner/MixerActivity;->mEqSetting:Z

    .line 1007
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/oneplus/tuner/MixerActivity;->mNameResId:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0c0550
        0x7f0c0551
        0x7f0c0552
        0x7f0c0553
        0x7f0c0554
        0x7f0c0555
        0x7f0c0556
        0x7f0c0557
        0x7f0c0558
    .end array-data
.end method

.method static synthetic access$000(Lcom/oneplus/tuner/MixerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/MixerActivity;

    .prologue
    .line 66
    iget v0, p0, Lcom/oneplus/tuner/MixerActivity;->mStatus:I

    return v0
.end method

.method static synthetic access$002(Lcom/oneplus/tuner/MixerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/tuner/MixerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/oneplus/tuner/MixerActivity;->mStatus:I

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/tuner/MixerActivity;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/MixerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/MixerActivity;->getStr(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oneplus/tuner/MixerActivity;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/MixerActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oneplus/tuner/MixerActivity;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/MixerActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oneplus/tuner/MixerActivity;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/MixerActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/oneplus/tuner/MixerActivity;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/MixerActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/oneplus/tuner/MixerActivity;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/MixerActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/oneplus/tuner/MixerActivity;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/MixerActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/oneplus/tuner/MixerActivity;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/MixerActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oneplus/tuner/MixerActivity;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/MixerActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/oneplus/tuner/MixerActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/MixerActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/oneplus/tuner/MixerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/tuner/MixerActivity;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/oneplus/tuner/MixerActivity;->showDetailDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/tuner/MixerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/MixerActivity;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/oneplus/tuner/MixerActivity;->mClickableFlag:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/oneplus/tuner/MixerActivity;)Lcom/oneplus/uc/UcAlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/MixerActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity;->mDialog:Lcom/oneplus/uc/UcAlertDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oneplus/tuner/MixerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/tuner/MixerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/oneplus/tuner/MixerActivity;->mClickableFlag:Z

    return p1
.end method

.method static synthetic access$300(Lcom/oneplus/tuner/MixerActivity;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/MixerActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/tuner/MixerActivity;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/MixerActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/tuner/MixerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/MixerActivity;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/oneplus/tuner/MixerActivity;->mIsSuccessLogin:Z

    return v0
.end method

.method static synthetic access$600(Lcom/oneplus/tuner/MixerActivity;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/MixerActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/tuner/MixerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/MixerActivity;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/oneplus/tuner/MixerActivity;->mIsFromList:Z

    return v0
.end method

.method static synthetic access$800(Lcom/oneplus/tuner/MixerActivity;)Lcom/oneplus/tuner/providers/SoundEffectItem;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/MixerActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity;->mPassInSoundEffect:Lcom/oneplus/tuner/providers/SoundEffectItem;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oneplus/tuner/MixerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/MixerActivity;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/oneplus/tuner/MixerActivity;->mHasClickCollectBtn:Z

    return v0
.end method

.method static synthetic access$902(Lcom/oneplus/tuner/MixerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/tuner/MixerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/oneplus/tuner/MixerActivity;->mHasClickCollectBtn:Z

    return p1
.end method

.method private getCategory(I)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1056
    invoke-virtual {p0}, Lcom/oneplus/tuner/MixerActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mNameResId:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStr(I)Ljava/lang/String;
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/oneplus/tuner/MixerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    return-object v0
.end method

.method private refreshView()V
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity;->mHWF:Lcom/oneplus/tuner/view/HLWaveFormFigure;

    invoke-virtual {v0}, Lcom/oneplus/tuner/view/HLWaveFormFigure;->loadParamenter()V

    .line 625
    invoke-virtual {p0}, Lcom/oneplus/tuner/MixerActivity;->onEffectDataInited()V

    .line 627
    return-void
.end method

.method private setViewEnable(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 630
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mCustomSettingView:Lcom/oneplus/tuner/widget/FragmentView;

    if-eqz v1, :cond_2

    .line 631
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mCustomConfigSpinner:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 632
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->listPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 633
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->listPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 634
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mSeekBar:[Lcom/oneplus/tuner/widget/EqSeekBar;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 635
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mSeekBar:[Lcom/oneplus/tuner/widget/EqSeekBar;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/oneplus/tuner/widget/EqSeekBar;->setEnabled(Z)V

    .line 634
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 637
    :cond_1
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mArcsProcessBar0:Lcom/oneplus/tuner/view/ArcsProcessBar;

    invoke-virtual {v1, p1}, Lcom/oneplus/tuner/view/ArcsProcessBar;->setEnabled(Z)V

    .line 638
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mArcsProcessBar1:Lcom/oneplus/tuner/view/ArcsProcessBar;

    invoke-virtual {v1, p1}, Lcom/oneplus/tuner/view/ArcsProcessBar;->setEnabled(Z)V

    .line 639
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mBassSeek:Lcom/oneplus/tuner/view/ArcsProcessBar;

    invoke-virtual {v1, p1}, Lcom/oneplus/tuner/view/ArcsProcessBar;->setEnabled(Z)V

    .line 640
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mStereoSeek:Lcom/oneplus/tuner/view/ArcsProcessBar;

    invoke-virtual {v1, p1}, Lcom/oneplus/tuner/view/ArcsProcessBar;->setEnabled(Z)V

    .line 641
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mVoiceSet:Lcom/oneplus/tuner/view/ArcsProcessBar;

    invoke-virtual {v1, p1}, Lcom/oneplus/tuner/view/ArcsProcessBar;->setEnabled(Z)V

    .line 642
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mChannelSet:Lcom/oneplus/tuner/view/ArcsProcessBar;

    invoke-virtual {v1, p1}, Lcom/oneplus/tuner/view/ArcsProcessBar;->setEnabled(Z)V

    .line 647
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private showDetailDialog()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 1013
    invoke-virtual {p0}, Lcom/oneplus/tuner/MixerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1014
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030059

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1016
    .local v0, "content":Landroid/view/View;
    new-instance v2, Lcom/oneplus/uc/UcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/oneplus/uc/UcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/oneplus/uc/UcAlertDialog$Builder;->create()Lcom/oneplus/uc/UcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mDialog:Lcom/oneplus/uc/UcAlertDialog;

    .line 1019
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mDialog:Lcom/oneplus/uc/UcAlertDialog;

    invoke-virtual {v2}, Lcom/oneplus/uc/UcAlertDialog;->show()V

    .line 1020
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mDialog:Lcom/oneplus/uc/UcAlertDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/oneplus/uc/UcAlertDialog;->setCancelable(Z)V

    .line 1021
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mDialog:Lcom/oneplus/uc/UcAlertDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oneplus/uc/UcAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1023
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mDialog:Lcom/oneplus/uc/UcAlertDialog;

    invoke-virtual {v2}, Lcom/oneplus/uc/UcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 1024
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mDialog:Lcom/oneplus/uc/UcAlertDialog;

    invoke-virtual {v2}, Lcom/oneplus/uc/UcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 1025
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mDialog:Lcom/oneplus/uc/UcAlertDialog;

    invoke-virtual {v2, v0}, Lcom/oneplus/uc/UcAlertDialog;->setContentView(Landroid/view/View;)V

    .line 1027
    const v2, 0x7f0b0199

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mEarPhoneTv:Landroid/widget/TextView;

    .line 1028
    const v2, 0x7f0b019b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mCategoryTv:Landroid/widget/TextView;

    .line 1029
    const v2, 0x7f0b019d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mTitleTv:Landroid/widget/TextView;

    .line 1030
    const v2, 0x7f0b019f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mIntroTv:Landroid/widget/TextView;

    .line 1031
    const v2, 0x7f0b01a0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mButton:Landroid/widget/Button;

    .line 1032
    const v2, 0x7f0b0198

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->earphoneLayout:Landroid/widget/LinearLayout;

    .line 1033
    const v2, 0x7f0b019a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->categoryLayout:Landroid/widget/LinearLayout;

    .line 1034
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mButton:Landroid/widget/Button;

    new-instance v3, Lcom/oneplus/tuner/MixerActivity$14;

    invoke-direct {v3, p0}, Lcom/oneplus/tuner/MixerActivity$14;-><init>(Lcom/oneplus/tuner/MixerActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1042
    iget-boolean v2, p0, Lcom/oneplus/tuner/MixerActivity;->mIsFromList:Z

    if-eqz v2, :cond_1

    .line 1043
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mEarPhoneTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/tuner/MixerActivity;->mPassInSoundEffect:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-object v3, v3, Lcom/oneplus/tuner/providers/SoundEffectItem;->mModel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1044
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mCategoryTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/tuner/MixerActivity;->mPassInSoundEffect:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget v3, v3, Lcom/oneplus/tuner/providers/SoundEffectItem;->mCategoryId:I

    invoke-direct {p0, v3}, Lcom/oneplus/tuner/MixerActivity;->getCategory(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1045
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mTitleTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/tuner/MixerActivity;->mPassInSoundEffect:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-object v3, v3, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1046
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mIntroTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/tuner/MixerActivity;->mPassInSoundEffect:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-object v3, v3, Lcom/oneplus/tuner/providers/SoundEffectItem;->mComment:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1053
    :cond_0
    :goto_0
    return-void

    .line 1047
    :cond_1
    iget-boolean v2, p0, Lcom/oneplus/tuner/MixerActivity;->mIsFromLocalList:Z

    if-eqz v2, :cond_0

    .line 1048
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->earphoneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1049
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->categoryLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1050
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mTitleTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/tuner/MixerActivity;->mPassInSoundEffect:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-object v3, v3, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1051
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mIntroTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/tuner/MixerActivity;->mPassInSoundEffect:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-object v3, v3, Lcom/oneplus/tuner/providers/SoundEffectItem;->mComment:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public acceptChildrenTouchEvent()V
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity;->mCustomSettingView:Lcom/oneplus/tuner/widget/FragmentView;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity;->mCustomSettingView:Lcom/oneplus/tuner/widget/FragmentView;

    invoke-virtual {v0}, Lcom/oneplus/tuner/widget/FragmentView;->acceptChildrenTouchEvent()V

    .line 659
    :cond_0
    return-void
.end method

.method public changeEq(IF)V
    .locals 3
    .param p1, "effParam"    # I
    .param p2, "value"    # F

    .prologue
    .line 703
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity;->mHWF:Lcom/oneplus/tuner/view/HLWaveFormFigure;

    const/high16 v1, 0x41400000    # 12.0f

    add-float/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/tuner/view/HLWaveFormFigure;->notifyChange(IF)V

    .line 704
    const-string v0, "MixerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeEq effParam = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-object v0, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mEqBand:Lcom/oneplus/tuner/providers/SoundEffectEQBand;

    iget-object v0, v0, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqBpGain:[F

    aput p2, v0, p1

    .line 706
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-object v0, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mEqBand:Lcom/oneplus/tuner/providers/SoundEffectEQBand;

    invoke-virtual {v0, p1}, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->updateEqGraph(I)V

    .line 707
    return-void
.end method

.method protected configCurrentSelectedSlideMenuIndex()V
    .locals 1

    .prologue
    .line 996
    const/4 v0, 0x3

    iput v0, p0, Lcom/oneplus/tuner/MixerActivity;->mSlideMenuSelectedIndex:I

    .line 997
    return-void
.end method

.method protected configIsSlideMenuEnable()V
    .locals 1

    .prologue
    .line 960
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/tuner/MixerActivity;->mIsSlideMenuEnable:Z

    .line 961
    iput-object p0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mActivity:Landroid/app/Activity;

    .line 962
    return-void
.end method

.method protected configIsTitlebarMenuEnable()V
    .locals 1

    .prologue
    .line 966
    iget-boolean v0, p0, Lcom/oneplus/tuner/MixerActivity;->mIsFromList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/tuner/MixerActivity;->mIsFromLocalList:Z

    if-eqz v0, :cond_1

    .line 967
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/tuner/MixerActivity;->mIsTitlebarMenuEnable:Z

    .line 971
    :goto_0
    return-void

    .line 969
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/tuner/MixerActivity;->mIsTitlebarMenuEnable:Z

    goto :goto_0
.end method

.method protected configIsTitlebarOnlyOneMenuItem()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 975
    iget-boolean v0, p0, Lcom/oneplus/tuner/MixerActivity;->mIsFromList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/tuner/MixerActivity;->mIsFromLocalList:Z

    if-eqz v0, :cond_1

    .line 976
    :cond_0
    iput-boolean v1, p0, Lcom/oneplus/tuner/MixerActivity;->mIsTitlebarOnlyOneMenuItem:Z

    .line 977
    const v0, 0x7f020129

    iput v0, p0, Lcom/oneplus/tuner/MixerActivity;->mMenuOneIconId:I

    .line 980
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/tuner/MixerActivity;->mMenuOneIntent:Landroid/content/Intent;

    .line 981
    iput-boolean v1, p0, Lcom/oneplus/tuner/MixerActivity;->mIsMixer:Z

    .line 982
    new-instance v0, Lcom/oneplus/tuner/MixerActivity$13;

    invoke-direct {v0, p0}, Lcom/oneplus/tuner/MixerActivity$13;-><init>(Lcom/oneplus/tuner/MixerActivity;)V

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/MixerActivity;->setDetailListener(Lcom/oneplus/tuner/base/BaseActivity$MyInterface;)V

    .line 992
    :goto_0
    return-void

    .line 990
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/tuner/MixerActivity;->mIsTitlebarOnlyOneMenuItem:Z

    goto :goto_0
.end method

.method public doRefreshOrGetToken(Z)V
    .locals 1
    .param p1, "isFromReceiver"    # Z

    .prologue
    .line 1167
    new-instance v0, Lcom/oneplus/tuner/MixerActivity$15;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/tuner/MixerActivity$15;-><init>(Lcom/oneplus/tuner/MixerActivity;Z)V

    .line 1188
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1189
    return-void
.end method

.method public endEq()V
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity;->mEqScView:Lcom/oneplus/tuner/view/EqScrollView;

    invoke-virtual {v0}, Lcom/oneplus/tuner/view/EqScrollView;->acceptTouchEvent()V

    .line 717
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 925
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 926
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "isrefresh"

    iget-boolean v2, p0, Lcom/oneplus/tuner/MixerActivity;->mHasClickCollectBtn:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 927
    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/tuner/MixerActivity;->setResult(ILandroid/content/Intent;)V

    .line 928
    invoke-super {p0}, Lcom/oneplus/tuner/base/BaseActivity;->finish()V

    .line 929
    return-void
.end method

.method public initView()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/16 v6, 0x64

    const/4 v5, 0x0

    .line 180
    iget-boolean v1, p0, Lcom/oneplus/tuner/MixerActivity;->mIsFromList:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/oneplus/tuner/MixerActivity;->mIsFromLocalList:Z

    if-eqz v1, :cond_1

    .line 181
    :cond_0
    const v1, 0x7f0c05a1

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/MixerActivity;->setTitle(I)V

    .line 185
    :goto_0
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mCustomSettingView:Lcom/oneplus/tuner/widget/FragmentView;

    if-nez v1, :cond_5

    .line 186
    new-instance v1, Lcom/oneplus/tuner/widget/FragmentView;

    const v2, 0x7f030022

    invoke-direct {v1, p0, v2}, Lcom/oneplus/tuner/widget/FragmentView;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mCustomSettingView:Lcom/oneplus/tuner/widget/FragmentView;

    .line 188
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mCustomSettingView:Lcom/oneplus/tuner/widget/FragmentView;

    const v2, 0x7f0b00d4

    invoke-virtual {v1, v2}, Lcom/oneplus/tuner/widget/FragmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/view/CustomConfigScrollView;

    iput-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mMoreSettingPanel:Lcom/oneplus/tuner/view/CustomConfigScrollView;

    .line 190
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mCustomSettingView:Lcom/oneplus/tuner/widget/FragmentView;

    const v2, 0x7f0b00ff

    invoke-virtual {v1, v2}, Lcom/oneplus/tuner/widget/FragmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/view/EqScrollView;

    iput-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mEqScView:Lcom/oneplus/tuner/view/EqScrollView;

    .line 192
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mEqScView:Lcom/oneplus/tuner/view/EqScrollView;

    invoke-virtual {v1, p0}, Lcom/oneplus/tuner/view/EqScrollView;->setOnScrollMoveListener(Lcom/oneplus/tuner/view/EqScrollView$OnScrollMoveListener;)V

    .line 193
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mSeekBar:[Lcom/oneplus/tuner/widget/EqSeekBar;

    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mEqScView:Lcom/oneplus/tuner/view/EqScrollView;

    const v3, 0x7f0b0100

    invoke-virtual {v1, v3}, Lcom/oneplus/tuner/view/EqScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/widget/EqSeekBar;

    aput-object v1, v2, v5

    .line 194
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mSeekBar:[Lcom/oneplus/tuner/widget/EqSeekBar;

    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mEqScView:Lcom/oneplus/tuner/view/EqScrollView;

    const v3, 0x7f0b0102

    invoke-virtual {v1, v3}, Lcom/oneplus/tuner/view/EqScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/widget/EqSeekBar;

    aput-object v1, v2, v7

    .line 195
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mSeekBar:[Lcom/oneplus/tuner/widget/EqSeekBar;

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mEqScView:Lcom/oneplus/tuner/view/EqScrollView;

    const v4, 0x7f0b0104

    invoke-virtual {v1, v4}, Lcom/oneplus/tuner/view/EqScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/widget/EqSeekBar;

    aput-object v1, v2, v3

    .line 196
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mSeekBar:[Lcom/oneplus/tuner/widget/EqSeekBar;

    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mEqScView:Lcom/oneplus/tuner/view/EqScrollView;

    const v3, 0x7f0b0106

    invoke-virtual {v1, v3}, Lcom/oneplus/tuner/view/EqScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/widget/EqSeekBar;

    aput-object v1, v2, v9

    .line 197
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mSeekBar:[Lcom/oneplus/tuner/widget/EqSeekBar;

    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mEqScView:Lcom/oneplus/tuner/view/EqScrollView;

    const v3, 0x7f0b0108

    invoke-virtual {v1, v3}, Lcom/oneplus/tuner/view/EqScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/widget/EqSeekBar;

    aput-object v1, v2, v8

    .line 198
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mSeekBar:[Lcom/oneplus/tuner/widget/EqSeekBar;

    const/4 v3, 0x5

    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mEqScView:Lcom/oneplus/tuner/view/EqScrollView;

    const v4, 0x7f0b010a

    invoke-virtual {v1, v4}, Lcom/oneplus/tuner/view/EqScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/widget/EqSeekBar;

    aput-object v1, v2, v3

    .line 199
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mSeekBar:[Lcom/oneplus/tuner/widget/EqSeekBar;

    const/4 v3, 0x6

    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mEqScView:Lcom/oneplus/tuner/view/EqScrollView;

    const v4, 0x7f0b010c

    invoke-virtual {v1, v4}, Lcom/oneplus/tuner/view/EqScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/widget/EqSeekBar;

    aput-object v1, v2, v3

    .line 200
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mSeekBar:[Lcom/oneplus/tuner/widget/EqSeekBar;

    const/4 v3, 0x7

    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mEqScView:Lcom/oneplus/tuner/view/EqScrollView;

    const v4, 0x7f0b010e

    invoke-virtual {v1, v4}, Lcom/oneplus/tuner/view/EqScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/widget/EqSeekBar;

    aput-object v1, v2, v3

    .line 201
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mSeekBar:[Lcom/oneplus/tuner/widget/EqSeekBar;

    const/16 v3, 0x8

    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mEqScView:Lcom/oneplus/tuner/view/EqScrollView;

    const v4, 0x7f0b0110

    invoke-virtual {v1, v4}, Lcom/oneplus/tuner/view/EqScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/widget/EqSeekBar;

    aput-object v1, v2, v3

    .line 202
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mSeekBar:[Lcom/oneplus/tuner/widget/EqSeekBar;

    const/16 v3, 0x9

    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mEqScView:Lcom/oneplus/tuner/view/EqScrollView;

    const v4, 0x7f0b0112

    invoke-virtual {v1, v4}, Lcom/oneplus/tuner/view/EqScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/widget/EqSeekBar;

    aput-object v1, v2, v3

    .line 203
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mSeekBar:[Lcom/oneplus/tuner/widget/EqSeekBar;

    const/16 v3, 0xa

    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mEqScView:Lcom/oneplus/tuner/view/EqScrollView;

    const v4, 0x7f0b0114

    invoke-virtual {v1, v4}, Lcom/oneplus/tuner/view/EqScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/widget/EqSeekBar;

    aput-object v1, v2, v3

    .line 204
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mSeekBar:[Lcom/oneplus/tuner/widget/EqSeekBar;

    const/16 v3, 0xb

    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mEqScView:Lcom/oneplus/tuner/view/EqScrollView;

    const v4, 0x7f0b0116

    invoke-virtual {v1, v4}, Lcom/oneplus/tuner/view/EqScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/widget/EqSeekBar;

    aput-object v1, v2, v3

    .line 205
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mSeekBar:[Lcom/oneplus/tuner/widget/EqSeekBar;

    const/16 v3, 0xc

    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mEqScView:Lcom/oneplus/tuner/view/EqScrollView;

    const v4, 0x7f0b0118

    invoke-virtual {v1, v4}, Lcom/oneplus/tuner/view/EqScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/widget/EqSeekBar;

    aput-object v1, v2, v3

    .line 206
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mSeekBar:[Lcom/oneplus/tuner/widget/EqSeekBar;

    const/16 v3, 0xd

    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mEqScView:Lcom/oneplus/tuner/view/EqScrollView;

    const v4, 0x7f0b011a

    invoke-virtual {v1, v4}, Lcom/oneplus/tuner/view/EqScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/widget/EqSeekBar;

    aput-object v1, v2, v3

    .line 207
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mSeekBar:[Lcom/oneplus/tuner/widget/EqSeekBar;

    const/16 v3, 0xe

    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mEqScView:Lcom/oneplus/tuner/view/EqScrollView;

    const v4, 0x7f0b011c

    invoke-virtual {v1, v4}, Lcom/oneplus/tuner/view/EqScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/widget/EqSeekBar;

    aput-object v1, v2, v3

    .line 208
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mSeekBar:[Lcom/oneplus/tuner/widget/EqSeekBar;

    const/16 v3, 0xf

    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mEqScView:Lcom/oneplus/tuner/view/EqScrollView;

    const v4, 0x7f0b011e

    invoke-virtual {v1, v4}, Lcom/oneplus/tuner/view/EqScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/widget/EqSeekBar;

    aput-object v1, v2, v3

    .line 209
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mSeekBar:[Lcom/oneplus/tuner/widget/EqSeekBar;

    const/16 v3, 0x10

    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mEqScView:Lcom/oneplus/tuner/view/EqScrollView;

    const v4, 0x7f0b0120

    invoke-virtual {v1, v4}, Lcom/oneplus/tuner/view/EqScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/widget/EqSeekBar;

    aput-object v1, v2, v3

    .line 210
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mSeekBar:[Lcom/oneplus/tuner/widget/EqSeekBar;

    const/16 v3, 0x11

    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mEqScView:Lcom/oneplus/tuner/view/EqScrollView;

    const v4, 0x7f0b0122

    invoke-virtual {v1, v4}, Lcom/oneplus/tuner/view/EqScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/widget/EqSeekBar;

    aput-object v1, v2, v3

    .line 211
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mSeekBar:[Lcom/oneplus/tuner/widget/EqSeekBar;

    const/16 v3, 0x12

    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mEqScView:Lcom/oneplus/tuner/view/EqScrollView;

    const v4, 0x7f0b0124

    invoke-virtual {v1, v4}, Lcom/oneplus/tuner/view/EqScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/widget/EqSeekBar;

    aput-object v1, v2, v3

    .line 212
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mSeekBar:[Lcom/oneplus/tuner/widget/EqSeekBar;

    const/16 v3, 0x13

    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mEqScView:Lcom/oneplus/tuner/view/EqScrollView;

    const v4, 0x7f0b0126

    invoke-virtual {v1, v4}, Lcom/oneplus/tuner/view/EqScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/widget/EqSeekBar;

    aput-object v1, v2, v3

    .line 213
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mSeekBar:[Lcom/oneplus/tuner/widget/EqSeekBar;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 214
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mSeekBar:[Lcom/oneplus/tuner/widget/EqSeekBar;

    aget-object v1, v1, v0

    invoke-virtual {v1, v0}, Lcom/oneplus/tuner/widget/EqSeekBar;->controlParamenter(I)V

    .line 215
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mSeekBar:[Lcom/oneplus/tuner/widget/EqSeekBar;

    aget-object v1, v1, v0

    const/16 v2, -0xc

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/tuner/widget/EqSeekBar;->controlRange(II)V

    .line 217
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mSeekBar:[Lcom/oneplus/tuner/widget/EqSeekBar;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/oneplus/tuner/widget/EqSeekBar;->setOnEqChangeListener(Lcom/oneplus/tuner/widget/EqSeekBar$OnEqChangeListener;)V

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 183
    .end local v0    # "i":I
    :cond_1
    const v1, 0x7f0c0674

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/MixerActivity;->setTitle(I)V

    goto/16 :goto_0

    .line 219
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mCustomSettingView:Lcom/oneplus/tuner/widget/FragmentView;

    const v2, 0x7f0b00ba

    invoke-virtual {v1, v2}, Lcom/oneplus/tuner/widget/FragmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/view/ArcsProcessBar;

    iput-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mBassSeek:Lcom/oneplus/tuner/view/ArcsProcessBar;

    .line 221
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mCustomSettingView:Lcom/oneplus/tuner/widget/FragmentView;

    const v2, 0x7f0b00bb

    invoke-virtual {v1, v2}, Lcom/oneplus/tuner/widget/FragmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/view/ArcsProcessBar;

    iput-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mStereoSeek:Lcom/oneplus/tuner/view/ArcsProcessBar;

    .line 223
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mCustomSettingView:Lcom/oneplus/tuner/widget/FragmentView;

    const v2, 0x7f0b00bc

    invoke-virtual {v1, v2}, Lcom/oneplus/tuner/widget/FragmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/view/ArcsProcessBar;

    iput-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mVoiceSet:Lcom/oneplus/tuner/view/ArcsProcessBar;

    .line 225
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mCustomSettingView:Lcom/oneplus/tuner/widget/FragmentView;

    const v2, 0x7f0b00bd

    invoke-virtual {v1, v2}, Lcom/oneplus/tuner/widget/FragmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/view/ArcsProcessBar;

    iput-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mChannelSet:Lcom/oneplus/tuner/view/ArcsProcessBar;

    .line 228
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mBassSeek:Lcom/oneplus/tuner/view/ArcsProcessBar;

    invoke-virtual {v1, v8}, Lcom/oneplus/tuner/view/ArcsProcessBar;->controlParamenter(I)V

    .line 229
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mBassSeek:Lcom/oneplus/tuner/view/ArcsProcessBar;

    invoke-virtual {v1, v5, v6}, Lcom/oneplus/tuner/view/ArcsProcessBar;->controlRange(II)V

    .line 231
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mVoiceSet:Lcom/oneplus/tuner/view/ArcsProcessBar;

    const/16 v2, 0x97

    invoke-virtual {v1, v2}, Lcom/oneplus/tuner/view/ArcsProcessBar;->controlParamenter(I)V

    .line 232
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mVoiceSet:Lcom/oneplus/tuner/view/ArcsProcessBar;

    invoke-virtual {v1, v5, v6}, Lcom/oneplus/tuner/view/ArcsProcessBar;->controlRange(II)V

    .line 234
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mStereoSeek:Lcom/oneplus/tuner/view/ArcsProcessBar;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/oneplus/tuner/view/ArcsProcessBar;->controlParamenter(I)V

    .line 235
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mStereoSeek:Lcom/oneplus/tuner/view/ArcsProcessBar;

    invoke-virtual {v1, v5, v6}, Lcom/oneplus/tuner/view/ArcsProcessBar;->controlRange(II)V

    .line 237
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mChannelSet:Lcom/oneplus/tuner/view/ArcsProcessBar;

    invoke-virtual {v1, v9}, Lcom/oneplus/tuner/view/ArcsProcessBar;->controlParamenter(I)V

    .line 238
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mChannelSet:Lcom/oneplus/tuner/view/ArcsProcessBar;

    const/16 v2, -0x64

    invoke-virtual {v1, v2, v6}, Lcom/oneplus/tuner/view/ArcsProcessBar;->controlRange(II)V

    .line 241
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mBassSeek:Lcom/oneplus/tuner/view/ArcsProcessBar;

    invoke-virtual {v1, p0}, Lcom/oneplus/tuner/view/ArcsProcessBar;->setOnArcProgressListener(Lcom/oneplus/tuner/view/ArcsProcessBar$OnChangeArcProgressListener;)V

    .line 242
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mStereoSeek:Lcom/oneplus/tuner/view/ArcsProcessBar;

    invoke-virtual {v1, p0}, Lcom/oneplus/tuner/view/ArcsProcessBar;->setOnArcProgressListener(Lcom/oneplus/tuner/view/ArcsProcessBar$OnChangeArcProgressListener;)V

    .line 243
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mVoiceSet:Lcom/oneplus/tuner/view/ArcsProcessBar;

    invoke-virtual {v1, p0}, Lcom/oneplus/tuner/view/ArcsProcessBar;->setOnArcProgressListener(Lcom/oneplus/tuner/view/ArcsProcessBar$OnChangeArcProgressListener;)V

    .line 244
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mChannelSet:Lcom/oneplus/tuner/view/ArcsProcessBar;

    invoke-virtual {v1, p0}, Lcom/oneplus/tuner/view/ArcsProcessBar;->setOnArcProgressListener(Lcom/oneplus/tuner/view/ArcsProcessBar$OnChangeArcProgressListener;)V

    .line 246
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mCustomSettingView:Lcom/oneplus/tuner/widget/FragmentView;

    const v2, 0x7f0b00d0

    invoke-virtual {v1, v2}, Lcom/oneplus/tuner/widget/FragmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/view/HLWaveFormFigure;

    iput-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mHWF:Lcom/oneplus/tuner/view/HLWaveFormFigure;

    .line 247
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mCustomSettingView:Lcom/oneplus/tuner/widget/FragmentView;

    const v2, 0x7f0b00cf

    invoke-virtual {v1, v2}, Lcom/oneplus/tuner/widget/FragmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/view/HLWaveFormBackground;

    iput-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mHWFB:Lcom/oneplus/tuner/view/HLWaveFormBackground;

    .line 249
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mHWFB:Lcom/oneplus/tuner/view/HLWaveFormBackground;

    invoke-virtual {v1, p0}, Lcom/oneplus/tuner/view/HLWaveFormBackground;->setOnMoveListener(Lcom/oneplus/tuner/view/HLWaveFormBackground$OnMoveListener;)V

    .line 251
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mCustomSettingView:Lcom/oneplus/tuner/widget/FragmentView;

    const v2, 0x7f0b00d1

    invoke-virtual {v1, v2}, Lcom/oneplus/tuner/widget/FragmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mMusicRemoteControl:Landroid/widget/ImageView;

    .line 324
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mCustomSettingView:Lcom/oneplus/tuner/widget/FragmentView;

    const v2, 0x7f0b00b8

    invoke-virtual {v1, v2}, Lcom/oneplus/tuner/widget/FragmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/view/ArcsProcessBar;

    iput-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mArcsProcessBar0:Lcom/oneplus/tuner/view/ArcsProcessBar;

    .line 326
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mCustomSettingView:Lcom/oneplus/tuner/widget/FragmentView;

    const v2, 0x7f0b00b9

    invoke-virtual {v1, v2}, Lcom/oneplus/tuner/widget/FragmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/view/ArcsProcessBar;

    iput-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mArcsProcessBar1:Lcom/oneplus/tuner/view/ArcsProcessBar;

    .line 329
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mArcsProcessBar0:Lcom/oneplus/tuner/view/ArcsProcessBar;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/oneplus/tuner/view/ArcsProcessBar;->controlParamenter(I)V

    .line 330
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mArcsProcessBar1:Lcom/oneplus/tuner/view/ArcsProcessBar;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/oneplus/tuner/view/ArcsProcessBar;->controlParamenter(I)V

    .line 332
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mArcsProcessBar0:Lcom/oneplus/tuner/view/ArcsProcessBar;

    const/16 v2, 0x14

    invoke-virtual {v1, v5, v2}, Lcom/oneplus/tuner/view/ArcsProcessBar;->controlRange(II)V

    .line 334
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mArcsProcessBar1:Lcom/oneplus/tuner/view/ArcsProcessBar;

    invoke-virtual {v1, v5, v6}, Lcom/oneplus/tuner/view/ArcsProcessBar;->controlRange(II)V

    .line 337
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mArcsProcessBar0:Lcom/oneplus/tuner/view/ArcsProcessBar;

    invoke-virtual {v1, p0}, Lcom/oneplus/tuner/view/ArcsProcessBar;->setOnArcProgressListener(Lcom/oneplus/tuner/view/ArcsProcessBar$OnChangeArcProgressListener;)V

    .line 338
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mArcsProcessBar1:Lcom/oneplus/tuner/view/ArcsProcessBar;

    invoke-virtual {v1, p0}, Lcom/oneplus/tuner/view/ArcsProcessBar;->setOnArcProgressListener(Lcom/oneplus/tuner/view/ArcsProcessBar$OnChangeArcProgressListener;)V

    .line 339
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mCustomSettingView:Lcom/oneplus/tuner/widget/FragmentView;

    const v2, 0x7f0b00c1

    invoke-virtual {v1, v2}, Lcom/oneplus/tuner/widget/FragmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mCustomConfigSpinner:Landroid/widget/FrameLayout;

    .line 341
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mCustomSettingView:Lcom/oneplus/tuner/widget/FragmentView;

    const v2, 0x7f0b00c2

    invoke-virtual {v1, v2}, Lcom/oneplus/tuner/widget/FragmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mCustomConfigTextView:Landroid/widget/TextView;

    .line 343
    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    if-eqz v1, :cond_3

    .line 344
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mCustomConfigTextView:Landroid/widget/TextView;

    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-object v2, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    :cond_3
    new-instance v1, Landroid/widget/ListPopupWindow;

    invoke-direct {v1, p0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->listPopupWindow:Landroid/widget/ListPopupWindow;

    .line 348
    new-instance v1, Lcom/oneplus/tuner/adapter/ConfigSpinnerAdapter;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/adapter/ConfigSpinnerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mPopupAdapter:Lcom/oneplus/tuner/adapter/ConfigSpinnerAdapter;

    .line 349
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->listPopupWindow:Landroid/widget/ListPopupWindow;

    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mPopupAdapter:Lcom/oneplus/tuner/adapter/ConfigSpinnerAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 350
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->listPopupWindow:Landroid/widget/ListPopupWindow;

    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mCustomConfigSpinner:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 351
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->listPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v7}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 352
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->listPopupWindow:Landroid/widget/ListPopupWindow;

    new-instance v2, Lcom/oneplus/tuner/MixerActivity$2;

    invoke-direct {v2, p0}, Lcom/oneplus/tuner/MixerActivity$2;-><init>(Lcom/oneplus/tuner/MixerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 378
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mCustomConfigSpinner:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/oneplus/tuner/MixerActivity$3;

    invoke-direct {v2, p0}, Lcom/oneplus/tuner/MixerActivity$3;-><init>(Lcom/oneplus/tuner/MixerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mCustomSettingView:Lcom/oneplus/tuner/widget/FragmentView;

    const v2, 0x7f0b00cb

    invoke-virtual {v1, v2}, Lcom/oneplus/tuner/widget/FragmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mSaveButton:Landroid/widget/TextView;

    .line 385
    iget-boolean v1, p0, Lcom/oneplus/tuner/MixerActivity;->mIsFromList:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mPassInSoundEffect:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget v1, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mShareId:I

    if-gtz v1, :cond_6

    .line 386
    :cond_4
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mSaveButton:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 390
    :goto_2
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mSaveButton:Landroid/widget/TextView;

    iget v1, p0, Lcom/oneplus/tuner/MixerActivity;->mStatus:I

    if-ne v1, v7, :cond_7

    const v1, 0x7f0c0596

    invoke-direct {p0, v1}, Lcom/oneplus/tuner/MixerActivity;->getStr(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mSaveButton:Landroid/widget/TextView;

    new-instance v2, Lcom/oneplus/tuner/MixerActivity$4;

    invoke-direct {v2, p0}, Lcom/oneplus/tuner/MixerActivity$4;-><init>(Lcom/oneplus/tuner/MixerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mCustomSettingView:Lcom/oneplus/tuner/widget/FragmentView;

    const v2, 0x7f0b00cc

    invoke-virtual {v1, v2}, Lcom/oneplus/tuner/widget/FragmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mShareButton:Landroid/widget/TextView;

    .line 518
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mShareButton:Landroid/widget/TextView;

    new-instance v2, Lcom/oneplus/tuner/MixerActivity$5;

    invoke-direct {v2, p0}, Lcom/oneplus/tuner/MixerActivity$5;-><init>(Lcom/oneplus/tuner/MixerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 542
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mCustomSettingView:Lcom/oneplus/tuner/widget/FragmentView;

    const v2, 0x7f0b00c8

    invoke-virtual {v1, v2}, Lcom/oneplus/tuner/widget/FragmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mEqStatus:Landroid/view/View;

    .line 543
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mCustomSettingView:Lcom/oneplus/tuner/widget/FragmentView;

    const v2, 0x7f0b00c9

    invoke-virtual {v1, v2}, Lcom/oneplus/tuner/widget/FragmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mMoreSettingStatus:Landroid/view/View;

    .line 545
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mCustomSettingView:Lcom/oneplus/tuner/widget/FragmentView;

    const v2, 0x7f0b00ce

    invoke-virtual {v1, v2}, Lcom/oneplus/tuner/widget/FragmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mEqPanel:Landroid/widget/LinearLayout;

    .line 547
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mCustomSettingView:Lcom/oneplus/tuner/widget/FragmentView;

    const v2, 0x7f0b00c5

    invoke-virtual {v1, v2}, Lcom/oneplus/tuner/widget/FragmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mEqButton:Landroid/widget/TextView;

    .line 549
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mEqButton:Landroid/widget/TextView;

    new-instance v2, Lcom/oneplus/tuner/MixerActivity$6;

    invoke-direct {v2, p0}, Lcom/oneplus/tuner/MixerActivity$6;-><init>(Lcom/oneplus/tuner/MixerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 573
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mCustomSettingView:Lcom/oneplus/tuner/widget/FragmentView;

    const v2, 0x7f0b00c6

    invoke-virtual {v1, v2}, Lcom/oneplus/tuner/widget/FragmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mMoreSettingButton:Landroid/widget/TextView;

    .line 575
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mMoreSettingButton:Landroid/widget/TextView;

    new-instance v2, Lcom/oneplus/tuner/MixerActivity$7;

    invoke-direct {v2, p0}, Lcom/oneplus/tuner/MixerActivity$7;-><init>(Lcom/oneplus/tuner/MixerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 600
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mCustomSettingView:Lcom/oneplus/tuner/widget/FragmentView;

    const v2, 0x7f0b00cd

    invoke-virtual {v1, v2}, Lcom/oneplus/tuner/widget/FragmentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mResetButton:Landroid/widget/TextView;

    .line 602
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mResetButton:Landroid/widget/TextView;

    new-instance v2, Lcom/oneplus/tuner/MixerActivity$8;

    invoke-direct {v2, p0}, Lcom/oneplus/tuner/MixerActivity$8;-><init>(Lcom/oneplus/tuner/MixerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 617
    sget-boolean v1, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mHeadsetPlugged:Z

    invoke-direct {p0, v1}, Lcom/oneplus/tuner/MixerActivity;->setViewEnable(Z)V

    .line 620
    .end local v0    # "i":I
    :cond_5
    return-void

    .line 388
    .restart local v0    # "i":I
    :cond_6
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mSaveButton:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 390
    :cond_7
    const v1, 0x7f0c0595

    invoke-direct {p0, v1}, Lcom/oneplus/tuner/MixerActivity;->getStr(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3
.end method

.method public move(F)V
    .locals 3
    .param p1, "distance"    # F

    .prologue
    .line 723
    const-string v0, "MixerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "move "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity;->mEqScView:Lcom/oneplus/tuner/view/EqScrollView;

    invoke-virtual {v0, p1}, Lcom/oneplus/tuner/view/EqScrollView;->move(F)V

    .line 725
    return-void
.end method

.method public moveScroll(F)V
    .locals 1
    .param p1, "destance"    # F

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity;->mHWFB:Lcom/oneplus/tuner/view/HLWaveFormBackground;

    invoke-virtual {v0, p1}, Lcom/oneplus/tuner/view/HLWaveFormBackground;->notifyMove(F)V

    .line 1063
    return-void
.end method

.method public onArcProgressChanged(IF)V
    .locals 4
    .param p1, "param"    # I
    .param p2, "value"    # F

    .prologue
    .line 734
    const-string v1, "MixerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onArcProgressChanged value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    invoke-static {}, Lcom/waves/maxxaudio/MaxxAudioManager;->getInstance()Lcom/waves/maxxaudio/MaxxAudioManager;

    move-result-object v0

    .line 736
    .local v0, "manager":Lcom/waves/maxxaudio/MaxxAudioManager;
    sparse-switch p1, :sswitch_data_0

    .line 758
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/waves/maxxaudio/MaxxAudioManager;->setParam(IF)V

    .line 759
    return-void

    .line 738
    :sswitch_0
    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iput p2, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mVolumeStrengthen:F

    goto :goto_0

    .line 741
    :sswitch_1
    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iput p2, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mSpeakerExpansion:F

    .line 742
    const/16 v1, 0xd

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/waves/maxxaudio/MaxxAudioManager;->setParam(IF)V

    goto :goto_0

    .line 745
    :sswitch_2
    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iput p2, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mBassBoost:F

    goto :goto_0

    .line 748
    :sswitch_3
    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iput p2, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mTransparentTreble:F

    goto :goto_0

    .line 751
    :sswitch_4
    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iput p2, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mClearVocal:F

    goto :goto_0

    .line 754
    :sswitch_5
    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iput p2, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mChannelEqualization:F

    goto :goto_0

    .line 736
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_5
        0x4 -> :sswitch_2
        0x7 -> :sswitch_3
        0xa -> :sswitch_1
        0xe -> :sswitch_0
        0x97 -> :sswitch_4
    .end sparse-switch
.end method

.method public onArcProgressStart()V
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity;->mMoreSettingPanel:Lcom/oneplus/tuner/view/CustomConfigScrollView;

    invoke-virtual {v0}, Lcom/oneplus/tuner/view/CustomConfigScrollView;->preventTouchEvent()V

    .line 731
    return-void
.end method

.method public onArcProgressStop()V
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity;->mMoreSettingPanel:Lcom/oneplus/tuner/view/CustomConfigScrollView;

    invoke-virtual {v0}, Lcom/oneplus/tuner/view/CustomConfigScrollView;->acceptTouchEvent()V

    .line 764
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 109
    invoke-virtual {p0}, Lcom/oneplus/tuner/MixerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/oneplus/tuner/MixerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "sound_effect"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/providers/SoundEffectItem;

    iput-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mPassInSoundEffect:Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 111
    invoke-virtual {p0}, Lcom/oneplus/tuner/MixerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "isFromList"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/tuner/MixerActivity;->mIsFromList:Z

    .line 112
    invoke-virtual {p0}, Lcom/oneplus/tuner/MixerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "isfromlocal_list"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/tuner/MixerActivity;->mIsFromLocalList:Z

    .line 113
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mPassInSoundEffect:Lcom/oneplus/tuner/providers/SoundEffectItem;

    if-eqz v1, :cond_0

    .line 114
    const-string v1, "shuqi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receive, mPassInSoundEffect = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/tuner/MixerActivity;->mPassInSoundEffect:Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-virtual {v5}, Lcom/oneplus/tuner/providers/SoundEffectItem;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0}, Lcom/oneplus/tuner/MixerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/oneplus/tuner/MixerActivity;->mPassInSoundEffect:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget v4, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mShareId:I

    invoke-static {v1, v4}, Lcom/oneplus/tuner/database/OnePlusDbBusiness;->getSpecificCollection(Landroid/content/Context;I)Lcom/oneplus/tuner/database/bean/UserCollection;

    move-result-object v0

    .line 116
    .local v0, "tmp":Lcom/oneplus/tuner/database/bean/UserCollection;
    if-eqz v0, :cond_4

    .line 118
    invoke-virtual {v0}, Lcom/oneplus/tuner/database/bean/UserCollection;->getStatus()I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/oneplus/tuner/MixerActivity;->mStatus:I

    .line 124
    .end local v0    # "tmp":Lcom/oneplus/tuner/database/bean/UserCollection;
    :cond_0
    :goto_1
    const-string v1, "shuqi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/oneplus/tuner/MixerActivity;->mStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_1
    invoke-super {p0, p1}, Lcom/oneplus/tuner/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 127
    iget-boolean v1, p0, Lcom/oneplus/tuner/MixerActivity;->mIsSuccessLogin:Z

    if-nez v1, :cond_2

    .line 128
    iput v3, p0, Lcom/oneplus/tuner/MixerActivity;->mStatus:I

    .line 131
    :cond_2
    invoke-static {}, Lcom/oneplus/tuner/widget/FloatWindow;->needInit()V

    .line 133
    invoke-virtual {p0}, Lcom/oneplus/tuner/MixerActivity;->initView()V

    .line 142
    invoke-direct {p0}, Lcom/oneplus/tuner/MixerActivity;->refreshView()V

    .line 143
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mCustomSettingView:Lcom/oneplus/tuner/widget/FragmentView;

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/MixerActivity;->setContent(Landroid/view/View;)V

    .line 144
    iput-boolean v2, p0, Lcom/oneplus/tuner/MixerActivity;->mClickableFlag:Z

    .line 145
    return-void

    .restart local v0    # "tmp":Lcom/oneplus/tuner/database/bean/UserCollection;
    :cond_3
    move v1, v3

    .line 118
    goto :goto_0

    .line 121
    :cond_4
    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/tuner/MixerActivity;->mStatus:I

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 934
    invoke-static {}, Lcom/oneplus/tuner/widget/FloatWindow;->needInit()V

    .line 935
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->clearSoundEffectDataChangeListeners()V

    .line 936
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->unregisterSoundEffectUsedDataChangeListener()V

    .line 937
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 938
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/tuner/MixerActivity;->mIsMixer:Z

    .line 947
    invoke-super {p0}, Lcom/oneplus/tuner/base/BaseActivity;->onDestroy()V

    .line 948
    return-void
.end method

.method public onEffectDataChanged()V
    .locals 2

    .prologue
    .line 953
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity;->listPopupWindow:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    .line 954
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity;->listPopupWindow:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mPopupAdapter:Lcom/oneplus/tuner/adapter/ConfigSpinnerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 956
    :cond_0
    return-void
.end method

.method public onEffectDataInited()V
    .locals 5

    .prologue
    .line 864
    iget-boolean v2, p0, Lcom/oneplus/tuner/MixerActivity;->mIsFromList:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/oneplus/tuner/MixerActivity;->mIsFromLocalList:Z

    if-eqz v2, :cond_1

    .line 865
    :cond_0
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity;->mPassInSoundEffect:Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 870
    .local v1, "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    :goto_0
    const-string v2, "MixerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEffectDataInited --- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-virtual {v4}, Lcom/oneplus/tuner/providers/SoundEffectItem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mSeekBar:[Lcom/oneplus/tuner/widget/EqSeekBar;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 873
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mSeekBar:[Lcom/oneplus/tuner/widget/EqSeekBar;

    aget-object v2, v2, v0

    iget-object v3, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mEqBand:Lcom/oneplus/tuner/providers/SoundEffectEQBand;

    iget-object v3, v3, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqBpGain:[F

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/oneplus/tuner/widget/EqSeekBar;->setProgressValue(F)V

    .line 872
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 867
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    :cond_1
    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    .restart local v1    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    goto :goto_0

    .line 876
    .restart local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mBassSeek:Lcom/oneplus/tuner/view/ArcsProcessBar;

    iget v3, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mBassBoost:F

    invoke-virtual {v2, v3}, Lcom/oneplus/tuner/view/ArcsProcessBar;->setParamValue(F)V

    .line 877
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mStereoSeek:Lcom/oneplus/tuner/view/ArcsProcessBar;

    iget v3, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mTransparentTreble:F

    invoke-virtual {v2, v3}, Lcom/oneplus/tuner/view/ArcsProcessBar;->setParamValue(F)V

    .line 878
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mVoiceSet:Lcom/oneplus/tuner/view/ArcsProcessBar;

    iget v3, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mClearVocal:F

    invoke-virtual {v2, v3}, Lcom/oneplus/tuner/view/ArcsProcessBar;->setParamValue(F)V

    .line 879
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mChannelSet:Lcom/oneplus/tuner/view/ArcsProcessBar;

    iget v3, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mChannelEqualization:F

    invoke-virtual {v2, v3}, Lcom/oneplus/tuner/view/ArcsProcessBar;->setParamValue(F)V

    .line 881
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mArcsProcessBar1:Lcom/oneplus/tuner/view/ArcsProcessBar;

    iget v3, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mSpeakerExpansion:F

    invoke-virtual {v2, v3}, Lcom/oneplus/tuner/view/ArcsProcessBar;->setParamValue(F)V

    .line 882
    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity;->mArcsProcessBar0:Lcom/oneplus/tuner/view/ArcsProcessBar;

    iget v3, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mVolumeStrengthen:F

    invoke-virtual {v2, v3}, Lcom/oneplus/tuner/view/ArcsProcessBar;->setParamValue(F)V

    .line 884
    return-void
.end method

.method public onEffectUsedDataChanged()V
    .locals 6

    .prologue
    .line 820
    const/4 v2, 0x0

    .line 822
    .local v2, "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    sget-object v4, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    if-eqz v4, :cond_2

    .line 823
    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 828
    sget-object v4, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-virtual {v4, v2}, Lcom/oneplus/tuner/providers/SoundEffectItem;->copyFrom(Lcom/oneplus/tuner/providers/SoundEffectItem;)V

    .line 830
    invoke-static {}, Lcom/waves/maxxaudio/MaxxAudioManager;->getInstance()Lcom/waves/maxxaudio/MaxxAudioManager;

    move-result-object v3

    .line 831
    .local v3, "manager":Lcom/waves/maxxaudio/MaxxAudioManager;
    invoke-virtual {v3}, Lcom/waves/maxxaudio/MaxxAudioManager;->isEnabled()Z

    move-result v0

    .line 832
    .local v0, "enabled":Z
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/waves/maxxaudio/MaxxAudioManager;->setEnabled(Z)V

    .line 834
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/oneplus/tuner/MixerActivity;->mSeekBar:[Lcom/oneplus/tuner/widget/EqSeekBar;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 835
    iget-object v4, p0, Lcom/oneplus/tuner/MixerActivity;->mSeekBar:[Lcom/oneplus/tuner/widget/EqSeekBar;

    aget-object v4, v4, v1

    iget-object v5, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mEqBand:Lcom/oneplus/tuner/providers/SoundEffectEQBand;

    iget-object v5, v5, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqBpGain:[F

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/oneplus/tuner/widget/EqSeekBar;->setProgressValue(F)V

    .line 834
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 838
    :cond_0
    iget-object v4, p0, Lcom/oneplus/tuner/MixerActivity;->mBassSeek:Lcom/oneplus/tuner/view/ArcsProcessBar;

    iget v5, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mBassBoost:F

    invoke-virtual {v4, v5}, Lcom/oneplus/tuner/view/ArcsProcessBar;->setParamValue(F)V

    .line 839
    iget-object v4, p0, Lcom/oneplus/tuner/MixerActivity;->mStereoSeek:Lcom/oneplus/tuner/view/ArcsProcessBar;

    iget v5, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mTransparentTreble:F

    invoke-virtual {v4, v5}, Lcom/oneplus/tuner/view/ArcsProcessBar;->setParamValue(F)V

    .line 840
    iget-object v4, p0, Lcom/oneplus/tuner/MixerActivity;->mVoiceSet:Lcom/oneplus/tuner/view/ArcsProcessBar;

    iget v5, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mClearVocal:F

    invoke-virtual {v4, v5}, Lcom/oneplus/tuner/view/ArcsProcessBar;->setParamValue(F)V

    .line 841
    iget-object v4, p0, Lcom/oneplus/tuner/MixerActivity;->mChannelSet:Lcom/oneplus/tuner/view/ArcsProcessBar;

    iget v5, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mChannelEqualization:F

    invoke-virtual {v4, v5}, Lcom/oneplus/tuner/view/ArcsProcessBar;->setParamValue(F)V

    .line 843
    iget-object v4, p0, Lcom/oneplus/tuner/MixerActivity;->mArcsProcessBar1:Lcom/oneplus/tuner/view/ArcsProcessBar;

    iget v5, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mSpeakerExpansion:F

    invoke-virtual {v4, v5}, Lcom/oneplus/tuner/view/ArcsProcessBar;->setParamValue(F)V

    .line 844
    iget-object v4, p0, Lcom/oneplus/tuner/MixerActivity;->mArcsProcessBar0:Lcom/oneplus/tuner/view/ArcsProcessBar;

    iget v5, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mVolumeStrengthen:F

    invoke-virtual {v4, v5}, Lcom/oneplus/tuner/view/ArcsProcessBar;->setParamValue(F)V

    .line 846
    iget-object v4, p0, Lcom/oneplus/tuner/MixerActivity;->mCustomConfigTextView:Landroid/widget/TextView;

    iget-object v5, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 848
    if-eqz v0, :cond_1

    .line 849
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/waves/maxxaudio/MaxxAudioManager;->setEnabled(Z)V

    .line 858
    :cond_1
    invoke-virtual {v3}, Lcom/waves/maxxaudio/MaxxAudioManager;->effectSavePresets()V

    .line 860
    .end local v0    # "enabled":Z
    .end local v1    # "i":I
    .end local v3    # "manager":Lcom/waves/maxxaudio/MaxxAudioManager;
    :cond_2
    return-void
.end method

.method public onHeadsetPlugged()V
    .locals 2

    .prologue
    .line 768
    invoke-super {p0}, Lcom/oneplus/tuner/base/BaseActivity;->onHeadsetPlugged()V

    .line 770
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/tuner/MixerActivity;->setViewEnable(Z)V

    .line 771
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity;->mResetButton:Landroid/widget/TextView;

    new-instance v1, Lcom/oneplus/tuner/MixerActivity$9;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/MixerActivity$9;-><init>(Lcom/oneplus/tuner/MixerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 778
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity;->mShareButton:Landroid/widget/TextView;

    new-instance v1, Lcom/oneplus/tuner/MixerActivity$10;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/MixerActivity$10;-><init>(Lcom/oneplus/tuner/MixerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 791
    return-void
.end method

.method public onHeadsetUnplugged()V
    .locals 2

    .prologue
    .line 795
    invoke-super {p0}, Lcom/oneplus/tuner/base/BaseActivity;->onHeadsetUnplugged()V

    .line 797
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/tuner/MixerActivity;->setViewEnable(Z)V

    .line 798
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity;->mResetButton:Landroid/widget/TextView;

    new-instance v1, Lcom/oneplus/tuner/MixerActivity$11;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/MixerActivity$11;-><init>(Lcom/oneplus/tuner/MixerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 806
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity;->mShareButton:Landroid/widget/TextView;

    new-instance v1, Lcom/oneplus/tuner/MixerActivity$12;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/MixerActivity$12;-><init>(Lcom/oneplus/tuner/MixerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 815
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 893
    invoke-static {p0}, Lcom/oneplus/tuner/manager/OppoTunerManager;->registerSoundEffectUsedDataChangeListener(Lcom/oneplus/tuner/listener/SoundEffectUsedDataChangeListener;)V

    .line 894
    invoke-static {p0}, Lcom/oneplus/tuner/manager/OppoTunerManager;->registerSoundEffectDataChangeListener(Lcom/oneplus/tuner/listener/SoundEffectDataChangeListener;)V

    .line 903
    invoke-super {p0}, Lcom/oneplus/tuner/base/BaseActivity;->onResume()V

    .line 904
    return-void
.end method

.method public onScrollMove()V
    .locals 0

    .prologue
    .line 1068
    return-void
.end method

.method public onScrollStop()V
    .locals 0

    .prologue
    .line 1072
    return-void
.end method

.method public preventChildrenTouchEvent()V
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity;->mCustomSettingView:Lcom/oneplus/tuner/widget/FragmentView;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity;->mCustomSettingView:Lcom/oneplus/tuner/widget/FragmentView;

    invoke-virtual {v0}, Lcom/oneplus/tuner/widget/FragmentView;->preventChildrenTouchEvent()V

    .line 653
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 5

    .prologue
    .line 668
    iget-boolean v3, p0, Lcom/oneplus/tuner/MixerActivity;->mEqSetting:Z

    invoke-static {v3}, Lcom/oneplus/tuner/manager/OppoTunerManager;->resetEffectData(Z)V

    .line 670
    invoke-static {}, Lcom/waves/maxxaudio/MaxxAudioManager;->getInstance()Lcom/waves/maxxaudio/MaxxAudioManager;

    move-result-object v2

    .line 671
    .local v2, "manager":Lcom/waves/maxxaudio/MaxxAudioManager;
    invoke-virtual {v2}, Lcom/waves/maxxaudio/MaxxAudioManager;->isEnabled()Z

    move-result v0

    .line 672
    .local v0, "enabled":Z
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/waves/maxxaudio/MaxxAudioManager;->setEnabled(Z)V

    .line 674
    iget-boolean v3, p0, Lcom/oneplus/tuner/MixerActivity;->mEqSetting:Z

    if-eqz v3, :cond_0

    .line 675
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x14

    if-ge v1, v3, :cond_1

    .line 676
    iget-object v3, p0, Lcom/oneplus/tuner/MixerActivity;->mSeekBar:[Lcom/oneplus/tuner/widget/EqSeekBar;

    aget-object v3, v3, v1

    sget-object v4, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-object v4, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mEqBand:Lcom/oneplus/tuner/providers/SoundEffectEQBand;

    iget-object v4, v4, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqBpGain:[F

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/oneplus/tuner/widget/EqSeekBar;->setProgressValue(F)V

    .line 675
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 680
    .end local v1    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/oneplus/tuner/MixerActivity;->mBassSeek:Lcom/oneplus/tuner/view/ArcsProcessBar;

    sget-object v4, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget v4, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mBassBoost:F

    invoke-virtual {v3, v4}, Lcom/oneplus/tuner/view/ArcsProcessBar;->setParamValue(F)V

    .line 682
    iget-object v3, p0, Lcom/oneplus/tuner/MixerActivity;->mStereoSeek:Lcom/oneplus/tuner/view/ArcsProcessBar;

    sget-object v4, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget v4, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mTransparentTreble:F

    invoke-virtual {v3, v4}, Lcom/oneplus/tuner/view/ArcsProcessBar;->setParamValue(F)V

    .line 684
    iget-object v3, p0, Lcom/oneplus/tuner/MixerActivity;->mVoiceSet:Lcom/oneplus/tuner/view/ArcsProcessBar;

    sget-object v4, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget v4, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mClearVocal:F

    invoke-virtual {v3, v4}, Lcom/oneplus/tuner/view/ArcsProcessBar;->setParamValue(F)V

    .line 686
    iget-object v3, p0, Lcom/oneplus/tuner/MixerActivity;->mChannelSet:Lcom/oneplus/tuner/view/ArcsProcessBar;

    sget-object v4, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget v4, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mChannelEqualization:F

    invoke-virtual {v3, v4}, Lcom/oneplus/tuner/view/ArcsProcessBar;->setParamValue(F)V

    .line 689
    iget-object v3, p0, Lcom/oneplus/tuner/MixerActivity;->mArcsProcessBar1:Lcom/oneplus/tuner/view/ArcsProcessBar;

    sget-object v4, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget v4, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mSpeakerExpansion:F

    invoke-virtual {v3, v4}, Lcom/oneplus/tuner/view/ArcsProcessBar;->setParamValue(F)V

    .line 691
    iget-object v3, p0, Lcom/oneplus/tuner/MixerActivity;->mArcsProcessBar0:Lcom/oneplus/tuner/view/ArcsProcessBar;

    sget-object v4, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget v4, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mVolumeStrengthen:F

    invoke-virtual {v3, v4}, Lcom/oneplus/tuner/view/ArcsProcessBar;->setParamValue(F)V

    .line 695
    :cond_1
    if-eqz v0, :cond_2

    .line 696
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/waves/maxxaudio/MaxxAudioManager;->setEnabled(Z)V

    .line 699
    :cond_2
    return-void
.end method

.method public retainEq()V
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity;->mEqScView:Lcom/oneplus/tuner/view/EqScrollView;

    invoke-virtual {v0}, Lcom/oneplus/tuner/view/EqScrollView;->acceptTouchEvent()V

    .line 712
    return-void
.end method

.method public startEq()V
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity;->mEqScView:Lcom/oneplus/tuner/view/EqScrollView;

    invoke-virtual {v0}, Lcom/oneplus/tuner/view/EqScrollView;->preventTouchEvent()V

    .line 664
    return-void
.end method
