.class public abstract Lcom/android/settings_ex/notification/ZenModeSettingsBase;
.super Lcom/android/settings_ex/RestrictedSettingsFragment;
.source "ZenModeSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/notification/ZenModeSettingsBase$1;,
        Lcom/android/settings_ex/notification/ZenModeSettingsBase$SettingsObserver;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z

.field protected static final TAG:Ljava/lang/String; = "ZenModeSettings"


# instance fields
.field protected mConfig:Landroid/service/notification/ZenModeConfig;

.field protected mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mSettingsObserver:Lcom/android/settings_ex/notification/ZenModeSettingsBase$SettingsObserver;

.field protected mZenMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "ZenModeSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    const-string v0, "no_adjust_volume"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->mHandler:Landroid/os/Handler;

    .line 42
    new-instance v0, Lcom/android/settings_ex/notification/ZenModeSettingsBase$SettingsObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/notification/ZenModeSettingsBase$SettingsObserver;-><init>(Lcom/android/settings_ex/notification/ZenModeSettingsBase;Lcom/android/settings_ex/notification/ZenModeSettingsBase$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->mSettingsObserver:Lcom/android/settings_ex/notification/ZenModeSettingsBase$SettingsObserver;

    .line 53
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/notification/ZenModeSettingsBase;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettingsBase;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/notification/ZenModeSettingsBase;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettingsBase;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/notification/ZenModeSettingsBase;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettingsBase;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/notification/ZenModeSettingsBase;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettingsBase;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/notification/ZenModeSettingsBase;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettingsBase;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->updateZenMode(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/notification/ZenModeSettingsBase;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettingsBase;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->updateZenModeConfig(Z)V

    return-void
.end method

.method private getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    return-object v0
.end method

.method protected static isScheduleSupported(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string v1, "schedule"

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->isSystemConditionProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private updateZenMode(Z)V
    .locals 4
    .param p1, "fireChanged"    # Z

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "zen_mode"

    iget v3, p0, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->mZenMode:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 83
    .local v0, "zenMode":I
    iget v1, p0, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->mZenMode:I

    if-ne v0, v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iput v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->mZenMode:I

    .line 85
    sget-boolean v1, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateZenMode mZenMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->mZenMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_2
    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->onZenModeChanged()V

    goto :goto_0
.end method

.method private updateZenModeConfig(Z)V
    .locals 4
    .param p1, "fireChanged"    # Z

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 93
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 95
    sget-boolean v1, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateZenModeConfig mConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_2
    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->onZenModeConfigChanged()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    .line 59
    invoke-direct {p0, v1}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->updateZenMode(Z)V

    .line 60
    invoke-direct {p0, v1}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->updateZenModeConfig(Z)V

    .line 61
    sget-boolean v0, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded mConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onPause()V

    .line 78
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->mSettingsObserver:Lcom/android/settings_ex/notification/ZenModeSettingsBase$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings_ex/notification/ZenModeSettingsBase$SettingsObserver;->unregister()V

    .line 79
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 66
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onResume()V

    .line 67
    invoke-direct {p0, v0}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->updateZenMode(Z)V

    .line 68
    invoke-direct {p0, v0}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->updateZenModeConfig(Z)V

    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->mSettingsObserver:Lcom/android/settings_ex/notification/ZenModeSettingsBase$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings_ex/notification/ZenModeSettingsBase$SettingsObserver;->register()V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->finish()V

    .line 73
    :cond_0
    return-void
.end method

.method protected abstract onZenModeChanged()V
.end method

.method protected abstract onZenModeConfigChanged()V
.end method

.method protected setZenMode(ILandroid/net/Uri;)V
    .locals 2
    .param p1, "zenMode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string v1, "ZenModeSettings"

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method protected setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    .locals 5
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "reason":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/app/NotificationManager;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z

    move-result v1

    .line 104
    .local v1, "success":Z
    if-eqz v1, :cond_1

    .line 105
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 106
    sget-boolean v2, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saved mConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->onZenModeConfigChanged()V

    .line 109
    :cond_1
    return v1
.end method
