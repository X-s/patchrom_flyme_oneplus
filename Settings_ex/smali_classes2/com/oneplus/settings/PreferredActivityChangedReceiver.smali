.class public Lcom/oneplus/settings/PreferredActivityChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PreferredActivityChangedReceiver.java"


# static fields
.field private static final ACTION_PREFERRED_ACTIVITY_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

.field private static final TAG:Ljava/lang/String; = "PreferredActivityChangedReceiver"


# direct methods
.method static synthetic -wrap0(Lcom/oneplus/settings/PreferredActivityChangedReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/settings/PreferredActivityChangedReceiver;->updateComponentEnable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private updateComponentEnable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p1, p2}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 44
    invoke-static {p2, p1}, Lcom/android/settings_ex/applications/DefaultHomePreference;->isHomeDefault(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    .line 45
    .local v2, "isDefaultHome":Z
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 46
    .local v3, "newState":I
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 47
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v5, "PreferredActivityChangedReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pkgName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",isDefaultHome:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .local v0, "componentName":Landroid/content/ComponentName;
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v4, v0, v3, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "isDefaultHome":Z
    .end local v3    # "newState":I
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :goto_1
    return-void

    .line 45
    .restart local v2    # "isDefaultHome":Z
    :cond_0
    const/4 v3, 0x2

    .restart local v3    # "newState":I
    goto :goto_0

    .line 51
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "PreferredActivityChangedReceiver"

    const-string/jumbo v6, "updateComponentEnable:ComponentName does not exist."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 55
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "isDefaultHome":Z
    .end local v3    # "newState":I
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    const-string/jumbo v5, "PreferredActivityChangedReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "package not exist:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 24
    const-string/jumbo v0, "PreferredActivityChangedReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const-string/jumbo v0, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Lcom/oneplus/settings/PreferredActivityChangedReceiver$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/PreferredActivityChangedReceiver$1;-><init>(Lcom/oneplus/settings/PreferredActivityChangedReceiver;)V

    .line 34
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 26
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/settings/PreferredActivityChangedReceiver$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 23
    :cond_0
    return-void
.end method
