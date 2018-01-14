.class public Lcom/android/server/OemSceneButtonController;
.super Ljava/lang/Object;
.source "OemSceneButtonController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemSceneButtonController$1;,
        Lcom/android/server/OemSceneButtonController$GameModeButtonLockFeatureContentObserver;,
        Lcom/android/server/OemSceneButtonController$GameModeButtonSettingsContentObserver;,
        Lcom/android/server/OemSceneButtonController$GameModeStatusContentObserver;,
        Lcom/android/server/OemSceneButtonController$KeyLockMode;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final MSG_GAME_BTN_LOCK_FEATURE_CHANGED:I = 0x2

.field private static final MSG_GAME_BTN_SETTING_CHANGED:I = 0x1

.field private static final MSG_GAME_STATUS_CHANGED:I = 0x0

.field private static final URI_DISABLE_GAME_BTN_FEATURE:Landroid/net/Uri;

.field private static final URI_GAME_BTN_SETTING:Landroid/net/Uri;

.field private static final URI_GAME_STATUS:Landroid/net/Uri;

.field private static final VALUE_OFF_INT:I = 0x0

.field private static final VALUE_OFF_STR:Ljava/lang/String; = "0"

.field private static final VALUE_ON_INT:I = 0x1

.field private static final VALUE_ON_STR:Ljava/lang/String; = "1"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mGameModeButtonLockFeatureContentObserver:Lcom/android/server/OemSceneButtonController$GameModeButtonLockFeatureContentObserver;

.field private mGameModeButtonSettingsContentObserver:Lcom/android/server/OemSceneButtonController$GameModeButtonSettingsContentObserver;

.field private mGameModeStatusContentObserver:Lcom/android/server/OemSceneButtonController$GameModeStatusContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mIsButtonLockFeatureDisabled:Z

.field private mIsMonitoringProvider:Z

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/OemSceneButtonController;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/OemSceneButtonController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneButtonController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/OemSceneButtonController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/OemSceneButtonController;->mIsMonitoringProvider:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/OemSceneButtonController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/OemSceneButtonController;->mIsButtonLockFeatureDisabled:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/OemSceneButtonController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->getGameButtonFeatureDisabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/OemSceneButtonController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->evaluateIfLockKeys()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OemSceneButtonController;->DBG:Z

    .line 44
    const-string/jumbo v0, "game_mode_status"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 43
    sput-object v0, Lcom/android/server/OemSceneButtonController;->URI_GAME_STATUS:Landroid/net/Uri;

    .line 46
    const-string/jumbo v0, "game_mode_lock_buttons"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 45
    sput-object v0, Lcom/android/server/OemSceneButtonController;->URI_GAME_BTN_SETTING:Landroid/net/Uri;

    .line 48
    const-string/jumbo v0, "temp_disable_scene_button_lcok_feature"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 47
    sput-object v0, Lcom/android/server/OemSceneButtonController;->URI_DISABLE_GAME_BTN_FEATURE:Landroid/net/Uri;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string/jumbo v0, "OemSceneButtonController"

    iput-object v0, p0, Lcom/android/server/OemSceneButtonController;->TAG:Ljava/lang/String;

    .line 50
    iput-boolean v4, p0, Lcom/android/server/OemSceneButtonController;->mIsMonitoringProvider:Z

    .line 51
    iput-boolean v4, p0, Lcom/android/server/OemSceneButtonController;->mIsButtonLockFeatureDisabled:Z

    .line 178
    new-instance v0, Lcom/android/server/OemSceneButtonController$1;

    invoke-direct {v0, p0}, Lcom/android/server/OemSceneButtonController$1;-><init>(Lcom/android/server/OemSceneButtonController;)V

    iput-object v0, p0, Lcom/android/server/OemSceneButtonController;->mHandler:Landroid/os/Handler;

    .line 105
    iput-object p1, p0, Lcom/android/server/OemSceneButtonController;->mContext:Landroid/content/Context;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    .line 109
    new-instance v0, Lcom/android/server/OemSceneButtonController$GameModeStatusContentObserver;

    iget-object v1, p0, Lcom/android/server/OemSceneButtonController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/OemSceneButtonController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/OemSceneButtonController$GameModeStatusContentObserver;-><init>(Lcom/android/server/OemSceneButtonController;Landroid/content/Context;Landroid/os/Handler;)V

    .line 108
    iput-object v0, p0, Lcom/android/server/OemSceneButtonController;->mGameModeStatusContentObserver:Lcom/android/server/OemSceneButtonController$GameModeStatusContentObserver;

    .line 111
    new-instance v0, Lcom/android/server/OemSceneButtonController$GameModeButtonSettingsContentObserver;

    iget-object v1, p0, Lcom/android/server/OemSceneButtonController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/OemSceneButtonController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/OemSceneButtonController$GameModeButtonSettingsContentObserver;-><init>(Lcom/android/server/OemSceneButtonController;Landroid/content/Context;Landroid/os/Handler;)V

    .line 110
    iput-object v0, p0, Lcom/android/server/OemSceneButtonController;->mGameModeButtonSettingsContentObserver:Lcom/android/server/OemSceneButtonController$GameModeButtonSettingsContentObserver;

    .line 113
    new-instance v0, Lcom/android/server/OemSceneButtonController$GameModeButtonLockFeatureContentObserver;

    iget-object v1, p0, Lcom/android/server/OemSceneButtonController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/OemSceneButtonController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/OemSceneButtonController$GameModeButtonLockFeatureContentObserver;-><init>(Lcom/android/server/OemSceneButtonController;Landroid/content/Context;Landroid/os/Handler;)V

    .line 112
    iput-object v0, p0, Lcom/android/server/OemSceneButtonController;->mGameModeButtonLockFeatureContentObserver:Lcom/android/server/OemSceneButtonController$GameModeButtonLockFeatureContentObserver;

    .line 116
    iget-object v0, p0, Lcom/android/server/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    .line 117
    const-string/jumbo v1, "temp_disable_scene_button_lcok_feature"

    const-string/jumbo v2, "0"

    .line 118
    const/4 v3, -0x2

    .line 116
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 120
    iget-object v0, p0, Lcom/android/server/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/OemSceneButtonController;->URI_GAME_STATUS:Landroid/net/Uri;

    .line 121
    iget-object v2, p0, Lcom/android/server/OemSceneButtonController;->mGameModeStatusContentObserver:Lcom/android/server/OemSceneButtonController$GameModeStatusContentObserver;

    .line 120
    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 122
    iget-object v0, p0, Lcom/android/server/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/OemSceneButtonController;->URI_GAME_BTN_SETTING:Landroid/net/Uri;

    .line 123
    iget-object v2, p0, Lcom/android/server/OemSceneButtonController;->mGameModeButtonSettingsContentObserver:Lcom/android/server/OemSceneButtonController$GameModeButtonSettingsContentObserver;

    .line 122
    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 124
    iget-object v0, p0, Lcom/android/server/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/OemSceneButtonController;->URI_DISABLE_GAME_BTN_FEATURE:Landroid/net/Uri;

    .line 125
    iget-object v2, p0, Lcom/android/server/OemSceneButtonController;->mGameModeButtonLockFeatureContentObserver:Lcom/android/server/OemSceneButtonController$GameModeButtonLockFeatureContentObserver;

    .line 124
    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 104
    return-void
.end method

.method private evaluateIfLockKeys()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 165
    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->getGameModeStatus()Z

    move-result v1

    .line 166
    .local v1, "game_mode_enable":Z
    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->getGameButtonSetting()Z

    move-result v0

    .line 167
    .local v0, "game_mode_button_locked":Z
    sget-boolean v3, Lcom/android/server/OemSceneButtonController;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "OemSceneButtonController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[scene] game_mode_enable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 168
    const-string/jumbo v5, ", game_mode_button_locked = "

    .line 167
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 169
    const-string/jumbo v5, ", mIsButtonLockFeatureDisabled = "

    .line 167
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 169
    iget-boolean v5, p0, Lcom/android/server/OemSceneButtonController;->mIsButtonLockFeatureDisabled:Z

    .line 167
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/OemSceneButtonController;->mIsButtonLockFeatureDisabled:Z

    if-eqz v3, :cond_1

    .line 171
    invoke-virtual {p0, v2}, Lcom/android/server/OemSceneButtonController;->setEnable(Z)V

    .line 164
    .end local v0    # "game_mode_button_locked":Z
    :goto_0
    return-void

    .line 173
    .restart local v0    # "game_mode_button_locked":Z
    :cond_1
    if-eqz v1, :cond_2

    .end local v0    # "game_mode_button_locked":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneButtonController;->setEnable(Z)V

    goto :goto_0

    .restart local v0    # "game_mode_button_locked":Z
    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private getGameButtonFeatureDisabled()Z
    .locals 4

    .prologue
    .line 209
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    .line 210
    const-string/jumbo v2, "temp_disable_scene_button_lcok_feature"

    const/4 v3, -0x2

    .line 209
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getGameButtonSetting()Z
    .locals 4

    .prologue
    .line 204
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    .line 205
    const-string/jumbo v2, "game_mode_lock_buttons"

    const/4 v3, -0x2

    .line 204
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getGameModeStatus()Z
    .locals 4

    .prologue
    .line 199
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    .line 200
    const-string/jumbo v2, "game_mode_status"

    const/4 v3, -0x2

    .line 199
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getOnScreenNaviBarEnable()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 214
    iget-object v2, p0, Lcom/android/server/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    .line 215
    const-string/jumbo v3, "buttons_show_on_screen_navkeys"

    .line 214
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private setKeyMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/server/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "oem_acc_key_lock_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 218
    return-void
.end method


# virtual methods
.method public setEnable(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 149
    if-eqz p1, :cond_0

    .line 151
    sget-object v1, Lcom/android/server/OemSceneButtonController$KeyLockMode;->FOOT:Lcom/android/server/OemSceneButtonController$KeyLockMode;

    invoke-virtual {v1}, Lcom/android/server/OemSceneButtonController$KeyLockMode;->ordinal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/OemSceneButtonController;->setKeyMode(I)V

    .line 148
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->getOnScreenNaviBarEnable()Z

    move-result v0

    .line 155
    .local v0, "onScreenNaviBarEnabled":Z
    sget-boolean v1, Lcom/android/server/OemSceneButtonController;->DBG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "OemSceneButtonController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[scene] onScreenNaviBarEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_1
    if-eqz v0, :cond_2

    .line 157
    sget-object v1, Lcom/android/server/OemSceneButtonController$KeyLockMode;->BACK_SWITCH:Lcom/android/server/OemSceneButtonController$KeyLockMode;

    invoke-virtual {v1}, Lcom/android/server/OemSceneButtonController$KeyLockMode;->ordinal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/OemSceneButtonController;->setKeyMode(I)V

    goto :goto_0

    .line 159
    :cond_2
    sget-object v1, Lcom/android/server/OemSceneButtonController$KeyLockMode;->NORMAL:Lcom/android/server/OemSceneButtonController$KeyLockMode;

    invoke-virtual {v1}, Lcom/android/server/OemSceneButtonController$KeyLockMode;->ordinal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/OemSceneButtonController;->setKeyMode(I)V

    goto :goto_0
.end method

.method public startMonitor()V
    .locals 3

    .prologue
    .line 129
    const-string/jumbo v0, "OemSceneButtonController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[scene] start monitoring, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/OemSceneButtonController;->URI_GAME_STATUS:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/OemSceneButtonController;->URI_GAME_BTN_SETTING:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OemSceneButtonController;->mIsMonitoringProvider:Z

    .line 133
    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->evaluateIfLockKeys()V

    .line 128
    return-void
.end method

.method public stopMonitor()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 137
    const-string/jumbo v0, "OemSceneButtonController"

    const-string/jumbo v1, "[scene] stop monitoring"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iput-boolean v2, p0, Lcom/android/server/OemSceneButtonController;->mIsMonitoringProvider:Z

    .line 141
    invoke-virtual {p0, v2}, Lcom/android/server/OemSceneButtonController;->setEnable(Z)V

    .line 136
    return-void
.end method

.method public stopMonitorPassive()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method
