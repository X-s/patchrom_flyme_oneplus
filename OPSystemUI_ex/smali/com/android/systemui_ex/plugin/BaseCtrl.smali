.class public abstract Lcom/android/systemui_ex/plugin/BaseCtrl;
.super Ljava/lang/Object;
.source "BaseCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/plugin/BaseCtrl$UIHandler;,
        Lcom/android/systemui_ex/plugin/BaseCtrl$ControlCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui_ex/plugin/BaseCtrl$ControlCallback;

.field protected mContext:Landroid/content/Context;

.field private mStarted:Z

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/android/systemui_ex/plugin/BaseCtrl$UIHandler;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/plugin/BaseCtrl$UIHandler;-><init>(Lcom/android/systemui_ex/plugin/BaseCtrl;)V

    iput-object v0, p0, Lcom/android/systemui_ex/plugin/BaseCtrl;->mUIHandler:Landroid/os/Handler;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/plugin/BaseCtrl;->mStarted:Z

    .line 80
    return-void
.end method


# virtual methods
.method protected handleSendAction(ILjava/lang/Object;)V
    .locals 1
    .param p1, "action"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/BaseCtrl;->mCallback:Lcom/android/systemui_ex/plugin/BaseCtrl$ControlCallback;

    .line 75
    .local v0, "callback":Lcom/android/systemui_ex/plugin/BaseCtrl$ControlCallback;
    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0, p0, p1, p2}, Lcom/android/systemui_ex/plugin/BaseCtrl$ControlCallback;->onControlAction(Lcom/android/systemui_ex/plugin/BaseCtrl;ILjava/lang/Object;)V

    .line 78
    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/systemui_ex/plugin/BaseCtrl;->mContext:Landroid/content/Context;

    .line 143
    return-void
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/systemui_ex/plugin/BaseCtrl;->mStarted:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 183
    return-void
.end method

.method public onDozePulsing()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 0
    .param p1, "bouncer"    # Z

    .prologue
    .line 194
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 197
    return-void
.end method

.method public onScreenTurnedOff(I)V
    .locals 0
    .param p1, "why"    # I

    .prologue
    .line 154
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public abstract onStartCtrl()V
.end method

.method public onVolumeUpPressed()V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method public onWallpaperChange(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 179
    return-void
.end method

.method public setCallback(Lcom/android/systemui_ex/plugin/BaseCtrl$ControlCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui_ex/plugin/BaseCtrl$ControlCallback;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/systemui_ex/plugin/BaseCtrl;->mCallback:Lcom/android/systemui_ex/plugin/BaseCtrl$ControlCallback;

    .line 46
    return-void
.end method

.method public startCtrl()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/plugin/BaseCtrl;->mStarted:Z

    .line 32
    invoke-virtual {p0}, Lcom/android/systemui_ex/plugin/BaseCtrl;->onStartCtrl()V

    .line 33
    return-void
.end method
