.class public Lcom/android/settings_ex/datausage/AppDataUsageActivity;
.super Lcom/android/settings_ex/SettingsActivity;
.source "AppDataUsageActivity.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AppDataUsageActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    const-class v0, Lcom/android/settings_ex/datausage/AppDataUsage;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/AppDataUsageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 39
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 40
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/AppDataUsageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 43
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v6, v5, v8}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 59
    .local v7, "uid":I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 60
    .local v1, "args":Landroid/os/Bundle;
    new-instance v0, Lcom/android/settings_exlib/AppItem;

    invoke-direct {v0, v7}, Lcom/android/settings_exlib/AppItem;-><init>(I)V

    .line 61
    .local v0, "appItem":Lcom/android/settings_exlib/AppItem;
    invoke-virtual {v0, v7}, Lcom/android/settings_exlib/AppItem;->addUid(I)V

    .line 62
    const-string/jumbo v8, "app_item"

    invoke-virtual {v1, v8, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 63
    const-string/jumbo v8, ":settings:show_fragment_args"

    invoke-virtual {v4, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 64
    const-string/jumbo v8, ":settings:show_fragment"

    const-class v9, Lcom/android/settings_ex/datausage/AppDataUsage;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string/jumbo v8, ":settings:show_fragment_title_resid"

    const v9, 0x7f0e0f17

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    return-void

    .line 44
    .end local v0    # "appItem":Lcom/android/settings_exlib/AppItem;
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v7    # "uid":I
    :catch_0
    move-exception v2

    .line 45
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v8, "AppDataUsageActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "invalid package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :try_start_1
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/AppDataUsageActivity;->finish()V

    .line 55
    :goto_0
    return-void

    .line 49
    :catch_1
    move-exception v3

    .line 53
    .local v3, "e2":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/AppDataUsageActivity;->finish()V

    goto :goto_0

    .line 52
    .end local v3    # "e2":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 53
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/AppDataUsageActivity;->finish()V

    .line 52
    throw v8
.end method
