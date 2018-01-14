.class final Lcom/android/server/SUWHelperService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SUWHelperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SUWHelperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final USER_SETUP_COMPLETE:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/SUWHelperService;


# direct methods
.method public constructor <init>(Lcom/android/server/SUWHelperService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/SUWHelperService;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/server/SUWHelperService$SettingsObserver;->this$0:Lcom/android/server/SUWHelperService;

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 56
    const-string/jumbo v0, "user_setup_complete"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/android/server/SUWHelperService$SettingsObserver;->USER_SETUP_COMPLETE:Landroid/net/Uri;

    .line 58
    return-void
.end method


# virtual methods
.method public observe()V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/SUWHelperService$SettingsObserver;->this$0:Lcom/android/server/SUWHelperService;

    invoke-static {v0}, Lcom/android/server/SUWHelperService;->-get0(Lcom/android/server/SUWHelperService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/SUWHelperService$SettingsObserver;->USER_SETUP_COMPLETE:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/SUWHelperService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 62
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 69
    const-string/jumbo v0, "SUWHelperService"

    const-string/jumbo v1, "OnChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0, p2}, Lcom/android/server/SUWHelperService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 68
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 74
    iget-object v6, p0, Lcom/android/server/SUWHelperService$SettingsObserver;->this$0:Lcom/android/server/SUWHelperService;

    invoke-static {v6}, Lcom/android/server/SUWHelperService;->-get0(Lcom/android/server/SUWHelperService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 75
    const-string/jumbo v7, "user_setup_complete"

    .line 74
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_1

    .line 76
    .local v4, "setupComplete":Z
    :goto_0
    if-eqz v4, :cond_2

    .line 77
    iget-object v5, p0, Lcom/android/server/SUWHelperService$SettingsObserver;->this$0:Lcom/android/server/SUWHelperService;

    invoke-static {v5}, Lcom/android/server/SUWHelperService;->-get0(Lcom/android/server/SUWHelperService;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 78
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 79
    .local v3, "pids":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 80
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 81
    .local v2, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string/jumbo v6, "com.google.android.setupwizard"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 82
    const-string/jumbo v5, "SUWHelperService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Killing pid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    .line 79
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "i":I
    .end local v2    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "pids":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v4    # "setupComplete":Z
    :cond_1
    move v4, v5

    .line 74
    goto :goto_0

    .line 73
    .restart local v4    # "setupComplete":Z
    :cond_2
    return-void
.end method
