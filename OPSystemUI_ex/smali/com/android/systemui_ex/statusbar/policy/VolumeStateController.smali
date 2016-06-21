.class public Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;
.super Ljava/lang/Object;
.source "VolumeStateController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateObserver;,
        Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateCallback;
    }
.end annotation


# static fields
.field private static sVolumeStateController:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private final URI_OEM_SILENT_STATUS:Ljava/lang/String;

.field private final URI_OEM_ZEN_STATUS:Ljava/lang/String;

.field private final URI_VIBRATE_WHEN_MUTE:Ljava/lang/String;

.field private mCallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentVolumeState:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mVolumeStateObserver:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->sVolumeStateController:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "VolumeStateController"

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->TAG:Ljava/lang/String;

    .line 25
    const-string v0, "oem_silent_status"

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->URI_OEM_SILENT_STATUS:Ljava/lang/String;

    .line 28
    const-string v0, "oem_zen_status"

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->URI_OEM_ZEN_STATUS:Ljava/lang/String;

    .line 30
    const-string v0, "oem_vibrate_under_silent"

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->URI_VIBRATE_WHEN_MUTE:Ljava/lang/String;

    .line 32
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->DEBUG:Z

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->mCallback:Ljava/util/ArrayList;

    .line 39
    iput v1, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->mCurrentVolumeState:I

    .line 43
    new-instance v0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$1;-><init>(Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->mContext:Landroid/content/Context;

    .line 62
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->mCurrentVolumeState:I

    .line 64
    new-instance v0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateObserver;-><init>(Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->mVolumeStateObserver:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateObserver;

    .line 65
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->mVolumeStateObserver:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateObserver;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateObserver;->startObserving()V

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->registerThreeKeyReceiver()V

    .line 68
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;
    .param p1, "x1"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->mCurrentVolumeState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    sget-object v0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->sVolumeStateController:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->sVolumeStateController:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;

    .line 75
    :cond_0
    sget-object v0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->sVolumeStateController:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;

    return-object v0
.end method

.method private notifyVolumeStateChanged()V
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->isMuteModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->isDoNotDisturbModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->sendNewVolumeStateIntent(I)V

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->isDoNotDisturbModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->sendNewVolumeStateIntent(I)V

    .line 198
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->isMuteModeEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->isDoNotDisturbModeEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 199
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->sendNewVolumeStateIntent(I)V

    .line 201
    :cond_2
    return-void
.end method

.method private sendNewVolumeStateIntent(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 204
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oem.intent.action.THREE_KEY_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "switch_state"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->isMuteModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->isDoNotDisturbModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    const-string v1, "silent_state"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 210
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateCallback;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->mCallback:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method public getCurrentThreeKeyState()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->mCurrentVolumeState:I

    return v0
.end method

.method public getVolumeStateIcon()I
    .locals 2

    .prologue
    .line 137
    const/4 v0, -0x1

    .line 138
    .local v0, "icon":I
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->supportThreekeyFeature()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 139
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->getCurrentThreeKeyState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 172
    :cond_0
    :goto_0
    return v0

    .line 141
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->mVolumeStateObserver:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateObserver;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateObserver;->shouldVibrate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    const v0, 0x7f0202a7

    goto :goto_0

    .line 144
    :cond_1
    const v0, 0x7f02023e

    .line 146
    goto :goto_0

    .line 148
    :pswitch_1
    const v0, 0x7f02023a

    .line 149
    goto :goto_0

    .line 151
    :pswitch_2
    const/4 v0, -0x1

    goto :goto_0

    .line 155
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->isDoNotDisturbModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->isMuteModeEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 156
    const v0, 0x7f02023a

    .line 159
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->isDoNotDisturbModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->isMuteModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 160
    const v0, 0x7f02023a

    .line 163
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->isDoNotDisturbModeEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->isMuteModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->mVolumeStateObserver:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateObserver;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateObserver;->shouldVibrate()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 165
    const v0, 0x7f0202a7

    goto :goto_0

    .line 167
    :cond_5
    const v0, 0x7f02023e

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isDoNotDisturbModeEnabled()Z
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->supportThreekeyFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->mCurrentVolumeState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    .line 114
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->mVolumeStateObserver:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateObserver;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateObserver;->isDoNotDisturbEnabed()Z

    move-result v0

    goto :goto_0
.end method

.method public isMuteModeEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 105
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->supportThreekeyFeature()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    iget v1, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->mCurrentVolumeState:I

    if-ne v1, v0, :cond_0

    .line 108
    :goto_0
    return v0

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->mVolumeStateObserver:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateObserver;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateObserver;->isMute()Z

    move-result v0

    goto :goto_0
.end method

.method protected registerThreeKeyReceiver()V
    .locals 3

    .prologue
    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.oem.intent.action.THREE_KEY_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v1, "com.oem.intent.action.THREE_KEY_MODE_BOOT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    return-void
.end method

.method public setDoNotDisturb(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_zen_status"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 186
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->notifyVolumeStateChanged()V

    .line 187
    return-void

    .line 183
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_silent_status"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 179
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->notifyVolumeStateChanged()V

    .line 180
    return-void

    .line 176
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showVolumeStateIcon()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 121
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->supportThreekeyFeature()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->getCurrentThreeKeyState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 125
    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->isMuteModeEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->isDoNotDisturbModeEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 129
    goto :goto_0
.end method

.method public updateVolumeStateIcon(Z)V
    .locals 3
    .param p1, "showThreeKeyPanel"    # Z

    .prologue
    .line 97
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->mCallback:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 98
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->mCallback:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateCallback;

    .line 99
    .local v0, "callback":Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateCallback;
    invoke-interface {v0, p1}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateCallback;->onStateChanged(Z)V

    goto :goto_0

    .line 102
    .end local v0    # "callback":Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateCallback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method
