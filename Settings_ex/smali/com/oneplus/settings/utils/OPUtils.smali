.class public Lcom/oneplus/settings/utils/OPUtils;
.super Ljava/lang/Object;
.source "OPUtils.java"


# static fields
.field public static final COMPANY:Ljava/lang/String; = "oneplus"

.field public static final OEM_REPEATE_INCALL_LIMITE:Ljava/lang/String; = "oem_repeate_incall_unlimite"

.field public static final OEM_TREE_KEY_DEFINE:Ljava/lang/String; = "oem_three_key_define"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isActionExist(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oriIntent"    # Landroid/content/Intent;
    .param p2, "intent_action_scan"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 76
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    if-nez p1, :cond_0

    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 83
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 79
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 83
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isAppExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 23
    const/4 v2, 0x0

    .line 24
    .local v2, "isExist":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 25
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 27
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 32
    :goto_0
    if-eqz v0, :cond_0

    .line 33
    const/4 v2, 0x1

    .line 36
    :cond_0
    return v2

    .line 28
    :catch_0
    move-exception v1

    .line 30
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isAppPakExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 49
    const/4 v2, 0x0

    .line 50
    .local v2, "isExist":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 51
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 53
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 58
    :goto_0
    if-eqz v0, :cond_0

    .line 59
    const/4 v2, 0x1

    .line 62
    :cond_0
    return v2

    .line 54
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 40
    const-string v2, "[0-9]*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 41
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 42
    .local v0, "isNum":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 43
    const/4 v2, 0x0

    .line 45
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
