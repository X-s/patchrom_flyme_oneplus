.class public Lcom/android/systemui_ex/statusbar/SignalClusterView;
.super Landroid/widget/LinearLayout;
.source "SignalClusterView.java"

# interfaces
.implements Lcom/android/systemui_ex/statusbar/StatusbarColorObserver;
.implements Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SignalCluster;
.implements Lcom/android/systemui_ex/statusbar/policy/SecurityController$SecurityControllerCallback;


# static fields
.field static final DEBUG:Z


# instance fields
.field private final STATUS_BAR_STYLE_ANDROID_DEFAULT:I

.field private final STATUS_BAR_STYLE_CDMA_1X_COMBINED:I

.field private final STATUS_BAR_STYLE_DATA_VOICE:I

.field private final STATUS_BAR_STYLE_DEFAULT_DATA:I

.field mAirplane:Landroid/widget/ImageView;

.field private mAirplaneIconId:I

.field private mDataActivity:Landroid/widget/ImageView;

.field private mDataActivityId:I

.field private mDataGroup:Landroid/view/ViewGroup;

.field private mDataVisible:Z

.field private mIsAirplaneMode:Z

.field private mIsMobileTypeIconWide:Z

.field mMobile:Landroid/widget/ImageView;

.field mMobileActivity:Landroid/widget/ImageView;

.field private mMobileActivityId:I

.field private mMobileCdma1x:Landroid/widget/ImageView;

.field private mMobileCdma1xId:I

.field private mMobileCdma1xOnly:Landroid/widget/ImageView;

.field private mMobileCdma1xOnlyId:I

.field private mMobileCdma1xOnlyVisible:Z

.field private mMobileCdma3g:Landroid/widget/ImageView;

.field private mMobileCdma3gId:I

.field private mMobileCdmaGroup:Landroid/view/ViewGroup;

.field private mMobileCdmaVisible:Z

.field private mMobileDataVoiceGroup:Landroid/view/ViewGroup;

.field private mMobileDataVoiceVisible:Z

.field private mMobileDescription:Ljava/lang/String;

.field mMobileGroup:Landroid/view/ViewGroup;

.field private mMobileSignalData:Landroid/widget/ImageView;

.field private mMobileSignalDataId:I

.field private mMobileSignalVoice:Landroid/widget/ImageView;

.field private mMobileSignalVoiceId:I

.field private mMobileStrengthId:I

.field mMobileType:Landroid/widget/ImageView;

.field private mMobileTypeDescription:Ljava/lang/String;

.field private mMobileTypeId:I

.field private mMobileVisible:Z

.field mNC:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

.field private mNoSimIconId:I

.field mNoSimSlot:Landroid/widget/ImageView;

.field private mRoaming:Z

.field mSC:Lcom/android/systemui_ex/statusbar/policy/SecurityController;

.field private mShowTwoBars:[I

.field private mStyle:I

.field mVpn:Landroid/widget/ImageView;

.field private mVpnVisible:Z

.field private mWideTypeIconStartPadding:I

.field mWifi:Landroid/widget/ImageView;

.field mWifiActivity:Landroid/widget/ImageView;

.field private mWifiActivityId:I

.field private mWifiDescription:Ljava/lang/String;

.field mWifiGroup:Landroid/view/ViewGroup;

.field private mWifiStrengthId:I

.field private mWifiVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    const-string v0, "SignalClusterView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    iput v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->STATUS_BAR_STYLE_ANDROID_DEFAULT:I

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->STATUS_BAR_STYLE_CDMA_1X_COMBINED:I

    .line 51
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->STATUS_BAR_STYLE_DEFAULT_DATA:I

    .line 52
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->STATUS_BAR_STYLE_DATA_VOICE:I

    .line 54
    iput v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mStyle:I

    .line 60
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mVpnVisible:Z

    .line 61
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifiVisible:Z

    .line 62
    iput v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifiStrengthId:I

    iput v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifiActivityId:I

    .line 63
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileVisible:Z

    .line 64
    iput v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileStrengthId:I

    iput v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileTypeId:I

    iput v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileActivityId:I

    .line 65
    iput v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mNoSimIconId:I

    .line 68
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdmaVisible:Z

    .line 69
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdma1xOnlyVisible:Z

    .line 70
    iput v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdma3gId:I

    .line 71
    iput v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdma1xId:I

    .line 72
    iput v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdma1xOnlyId:I

    .line 77
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileDataVoiceVisible:Z

    .line 78
    iput v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileSignalDataId:I

    .line 79
    iput v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileSignalVoiceId:I

    .line 84
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mDataVisible:Z

    .line 85
    iput v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mDataActivityId:I

    .line 88
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    .line 89
    iput v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mAirplaneIconId:I

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mStyle:I

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mShowTwoBars:[I

    .line 114
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui_ex/statusbar/SignalClusterView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/SignalClusterView;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mVpnVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/statusbar/SignalClusterView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/SignalClusterView;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->apply()V

    return-void
.end method

.method private apply()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 345
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 426
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mVpnVisible:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 348
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v3, "SignalClusterView"

    const-string v4, "vpn: %s"

    new-array v5, v6, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mVpnVisible:Z

    if-eqz v0, :cond_7

    const-string v0, "VISIBLE"

    :goto_2
    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_8

    .line 350
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifiStrengthId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 351
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifiActivityId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 352
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 359
    :goto_3
    iget v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifiActivityId:I

    if-nez v0, :cond_9

    .line 360
    invoke-direct {p0, v1}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->setWifiActivityVisible(Z)V

    .line 367
    :cond_2
    :goto_4
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v3, "SignalClusterView"

    const-string v4, "wifi: %s sig=%d act=%d"

    new-array v5, v8, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_a

    const-string v0, "VISIBLE"

    :goto_5
    aput-object v0, v5, v1

    iget v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifiStrengthId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    iget v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifiActivityId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileVisible:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-nez v0, :cond_b

    .line 373
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->updateMobile()V

    .line 374
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->updateCdma()V

    .line 375
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->updateData()V

    .line 376
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->updateDataVoice()V

    .line 377
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 386
    :goto_6
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-eqz v0, :cond_c

    .line 387
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mAirplaneIconId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 388
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 395
    :goto_7
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v3, "SignalClusterView"

    const-string v4, "mobile: %s sig=%d act=%d typ=%d"

    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileVisible:Z

    if-eqz v0, :cond_d

    const-string v0, "VISIBLE"

    :goto_8
    aput-object v0, v5, v1

    iget v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileStrengthId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    iget v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileActivityId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    iget v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileTypeId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_4
    iget v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mStyle:I

    if-nez v0, :cond_10

    .line 401
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileTypeId:I

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifiVisible:Z

    if-nez v0, :cond_e

    move v0, v1

    :goto_9
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 403
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileTypeId:I

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifiVisible:Z

    if-nez v0, :cond_f

    move v0, v1

    :goto_a
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 409
    :goto_b
    iget v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mStyle:I

    if-eqz v0, :cond_5

    .line 410
    iget v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mNoSimIconId:I

    if-eqz v0, :cond_11

    .line 411
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 413
    invoke-direct {p0, v1}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->setMobileAcvitityVisible(Z)V

    .line 424
    :cond_5
    :goto_c
    invoke-static {p0}, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->updateStatusbarIconColor(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 347
    goto/16 :goto_1

    .line 348
    :cond_7
    const-string v0, "GONE"

    goto/16 :goto_2

    .line 355
    :cond_8
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 356
    invoke-direct {p0, v1}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->setWifiActivityVisible(Z)V

    goto/16 :goto_3

    .line 362
    :cond_9
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_2

    .line 363
    invoke-direct {p0, v6}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->setWifiActivityVisible(Z)V

    goto/16 :goto_4

    .line 367
    :cond_a
    const-string v0, "GONE"

    goto/16 :goto_5

    .line 379
    :cond_b
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mDataGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_6

    .line 390
    :cond_c
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 395
    :cond_d
    const-string v0, "GONE"

    goto/16 :goto_8

    :cond_e
    move v0, v2

    .line 401
    goto :goto_9

    :cond_f
    move v0, v2

    .line 403
    goto :goto_a

    .line 405
    :cond_10
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b

    .line 415
    :cond_11
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_c
.end method

.method private convertMobileStrengthIcon(I)I
    .locals 1
    .param p1, "icon"    # I

    .prologue
    .line 620
    move v0, p1

    .line 621
    .local v0, "returnVal":I
    sparse-switch p1, :sswitch_data_0

    .line 685
    :goto_0
    return v0

    .line 623
    :sswitch_0
    const v0, 0x7f0202b9

    .line 624
    goto :goto_0

    .line 626
    :sswitch_1
    const v0, 0x7f0202c1

    .line 627
    goto :goto_0

    .line 629
    :sswitch_2
    const v0, 0x7f0202f7

    .line 630
    goto :goto_0

    .line 632
    :sswitch_3
    const v0, 0x7f0202ff

    .line 633
    goto :goto_0

    .line 635
    :sswitch_4
    const v0, 0x7f020339

    .line 636
    goto :goto_0

    .line 638
    :sswitch_5
    const v0, 0x7f020341

    .line 639
    goto :goto_0

    .line 641
    :sswitch_6
    const v0, 0x7f02037b

    .line 642
    goto :goto_0

    .line 644
    :sswitch_7
    const v0, 0x7f020383

    .line 645
    goto :goto_0

    .line 647
    :sswitch_8
    const v0, 0x7f0203bd

    .line 648
    goto :goto_0

    .line 650
    :sswitch_9
    const v0, 0x7f0203c5

    .line 651
    goto :goto_0

    .line 653
    :sswitch_a
    const v0, 0x7f0202ba

    .line 654
    goto :goto_0

    .line 656
    :sswitch_b
    const v0, 0x7f0202c2

    .line 657
    goto :goto_0

    .line 659
    :sswitch_c
    const v0, 0x7f0202f8

    .line 660
    goto :goto_0

    .line 662
    :sswitch_d
    const v0, 0x7f020300

    .line 663
    goto :goto_0

    .line 665
    :sswitch_e
    const v0, 0x7f02033a

    .line 666
    goto :goto_0

    .line 668
    :sswitch_f
    const v0, 0x7f020342

    .line 669
    goto :goto_0

    .line 671
    :sswitch_10
    const v0, 0x7f02037c

    .line 672
    goto :goto_0

    .line 674
    :sswitch_11
    const v0, 0x7f020384

    .line 675
    goto :goto_0

    .line 677
    :sswitch_12
    const v0, 0x7f0203be

    .line 678
    goto :goto_0

    .line 680
    :sswitch_13
    const v0, 0x7f0203c6

    .line 681
    goto :goto_0

    .line 621
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0202b8 -> :sswitch_0
        0x7f0202bd -> :sswitch_a
        0x7f0202c0 -> :sswitch_1
        0x7f0202c5 -> :sswitch_b
        0x7f0202f6 -> :sswitch_2
        0x7f0202fb -> :sswitch_c
        0x7f0202fe -> :sswitch_3
        0x7f020303 -> :sswitch_d
        0x7f020338 -> :sswitch_4
        0x7f02033d -> :sswitch_e
        0x7f020340 -> :sswitch_5
        0x7f020345 -> :sswitch_f
        0x7f02037a -> :sswitch_6
        0x7f02037f -> :sswitch_10
        0x7f020382 -> :sswitch_7
        0x7f020387 -> :sswitch_11
        0x7f0203bc -> :sswitch_8
        0x7f0203c1 -> :sswitch_12
        0x7f0203c4 -> :sswitch_9
        0x7f0203c9 -> :sswitch_13
    .end sparse-switch
.end method

.method private getCdma2gId(I)I
    .locals 3
    .param p1, "icon"    # I

    .prologue
    .line 689
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mNC:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    if-nez v2, :cond_0

    .line 690
    const/4 v1, 0x0

    .line 713
    :goto_0
    return v1

    .line 692
    :cond_0
    const/4 v1, 0x0

    .line 693
    .local v1, "retValue":I
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mNC:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getGsmSignalLevel()I

    move-result v0

    .line 694
    .local v0, "level":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 696
    :pswitch_0
    const v1, 0x7f0202b2

    .line 697
    goto :goto_0

    .line 699
    :pswitch_1
    const v1, 0x7f0202f0

    .line 700
    goto :goto_0

    .line 702
    :pswitch_2
    const v1, 0x7f020332

    .line 703
    goto :goto_0

    .line 705
    :pswitch_3
    const v1, 0x7f020374

    .line 706
    goto :goto_0

    .line 708
    :pswitch_4
    const v1, 0x7f0203b6

    .line 709
    goto :goto_0

    .line 694
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getCdmaRoamId(I)I
    .locals 1
    .param p1, "icon"    # I

    .prologue
    .line 717
    const/4 v0, 0x0

    .line 718
    .local v0, "returnVal":I
    sparse-switch p1, :sswitch_data_0

    .line 772
    :goto_0
    return v0

    .line 722
    :sswitch_0
    const v0, 0x7f0202c7

    .line 723
    goto :goto_0

    .line 727
    :sswitch_1
    const v0, 0x7f020305

    .line 728
    goto :goto_0

    .line 732
    :sswitch_2
    const v0, 0x7f020347

    .line 733
    goto :goto_0

    .line 737
    :sswitch_3
    const v0, 0x7f020389

    .line 738
    goto :goto_0

    .line 742
    :sswitch_4
    const v0, 0x7f0203cb

    .line 743
    goto :goto_0

    .line 747
    :sswitch_5
    const v0, 0x7f0202c6

    .line 748
    goto :goto_0

    .line 752
    :sswitch_6
    const v0, 0x7f020304

    .line 753
    goto :goto_0

    .line 757
    :sswitch_7
    const v0, 0x7f020346

    .line 758
    goto :goto_0

    .line 762
    :sswitch_8
    const v0, 0x7f020388

    .line 763
    goto :goto_0

    .line 767
    :sswitch_9
    const v0, 0x7f0203ca

    .line 768
    goto :goto_0

    .line 718
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0202b5 -> :sswitch_5
        0x7f0202b6 -> :sswitch_0
        0x7f0202bb -> :sswitch_5
        0x7f0202bc -> :sswitch_0
        0x7f0202c3 -> :sswitch_5
        0x7f0202c4 -> :sswitch_0
        0x7f0202f3 -> :sswitch_6
        0x7f0202f4 -> :sswitch_1
        0x7f0202f9 -> :sswitch_6
        0x7f0202fa -> :sswitch_1
        0x7f020301 -> :sswitch_6
        0x7f020302 -> :sswitch_1
        0x7f020335 -> :sswitch_7
        0x7f020336 -> :sswitch_2
        0x7f02033b -> :sswitch_7
        0x7f02033c -> :sswitch_2
        0x7f020343 -> :sswitch_7
        0x7f020344 -> :sswitch_2
        0x7f020377 -> :sswitch_8
        0x7f020378 -> :sswitch_3
        0x7f02037d -> :sswitch_8
        0x7f02037e -> :sswitch_3
        0x7f020385 -> :sswitch_8
        0x7f020386 -> :sswitch_3
        0x7f0203b9 -> :sswitch_9
        0x7f0203ba -> :sswitch_4
        0x7f0203bf -> :sswitch_9
        0x7f0203c0 -> :sswitch_4
        0x7f0203c7 -> :sswitch_9
        0x7f0203c8 -> :sswitch_4
    .end sparse-switch
.end method

.method private getMobileVoiceId()I
    .locals 3

    .prologue
    .line 592
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mNC:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    if-nez v2, :cond_0

    .line 593
    const/4 v1, 0x0

    .line 616
    :goto_0
    return v1

    .line 595
    :cond_0
    const/4 v1, 0x0

    .line 596
    .local v1, "retValue":I
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mNC:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getGsmSignalLevel()I

    move-result v0

    .line 597
    .local v0, "level":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 599
    :pswitch_0
    const v1, 0x7f0202db

    .line 600
    goto :goto_0

    .line 602
    :pswitch_1
    const v1, 0x7f020319

    .line 603
    goto :goto_0

    .line 605
    :pswitch_2
    const v1, 0x7f02035b

    .line 606
    goto :goto_0

    .line 608
    :pswitch_3
    const v1, 0x7f02039d

    .line 609
    goto :goto_0

    .line 611
    :pswitch_4
    const v1, 0x7f0203df

    .line 612
    goto :goto_0

    .line 597
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private isCdmaDataOnlyMode()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 527
    iget v4, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mStyle:I

    if-eq v4, v3, :cond_1

    .line 535
    :cond_0
    :goto_0
    return v2

    .line 530
    :cond_1
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mNC:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    if-eqz v4, :cond_0

    .line 533
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mNC:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getDataNetworkType()I

    move-result v0

    .line 534
    .local v0, "dataType":I
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mNC:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getVoiceNetworkType()I

    move-result v1

    .line 535
    .local v1, "voiceType":I
    const/16 v4, 0xd

    if-eq v0, v4, :cond_2

    const/4 v4, 0x5

    if-eq v0, v4, :cond_2

    const/4 v4, 0x6

    if-ne v0, v4, :cond_0

    :cond_2
    if-nez v1, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method private isRoaming()Z
    .locals 1

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mRoaming:Z

    return v0
.end method

.method private setMobileAcvitityVisible(Z)V
    .locals 2
    .param p1, "toShow"    # Z

    .prologue
    .line 794
    if-eqz p1, :cond_0

    .line 795
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 799
    :goto_0
    return-void

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setWifiActivityVisible(Z)V
    .locals 3
    .param p1, "toShow"    # Z

    .prologue
    const/16 v2, 0x8

    .line 785
    if-eqz p1, :cond_0

    .line 786
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 787
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 791
    :goto_0
    return-void

    .line 789
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private show1xOnly()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 565
    iget v3, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mStyle:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 578
    :cond_0
    :goto_0
    return v1

    .line 568
    :cond_1
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mNC:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    if-eqz v3, :cond_0

    .line 571
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mNC:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getDataNetworkType()I

    move-result v0

    .line 572
    .local v0, "dataType":I
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mNC:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getVoiceNetworkType()I

    move-result v2

    .line 573
    .local v2, "voiceType":I
    const/4 v1, 0x0

    .line 574
    .local v1, "ret":Z
    const/4 v3, 0x7

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 576
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private showBothDataAndVoice()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 503
    iget v3, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mStyle:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 523
    :cond_0
    :goto_0
    return v1

    .line 507
    :cond_1
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mShowTwoBars:[I

    aget v3, v3, v1

    if-eqz v3, :cond_0

    .line 511
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mNC:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    if-eqz v3, :cond_0

    .line 515
    const/4 v1, 0x0

    .line 516
    .local v1, "ret":Z
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mNC:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getDataNetworkType()I

    move-result v0

    .line 517
    .local v0, "dataType":I
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mNC:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getVoiceNetworkType()I

    move-result v2

    .line 518
    .local v2, "voiceType":I
    const/16 v3, 0x11

    if-eq v0, v3, :cond_2

    const/16 v3, 0xd

    if-ne v0, v3, :cond_0

    :cond_2
    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 521
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private showDataAndVoice()Z
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v1, 0x0

    .line 542
    iget v3, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mStyle:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 561
    :cond_0
    :goto_0
    return v1

    .line 545
    :cond_1
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mNC:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    if-eqz v3, :cond_0

    .line 548
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mNC:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getDataNetworkType()I

    move-result v0

    .line 549
    .local v0, "dataType":I
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mNC:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getVoiceNetworkType()I

    move-result v2

    .line 550
    .local v2, "voiceType":I
    const/4 v1, 0x0

    .line 551
    .local v1, "ret":Z
    if-eq v0, v5, :cond_2

    if-eq v0, v5, :cond_2

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    const/16 v3, 0xc

    if-eq v0, v3, :cond_2

    const/16 v3, 0xe

    if-eq v0, v3, :cond_2

    const/16 v3, 0xd

    if-ne v0, v3, :cond_0

    :cond_2
    const/16 v3, 0x10

    if-eq v2, v3, :cond_3

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 559
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private showMobileActivity()Z
    .locals 2

    .prologue
    .line 582
    iget v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mStyle:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateCdma()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 467
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdmaVisible:Z

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdma3g:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdma3gId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 469
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdma1x:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdma1xId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 470
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 475
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdma1xOnlyVisible:Z

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdma1xOnlyId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 477
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 481
    :goto_1
    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateData()V
    .locals 2

    .prologue
    .line 484
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mDataVisible:Z

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mDataActivity:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mDataActivityId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 486
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mDataGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 490
    :goto_0
    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mDataGroup:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateDataVoice()V
    .locals 2

    .prologue
    .line 493
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileDataVoiceVisible:Z

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileSignalData:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileSignalDataId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 495
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileSignalVoice:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileSignalVoiceId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 496
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileDataVoiceGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 500
    :goto_0
    return-void

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileDataVoiceGroup:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateMobile()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 430
    iget v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mNoSimIconId:I

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 432
    invoke-direct {p0, v3}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->setMobileAcvitityVisible(Z)V

    .line 433
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 441
    :goto_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileTypeId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 442
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileActivityId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 443
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mNoSimIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 444
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 445
    iget v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileActivityId:I

    if-nez v0, :cond_2

    .line 446
    invoke-direct {p0, v3}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->setMobileAcvitityVisible(Z)V

    .line 452
    :cond_0
    :goto_1
    return-void

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 436
    invoke-direct {p0, v4}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->setMobileAcvitityVisible(Z)V

    .line 437
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileStrengthId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 438
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 448
    :cond_2
    iget v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mNoSimIconId:I

    if-nez v0, :cond_0

    .line 449
    invoke-direct {p0, v4}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->setMobileAcvitityVisible(Z)V

    goto :goto_1
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 139
    const v0, 0x7f0f00c4

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    .line 140
    const v0, 0x7f0f00c5

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 141
    const v0, 0x7f0f00c6

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 142
    const v0, 0x7f0f00c7

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    .line 143
    const v0, 0x7f0f00c0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    .line 144
    const v0, 0x7f0f00c1

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    .line 145
    const v0, 0x7f0f00d1

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    .line 146
    const v0, 0x7f0f00c2

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    .line 147
    const v0, 0x7f0f00d2

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    .line 149
    const v0, 0x7f0f00ca

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    .line 150
    const v0, 0x7f0f00cb

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdma3g:Landroid/widget/ImageView;

    .line 151
    const v0, 0x7f0f00cc

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdma1x:Landroid/widget/ImageView;

    .line 152
    const v0, 0x7f0f00cd

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    .line 155
    const v0, 0x7f0f00ce

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileDataVoiceGroup:Landroid/view/ViewGroup;

    .line 156
    const v0, 0x7f0f00cf

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileSignalData:Landroid/widget/ImageView;

    .line 157
    const v0, 0x7f0f00d0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileSignalVoice:Landroid/widget/ImageView;

    .line 160
    const v0, 0x7f0f00c8

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mDataGroup:Landroid/view/ViewGroup;

    .line 161
    const v0, 0x7f0f00c9

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mDataActivity:Landroid/widget/ImageView;

    .line 162
    const v0, 0x7f0f00e8

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 164
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->apply()V

    .line 165
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    .line 170
    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 171
    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 172
    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    .line 173
    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    .line 174
    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    .line 175
    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    .line 176
    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    .line 177
    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    .line 178
    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    .line 179
    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdma3g:Landroid/widget/ImageView;

    .line 180
    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdma1x:Landroid/widget/ImageView;

    .line 181
    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    .line 182
    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mDataGroup:Landroid/view/ViewGroup;

    .line 183
    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mDataActivity:Landroid/widget/ImageView;

    .line 184
    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 186
    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileDataVoiceGroup:Landroid/view/ViewGroup;

    .line 187
    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileSignalData:Landroid/widget/ImageView;

    .line 188
    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileSignalVoice:Landroid/widget/ImageView;

    .line 190
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 191
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 131
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWideTypeIconStartPadding:I

    .line 133
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v1, 0x0

    .line 309
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 311
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 320
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 323
    :cond_2
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 324
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 327
    :cond_3
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 328
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 331
    :cond_4
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 332
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 335
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->apply()V

    .line 336
    return-void
.end method

.method public onStateChanged()V
    .locals 1

    .prologue
    .line 196
    new-instance v0, Lcom/android/systemui_ex/statusbar/SignalClusterView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/SignalClusterView$1;-><init>(Lcom/android/systemui_ex/statusbar/SignalClusterView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->post(Ljava/lang/Runnable;)Z

    .line 203
    return-void
.end method

.method public onStatusbarColorChange(Z)V
    .locals 0
    .param p1, "isUsingDarkColor"    # Z

    .prologue
    .line 782
    return-void
.end method

.method public setIsAirplaneMode(ZI)V
    .locals 0
    .param p1, "is"    # Z
    .param p2, "airplaneIconId"    # I

    .prologue
    .line 290
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    .line 291
    iput p2, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mAirplaneIconId:I

    .line 293
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->apply()V

    .line 294
    return-void
.end method

.method public setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;ZZI)V
    .locals 4
    .param p1, "visible"    # Z
    .param p2, "strengthIcon"    # I
    .param p3, "activityIcon"    # I
    .param p4, "typeIcon"    # I
    .param p5, "contentDescription"    # Ljava/lang/String;
    .param p6, "typeContentDescription"    # Ljava/lang/String;
    .param p7, "roaming"    # Z
    .param p8, "isTypeIconWide"    # Z
    .param p9, "noSimIcon"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 221
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileVisible:Z

    .line 222
    iput p2, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileStrengthId:I

    .line 223
    iput p3, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileActivityId:I

    .line 224
    iput p4, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileTypeId:I

    .line 225
    iput-object p5, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileDescription:Ljava/lang/String;

    .line 226
    iput-object p6, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    .line 227
    iput-boolean p7, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mRoaming:Z

    .line 228
    iput-boolean p8, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mIsMobileTypeIconWide:Z

    .line 229
    iput p9, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mNoSimIconId:I

    .line 231
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->showMobileActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    iput v2, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mDataActivityId:I

    .line 233
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mDataVisible:Z

    .line 240
    :goto_0
    iget v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mStyle:I

    if-ne v0, v1, :cond_7

    .line 241
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->isRoaming()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->showDataAndVoice()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdmaVisible:Z

    .line 243
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdma1xOnlyVisible:Z

    .line 244
    iput v2, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileStrengthId:I

    .line 246
    iput p2, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdma3gId:I

    .line 247
    iget v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdma3gId:I

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->getCdma2gId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdma1xId:I

    .line 248
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->isCdmaDataOnlyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdmaVisible:Z

    .line 250
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdma1xOnlyVisible:Z

    .line 251
    invoke-direct {p0, p2}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->convertMobileStrengthIcon(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileStrengthId:I

    .line 285
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->apply()V

    .line 286
    return-void

    .line 235
    :cond_1
    iput v2, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileActivityId:I

    .line 236
    iput p3, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mDataActivityId:I

    .line 237
    if-eqz p3, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mDataVisible:Z

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    .line 253
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->show1xOnly()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 254
    :cond_4
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdmaVisible:Z

    .line 255
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdma1xOnlyVisible:Z

    .line 256
    iput v2, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileStrengthId:I

    .line 258
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mDataVisible:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, p2}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->getCdmaRoamId(I)I

    move-result v0

    if-eqz v0, :cond_5

    .line 259
    invoke-direct {p0, p2}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->getCdmaRoamId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdma1xOnlyId:I

    goto :goto_1

    .line 261
    :cond_5
    iput p2, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdma1xOnlyId:I

    goto :goto_1

    .line 264
    :cond_6
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdmaVisible:Z

    .line 265
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdma1xOnlyVisible:Z

    .line 267
    invoke-direct {p0, p2}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->convertMobileStrengthIcon(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileStrengthId:I

    goto :goto_1

    .line 269
    :cond_7
    iget v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mStyle:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_9

    .line 270
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->showBothDataAndVoice()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->getMobileVoiceId()I

    move-result v0

    if-eqz v0, :cond_8

    .line 271
    iput v2, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileStrengthId:I

    .line 272
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileDataVoiceVisible:Z

    .line 273
    iput p2, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileSignalDataId:I

    .line 274
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->getMobileVoiceId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileSignalVoiceId:I

    goto :goto_1

    .line 276
    :cond_8
    iget v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileStrengthId:I

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->convertMobileStrengthIcon(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileStrengthId:I

    .line 277
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileDataVoiceVisible:Z

    goto :goto_1

    .line 280
    :cond_9
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdmaVisible:Z

    .line 281
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileCdma1xOnlyVisible:Z

    .line 282
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mMobileDataVoiceVisible:Z

    goto :goto_1
.end method

.method public setNetworkController(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;)V
    .locals 3
    .param p1, "nc"    # Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 117
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mNC:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    .line 119
    return-void
.end method

.method public setSecurityController(Lcom/android/systemui_ex/statusbar/policy/SecurityController;)V
    .locals 3
    .param p1, "sc"    # Lcom/android/systemui_ex/statusbar/policy/SecurityController;

    .prologue
    .line 122
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mSC:Lcom/android/systemui_ex/statusbar/policy/SecurityController;

    .line 124
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mSC:Lcom/android/systemui_ex/statusbar/policy/SecurityController;

    invoke-interface {v0, p0}, Lcom/android/systemui_ex/statusbar/policy/SecurityController;->addCallback(Lcom/android/systemui_ex/statusbar/policy/SecurityController$SecurityControllerCallback;)V

    .line 125
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mSC:Lcom/android/systemui_ex/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui_ex/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mVpnVisible:Z

    .line 126
    return-void
.end method

.method public setWifiIndicators(ZIILjava/lang/String;)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "strengthIcon"    # I
    .param p3, "activityIcon"    # I
    .param p4, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifiVisible:Z

    .line 209
    iput p2, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifiStrengthId:I

    .line 210
    iput p3, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifiActivityId:I

    .line 211
    iput-object p4, p0, Lcom/android/systemui_ex/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    .line 213
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/SignalClusterView;->apply()V

    .line 214
    return-void
.end method
