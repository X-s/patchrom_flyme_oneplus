.class public Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;
.super Ljava/lang/Object;
.source "BrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$BrightnessObserver;,
        Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;
    }
.end annotation


# instance fields
.field private mAutomatic:Z

.field private final mAutomaticAvailable:Z

.field private mBackgroundTransparencyCallback:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel$BackgroundTransparencyCallback;

.field private final mBrightnessObserver:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$BrightnessObserver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentProgress:I

.field private mFunctionControlPanel:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

.field private final mHandler:Landroid/os/Handler;

.field private final mMaximumBacklight:I

.field private final mPower:Landroid/os/IPowerManager;

.field private final mSeekBar:Landroid/widget/SeekBar;

.field private final mSeekbarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field mState:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/SeekBar;Lcom/android/systemui_ex/controlpanel/qs/QSPanel;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "seekbar"    # Landroid/widget/SeekBar;
    .param p3, "functionControlPanel"    # Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v1, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;->STATE_RELEASE:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mState:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;

    .line 54
    new-instance v1, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$1;-><init>(Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;)V

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mSeekbarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 180
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mContext:Landroid/content/Context;

    .line 182
    iput-object p2, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mSeekBar:Landroid/widget/SeekBar;

    .line 183
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mSeekbarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 185
    iput-object p3, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mFunctionControlPanel:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    .line 187
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    .line 189
    new-instance v1, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$BrightnessObserver;

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$BrightnessObserver;-><init>(Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mBrightnessObserver:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$BrightnessObserver;

    .line 190
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mBrightnessObserver:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$BrightnessObserver;

    invoke-virtual {v1}, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$BrightnessObserver;->startObserving()V

    .line 192
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 193
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mMaximumBacklight:I

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mAutomaticAvailable:Z

    .line 197
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mPower:Landroid/os/IPowerManager;

    .line 199
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->updateSlider()V

    .line 200
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    .prologue
    .line 24
    iget v0, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mCurrentProgress:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mCurrentProgress:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;)Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel$BackgroundTransparencyCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mBackgroundTransparencyCallback:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel$BackgroundTransparencyCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;)Lcom/android/systemui_ex/controlpanel/qs/QSPanel;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mFunctionControlPanel:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;
    .param p1, "x1"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->updateBrightness(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->updateMode()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->updateSlider()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mAutomatic:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private updateBrightness(I)V
    .locals 7
    .param p1, "progress"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x2

    .line 92
    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness_mode"

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 96
    .local v1, "automatic":I
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    iput-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mAutomatic:Z

    .line 97
    iget-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mAutomatic:Z

    if-eqz v3, :cond_1

    .line 99
    int-to-float v3, p1

    const/high16 v4, 0x42480000    # 50.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v0, v3, v4

    .line 100
    .local v0, "adj":F
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v3, v0}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    .line 101
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_auto_brightness_adj"

    const/4 v5, -0x2

    invoke-static {v3, v4, v0, v5}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v0    # "adj":F
    :goto_0
    return-void

    .line 105
    .restart local v0    # "adj":F
    :catch_0
    move-exception v2

    .line 106
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 110
    .end local v0    # "adj":F
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v3, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    .line 111
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness"

    const/4 v5, -0x2

    invoke-static {v3, v4, p1, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 114
    :catch_1
    move-exception v2

    .line 115
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateMode()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 204
    iget-boolean v2, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mAutomaticAvailable:Z

    if-eqz v2, :cond_1

    .line 206
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 210
    .local v0, "automatic":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mAutomatic:Z

    .line 212
    .end local v0    # "automatic":I
    :cond_1
    return-void
.end method

.method private updateSlider()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x2

    .line 217
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 221
    .local v0, "automatic":I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mAutomatic:Z

    .line 222
    iget-boolean v2, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mAutomatic:Z

    if-eqz v2, :cond_1

    .line 223
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_auto_brightness_adj"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v1

    .line 226
    .local v1, "value":F
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 227
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mSeekBar:Landroid/widget/SeekBar;

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v1

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 236
    .end local v1    # "value":F
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    iget v4, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mMaximumBacklight:I

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 233
    .local v1, "value":I
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 234
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method


# virtual methods
.method public setBackgroundTransparencyCallback(Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel$BackgroundTransparencyCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel$BackgroundTransparencyCallback;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;->mBackgroundTransparencyCallback:Lcom/android/systemui_ex/controlpanel/view/OPGuildPanel$BackgroundTransparencyCallback;

    .line 240
    return-void
.end method
