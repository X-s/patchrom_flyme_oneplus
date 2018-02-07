.class final Lcom/android/settings_ex/location/SettingsInjector$Setting;
.super Ljava/lang/Object;
.source "SettingsInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/location/SettingsInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Setting"
.end annotation


# instance fields
.field public final preference:Landroid/support/v7/preference/Preference;

.field public final setting:Lcom/android/settings_ex/location/InjectedSetting;

.field public startMillis:J

.field final synthetic this$0:Lcom/android/settings_ex/location/SettingsInjector;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/location/SettingsInjector;Lcom/android/settings_ex/location/InjectedSetting;Landroid/support/v7/preference/Preference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/location/SettingsInjector;
    .param p2, "setting"    # Lcom/android/settings_ex/location/InjectedSetting;
    .param p3, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/settings_ex/location/SettingsInjector$Setting;->this$0:Lcom/android/settings_ex/location/SettingsInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iput-object p2, p0, Lcom/android/settings_ex/location/SettingsInjector$Setting;->setting:Lcom/android/settings_ex/location/InjectedSetting;

    .line 451
    iput-object p3, p0, Lcom/android/settings_ex/location/SettingsInjector$Setting;->preference:Landroid/support/v7/preference/Preference;

    .line 449
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/location/SettingsInjector;Lcom/android/settings_ex/location/InjectedSetting;Landroid/support/v7/preference/Preference;Lcom/android/settings_ex/location/SettingsInjector$Setting;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/location/SettingsInjector;
    .param p2, "setting"    # Lcom/android/settings_ex/location/InjectedSetting;
    .param p3, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/location/SettingsInjector$Setting;-><init>(Lcom/android/settings_ex/location/SettingsInjector;Lcom/android/settings_ex/location/InjectedSetting;Landroid/support/v7/preference/Preference;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 468
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/android/settings_ex/location/SettingsInjector$Setting;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/location/SettingsInjector$Setting;->setting:Lcom/android/settings_ex/location/InjectedSetting;

    check-cast p1, Lcom/android/settings_ex/location/SettingsInjector$Setting;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/android/settings_ex/location/SettingsInjector$Setting;->setting:Lcom/android/settings_ex/location/InjectedSetting;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/InjectedSetting;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getElapsedTime()J
    .locals 4

    .prologue
    .line 523
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 524
    .local v0, "end":J
    iget-wide v2, p0, Lcom/android/settings_ex/location/SettingsInjector$Setting;->startMillis:J

    sub-long v2, v0, v2

    return-wide v2
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/settings_ex/location/SettingsInjector$Setting;->setting:Lcom/android/settings_ex/location/InjectedSetting;

    invoke-virtual {v0}, Lcom/android/settings_ex/location/InjectedSetting;->hashCode()I

    move-result v0

    return v0
.end method

.method public maybeLogElapsedTime()V
    .locals 6

    .prologue
    .line 528
    const-string/jumbo v2, "SettingsInjector"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/settings_ex/location/SettingsInjector$Setting;->startMillis:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 529
    invoke-virtual {p0}, Lcom/android/settings_ex/location/SettingsInjector$Setting;->getElapsedTime()J

    move-result-wide v0

    .line 530
    .local v0, "elapsed":J
    const-string/jumbo v2, "SettingsInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " update took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " millis"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    .end local v0    # "elapsed":J
    :cond_0
    return-void
.end method

.method public startService()V
    .locals 7

    .prologue
    .line 482
    iget-object v4, p0, Lcom/android/settings_ex/location/SettingsInjector$Setting;->this$0:Lcom/android/settings_ex/location/SettingsInjector;

    invoke-static {v4}, Lcom/android/settings_ex/location/SettingsInjector;->-get0(Lcom/android/settings_ex/location/SettingsInjector;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 481
    check-cast v0, Landroid/app/ActivityManager;

    .line 483
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v4, p0, Lcom/android/settings_ex/location/SettingsInjector$Setting;->setting:Lcom/android/settings_ex/location/InjectedSetting;

    iget-object v4, v4, Lcom/android/settings_ex/location/InjectedSetting;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->isUserRunning(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 484
    const-string/jumbo v4, "SettingsInjector"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 485
    const-string/jumbo v4, "SettingsInjector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cannot start service as user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 486
    iget-object v6, p0, Lcom/android/settings_ex/location/SettingsInjector$Setting;->setting:Lcom/android/settings_ex/location/InjectedSetting;

    iget-object v6, v6, Lcom/android/settings_ex/location/InjectedSetting;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 485
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 486
    const-string/jumbo v6, " is not running"

    .line 485
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_0
    return-void

    .line 490
    :cond_1
    new-instance v1, Lcom/android/settings_ex/location/SettingsInjector$Setting$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/location/SettingsInjector$Setting$1;-><init>(Lcom/android/settings_ex/location/SettingsInjector$Setting;)V

    .line 504
    .local v1, "handler":Landroid/os/Handler;
    new-instance v3, Landroid/os/Messenger;

    invoke-direct {v3, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 506
    .local v3, "messenger":Landroid/os/Messenger;
    iget-object v4, p0, Lcom/android/settings_ex/location/SettingsInjector$Setting;->setting:Lcom/android/settings_ex/location/InjectedSetting;

    invoke-virtual {v4}, Lcom/android/settings_ex/location/InjectedSetting;->getServiceIntent()Landroid/content/Intent;

    move-result-object v2

    .line 507
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "messenger"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 509
    const-string/jumbo v4, "SettingsInjector"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 510
    const-string/jumbo v4, "SettingsInjector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings_ex/location/SettingsInjector$Setting;->setting:Lcom/android/settings_ex/location/InjectedSetting;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": sending update intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 511
    const-string/jumbo v6, ", handler: "

    .line 510
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings_ex/location/SettingsInjector$Setting;->startMillis:J

    .line 519
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/location/SettingsInjector$Setting;->this$0:Lcom/android/settings_ex/location/SettingsInjector;

    invoke-static {v4}, Lcom/android/settings_ex/location/SettingsInjector;->-get0(Lcom/android/settings_ex/location/SettingsInjector;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/location/SettingsInjector$Setting;->setting:Lcom/android/settings_ex/location/InjectedSetting;

    iget-object v5, v5, Lcom/android/settings_ex/location/InjectedSetting;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 480
    return-void

    .line 514
    :cond_2
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/settings_ex/location/SettingsInjector$Setting;->startMillis:J

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Setting{setting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 457
    iget-object v1, p0, Lcom/android/settings_ex/location/SettingsInjector$Setting;->setting:Lcom/android/settings_ex/location/InjectedSetting;

    .line 456
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 458
    const-string/jumbo v1, ", preference="

    .line 456
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 458
    iget-object v1, p0, Lcom/android/settings_ex/location/SettingsInjector$Setting;->preference:Landroid/support/v7/preference/Preference;

    .line 456
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 459
    const/16 v1, 0x7d

    .line 456
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
