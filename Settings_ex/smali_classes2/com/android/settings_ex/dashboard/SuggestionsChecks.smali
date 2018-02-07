.class public Lcom/android/settings_ex/dashboard/SuggestionsChecks;
.super Ljava/lang/Object;
.source "SuggestionsChecks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/dashboard/SuggestionsChecks$1;
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/app/IWallpaperManagerCallback;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Lcom/android/settings_ex/dashboard/SuggestionsChecks$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/dashboard/SuggestionsChecks$1;-><init>(Lcom/android/settings_ex/dashboard/SuggestionsChecks;)V

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SuggestionsChecks;->mCallback:Landroid/app/IWallpaperManagerCallback;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SuggestionsChecks;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method private hasEnabledZenAutoRules()Z
    .locals 4

    .prologue
    .line 90
    iget-object v3, p0, Lcom/android/settings_ex/dashboard/SuggestionsChecks;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 91
    .local v2, "zenRules":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/app/AutomaticZenRule;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "rule$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AutomaticZenRule;

    .line 92
    .local v0, "rule":Landroid/app/AutomaticZenRule;
    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    const/4 v3, 0x1

    return v3

    .line 96
    .end local v0    # "rule":Landroid/app/AutomaticZenRule;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private hasWallpaperSet()Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 100
    const-string/jumbo v5, "wallpaper"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 101
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v2

    .line 103
    .local v2, "service":Landroid/app/IWallpaperManager;
    :try_start_0
    iget-object v5, p0, Lcom/android/settings_ex/dashboard/SuggestionsChecks;->mCallback:Landroid/app/IWallpaperManagerCallback;

    .line 104
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iget-object v7, p0, Lcom/android/settings_ex/dashboard/SuggestionsChecks;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    .line 103
    const/4 v8, 0x1

    invoke-interface {v2, v5, v8, v6, v7}, Landroid/app/IWallpaperManager;->getWallpaper(Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    if-eqz v5, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0

    .line 105
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Landroid/os/RemoteException;
    return v4
.end method

.method private isDeviceSecured()Z
    .locals 3

    .prologue
    .line 71
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SuggestionsChecks;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/KeyguardManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 72
    .local v0, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    return v1
.end method

.method private isNotSingleFingerprintEnrolled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 76
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/SuggestionsChecks;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 77
    .local v0, "manager":Landroid/hardware/fingerprint/FingerprintManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isSuggestionComplete(Lcom/android/settings_exlib/drawer/Tile;)Z
    .locals 2
    .param p1, "suggestion"    # Lcom/android/settings_exlib/drawer/Tile;

    .prologue
    .line 54
    iget-object v1, p1, Lcom/android/settings_exlib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "className":Ljava/lang/String;
    const-class v1, Lcom/android/settings_ex/Settings$ZenModeAutomationSuggestionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/SuggestionsChecks;->hasEnabledZenAutoRules()Z

    move-result v1

    return v1

    .line 57
    :cond_0
    const-class v1, Lcom/android/settings_ex/Settings$WallpaperSuggestionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/SuggestionsChecks;->hasWallpaperSet()Z

    move-result v1

    return v1

    .line 59
    :cond_1
    const-class v1, Lcom/android/settings_ex/Settings$WifiCallingSuggestionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 60
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/SuggestionsChecks;->isWifiCallingUnavailableOrEnabled()Z

    move-result v1

    return v1

    .line 61
    :cond_2
    const-class v1, Lcom/android/settings_ex/Settings$FingerprintSuggestionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 62
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/SuggestionsChecks;->isNotSingleFingerprintEnrolled()Z

    move-result v1

    return v1

    .line 63
    :cond_3
    const-class v1, Lcom/android/settings_ex/Settings$ScreenLockSuggestionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 64
    const-class v1, Lcom/android/settings_ex/Settings$FingerprintEnrollSuggestionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 63
    if-eqz v1, :cond_5

    .line 65
    :cond_4
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/SuggestionsChecks;->isDeviceSecured()Z

    move-result v1

    return v1

    .line 67
    :cond_5
    const/4 v1, 0x0

    return v1
.end method

.method public isWifiCallingUnavailableOrEnabled()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SuggestionsChecks;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x1

    return v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SuggestionsChecks;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SuggestionsChecks;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 84
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
