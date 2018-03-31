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

.field private final mThreeKeySettingsLock:Ljava/lang/Object;

.field private mVibrateFlag:Z


# direct methods
.method static synthetic -get0(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;)Lcom/oem/os/ThreeKeyManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mThreeKeyManager:Lcom/oem/os/ThreeKeyManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mVibrateFlag:Z

    return v0
.end method

.method static synthetic -set0(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mMuteMediaFlag:Z

    return p1
.end method

.method static synthetic -set1(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mOptionChangeFlag:Z

    return p1
.end method

.method static synthetic -set2(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mVibrateFlag:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Lcom/oem/os/IThreeKeyPolicy$Stub;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mThreeKeySettingsLock:Ljava/lang/Object;

    .line 46
    iput-boolean v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mInitFlag:Z

    .line 51
    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mContext:Landroid/content/Context;

    .line 52
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    .line 53
    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    .line 54
    const-string/jumbo v0, "threekey"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oem/os/ThreeKeyManager;

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mThreeKeyManager:Lcom/oem/os/ThreeKeyManager;

    .line 55
    new-instance v0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;-><init>(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;)V

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mSettingsObserver:Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;

    .line 56
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mSettingsObserver:Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;

    invoke-virtual {v0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->observe()V

    .line 57
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 58
    const-string/jumbo v3, "oem_zen_media_switch"

    .line 57
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    #mute media
    #if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mMuteMediaFlag:Z

    .line 59
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 60
    const-string/jumbo v3, "oem_vibrate_under_silent"

    .line 59
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mVibrateFlag:Z

    .line 62
    iput-boolean v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mOptionChangeFlag:Z

    .line 50
    return-void

    :cond_0
    move v0, v2

    .line 57
    goto :goto_0

    :cond_1
    move v1, v2

    .line 59
    goto :goto_1
.end method

.method private cleanAbnormalState()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 263
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 264
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 262
    return-void
.end method

.method private muteSpeakerMediaVolume(Z)V
    .locals 5
    .param p1, "init"    # Z

    .prologue
    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "booting":I
    if-eqz p1, :cond_0

    .line 250
    const/4 v0, 0x1

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    .line 253
    const/16 v3, -0x64

    const/4 v4, 0x2

    .line 252
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/media/AudioManager;->threeKeySetStreamVolume(IIII)V

    .line 247
    return-void
.end method

.method private restoreSpeakerMediaVolume()V
    .locals 5

    .prologue
    .line 257
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 258
    const/16 v3, 0x64

    const/4 v4, 0x2

    .line 257
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/AudioManager;->threeKeySetStreamVolume(IIII)V

    .line 256
    return-void
.end method


# virtual methods
.method public setDontDisturb()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 152
    const-string/jumbo v0, "ThreeKeyAudioPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set mode dontdisturb, mVibrateFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mVibrateFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mMuteMediaFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mMuteMediaFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setOnePlusFixedRingerMode(Z)V

    .line 155
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x64

    invoke-virtual {v0, v3, v1}, Landroid/media/AudioManager;->setOnePlusRingVolumeRange(II)V

    .line 156
    invoke-direct {p0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->cleanAbnormalState()V

    .line 157
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v1, "ThreeKeyAudioPolicy"

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 159
    const-string/jumbo v1, "zen_mode"

    .line 158
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 160
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setOnePlusFixedRingerMode(Z)V

    .line 163
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 164
    const-string/jumbo v1, "three_Key_mode"

    const/4 v2, 0x2

    .line 163
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    invoke-direct {p0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->restoreSpeakerMediaVolume()V

    .line 166
    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mOptionChangeFlag:Z

    if-eqz v0, :cond_0

    .line 167
    iput-boolean v4, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mOptionChangeFlag:Z

    .line 168
    return-void

    .line 151
    :cond_0
    return-void
.end method

.method public setDown()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mThreeKeySettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->setRing()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 85
    return-void

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setInitMode(Z)V
    .locals 0
    .param p1, "isInit"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mInitFlag:Z

    .line 92
    return-void
.end method

.method public setMiddle()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mThreeKeySettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->setDontDisturb()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 78
    return-void

    .line 79
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setRing()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 173
    const-string/jumbo v0, "ThreeKeyAudioPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set mode ring, mVibrateFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mVibrateFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mMuteMediaFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mMuteMediaFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setOnePlusFixedRingerMode(Z)V

    .line 176
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setOnePlusRingVolumeRange(II)V

    .line 177
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v1, "ThreeKeyAudioPolicy"

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 179
    const-string/jumbo v1, "zen_mode"

    .line 178
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 181
    invoke-direct {p0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->restoreSpeakerMediaVolume()V

    .line 184
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 185
    const-string/jumbo v1, "three_Key_mode"

    const/4 v2, 0x3

    .line 184
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 186
    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mOptionChangeFlag:Z

    if-eqz v0, :cond_0

    .line 187
    iput-boolean v3, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mOptionChangeFlag:Z

    .line 188
    return-void

    .line 172
    :cond_0
    return-void
.end method

.method public setSlientNoVibrate()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 126
    const-string/jumbo v0, "ThreeKeyAudioPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set mode Slient No Vibrate, mVibrateFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mVibrateFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mMuteMediaFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mMuteMediaFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setOnePlusFixedRingerMode(Z)V

    .line 129
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3, v3}, Landroid/media/AudioManager;->setOnePlusRingVolumeRange(II)V

    .line 130
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 131
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    iget-boolean v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mVibrateFlag:Z

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->setOnePlusVibrateInSilentMode(Z)V

    .line 132
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v1, "ThreeKeyAudioPolicy"

    const/4 v2, 0x0

    invoke-virtual {v0, v5, v2, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 134
    const-string/jumbo v1, "zen_mode"

    .line 133
    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 135
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setOnePlusFixedRingerMode(Z)V

    .line 139
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 140
    const-string/jumbo v1, "three_Key_mode"

    .line 139
    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 142
    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mOptionChangeFlag:Z

    if-eqz v0, :cond_0

    .line 143
    iput-boolean v3, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mOptionChangeFlag:Z

    .line 144
    return-void

    .line 146
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mMuteMediaFlag:Z

    if-eqz v0, :cond_1

    .line 147
    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mInitFlag:Z

    invoke-direct {p0, v0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->muteSpeakerMediaVolume(Z)V

    .line 125
    :cond_1
    return-void
.end method

.method public setSlientVibrate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 97
    const-string/jumbo v0, "ThreeKeyAudioPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set mode Slient Vibrate, mVibrateFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mVibrateFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mMuteMediaFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mMuteMediaFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setOnePlusFixedRingerMode(Z)V

    .line 101
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    iget-boolean v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mVibrateFlag:Z

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->setOnePlusVibrateInSilentMode(Z)V

    .line 102
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3, v3}, Landroid/media/AudioManager;->setOnePlusRingVolumeRange(II)V

    .line 103
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v1, "ThreeKeyAudioPolicy"

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 105
    const-string/jumbo v1, "zen_mode"

    .line 104
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 106
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 107
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 109
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setOnePlusFixedRingerMode(Z)V

    .line 113
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 114
    const-string/jumbo v1, "three_Key_mode"

    .line 113
    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 116
    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mOptionChangeFlag:Z

    if-eqz v0, :cond_0

    .line 117
    iput-boolean v3, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mOptionChangeFlag:Z

    .line 118
    return-void

    .line 120
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mMuteMediaFlag:Z

    if-eqz v0, :cond_1

    .line 121
    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mInitFlag:Z

    invoke-direct {p0, v0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->muteSpeakerMediaVolume(Z)V

    .line 96
    :cond_1
    return-void
.end method

.method public setUp()V
    .locals 2

    .prologue
    .line 68
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mThreeKeySettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 69
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->mVibrateFlag:Z

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->setSlientVibrate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 67
    return-void

    .line 72
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->setSlientNoVibrate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
