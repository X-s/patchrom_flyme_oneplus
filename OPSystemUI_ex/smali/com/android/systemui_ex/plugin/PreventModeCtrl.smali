.class public Lcom/android/systemui_ex/plugin/PreventModeCtrl;
.super Lcom/android/systemui_ex/plugin/BaseCtrl;
.source "PreventModeCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/plugin/PreventModeCtrl$ProximityHandler;
    }
.end annotation


# static fields
.field private static mPreventModeActive:Z

.field private static mProximitySensorEnabled:Z


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mBackKeyUpTimeStamp:J

.field mBackground:Landroid/widget/ImageView;

.field private mBouncer:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsBackKeyDown:Z

.field private mIsVolumeUpKeyDown:Z

.field private mKeyguardIsVisible:Z

.field private mObject:Ljava/lang/Object;

.field mPMView:Lcom/android/systemui_ex/plugin/PreventModeView;

.field mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

.field private mVolumeUpKeyUpTimeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    sput-boolean v0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mPreventModeActive:Z

    .line 52
    sput-boolean v0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mProximitySensorEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Lcom/android/systemui_ex/plugin/BaseCtrl;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->DEBUG:Z

    .line 40
    const-string v0, "PreventModeCtrl"

    iput-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->TAG:Ljava/lang/String;

    .line 57
    iput-boolean v1, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mBouncer:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mKeyguardIsVisible:Z

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mObject:Ljava/lang/Object;

    .line 127
    new-instance v0, Lcom/android/systemui_ex/plugin/PreventModeCtrl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/plugin/PreventModeCtrl$1;-><init>(Lcom/android/systemui_ex/plugin/PreventModeCtrl;)V

    iput-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 69
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/plugin/PreventModeCtrl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/plugin/PreventModeCtrl;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/plugin/PreventModeCtrl;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/plugin/PreventModeCtrl;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/plugin/PreventModeCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/plugin/PreventModeCtrl;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->startRootAnimation()V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mPreventModeActive:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui_ex/plugin/PreventModeCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/plugin/PreventModeCtrl;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->disableProximitySensorInternal()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui_ex/plugin/PreventModeCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/plugin/PreventModeCtrl;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->enableProximitySensorInternal()V

    return-void
.end method

.method private disableProximitySensorInternal()V
    .locals 4

    .prologue
    .line 214
    iget-object v2, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 215
    sget-boolean v2, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mProximitySensorEnabled:Z

    if-eqz v2, :cond_0

    .line 216
    const-string v2, "PreventModeCtrl"

    const-string v3, "disableProximitySensor"

    invoke-static {v2, v3}, Lcom/android/systemui_ex/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 220
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 221
    iget-object v2, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mPMView:Lcom/android/systemui_ex/plugin/PreventModeView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/systemui_ex/plugin/PreventModeView;->setVisibility(I)V

    .line 222
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mProximitySensorEnabled:Z

    .line 223
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mPreventModeActive:Z

    .line 224
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mBackKeyUpTimeStamp:J

    .line 225
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mVolumeUpKeyUpTimeStamp:J

    .line 226
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mIsVolumeUpKeyDown:Z

    .line 227
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mIsBackKeyDown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 232
    .end local v0    # "identity":J
    :cond_0
    return-void

    .line 229
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private enableProximitySensorInternal()V
    .locals 7

    .prologue
    const/4 v4, 0x2

    .line 185
    iget-object v3, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 186
    sget-boolean v3, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mProximitySensorEnabled:Z

    if-nez v3, :cond_0

    .line 187
    const-string v3, "PreventModeCtrl"

    const-string v4, "enableProximitySensor"

    invoke-static {v3, v4}, Lcom/android/systemui_ex/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 191
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 193
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mProximitySensorEnabled:Z

    .line 194
    iget-object v3, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 195
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 196
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mBackKeyUpTimeStamp:J

    .line 197
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mVolumeUpKeyUpTimeStamp:J

    .line 198
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mIsVolumeUpKeyDown:Z

    .line 199
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mIsBackKeyDown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 204
    .end local v0    # "identity":J
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    .line 201
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private startRootAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 236
    sget-boolean v0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mPreventModeActive:Z

    if-ne v0, v2, :cond_0

    .line 276
    :goto_0
    return-void

    .line 240
    :cond_0
    const-string v0, "PreventModeCtrl"

    const-string v1, "startRootAnimation"

    invoke-static {v0, v1}, Lcom/android/systemui_ex/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    sput-boolean v2, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mPreventModeActive:Z

    .line 242
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 243
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 244
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 245
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui_ex/plugin/PreventModeCtrl$2;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/plugin/PreventModeCtrl$2;-><init>(Lcom/android/systemui_ex/plugin/PreventModeCtrl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 253
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui_ex/plugin/PreventModeCtrl$3;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/plugin/PreventModeCtrl$3;-><init>(Lcom/android/systemui_ex/plugin/PreventModeCtrl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 275
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 243
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public disPatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mPMView:Lcom/android/systemui_ex/plugin/PreventModeView;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/plugin/PreventModeView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 124
    return-void
.end method

.method public disableProximitySensor()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 209
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 211
    :cond_0
    return-void
.end method

.method public isPreventModeActive()Z
    .locals 1

    .prologue
    .line 294
    sget-boolean v0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mPreventModeActive:Z

    return v0
.end method

.method public onBackKeyDown()V
    .locals 4

    .prologue
    .line 312
    const-string v0, "PreventModeCtrl"

    const-string v1, "onBackKeyDown"

    invoke-static {v0, v1}, Lcom/android/systemui_ex/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mIsBackKeyDown:Z

    .line 314
    iget-boolean v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mIsVolumeUpKeyDown:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mVolumeUpKeyUpTimeStamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->disableProximitySensor()V

    .line 318
    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 299
    const-string v0, "PreventModeCtrl"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/android/systemui_ex/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mIsBackKeyDown:Z

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mBackKeyUpTimeStamp:J

    .line 302
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mPMView:Lcom/android/systemui_ex/plugin/PreventModeView;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/plugin/PreventModeView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 291
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 0
    .param p1, "bouncer"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mBouncer:Z

    .line 112
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mKeyguardIsVisible:Z

    .line 117
    if-nez p1, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->disableProximitySensor()V

    .line 120
    :cond_0
    return-void
.end method

.method public onScreenTurnedOff(I)V
    .locals 0
    .param p1, "why"    # I

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->disableProximitySensor()V

    .line 107
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui_ex/util/Utils;->isPreventModeEnalbed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mKeyguardIsVisible:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 102
    :cond_0
    return-void
.end method

.method public onStartCtrl()V
    .locals 5

    .prologue
    .line 73
    const-string v2, "PreventModeCtrl"

    const-string v3, "onStartCtrl"

    invoke-static {v2, v3}, Lcom/android/systemui_ex/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/android/systemui_ex/plugin/LSState;->getInstance()Lcom/android/systemui_ex/plugin/LSState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui_ex/plugin/LSState;->getStatusBarKeyguardViewManager()Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    .line 75
    invoke-static {}, Lcom/android/systemui_ex/plugin/LSState;->getInstance()Lcom/android/systemui_ex/plugin/LSState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui_ex/plugin/LSState;->getContainer()Landroid/view/ViewGroup;

    move-result-object v2

    const v3, 0x7f0f0086

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui_ex/plugin/PreventModeView;

    iput-object v2, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mPMView:Lcom/android/systemui_ex/plugin/PreventModeView;

    .line 76
    invoke-static {}, Lcom/android/systemui_ex/plugin/LSState;->getInstance()Lcom/android/systemui_ex/plugin/LSState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui_ex/plugin/LSState;->getContainer()Landroid/view/ViewGroup;

    move-result-object v2

    const v3, 0x7f0f0087

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mBackground:Landroid/widget/ImageView;

    .line 77
    iget-object v2, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mBackground:Landroid/widget/ImageView;

    const v3, 0x7f020053

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    iget-object v2, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    .line 80
    .local v1, "wm":Landroid/app/WallpaperManager;
    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getKeyguardBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 83
    iget-object v2, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 86
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mPMView:Lcom/android/systemui_ex/plugin/PreventModeView;

    iget-object v3, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mPMView:Lcom/android/systemui_ex/plugin/PreventModeView;

    invoke-virtual {v2, v3}, Lcom/android/systemui_ex/plugin/PreventModeView;->setPMView(Landroid/view/ViewGroup;)V

    .line 87
    new-instance v2, Lcom/android/systemui_ex/plugin/PreventModeCtrl$ProximityHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui_ex/plugin/PreventModeCtrl$ProximityHandler;-><init>(Lcom/android/systemui_ex/plugin/PreventModeCtrl;Lcom/android/systemui_ex/plugin/PreventModeCtrl$1;)V

    iput-object v2, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    .line 88
    new-instance v2, Landroid/hardware/SystemSensorManager;

    iget-object v3, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mSensorManager:Landroid/hardware/SensorManager;

    .line 89
    iget-object v2, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mProximitySensor:Landroid/hardware/Sensor;

    .line 90
    return-void
.end method

.method public onVolumeUpKeyDown()V
    .locals 4

    .prologue
    .line 321
    const-string v0, "PreventModeCtrl"

    const-string v1, "onVolumeUpKeyDown"

    invoke-static {v0, v1}, Lcom/android/systemui_ex/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mIsVolumeUpKeyDown:Z

    .line 323
    iget-boolean v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mIsBackKeyDown:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mBackKeyUpTimeStamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->disableProximitySensor()V

    .line 327
    :cond_1
    return-void
.end method

.method public onVolumeUpPressed()V
    .locals 2

    .prologue
    .line 306
    const-string v0, "PreventModeCtrl"

    const-string v1, "onVolumeUpPressed"

    invoke-static {v0, v1}, Lcom/android/systemui_ex/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mIsVolumeUpKeyDown:Z

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mVolumeUpKeyUpTimeStamp:J

    .line 309
    return-void
.end method

.method public onWallpaperChange(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 280
    const-string v0, "PreventModeCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWallpaperChange: bitmap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui_ex/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    if-eqz p1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mBackground:Landroid/widget/ImageView;

    const v1, 0x7f020053

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
