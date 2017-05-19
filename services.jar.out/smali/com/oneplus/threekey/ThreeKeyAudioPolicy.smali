.class public Lcom/oneplus/threekey/ThreeKeyAudioPolicy;
.super Lcom/oem/os/IThreeKeyPolicy$Stub;
.source "ThreeKeyAudioPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MAX:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ThreeKeyAudioPolicy"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mInitFlag:Z

.field private mMuteMediaFlag:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOptionChangeFlag:Z

.field private mSettingsObserver:Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;

.field private mThreeKeyManager:Lcom/oem/os/ThreeKeyManager;

.field private mVibrateFlag:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Lcom/oem/os/IThreeKeyPolicy$Stub;-><init>()V

    .line 45
    iput-boolean v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mInitFlag:Z

    .line 50
    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mContext:Landroid/content/Context;

    .line 51
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    .line 52
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    .line 53
    const-string v0, "threekey"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oem/os/ThreeKeyManager;

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mThreeKeyManager:Lcom/oem/os/ThreeKeyManager;

    .line 54
    new-instance v0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;-><init>(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;)V

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mSettingsObserver:Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;

    .line 55
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mSettingsObserver:Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;

    invoke-virtual {v0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->observe()V

    .line 56
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "oem_zen_media_switch"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mMuteMediaFlag:Z

    .line 58
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "oem_vibrate_under_silent"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mVibrateFlag:Z

    .line 61
    iput-boolean v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mOptionChangeFlag:Z

    .line 63
    return-void

    :cond_0
    move v0, v2

    .line 56
    goto :goto_0

    :cond_1
    move v1, v2

    .line 58
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/threekey/ThreeKeyAudioPolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mVibrateFlag:Z

    return p1
.end method

.method static synthetic access$202(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/threekey/ThreeKeyAudioPolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mMuteMediaFlag:Z

    return p1
.end method

.method static synthetic access$300(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;)Lcom/oem/os/ThreeKeyManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mThreeKeyManager:Lcom/oem/os/ThreeKeyManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/threekey/ThreeKeyAudioPolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mOptionChangeFlag:Z

    return p1
.end method

.method private cleanAbnormalState()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 211
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 212
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 213
    return-void
.end method

.method private muteSpeakerMediaVolume()V
    .locals 5

    .prologue
    .line 200
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/16 v3, -0x64

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/AudioManager;->threeKeySetStreamVolume(IIII)V

    .line 202
    return-void
.end method

.method private restoreSpeakerMediaVolume()V
    .locals 5

    .prologue
    .line 205
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/16 v3, 0x64

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/AudioManager;->threeKeySetStreamVolume(IIII)V

    .line 207
    return-void
.end method


# virtual methods
.method public setDontDisturb()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 115
    const-string v0, "ThreeKeyAudioPolicy"

    const-string v1, "set mode dontdisturb"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v0, "ThreeKeyAudioPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVibrateFlag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mVibrateFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mMuteMediaFlag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mMuteMediaFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setOnePlusFixedRingerMode(Z)V

    .line 119
    invoke-direct {p0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->cleanAbnormalState()V

    .line 120
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const-string v2, "ThreeKeyAudioPolicy"

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 123
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setOnePlusFixedRingerMode(Z)V

    .line 124
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x64

    invoke-virtual {v0, v4, v1}, Landroid/media/AudioManager;->setOnePlusRingVolumeRange(II)V

    .line 125
    invoke-direct {p0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->restoreSpeakerMediaVolume()V

    .line 126
    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mOptionChangeFlag:Z

    if-eqz v0, :cond_0

    .line 127
    iput-boolean v3, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mOptionChangeFlag:Z

    .line 130
    :cond_0
    return-void
.end method

.method public setDown()V
    .locals 0

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->setRing()V

    .line 78
    return-void
.end method

.method public setInitMode(Z)V
    .locals 0
    .param p1, "isInit"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mInitFlag:Z

    .line 83
    return-void
.end method

.method public setMiddle()V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->setDontDisturb()V

    .line 73
    return-void
.end method

.method public setRing()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 133
    const-string v0, "ThreeKeyAudioPolicy"

    const-string v1, "set mode ring"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v0, "ThreeKeyAudioPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVibrateFlag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mVibrateFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mMuteMediaFlag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mMuteMediaFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setOnePlusFixedRingerMode(Z)V

    .line 137
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const-string v2, "ThreeKeyAudioPolicy"

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 140
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setOnePlusRingVolumeRange(II)V

    .line 142
    invoke-direct {p0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->restoreSpeakerMediaVolume()V

    .line 143
    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mOptionChangeFlag:Z

    if-eqz v0, :cond_0

    .line 144
    iput-boolean v3, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mOptionChangeFlag:Z

    .line 147
    :cond_0
    return-void
.end method

.method public setSlient()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    const-string v0, "ThreeKeyAudioPolicy"

    const-string v1, "set mode slient"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v0, "ThreeKeyAudioPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVibrateFlag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mVibrateFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mMuteMediaFlag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mMuteMediaFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setOnePlusFixedRingerMode(Z)V

    .line 90
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 91
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    iget-boolean v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mVibrateFlag:Z

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->setOnePlusVibrateInSilentMode(Z)V

    .line 92
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const-string v2, "ThreeKeyAudioPolicy"

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 95
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setOnePlusFixedRingerMode(Z)V

    .line 96
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3, v3}, Landroid/media/AudioManager;->setOnePlusRingVolumeRange(II)V

    .line 99
    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mOptionChangeFlag:Z

    if-eqz v0, :cond_1

    .line 100
    iput-boolean v3, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mOptionChangeFlag:Z

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mInitFlag:Z

    if-nez v0, :cond_0

    .line 109
    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mMuteMediaFlag:Z

    if-eqz v0, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->muteSpeakerMediaVolume()V

    goto :goto_0
.end method

.method public setUp()V
    .locals 0

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->setSlient()V

    .line 68
    return-void
.end method
