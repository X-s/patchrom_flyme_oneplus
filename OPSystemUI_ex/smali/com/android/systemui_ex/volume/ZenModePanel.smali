.class public Lcom/android/systemui_ex/volume/ZenModePanel;
.super Landroid/widget/LinearLayout;
.source "ZenModePanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;,
        Lcom/android/systemui_ex/volume/ZenModePanel$Prefs;,
        Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;,
        Lcom/android/systemui_ex/volume/ZenModePanel$Callback;,
        Lcom/android/systemui_ex/volume/ZenModePanel$H;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEFAULT_BUCKET_INDEX:I

.field private static final MAX_BUCKET_MINUTES:I

.field private static final MINUTE_BUCKETS:[I

.field private static final MIN_BUCKET_MINUTES:I

.field public static final ZEN_SETTINGS:Landroid/content/Intent;


# instance fields
.field private mAttached:Z

.field private mAttachedZen:I

.field private mBucketIndex:I

.field private mCallback:Lcom/android/systemui_ex/volume/ZenModePanel$Callback;

.field private mConditions:[Landroid/service/notification/Condition;

.field private final mContext:Landroid/content/Context;

.field private mController:Lcom/android/systemui_ex/statusbar/policy/ZenModeController;

.field private final mCountdownConditionSupported:Z

.field private mExitCondition:Landroid/service/notification/Condition;

.field private mExitConditionText:Ljava/lang/String;

.field private mExpanded:Z

.field private final mFirstConditionIndex:I

.field private final mForeverId:Landroid/net/Uri;

.field private final mHandler:Lcom/android/systemui_ex/volume/ZenModePanel$H;

.field private mHidden:Z

.field private final mIconPulser:Lcom/android/systemui_ex/volume/IconPulser;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mInteractionCallback:Lcom/android/systemui_ex/volume/Interaction$Callback;

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mMaxConditions:I

.field private final mMaxOptionalConditions:I

.field private mMoreSettings:Landroid/view/View;

.field private final mPrefs:Lcom/android/systemui_ex/volume/ZenModePanel$Prefs;

.field private mRequestingConditions:Z

.field private mSessionExitCondition:Landroid/service/notification/Condition;

.field private mSessionZen:I

.field private final mSubheadColor:I

.field private final mSubheadWarningColor:I

.field private mTag:Ljava/lang/String;

.field private mTimeCondition:Landroid/service/notification/Condition;

.field private final mTransitionHelper:Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;

.field private mZenButtons:Lcom/android/systemui_ex/volume/SegmentedButtons;

.field private final mZenButtonsCallback:Lcom/android/systemui_ex/volume/SegmentedButtons$Callback;

.field private final mZenCallback:Lcom/android/systemui_ex/statusbar/policy/ZenModeController$Callback;

.field private mZenConditions:Landroid/widget/LinearLayout;

.field private mZenSubhead:Landroid/view/View;

.field private mZenSubheadCollapsed:Landroid/widget/TextView;

.field private mZenSubheadExpanded:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    const-string v0, "ZenModePanel"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui_ex/volume/ZenModePanel;->DEBUG:Z

    .line 69
    sget-boolean v0, Lcom/android/systemui_ex/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    :goto_0
    sput-object v0, Lcom/android/systemui_ex/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    .line 72
    sget-object v0, Lcom/android/systemui_ex/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sput v0, Lcom/android/systemui_ex/volume/ZenModePanel;->MIN_BUCKET_MINUTES:I

    .line 73
    sget-object v0, Lcom/android/systemui_ex/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    sget-object v1, Lcom/android/systemui_ex/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    sput v0, Lcom/android/systemui_ex/volume/ZenModePanel;->MAX_BUCKET_MINUTES:I

    .line 74
    sget-object v0, Lcom/android/systemui_ex/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    sput v0, Lcom/android/systemui_ex/volume/ZenModePanel;->DEFAULT_BUCKET_INDEX:I

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ZEN_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui_ex/volume/ZenModePanel;->ZEN_SETTINGS:Landroid/content/Intent;

    return-void

    .line 69
    :cond_0
    sget-object v0, Landroid/service/notification/ZenModeConfig;->MINUTE_BUCKETS:[I

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x5
        0xf
        0x1e
        0x2d
        0x3c
        0x78
        0xb4
        0xf0
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    .line 120
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    new-instance v3, Lcom/android/systemui_ex/volume/ZenModePanel$H;

    invoke-direct {v3, p0, v5}, Lcom/android/systemui_ex/volume/ZenModePanel$H;-><init>(Lcom/android/systemui_ex/volume/ZenModePanel;Lcom/android/systemui_ex/volume/ZenModePanel$1;)V

    iput-object v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mHandler:Lcom/android/systemui_ex/volume/ZenModePanel$H;

    .line 92
    new-instance v3, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;

    invoke-direct {v3, p0, v5}, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;-><init>(Lcom/android/systemui_ex/volume/ZenModePanel;Lcom/android/systemui_ex/volume/ZenModePanel$1;)V

    iput-object v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ZenModePanel/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTag:Ljava/lang/String;

    .line 109
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mBucketIndex:I

    .line 781
    new-instance v3, Lcom/android/systemui_ex/volume/ZenModePanel$9;

    invoke-direct {v3, p0}, Lcom/android/systemui_ex/volume/ZenModePanel$9;-><init>(Lcom/android/systemui_ex/volume/ZenModePanel;)V

    iput-object v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenCallback:Lcom/android/systemui_ex/statusbar/policy/ZenModeController$Callback;

    .line 902
    new-instance v3, Lcom/android/systemui_ex/volume/ZenModePanel$10;

    invoke-direct {v3, p0}, Lcom/android/systemui_ex/volume/ZenModePanel$10;-><init>(Lcom/android/systemui_ex/volume/ZenModePanel;)V

    iput-object v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenButtonsCallback:Lcom/android/systemui_ex/volume/SegmentedButtons$Callback;

    .line 922
    new-instance v3, Lcom/android/systemui_ex/volume/ZenModePanel$11;

    invoke-direct {v3, p0}, Lcom/android/systemui_ex/volume/ZenModePanel$11;-><init>(Lcom/android/systemui_ex/volume/ZenModePanel;)V

    iput-object v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui_ex/volume/Interaction$Callback;

    .line 121
    iput-object p1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mContext:Landroid/content/Context;

    .line 122
    new-instance v3, Lcom/android/systemui_ex/volume/ZenModePanel$Prefs;

    invoke-direct {v3, p0, v5}, Lcom/android/systemui_ex/volume/ZenModePanel$Prefs;-><init>(Lcom/android/systemui_ex/volume/ZenModePanel;Lcom/android/systemui_ex/volume/ZenModePanel$1;)V

    iput-object v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mPrefs:Lcom/android/systemui_ex/volume/ZenModePanel$Prefs;

    .line 123
    iget-object v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mInflater:Landroid/view/LayoutInflater;

    .line 124
    new-instance v3, Lcom/android/systemui_ex/volume/IconPulser;

    iget-object v4, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui_ex/volume/IconPulser;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mIconPulser:Lcom/android/systemui_ex/volume/IconPulser;

    .line 125
    iget-object v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 126
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7f08000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mSubheadWarningColor:I

    .line 127
    const v3, 0x7f080013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mSubheadColor:I

    .line 128
    iget-object v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v4, 0x10c000d

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 130
    iget-object v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    const-string v4, "countdown"

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->isSystemConditionProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mCountdownConditionSupported:Z

    .line 132
    iget-boolean v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mCountdownConditionSupported:Z

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 133
    .local v0, "countdownDelta":I
    :goto_0
    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mFirstConditionIndex:I

    .line 134
    add-int/lit8 v1, v0, 0x1

    .line 135
    .local v1, "minConditions":I
    const v3, 0x7f0a0038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const/16 v4, 0x64

    invoke-static {v3, v1, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result v3

    iput v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mMaxConditions:I

    .line 137
    iget v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mMaxConditions:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mMaxOptionalConditions:I

    .line 138
    iget-object v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/service/notification/Condition;->newId(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "forever"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mForeverId:Landroid/net/Uri;

    .line 139
    sget-boolean v3, Lcom/android/systemui_ex/volume/ZenModePanel;->DEBUG:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string v4, "new ZenModePanel"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    return-void

    .line 132
    .end local v0    # "countdownDelta":I
    .end local v1    # "minConditions":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/systemui_ex/volume/ZenModePanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/ZenModePanel;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/ZenModePanel;->getVisibleConditions()I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui_ex/volume/ZenModePanel;I)Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/ZenModePanel;
    .param p1, "x1"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui_ex/volume/ZenModePanel;Landroid/service/notification/Condition;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/ZenModePanel;
    .param p1, "x1"    # Landroid/service/notification/Condition;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/volume/ZenModePanel;->select(Landroid/service/notification/Condition;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui_ex/volume/ZenModePanel;Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/ZenModePanel;
    .param p1, "x1"    # Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/volume/ZenModePanel;->announceConditionSelection(Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui_ex/volume/ZenModePanel;Landroid/view/View;Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/ZenModePanel;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;
    .param p3, "x3"    # Z

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui_ex/volume/ZenModePanel;->onClickTimeButton(Landroid/view/View;Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui_ex/volume/ZenModePanel;)Lcom/android/systemui_ex/volume/ZenModePanel$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/ZenModePanel;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mHandler:Lcom/android/systemui_ex/volume/ZenModePanel$H;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui_ex/volume/ZenModePanel;[Landroid/service/notification/Condition;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/ZenModePanel;
    .param p1, "x1"    # [Landroid/service/notification/Condition;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/volume/ZenModePanel;->handleUpdateConditions([Landroid/service/notification/Condition;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui_ex/volume/ZenModePanel;Landroid/service/notification/Condition;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/ZenModePanel;
    .param p1, "x1"    # Landroid/service/notification/Condition;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/volume/ZenModePanel;->handleExitConditionChanged(Landroid/service/notification/Condition;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui_ex/volume/ZenModePanel;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/ZenModePanel;
    .param p1, "x1"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/volume/ZenModePanel;->handleUpdateZen(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui_ex/volume/ZenModePanel;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/ZenModePanel;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000()I
    .locals 1

    .prologue
    .line 62
    sget v0, Lcom/android/systemui_ex/volume/ZenModePanel;->DEFAULT_BUCKET_INDEX:I

    return v0
.end method

.method static synthetic access$2100()[I
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/systemui_ex/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui_ex/volume/ZenModePanel;)Lcom/android/systemui_ex/volume/SegmentedButtons;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/ZenModePanel;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui_ex/volume/SegmentedButtons;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui_ex/volume/ZenModePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/ZenModePanel;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/ZenModePanel;->fireInteraction()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui_ex/volume/ZenModePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/ZenModePanel;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/ZenModePanel;->updateWidgets()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui_ex/volume/ZenModePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/ZenModePanel;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/ZenModePanel;->handleUpdateConditions()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/volume/ZenModePanel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/ZenModePanel;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/volume/ZenModePanel;->setExpanded(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui_ex/volume/ZenModePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/ZenModePanel;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/ZenModePanel;->fireMoreSettings()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui_ex/volume/ZenModePanel;)Lcom/android/systemui_ex/statusbar/policy/ZenModeController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/ZenModePanel;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mController:Lcom/android/systemui_ex/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui_ex/volume/ZenModePanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/ZenModePanel;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mExpanded:Z

    return v0
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/android/systemui_ex/volume/ZenModePanel;->DEBUG:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui_ex/volume/ZenModePanel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/ZenModePanel;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method private announceConditionSelection(Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;)V
    .locals 7
    .param p1, "tag"    # Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;

    .prologue
    const/4 v5, 0x0

    .line 690
    invoke-direct {p0, v5}, Lcom/android/systemui_ex/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v1

    .line 692
    .local v1, "zen":I
    packed-switch v1, :pswitch_data_0

    .line 704
    :goto_0
    return-void

    .line 694
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0143

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 702
    .local v0, "modeText":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0189

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    const/4 v5, 0x1

    iget-object v6, p1, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;->line1:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/volume/ZenModePanel;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 697
    .end local v0    # "modeText":Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0142

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 698
    .restart local v0    # "modeText":Ljava/lang/String;
    goto :goto_1

    .line 692
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private bind(Landroid/service/notification/Condition;Landroid/view/View;)V
    .locals 21
    .param p1, "condition"    # Landroid/service/notification/Condition;
    .param p2, "row"    # Landroid/view/View;

    .prologue
    .line 575
    if-nez p1, :cond_0

    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "condition must not be null"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 576
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/service/notification/Condition;->state:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    const/4 v8, 0x1

    .line 577
    .local v8, "enabled":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;

    move-object/from16 v13, v18

    .line 579
    .local v13, "tag":Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;
    :goto_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 580
    iget-object v0, v13, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    move-object/from16 v18, v0

    if-nez v18, :cond_d

    const/4 v9, 0x1

    .line 581
    .local v9, "first":Z
    :goto_2
    iget-object v0, v13, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 582
    const v18, 0x1020001

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/RadioButton;

    move-object/from16 v0, v18

    iput-object v0, v13, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    .line 584
    :cond_1
    move-object/from16 v0, p1

    iput-object v0, v13, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    .line 585
    iget-object v0, v13, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/systemui_ex/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v7

    .line 586
    .local v7, "conditionId":Landroid/net/Uri;
    sget-boolean v18, Lcom/android/systemui_ex/volume/ZenModePanel;->DEBUG:Z

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "bind i="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " first="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " condition="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_2
    iget-object v0, v13, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    move-object/from16 v18, v0

    if-nez v18, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/volume/ZenModePanel;->mAttachedZen:I

    move/from16 v18, v0

    if-eqz v18, :cond_e

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    move-object/from16 v18, v0

    iget-object v0, v13, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/android/systemui_ex/volume/ZenModePanel;->sameConditionId(Landroid/service/notification/Condition;Landroid/service/notification/Condition;)Z

    move-result v18

    if-nez v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/volume/ZenModePanel;->isCountdown(Landroid/service/notification/Condition;)Z

    move-result v18

    if-eqz v18, :cond_e

    iget-object v0, v13, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/volume/ZenModePanel;->isCountdown(Landroid/service/notification/Condition;)Z

    move-result v18

    if-eqz v18, :cond_e

    :cond_4
    const/4 v6, 0x1

    .line 593
    .local v6, "checked":Z
    :goto_3
    iget-object v0, v13, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v18

    move/from16 v0, v18

    if-eq v6, v0, :cond_6

    .line 594
    sget-boolean v18, Lcom/android/systemui_ex/volume/ZenModePanel;->DEBUG:Z

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "bind checked="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " condition="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_5
    iget-object v0, v13, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 597
    :cond_6
    iget-object v0, v13, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/systemui_ex/volume/ZenModePanel$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7, v13}, Lcom/android/systemui_ex/volume/ZenModePanel$4;-><init>(Lcom/android/systemui_ex/volume/ZenModePanel;Landroid/net/Uri;Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 614
    iget-object v0, v13, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    move-object/from16 v18, v0

    if-nez v18, :cond_7

    .line 615
    const v18, 0x1020002

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v13, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    .line 617
    :cond_7
    iget-object v0, v13, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;->line1:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-nez v18, :cond_8

    .line 618
    const v18, 0x1020014

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    iput-object v0, v13, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;->line1:Landroid/widget/TextView;

    .line 620
    :cond_8
    iget-object v0, v13, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-nez v18, :cond_9

    .line 621
    const v18, 0x1020015

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    iput-object v0, v13, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    .line 623
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_f

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    .line 625
    .local v10, "line1":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    .line 626
    .local v11, "line2":Ljava/lang/String;
    iget-object v0, v13, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;->line1:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 628
    iget-object v0, v13, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 633
    :goto_5
    iget-object v0, v13, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 634
    iget-object v0, v13, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v8, :cond_11

    const/high16 v18, 0x3f800000    # 1.0f

    :goto_6
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 636
    const v18, 0x1020019

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 637
    .local v4, "button1":Landroid/widget/ImageView;
    new-instance v18, Lcom/android/systemui_ex/volume/ZenModePanel$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v13}, Lcom/android/systemui_ex/volume/ZenModePanel$5;-><init>(Lcom/android/systemui_ex/volume/ZenModePanel;Landroid/view/View;Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    const v18, 0x102001a

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 645
    .local v5, "button2":Landroid/widget/ImageView;
    new-instance v18, Lcom/android/systemui_ex/volume/ZenModePanel$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v13}, Lcom/android/systemui_ex/volume/ZenModePanel$6;-><init>(Lcom/android/systemui_ex/volume/ZenModePanel;Landroid/view/View;Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 651
    iget-object v0, v13, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/systemui_ex/volume/ZenModePanel$7;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/android/systemui_ex/volume/ZenModePanel$7;-><init>(Lcom/android/systemui_ex/volume/ZenModePanel;Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 658
    invoke-static {v7}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v16

    .line 659
    .local v16, "time":J
    const-wide/16 v18, 0x0

    cmp-long v18, v16, v18

    if-lez v18, :cond_19

    .line 660
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 661
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 662
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/volume/ZenModePanel;->mBucketIndex:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_14

    .line 663
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/volume/ZenModePanel;->mBucketIndex:I

    move/from16 v18, v0

    if-lez v18, :cond_12

    const/16 v18, 0x1

    :goto_7
    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 664
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/volume/ZenModePanel;->mBucketIndex:I

    move/from16 v18, v0

    sget-object v19, Lcom/android/systemui_ex/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_13

    const/16 v18, 0x1

    :goto_8
    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 673
    :goto_9
    invoke-virtual {v4}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_17

    const/high16 v18, 0x3f800000    # 1.0f

    :goto_a
    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 674
    invoke-virtual {v5}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_18

    const/high16 v18, 0x3f800000    # 1.0f

    :goto_b
    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 680
    :goto_c
    if-eqz v9, :cond_a

    .line 681
    iget-object v0, v13, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui_ex/volume/Interaction$Callback;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/android/systemui_ex/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui_ex/volume/Interaction$Callback;)V

    .line 682
    iget-object v0, v13, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui_ex/volume/Interaction$Callback;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/android/systemui_ex/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui_ex/volume/Interaction$Callback;)V

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui_ex/volume/Interaction$Callback;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lcom/android/systemui_ex/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui_ex/volume/Interaction$Callback;)V

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui_ex/volume/Interaction$Callback;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Lcom/android/systemui_ex/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui_ex/volume/Interaction$Callback;)V

    .line 686
    :cond_a
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 687
    return-void

    .line 576
    .end local v4    # "button1":Landroid/widget/ImageView;
    .end local v5    # "button2":Landroid/widget/ImageView;
    .end local v6    # "checked":Z
    .end local v7    # "conditionId":Landroid/net/Uri;
    .end local v8    # "enabled":Z
    .end local v9    # "first":Z
    .end local v10    # "line1":Ljava/lang/String;
    .end local v11    # "line2":Ljava/lang/String;
    .end local v13    # "tag":Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;
    .end local v16    # "time":J
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 577
    .restart local v8    # "enabled":Z
    :cond_c
    new-instance v13, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;-><init>(Lcom/android/systemui_ex/volume/ZenModePanel$1;)V

    goto/16 :goto_1

    .line 580
    .restart local v13    # "tag":Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 589
    .restart local v7    # "conditionId":Landroid/net/Uri;
    .restart local v9    # "first":Z
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 623
    .restart local v6    # "checked":Z
    :cond_f
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    goto/16 :goto_4

    .line 630
    .restart local v10    # "line1":Ljava/lang/String;
    .restart local v11    # "line2":Ljava/lang/String;
    :cond_10
    iget-object v0, v13, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 631
    iget-object v0, v13, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 634
    :cond_11
    const v18, 0x3ecccccd    # 0.4f

    goto/16 :goto_6

    .line 663
    .restart local v4    # "button1":Landroid/widget/ImageView;
    .restart local v5    # "button2":Landroid/widget/ImageView;
    .restart local v16    # "time":J
    :cond_12
    const/16 v18, 0x0

    goto/16 :goto_7

    .line 664
    :cond_13
    const/16 v18, 0x0

    goto/16 :goto_8

    .line 666
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v14, v16, v18

    .line 667
    .local v14, "span":J
    sget v18, Lcom/android/systemui_ex/volume/ZenModePanel;->MIN_BUCKET_MINUTES:I

    const v19, 0xea60

    mul-int v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v18, v14, v18

    if-lez v18, :cond_15

    const/16 v18, 0x1

    :goto_d
    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/volume/ZenModePanel;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget v19, Lcom/android/systemui_ex/volume/ZenModePanel;->MAX_BUCKET_MINUTES:I

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v20

    invoke-static/range {v18 .. v20}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v12

    .line 670
    .local v12, "maxCondition":Landroid/service/notification/Condition;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v12, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_16

    const/16 v18, 0x1

    :goto_e
    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_9

    .line 667
    .end local v12    # "maxCondition":Landroid/service/notification/Condition;
    :cond_15
    const/16 v18, 0x0

    goto :goto_d

    .line 670
    .restart local v12    # "maxCondition":Landroid/service/notification/Condition;
    :cond_16
    const/16 v18, 0x0

    goto :goto_e

    .line 673
    .end local v12    # "maxCondition":Landroid/service/notification/Condition;
    .end local v14    # "span":J
    :cond_17
    const/high16 v18, 0x3f000000    # 0.5f

    goto/16 :goto_a

    .line 674
    :cond_18
    const/high16 v18, 0x3f000000    # 0.5f

    goto/16 :goto_b

    .line 676
    :cond_19
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 677
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_c
.end method

.method private checkForAttachedZenChange()V
    .locals 4

    .prologue
    .line 257
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/systemui_ex/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v0

    .line 258
    .local v0, "selectedZen":I
    sget-boolean v1, Lcom/android/systemui_ex/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectedZen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    iget v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mAttachedZen:I

    if-eq v0, v1, :cond_2

    .line 260
    sget-boolean v1, Lcom/android/systemui_ex/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachedZen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mAttachedZen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 262
    iget-object v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mPrefs:Lcom/android/systemui_ex/volume/ZenModePanel$Prefs;

    invoke-virtual {v1}, Lcom/android/systemui_ex/volume/ZenModePanel$Prefs;->trackNoneSelected()V

    .line 265
    :cond_2
    return-void
.end method

.method private static copy(Landroid/service/notification/Condition;)Landroid/service/notification/Condition;
    .locals 1
    .param p0, "condition"    # Landroid/service/notification/Condition;

    .prologue
    .line 339
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/Condition;->copy()Landroid/service/notification/Condition;

    move-result-object v0

    goto :goto_0
.end method

.method private ensureSelection()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 528
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/ZenModePanel;->getVisibleConditions()I

    move-result v4

    .line 529
    .local v4, "visibleConditions":I
    if-nez v4, :cond_1

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 530
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 531
    invoke-direct {p0, v2}, Lcom/android/systemui_ex/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;

    move-result-object v3

    .line 532
    .local v3, "tag":Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;
    if-eqz v3, :cond_2

    iget-object v5, v3, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v5}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 533
    sget-boolean v5, Lcom/android/systemui_ex/volume/ZenModePanel;->DEBUG:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not selecting a default, checked="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 530
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 537
    .end local v3    # "tag":Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;
    :cond_3
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/systemui_ex/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;

    move-result-object v1

    .line 538
    .local v1, "foreverTag":Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;
    if-eqz v1, :cond_0

    .line 539
    sget-boolean v5, Lcom/android/systemui_ex/volume/ZenModePanel;->DEBUG:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string v6, "Selecting a default"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_4
    iget-object v5, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mPrefs:Lcom/android/systemui_ex/volume/ZenModePanel$Prefs;

    invoke-virtual {v5}, Lcom/android/systemui_ex/volume/ZenModePanel$Prefs;->getMinuteIndex()I

    move-result v0

    .line 541
    .local v0, "favoriteIndex":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_5

    iget-boolean v5, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mCountdownConditionSupported:Z

    if-nez v5, :cond_6

    .line 542
    :cond_5
    iget-object v5, v1, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v5, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 544
    :cond_6
    iget-object v5, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/systemui_ex/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    aget v6, v6, v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-static {v5, v6, v7}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    .line 546
    iput v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mBucketIndex:I

    .line 547
    iget-object v5, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    iget-object v6, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/systemui_ex/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;)V

    .line 548
    invoke-direct {p0, v8}, Lcom/android/systemui_ex/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v5, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private fireExpanded()V
    .locals 2

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mCallback:Lcom/android/systemui_ex/volume/ZenModePanel$Callback;

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mCallback:Lcom/android/systemui_ex/volume/ZenModePanel$Callback;

    iget-boolean v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mExpanded:Z

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/volume/ZenModePanel$Callback;->onExpanded(Z)V

    .line 779
    :cond_0
    return-void
.end method

.method private fireInteraction()V
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mCallback:Lcom/android/systemui_ex/volume/ZenModePanel$Callback;

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mCallback:Lcom/android/systemui_ex/volume/ZenModePanel$Callback;

    invoke-interface {v0}, Lcom/android/systemui_ex/volume/ZenModePanel$Callback;->onInteraction()V

    .line 773
    :cond_0
    return-void
.end method

.method private fireMoreSettings()V
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mCallback:Lcom/android/systemui_ex/volume/ZenModePanel$Callback;

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mCallback:Lcom/android/systemui_ex/volume/ZenModePanel$Callback;

    invoke-interface {v0}, Lcom/android/systemui_ex/volume/ZenModePanel$Callback;->onMoreSettings()V

    .line 767
    :cond_0
    return-void
.end method

.method private forever()Landroid/service/notification/Condition;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 498
    new-instance v0, Landroid/service/notification/Condition;

    iget-object v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mForeverId:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/android/systemui_ex/volume/ZenModePanel;->foreverSummary()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    const/4 v6, 0x1

    move v7, v5

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v0
.end method

.method private foreverSummary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v1, 0x10406de

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;
    .locals 1
    .param p0, "condition"    # Landroid/service/notification/Condition;

    .prologue
    .line 331
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getConditionTagAt(I)Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;

    return-object v0
.end method

.method private getSelectedCondition()Landroid/service/notification/Condition;
    .locals 4

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/ZenModePanel;->getVisibleConditions()I

    move-result v0

    .line 382
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 383
    invoke-direct {p0, v1}, Lcom/android/systemui_ex/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;

    move-result-object v2

    .line 384
    .local v2, "tag":Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 385
    iget-object v3, v2, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    .line 388
    .end local v2    # "tag":Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;
    :goto_1
    return-object v3

    .line 382
    .restart local v2    # "tag":Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 388
    .end local v2    # "tag":Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getSelectedZen(I)I
    .locals 2
    .param p1, "defValue"    # I

    .prologue
    .line 392
    iget-object v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui_ex/volume/SegmentedButtons;

    invoke-virtual {v1}, Lcom/android/systemui_ex/volume/SegmentedButtons;->getSelectedValue()Ljava/lang/Object;

    move-result-object v0

    .line 393
    .local v0, "zen":Ljava/lang/Object;
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "zen":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .end local p1    # "defValue":I
    :cond_0
    return p1
.end method

.method private getVisibleConditions()I
    .locals 4

    .prologue
    .line 511
    const/4 v2, 0x0

    .line 512
    .local v2, "rt":I
    iget-object v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 513
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 514
    iget-object v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    add-int/2addr v2, v3

    .line 513
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 514
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 516
    :cond_1
    return v2
.end method

.method private handleExitConditionChanged(Landroid/service/notification/Condition;)V
    .locals 6
    .param p1, "exitCondition"    # Landroid/service/notification/Condition;

    .prologue
    .line 553
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/volume/ZenModePanel;->setExitCondition(Landroid/service/notification/Condition;)V

    .line 554
    sget-boolean v3, Lcom/android/systemui_ex/volume/ZenModePanel;->DEBUG:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleExitConditionChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/ZenModePanel;->getVisibleConditions()I

    move-result v0

    .line 556
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 557
    invoke-direct {p0, v1}, Lcom/android/systemui_ex/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;

    move-result-object v2

    .line 558
    .local v2, "tag":Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;
    if-eqz v2, :cond_1

    .line 559
    iget-object v3, v2, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    iget-object v4, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v3, v4}, Lcom/android/systemui_ex/volume/ZenModePanel;->sameConditionId(Landroid/service/notification/Condition;Landroid/service/notification/Condition;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 560
    iget-object v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/systemui_ex/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;)V

    .line 556
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 564
    .end local v2    # "tag":Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;
    :cond_2
    return-void
.end method

.method private handleUpdateConditions()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 470
    iget-object v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;

    invoke-virtual {v3}, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->isTransitioning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 471
    iget-object v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;

    invoke-virtual {v2}, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->pendingUpdateConditions()V

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    iget-object v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mConditions:[Landroid/service/notification/Condition;

    if-nez v3, :cond_4

    move v0, v2

    .line 475
    .local v0, "conditionCount":I
    :goto_1
    sget-boolean v3, Lcom/android/systemui_ex/volume/ZenModePanel;->DEBUG:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleUpdateConditions conditionCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/ZenModePanel;->forever()Landroid/service/notification/Condition;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/android/systemui_ex/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;)V

    .line 479
    iget-boolean v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mCountdownConditionSupported:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    if-eqz v2, :cond_3

    .line 480
    iget-object v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    iget-object v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/systemui_ex/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;)V

    .line 483
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_5

    .line 484
    iget-object v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mConditions:[Landroid/service/notification/Condition;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mFirstConditionIndex:I

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/systemui_ex/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;)V

    .line 483
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 474
    .end local v0    # "conditionCount":I
    .end local v1    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mConditions:[Landroid/service/notification/Condition;

    array-length v0, v3

    goto :goto_1

    .line 487
    .restart local v0    # "conditionCount":I
    .restart local v1    # "i":I
    :cond_5
    iget-object v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_3
    iget v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mFirstConditionIndex:I

    add-int/2addr v2, v0

    if-le v1, v2, :cond_6

    .line 489
    iget-object v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 488
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 492
    :cond_6
    iget-boolean v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mExpanded:Z

    if-eqz v2, :cond_0

    .line 493
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/ZenModePanel;->ensureSelection()V

    goto :goto_0
.end method

.method private handleUpdateConditions([Landroid/service/notification/Condition;)V
    .locals 4
    .param p1, "conditions"    # [Landroid/service/notification/Condition;

    .prologue
    .line 437
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/volume/ZenModePanel;->trimConditions([Landroid/service/notification/Condition;)[Landroid/service/notification/Condition;

    move-result-object p1

    .line 438
    iget-object v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mConditions:[Landroid/service/notification/Condition;

    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 439
    iget-object v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mConditions:[Landroid/service/notification/Condition;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 440
    .local v0, "count":I
    :goto_0
    sget-boolean v1, Lcom/android/systemui_ex/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUpdateConditions unchanged conditionCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    .end local v0    # "count":I
    :cond_0
    :goto_1
    return-void

    .line 439
    :cond_1
    iget-object v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mConditions:[Landroid/service/notification/Condition;

    array-length v0, v1

    goto :goto_0

    .line 443
    :cond_2
    iput-object p1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mConditions:[Landroid/service/notification/Condition;

    .line 444
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/ZenModePanel;->handleUpdateConditions()V

    goto :goto_1
.end method

.method private handleUpdateZen(I)V
    .locals 3
    .param p1, "zen"    # I

    .prologue
    .line 365
    iget v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mSessionZen:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mSessionZen:I

    if-eq v1, p1, :cond_0

    .line 366
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui_ex/volume/ZenModePanel;->setExpanded(Z)V

    .line 367
    iput p1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mSessionZen:I

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui_ex/volume/SegmentedButtons;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/volume/SegmentedButtons;->setSelectedValue(Ljava/lang/Object;)V

    .line 370
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/ZenModePanel;->updateWidgets()V

    .line 371
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/ZenModePanel;->handleUpdateConditions()V

    .line 372
    iget-boolean v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mExpanded:Z

    if-eqz v1, :cond_1

    .line 373
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/ZenModePanel;->getSelectedCondition()Landroid/service/notification/Condition;

    move-result-object v0

    .line 374
    .local v0, "selected":Landroid/service/notification/Condition;
    iget-object v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 375
    invoke-direct {p0, v0}, Lcom/android/systemui_ex/volume/ZenModePanel;->select(Landroid/service/notification/Condition;)V

    .line 378
    .end local v0    # "selected":Landroid/service/notification/Condition;
    :cond_1
    return-void

    .line 366
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hideAllConditions()V
    .locals 4

    .prologue
    .line 520
    iget-object v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 521
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 522
    iget-object v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 521
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 524
    :cond_0
    return-void
.end method

.method private isCountdown(Landroid/service/notification/Condition;)Z
    .locals 1
    .param p1, "c"    # Landroid/service/notification/Condition;

    .prologue
    .line 567
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isForever(Landroid/service/notification/Condition;)Z
    .locals 2
    .param p1, "c"    # Landroid/service/notification/Condition;

    .prologue
    .line 571
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mForeverId:Landroid/net/Uri;

    iget-object v1, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private newLayoutTransition(Landroid/animation/LayoutTransition$TransitionListener;)Landroid/animation/LayoutTransition;
    .locals 3
    .param p1, "listener"    # Landroid/animation/LayoutTransition$TransitionListener;

    .prologue
    .line 203
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 204
    .local v0, "transition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 205
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 206
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 207
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 208
    if-eqz p1, :cond_0

    .line 209
    invoke-virtual {v0, p1}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 211
    :cond_0
    return-object v0
.end method

.method private onClickTimeButton(Landroid/view/View;Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;Z)V
    .locals 18
    .param p1, "row"    # Landroid/view/View;
    .param p2, "tag"    # Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;
    .param p3, "up"    # Z

    .prologue
    .line 707
    const/4 v13, 0x0

    .line 708
    .local v13, "newCondition":Landroid/service/notification/Condition;
    sget-object v2, Lcom/android/systemui_ex/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    array-length v9, v2

    .line 709
    .local v9, "N":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui_ex/volume/ZenModePanel;->mBucketIndex:I

    const/4 v8, -0x1

    if-ne v2, v8, :cond_6

    .line 711
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-static {v2}, Lcom/android/systemui_ex/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v10

    .line 712
    .local v10, "conditionId":Landroid/net/Uri;
    invoke-static {v10}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v14

    .line 713
    .local v14, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 714
    .local v6, "now":J
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v9, :cond_2

    .line 715
    if-eqz p3, :cond_4

    move v12, v11

    .line 716
    .local v12, "j":I
    :goto_1
    sget-object v2, Lcom/android/systemui_ex/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    aget v5, v2, v12

    .line 717
    .local v5, "bucketMinutes":I
    const v2, 0xea60

    mul-int/2addr v2, v5

    int-to-long v0, v2

    move-wide/from16 v16, v0

    add-long v3, v6, v16

    .line 718
    .local v3, "bucketTime":J
    if-eqz p3, :cond_0

    cmp-long v2, v3, v14

    if-gtz v2, :cond_1

    :cond_0
    if-nez p3, :cond_5

    cmp-long v2, v3, v14

    if-gez v2, :cond_5

    .line 719
    :cond_1
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui_ex/volume/ZenModePanel;->mBucketIndex:I

    .line 720
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIJI)Landroid/service/notification/Condition;

    move-result-object v13

    .line 725
    .end local v3    # "bucketTime":J
    .end local v5    # "bucketMinutes":I
    .end local v12    # "j":I
    :cond_2
    if-nez v13, :cond_3

    .line 726
    sget v2, Lcom/android/systemui_ex/volume/ZenModePanel;->DEFAULT_BUCKET_INDEX:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui_ex/volume/ZenModePanel;->mBucketIndex:I

    .line 727
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/volume/ZenModePanel;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/systemui_ex/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/volume/ZenModePanel;->mBucketIndex:I

    move/from16 v16, v0

    aget v8, v8, v16

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v16

    move/from16 v0, v16

    invoke-static {v2, v8, v0}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v13

    .line 736
    .end local v6    # "now":J
    .end local v10    # "conditionId":Landroid/net/Uri;
    .end local v11    # "i":I
    .end local v14    # "time":J
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    .line 737
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/android/systemui_ex/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;)V

    .line 738
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 739
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui_ex/volume/ZenModePanel;->select(Landroid/service/notification/Condition;)V

    .line 740
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/volume/ZenModePanel;->announceConditionSelection(Lcom/android/systemui_ex/volume/ZenModePanel$ConditionTag;)V

    .line 741
    return-void

    .line 715
    .restart local v6    # "now":J
    .restart local v10    # "conditionId":Landroid/net/Uri;
    .restart local v11    # "i":I
    .restart local v14    # "time":J
    :cond_4
    add-int/lit8 v2, v9, -0x1

    sub-int v12, v2, v11

    goto :goto_1

    .line 714
    .restart local v3    # "bucketTime":J
    .restart local v5    # "bucketMinutes":I
    .restart local v12    # "j":I
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 732
    .end local v3    # "bucketTime":J
    .end local v5    # "bucketMinutes":I
    .end local v6    # "now":J
    .end local v10    # "conditionId":Landroid/net/Uri;
    .end local v11    # "i":I
    .end local v12    # "j":I
    .end local v14    # "time":J
    :cond_6
    const/4 v8, 0x0

    add-int/lit8 v16, v9, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/volume/ZenModePanel;->mBucketIndex:I

    move/from16 v17, v0

    if-eqz p3, :cond_7

    const/4 v2, 0x1

    :goto_3
    add-int v2, v2, v17

    move/from16 v0, v16

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui_ex/volume/ZenModePanel;->mBucketIndex:I

    .line 733
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/volume/ZenModePanel;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/systemui_ex/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/volume/ZenModePanel;->mBucketIndex:I

    move/from16 v16, v0

    aget v8, v8, v16

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v16

    move/from16 v0, v16

    invoke-static {v2, v8, v0}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v13

    goto :goto_2

    .line 732
    :cond_7
    const/4 v2, -0x1

    goto :goto_3
.end method

.method private parseExistingTimeCondition(Landroid/service/notification/Condition;)Landroid/service/notification/Condition;
    .locals 10
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    .line 426
    if-nez p1, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-object v0

    .line 427
    :cond_1
    iget-object v3, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 428
    .local v1, "time":J
    cmp-long v3, v1, v6

    if-eqz v3, :cond_0

    .line 429
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 430
    .local v4, "now":J
    sub-long v8, v1, v4

    .line 431
    .local v8, "span":J
    cmp-long v3, v8, v6

    if-lez v3, :cond_0

    sget v3, Lcom/android/systemui_ex/volume/ZenModePanel;->MAX_BUCKET_MINUTES:I

    const v6, 0xea60

    mul-int/2addr v3, v6

    int-to-long v6, v3

    cmp-long v3, v8, v6

    if-gtz v3, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mContext:Landroid/content/Context;

    long-to-float v3, v8

    const v6, 0x476a6000    # 60000.0f

    div-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIJI)Landroid/service/notification/Condition;

    move-result-object v0

    goto :goto_0
.end method

.method private refreshExitConditionText()V
    .locals 2

    .prologue
    .line 343
    iget-object v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    if-nez v1, :cond_0

    .line 344
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/ZenModePanel;->foreverSummary()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mExitConditionText:Ljava/lang/String;

    .line 351
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-direct {p0, v1}, Lcom/android/systemui_ex/volume/ZenModePanel;->isCountdown(Landroid/service/notification/Condition;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 346
    iget-object v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-direct {p0, v1}, Lcom/android/systemui_ex/volume/ZenModePanel;->parseExistingTimeCondition(Landroid/service/notification/Condition;)Landroid/service/notification/Condition;

    move-result-object v0

    .line 347
    .local v0, "condition":Landroid/service/notification/Condition;
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    :goto_1
    iput-object v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mExitConditionText:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/ZenModePanel;->foreverSummary()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 349
    .end local v0    # "condition":Landroid/service/notification/Condition;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    iget-object v1, v1, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mExitConditionText:Ljava/lang/String;

    goto :goto_0
.end method

.method private static sameConditionId(Landroid/service/notification/Condition;Landroid/service/notification/Condition;)Z
    .locals 4
    .param p0, "lhs"    # Landroid/service/notification/Condition;
    .param p1, "rhs"    # Landroid/service/notification/Condition;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 335
    if-nez p0, :cond_2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iget-object v2, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    iget-object v3, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private select(Landroid/service/notification/Condition;)V
    .locals 5
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .prologue
    const/4 v4, -0x1

    .line 744
    sget-boolean v1, Lcom/android/systemui_ex/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/volume/ZenModePanel;->isForever(Landroid/service/notification/Condition;)Z

    move-result v0

    .line 746
    .local v0, "isForever":Z
    iget-object v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mController:Lcom/android/systemui_ex/statusbar/policy/ZenModeController;

    if-eqz v1, :cond_1

    .line 747
    new-instance v1, Lcom/android/systemui_ex/volume/ZenModePanel$8;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/systemui_ex/volume/ZenModePanel$8;-><init>(Lcom/android/systemui_ex/volume/ZenModePanel;ZLandroid/service/notification/Condition;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 754
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/volume/ZenModePanel;->setExitCondition(Landroid/service/notification/Condition;)V

    .line 755
    if-eqz v0, :cond_3

    .line 756
    iget-object v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mPrefs:Lcom/android/systemui_ex/volume/ZenModePanel$Prefs;

    invoke-virtual {v1, v4}, Lcom/android/systemui_ex/volume/ZenModePanel$Prefs;->setMinuteIndex(I)V

    .line 760
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/android/systemui_ex/volume/ZenModePanel;->copy(Landroid/service/notification/Condition;)Landroid/service/notification/Condition;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui_ex/volume/ZenModePanel;->setSessionExitCondition(Landroid/service/notification/Condition;)V

    .line 761
    return-void

    .line 757
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/volume/ZenModePanel;->isCountdown(Landroid/service/notification/Condition;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mBucketIndex:I

    if-eq v1, v4, :cond_2

    .line 758
    iget-object v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mPrefs:Lcom/android/systemui_ex/volume/ZenModePanel$Prefs;

    iget v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mBucketIndex:I

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/volume/ZenModePanel$Prefs;->setMinuteIndex(I)V

    goto :goto_0
.end method

.method private setExitCondition(Landroid/service/notification/Condition;)V
    .locals 3
    .param p1, "exitCondition"    # Landroid/service/notification/Condition;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    :goto_0
    return-void

    .line 324
    :cond_0
    iput-object p1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    .line 325
    sget-boolean v0, Lcom/android/systemui_ex/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mExitCondition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v2}, Lcom/android/systemui_ex/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/ZenModePanel;->refreshExitConditionText()V

    .line 327
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/ZenModePanel;->updateWidgets()V

    goto :goto_0
.end method

.method private setExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mExpanded:Z

    if-ne p1, v0, :cond_0

    .line 275
    :goto_0
    return-void

    .line 269
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mExpanded:Z

    .line 270
    iget-boolean v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mExpanded:Z

    if-eqz v0, :cond_1

    .line 271
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/ZenModePanel;->ensureSelection()V

    .line 273
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/ZenModePanel;->updateWidgets()V

    .line 274
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/ZenModePanel;->fireExpanded()V

    goto :goto_0
.end method

.method private setRequestingConditions(Z)V
    .locals 3
    .param p1, "requesting"    # Z

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mRequestingConditions:Z

    if-ne v0, p1, :cond_0

    .line 305
    :goto_0
    return-void

    .line 280
    :cond_0
    sget-boolean v0, Lcom/android/systemui_ex/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRequestingConditions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mRequestingConditions:Z

    .line 282
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mController:Lcom/android/systemui_ex/statusbar/policy/ZenModeController;

    if-eqz v0, :cond_2

    .line 283
    new-instance v0, Lcom/android/systemui_ex/volume/ZenModePanel$3;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui_ex/volume/ZenModePanel$3;-><init>(Lcom/android/systemui_ex/volume/ZenModePanel;Z)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 290
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mRequestingConditions:Z

    if-eqz v0, :cond_5

    .line 291
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/volume/ZenModePanel;->parseExistingTimeCondition(Landroid/service/notification/Condition;)Landroid/service/notification/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    .line 292
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    if-eqz v0, :cond_4

    .line 293
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mBucketIndex:I

    .line 299
    :goto_1
    sget-boolean v0, Lcom/android/systemui_ex/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initial bucket index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mBucketIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mConditions:[Landroid/service/notification/Condition;

    .line 301
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/ZenModePanel;->handleUpdateConditions()V

    goto :goto_0

    .line 295
    :cond_4
    sget v0, Lcom/android/systemui_ex/volume/ZenModePanel;->DEFAULT_BUCKET_INDEX:I

    iput v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mBucketIndex:I

    .line 296
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui_ex/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    iget v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mBucketIndex:I

    aget v1, v1, v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    goto :goto_1

    .line 303
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/ZenModePanel;->hideAllConditions()V

    goto :goto_0
.end method

.method private setSessionExitCondition(Landroid/service/notification/Condition;)V
    .locals 3
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    sget-boolean v0, Lcom/android/systemui_ex/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSessionExitCondition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/systemui_ex/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_1
    iput-object p1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    goto :goto_0
.end method

.method private trimConditions([Landroid/service/notification/Condition;)[Landroid/service/notification/Condition;
    .locals 6
    .param p1, "conditions"    # [Landroid/service/notification/Condition;

    .prologue
    .line 448
    if-eqz p1, :cond_0

    array-length v4, p1

    iget v5, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mMaxOptionalConditions:I

    if-gt v4, v5, :cond_2

    :cond_0
    move-object v3, p1

    .line 466
    :cond_1
    :goto_0
    return-object v3

    .line 453
    :cond_2
    const/4 v1, -0x1

    .line 454
    .local v1, "found":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_3

    .line 455
    aget-object v0, p1, v2

    .line 456
    .local v0, "c":Landroid/service/notification/Condition;
    iget-object v4, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    invoke-static {v4, v0}, Lcom/android/systemui_ex/volume/ZenModePanel;->sameConditionId(Landroid/service/notification/Condition;Landroid/service/notification/Condition;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 457
    move v1, v2

    .line 461
    .end local v0    # "c":Landroid/service/notification/Condition;
    :cond_3
    iget v4, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mMaxOptionalConditions:I

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/service/notification/Condition;

    .line 462
    .local v3, "rt":[Landroid/service/notification/Condition;
    iget v4, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mMaxOptionalConditions:I

    if-lt v1, v4, :cond_1

    .line 464
    iget v4, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mMaxOptionalConditions:I

    add-int/lit8 v4, v4, -0x1

    aget-object v5, p1, v1

    aput-object v5, v3, v4

    goto :goto_0

    .line 454
    .end local v3    # "rt":[Landroid/service/notification/Condition;
    .restart local v0    # "c":Landroid/service/notification/Condition;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private updateWidgets()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 397
    iget-object v8, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;

    invoke-virtual {v8}, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->isTransitioning()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 398
    iget-object v5, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;

    invoke-virtual {v5}, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->pendingUpdateWidgets()V

    .line 423
    :goto_0
    return-void

    .line 401
    :cond_0
    invoke-direct {p0, v6}, Lcom/android/systemui_ex/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v1

    .line 402
    .local v1, "zen":I
    if-nez v1, :cond_2

    move v4, v5

    .line 403
    .local v4, "zenOff":Z
    :goto_1
    if-ne v1, v5, :cond_3

    move v2, v5

    .line 404
    .local v2, "zenImportant":Z
    :goto_2
    const/4 v8, 0x2

    if-ne v1, v8, :cond_4

    move v3, v5

    .line 405
    .local v3, "zenNone":Z
    :goto_3
    iget-boolean v8, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mHidden:Z

    if-nez v8, :cond_5

    iget-boolean v8, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mExpanded:Z

    if-eqz v8, :cond_5

    move v0, v5

    .line 407
    .local v0, "expanded":Z
    :goto_4
    iget-object v8, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui_ex/volume/SegmentedButtons;

    iget-boolean v5, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mHidden:Z

    if-eqz v5, :cond_6

    move v5, v7

    :goto_5
    invoke-virtual {v8, v5}, Lcom/android/systemui_ex/volume/SegmentedButtons;->setVisibility(I)V

    .line 408
    iget-object v8, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenSubhead:Landroid/view/View;

    iget-boolean v5, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mHidden:Z

    if-nez v5, :cond_7

    if-nez v4, :cond_7

    move v5, v6

    :goto_6
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 409
    iget-object v8, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenSubheadExpanded:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    move v5, v6

    :goto_7
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 410
    iget-object v8, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenSubheadCollapsed:Landroid/widget/TextView;

    if-nez v0, :cond_9

    move v5, v6

    :goto_8
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 411
    iget-object v8, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mMoreSettings:Landroid/view/View;

    if-eqz v2, :cond_a

    if-eqz v0, :cond_a

    move v5, v6

    :goto_9
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 412
    iget-object v5, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    if-nez v4, :cond_b

    if-eqz v0, :cond_b

    :goto_a
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 414
    if-eqz v3, :cond_c

    .line 415
    iget-object v5, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenSubheadExpanded:Landroid/widget/TextView;

    const v6, 0x7f0c0141

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 416
    iget-object v5, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenSubheadCollapsed:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mExitConditionText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    :cond_1
    :goto_b
    iget-object v6, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenSubheadExpanded:Landroid/widget/TextView;

    if-eqz v3, :cond_d

    iget-object v5, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mPrefs:Lcom/android/systemui_ex/volume/ZenModePanel$Prefs;

    invoke-virtual {v5}, Lcom/android/systemui_ex/volume/ZenModePanel$Prefs;->isNoneDangerous()Z

    move-result v5

    if-eqz v5, :cond_d

    iget v5, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mSubheadWarningColor:I

    :goto_c
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .end local v0    # "expanded":Z
    .end local v2    # "zenImportant":Z
    .end local v3    # "zenNone":Z
    .end local v4    # "zenOff":Z
    :cond_2
    move v4, v6

    .line 402
    goto :goto_1

    .restart local v4    # "zenOff":Z
    :cond_3
    move v2, v6

    .line 403
    goto :goto_2

    .restart local v2    # "zenImportant":Z
    :cond_4
    move v3, v6

    .line 404
    goto :goto_3

    .restart local v3    # "zenNone":Z
    :cond_5
    move v0, v6

    .line 405
    goto :goto_4

    .restart local v0    # "expanded":Z
    :cond_6
    move v5, v6

    .line 407
    goto :goto_5

    :cond_7
    move v5, v7

    .line 408
    goto :goto_6

    :cond_8
    move v5, v7

    .line 409
    goto :goto_7

    :cond_9
    move v5, v7

    .line 410
    goto :goto_8

    :cond_a
    move v5, v7

    .line 411
    goto :goto_9

    :cond_b
    move v6, v7

    .line 412
    goto :goto_a

    .line 417
    :cond_c
    if-eqz v2, :cond_1

    .line 418
    iget-object v5, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenSubheadExpanded:Landroid/widget/TextView;

    const v6, 0x7f0c0143

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 419
    iget-object v5, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenSubheadCollapsed:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mExitConditionText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 421
    :cond_d
    iget v5, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mSubheadColor:I

    goto :goto_c
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 143
    const-string v0, "ZenModePanel state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    const-string v0, "  mCountdownConditionSupported="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mCountdownConditionSupported:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 145
    const-string v0, "  mMaxConditions="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mMaxConditions:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 146
    const-string v0, "  mRequestingConditions="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mRequestingConditions:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 147
    const-string v0, "  mAttached="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mAttached:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 148
    const-string v0, "  mHidden="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mHidden:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 149
    const-string v0, "  mExpanded="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mExpanded:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 150
    const-string v0, "  mSessionZen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mSessionZen:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 151
    const-string v0, "  mAttachedZen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mAttachedZen:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 152
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public init(Lcom/android/systemui_ex/statusbar/policy/ZenModeController;)V
    .locals 3
    .param p1, "controller"    # Lcom/android/systemui_ex/statusbar/policy/ZenModeController;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mController:Lcom/android/systemui_ex/statusbar/policy/ZenModeController;

    .line 309
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mController:Lcom/android/systemui_ex/statusbar/policy/ZenModeController;

    invoke-interface {v0}, Lcom/android/systemui_ex/statusbar/policy/ZenModeController;->getExitCondition()Landroid/service/notification/Condition;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/volume/ZenModePanel;->setExitCondition(Landroid/service/notification/Condition;)V

    .line 310
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/ZenModePanel;->refreshExitConditionText()V

    .line 311
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mSessionZen:I

    .line 312
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mController:Lcom/android/systemui_ex/statusbar/policy/ZenModeController;

    invoke-interface {v0}, Lcom/android/systemui_ex/statusbar/policy/ZenModeController;->getZen()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/volume/ZenModePanel;->handleUpdateZen(I)V

    .line 313
    sget-boolean v0, Lcom/android/systemui_ex/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init mExitCondition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/ZenModePanel;->hideAllConditions()V

    .line 315
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mController:Lcom/android/systemui_ex/statusbar/policy/ZenModeController;

    iget-object v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenCallback:Lcom/android/systemui_ex/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/ZenModeController;->addCallback(Lcom/android/systemui_ex/statusbar/policy/ZenModeController$Callback;)V

    .line 316
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 216
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 217
    sget-boolean v1, Lcom/android/systemui_ex/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string v2, "onAttachedToWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mAttached:Z

    .line 219
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/systemui_ex/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mAttachedZen:I

    .line 220
    iget v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mAttachedZen:I

    iput v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mSessionZen:I

    .line 221
    iget-object v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;

    invoke-virtual {v1}, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->clear()V

    .line 222
    iget-object v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v1}, Lcom/android/systemui_ex/volume/ZenModePanel;->copy(Landroid/service/notification/Condition;)Landroid/service/notification/Condition;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui_ex/volume/ZenModePanel;->setSessionExitCondition(Landroid/service/notification/Condition;)V

    .line 223
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/ZenModePanel;->refreshExitConditionText()V

    .line 224
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/ZenModePanel;->updateWidgets()V

    .line 225
    iget-boolean v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mHidden:Z

    if-nez v1, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui_ex/volume/ZenModePanel;->setRequestingConditions(Z)V

    .line 226
    return-void

    .line 225
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 230
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 231
    sget-boolean v0, Lcom/android/systemui_ex/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/ZenModePanel;->checkForAttachedZenChange()V

    .line 233
    iput-boolean v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mAttached:Z

    .line 234
    iput v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mAttachedZen:I

    .line 235
    iput v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mSessionZen:I

    .line 236
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/volume/ZenModePanel;->setSessionExitCondition(Landroid/service/notification/Condition;)V

    .line 237
    invoke-direct {p0, v2}, Lcom/android/systemui_ex/volume/ZenModePanel;->setExpanded(Z)V

    .line 238
    invoke-direct {p0, v2}, Lcom/android/systemui_ex/volume/ZenModePanel;->setRequestingConditions(Z)V

    .line 239
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;

    invoke-virtual {v0}, Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;->clear()V

    .line 240
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 157
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 159
    const v2, 0x7f0f019b

    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui_ex/volume/SegmentedButtons;

    iput-object v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui_ex/volume/SegmentedButtons;

    .line 160
    iget-object v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui_ex/volume/SegmentedButtons;

    const v3, 0x7f0c014d

    const v4, 0x7f020144

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui_ex/volume/SegmentedButtons;->addButton(IILjava/lang/Object;)V

    .line 162
    iget-object v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui_ex/volume/SegmentedButtons;

    const v3, 0x7f0c014e

    const v4, 0x7f020143

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui_ex/volume/SegmentedButtons;->addButton(IILjava/lang/Object;)V

    .line 164
    iget-object v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui_ex/volume/SegmentedButtons;

    const v3, 0x7f0c014f

    const v4, 0x7f020142

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui_ex/volume/SegmentedButtons;->addButton(IILjava/lang/Object;)V

    .line 166
    iget-object v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui_ex/volume/SegmentedButtons;

    iget-object v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenButtonsCallback:Lcom/android/systemui_ex/volume/SegmentedButtons$Callback;

    invoke-virtual {v2, v3}, Lcom/android/systemui_ex/volume/SegmentedButtons;->setCallback(Lcom/android/systemui_ex/volume/SegmentedButtons$Callback;)V

    .line 168
    const v2, 0x7f0f019a

    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 169
    .local v1, "zenButtonsContainer":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/systemui_ex/volume/ZenModePanel;->newLayoutTransition(Landroid/animation/LayoutTransition$TransitionListener;)Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 171
    const v2, 0x7f0f019c

    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenSubhead:Landroid/view/View;

    .line 173
    const v2, 0x7f0f019d

    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenSubheadCollapsed:Landroid/widget/TextView;

    .line 174
    iget-object v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenSubheadCollapsed:Landroid/widget/TextView;

    new-instance v3, Lcom/android/systemui_ex/volume/ZenModePanel$1;

    invoke-direct {v3, p0}, Lcom/android/systemui_ex/volume/ZenModePanel$1;-><init>(Lcom/android/systemui_ex/volume/ZenModePanel;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenSubheadCollapsed:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui_ex/volume/Interaction$Callback;

    invoke-static {v2, v3}, Lcom/android/systemui_ex/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui_ex/volume/Interaction$Callback;)V

    .line 182
    const v2, 0x7f0f019e

    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenSubheadExpanded:Landroid/widget/TextView;

    .line 183
    iget-object v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenSubheadExpanded:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui_ex/volume/Interaction$Callback;

    invoke-static {v2, v3}, Lcom/android/systemui_ex/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui_ex/volume/Interaction$Callback;)V

    .line 185
    const v2, 0x7f0f019f

    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mMoreSettings:Landroid/view/View;

    .line 186
    iget-object v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mMoreSettings:Landroid/view/View;

    new-instance v3, Lcom/android/systemui_ex/volume/ZenModePanel$2;

    invoke-direct {v3, p0}, Lcom/android/systemui_ex/volume/ZenModePanel$2;-><init>(Lcom/android/systemui_ex/volume/ZenModePanel;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mMoreSettings:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui_ex/volume/Interaction$Callback;

    invoke-static {v2, v3}, Lcom/android/systemui_ex/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui_ex/volume/Interaction$Callback;)V

    .line 194
    const v2, 0x7f0f01a0

    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    .line 195
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mMaxConditions:I

    if-ge v0, v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04006a

    invoke-virtual {v3, v4, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_0
    iget-object v2, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui_ex/volume/ZenModePanel$TransitionHelper;

    invoke-direct {p0, v2}, Lcom/android/systemui_ex/volume/ZenModePanel;->newLayoutTransition(Landroid/animation/LayoutTransition$TransitionListener;)Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/volume/ZenModePanel;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 200
    return-void
.end method

.method public setCallback(Lcom/android/systemui_ex/volume/ZenModePanel$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui_ex/volume/ZenModePanel$Callback;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mCallback:Lcom/android/systemui_ex/volume/ZenModePanel$Callback;

    .line 355
    return-void
.end method

.method public setHidden(Z)V
    .locals 3
    .param p1, "hidden"    # Z

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mHidden:Z

    if-ne v0, p1, :cond_0

    .line 254
    :goto_0
    return-void

    .line 250
    :cond_0
    sget-boolean v0, Lcom/android/systemui_ex/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hidden="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mHidden:Z

    .line 252
    iget-boolean v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mAttached:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mHidden:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui_ex/volume/ZenModePanel;->setRequestingConditions(Z)V

    .line 253
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/ZenModePanel;->updateWidgets()V

    goto :goto_0

    .line 252
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public showSilentHint()V
    .locals 3

    .prologue
    .line 358
    sget-boolean v1, Lcom/android/systemui_ex/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string v2, "showSilentHint"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui_ex/volume/SegmentedButtons;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui_ex/volume/SegmentedButtons;

    invoke-virtual {v1}, Lcom/android/systemui_ex/volume/SegmentedButtons;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 362
    :cond_1
    :goto_0
    return-void

    .line 360
    :cond_2
    iget-object v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui_ex/volume/SegmentedButtons;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/volume/SegmentedButtons;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 361
    .local v0, "noneButton":Landroid/view/View;
    iget-object v1, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mIconPulser:Lcom/android/systemui_ex/volume/IconPulser;

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/volume/IconPulser;->start(Landroid/view/View;)V

    goto :goto_0
.end method

.method public updateLocale()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui_ex/volume/SegmentedButtons;

    invoke-virtual {v0}, Lcom/android/systemui_ex/volume/SegmentedButtons;->updateLocale()V

    .line 320
    return-void
.end method
