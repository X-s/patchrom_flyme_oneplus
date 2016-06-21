.class public Lcom/android/systemui_ex/settings/BrightnessController;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Lcom/android/systemui_ex/settings/ToggleSlider$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/settings/BrightnessController$BrightnessObserver;,
        Lcom/android/systemui_ex/settings/BrightnessController$BrightnessStateChangeCallback;
    }
.end annotation


# instance fields
.field private mAutomatic:Z

.field private final mAutomaticAvailable:Z

.field private final mBrightnessObserver:Lcom/android/systemui_ex/settings/BrightnessController$BrightnessObserver;

.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/settings/BrightnessController$BrightnessStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mControl:Lcom/android/systemui_ex/settings/ToggleSlider;

.field private mExternalChange:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mIcon:Landroid/widget/ImageView;

.field private mListening:Z

.field private final mMaximumBacklight:I

.field private final mMinimumBacklight:I

.field private final mPower:Landroid/os/IPowerManager;

.field private final mUserTracker:Lcom/android/systemui_ex/settings/CurrentUserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui_ex/settings/ToggleSlider;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Landroid/widget/ImageView;
    .param p3, "control"    # Lcom/android/systemui_ex/settings/ToggleSlider;

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 133
    iput-object p1, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mContext:Landroid/content/Context;

    .line 134
    iput-object p2, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mIcon:Landroid/widget/ImageView;

    .line 135
    iput-object p3, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mControl:Lcom/android/systemui_ex/settings/ToggleSlider;

    .line 136
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    .line 137
    new-instance v1, Lcom/android/systemui_ex/settings/BrightnessController$1;

    iget-object v2, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui_ex/settings/BrightnessController$1;-><init>(Lcom/android/systemui_ex/settings/BrightnessController;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mUserTracker:Lcom/android/systemui_ex/settings/CurrentUserTracker;

    .line 144
    new-instance v1, Lcom/android/systemui_ex/settings/BrightnessController$BrightnessObserver;

    iget-object v2, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui_ex/settings/BrightnessController$BrightnessObserver;-><init>(Lcom/android/systemui_ex/settings/BrightnessController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mBrightnessObserver:Lcom/android/systemui_ex/settings/BrightnessController$BrightnessObserver;

    .line 146
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 147
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mMinimumBacklight:I

    .line 148
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mMaximumBacklight:I

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mAutomaticAvailable:Z

    .line 152
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mPower:Landroid/os/IPowerManager;

    .line 153
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui_ex/settings/BrightnessController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/settings/BrightnessController;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mExternalChange:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/settings/BrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/settings/BrightnessController;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/systemui_ex/settings/BrightnessController;->updateMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/settings/BrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/settings/BrightnessController;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/systemui_ex/settings/BrightnessController;->updateSlider()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/settings/BrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/settings/BrightnessController;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mAutomatic:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui_ex/settings/BrightnessController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/settings/BrightnessController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui_ex/settings/BrightnessController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/settings/BrightnessController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    .prologue
    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setBrightnessAdj(F)V
    .locals 1
    .param p1, "adj"    # F

    .prologue
    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateIcon(Z)V
    .locals 2
    .param p1, "automatic"    # Z

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    :cond_0
    const v1, 0x7f0200d9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 259
    :cond_1
    return-void
.end method

.method private updateMode()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 263
    iget-boolean v2, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mAutomaticAvailable:Z

    if-eqz v2, :cond_1

    .line 265
    iget-object v2, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 269
    .local v0, "automatic":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mAutomatic:Z

    .line 270
    iget-boolean v1, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mAutomatic:Z

    invoke-direct {p0, v1}, Lcom/android/systemui_ex/settings/BrightnessController;->updateIcon(Z)V

    .line 275
    .end local v0    # "automatic":I
    :goto_0
    return-void

    .line 272
    :cond_1
    iget-object v2, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mControl:Lcom/android/systemui_ex/settings/ToggleSlider;

    invoke-virtual {v2, v1}, Lcom/android/systemui_ex/settings/ToggleSlider;->setChecked(Z)V

    .line 273
    invoke-direct {p0, v1}, Lcom/android/systemui_ex/settings/BrightnessController;->updateIcon(Z)V

    goto :goto_0
.end method

.method private updateSlider()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 279
    iget-boolean v1, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mAutomatic:Z

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_auto_brightness_adj"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 283
    .local v0, "value":F
    iget-object v1, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mControl:Lcom/android/systemui_ex/settings/ToggleSlider;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/settings/ToggleSlider;->setMax(I)V

    .line 284
    iget-object v1, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mControl:Lcom/android/systemui_ex/settings/ToggleSlider;

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v0

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/settings/ToggleSlider;->setValue(I)V

    .line 293
    .end local v0    # "value":F
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    iget v3, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mMaximumBacklight:I

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 290
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mControl:Lcom/android/systemui_ex/settings/ToggleSlider;

    iget v2, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mMaximumBacklight:I

    iget v3, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mMinimumBacklight:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/settings/ToggleSlider;->setMax(I)V

    .line 291
    iget-object v1, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mControl:Lcom/android/systemui_ex/settings/ToggleSlider;

    iget v2, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mMinimumBacklight:I

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/settings/ToggleSlider;->setValue(I)V

    goto :goto_0
.end method


# virtual methods
.method public onChanged(Lcom/android/systemui_ex/settings/ToggleSlider;ZZI)V
    .locals 6
    .param p1, "view"    # Lcom/android/systemui_ex/settings/ToggleSlider;
    .param p2, "tracking"    # Z
    .param p3, "automatic"    # Z
    .param p4, "value"    # I

    .prologue
    .line 199
    iget-boolean v4, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mAutomatic:Z

    invoke-direct {p0, v4}, Lcom/android/systemui_ex/settings/BrightnessController;->updateIcon(Z)V

    .line 200
    iget-boolean v4, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mExternalChange:Z

    if-eqz v4, :cond_1

    .line 231
    :cond_0
    return-void

    .line 202
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mAutomatic:Z

    if-nez v4, :cond_3

    .line 203
    iget v4, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mMinimumBacklight:I

    add-int v3, p4, v4

    .line 204
    .local v3, "val":I
    invoke-direct {p0, v3}, Lcom/android/systemui_ex/settings/BrightnessController;->setBrightness(I)V

    .line 205
    if-nez p2, :cond_2

    .line 206
    new-instance v4, Lcom/android/systemui_ex/settings/BrightnessController$2;

    invoke-direct {v4, p0, v3}, Lcom/android/systemui_ex/settings/BrightnessController$2;-><init>(Lcom/android/systemui_ex/settings/BrightnessController;I)V

    invoke-static {v4}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 228
    .end local v3    # "val":I
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/settings/BrightnessController$BrightnessStateChangeCallback;

    .line 229
    .local v1, "cb":Lcom/android/systemui_ex/settings/BrightnessController$BrightnessStateChangeCallback;
    invoke-interface {v1}, Lcom/android/systemui_ex/settings/BrightnessController$BrightnessStateChangeCallback;->onBrightnessLevelChanged()V

    goto :goto_1

    .line 215
    .end local v1    # "cb":Lcom/android/systemui_ex/settings/BrightnessController$BrightnessStateChangeCallback;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    int-to-float v4, p4

    const/high16 v5, 0x42480000    # 50.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v0, v4, v5

    .line 216
    .local v0, "adj":F
    invoke-direct {p0, v0}, Lcom/android/systemui_ex/settings/BrightnessController;->setBrightnessAdj(F)V

    .line 217
    if-nez p2, :cond_2

    .line 218
    new-instance v4, Lcom/android/systemui_ex/settings/BrightnessController$3;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui_ex/settings/BrightnessController$3;-><init>(Lcom/android/systemui_ex/settings/BrightnessController;F)V

    invoke-static {v4}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onInit(Lcom/android/systemui_ex/settings/ToggleSlider;)V
    .locals 0
    .param p1, "control"    # Lcom/android/systemui_ex/settings/ToggleSlider;

    .prologue
    .line 166
    return-void
.end method

.method public registerCallbacks()V
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mListening:Z

    if-eqz v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mBrightnessObserver:Lcom/android/systemui_ex/settings/BrightnessController$BrightnessObserver;

    invoke-virtual {v0}, Lcom/android/systemui_ex/settings/BrightnessController$BrightnessObserver;->startObserving()V

    .line 174
    iget-object v0, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mUserTracker:Lcom/android/systemui_ex/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui_ex/settings/CurrentUserTracker;->startTracking()V

    .line 178
    invoke-direct {p0}, Lcom/android/systemui_ex/settings/BrightnessController;->updateMode()V

    .line 179
    invoke-direct {p0}, Lcom/android/systemui_ex/settings/BrightnessController;->updateSlider()V

    .line 181
    iget-object v0, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mControl:Lcom/android/systemui_ex/settings/ToggleSlider;

    invoke-virtual {v0, p0}, Lcom/android/systemui_ex/settings/ToggleSlider;->setOnChangedListener(Lcom/android/systemui_ex/settings/ToggleSlider$Listener;)V

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mListening:Z

    goto :goto_0
.end method

.method public unregisterCallbacks()V
    .locals 2

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mListening:Z

    if-nez v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mBrightnessObserver:Lcom/android/systemui_ex/settings/BrightnessController$BrightnessObserver;

    invoke-virtual {v0}, Lcom/android/systemui_ex/settings/BrightnessController$BrightnessObserver;->stopObserving()V

    .line 192
    iget-object v0, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mUserTracker:Lcom/android/systemui_ex/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui_ex/settings/CurrentUserTracker;->stopTracking()V

    .line 193
    iget-object v0, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mControl:Lcom/android/systemui_ex/settings/ToggleSlider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/settings/ToggleSlider;->setOnChangedListener(Lcom/android/systemui_ex/settings/ToggleSlider$Listener;)V

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/settings/BrightnessController;->mListening:Z

    goto :goto_0
.end method
