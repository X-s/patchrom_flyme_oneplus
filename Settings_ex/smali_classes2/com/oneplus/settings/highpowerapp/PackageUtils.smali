.class public Lcom/oneplus/settings/highpowerapp/PackageUtils;
.super Ljava/lang/Object;
.source "PackageUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PackageUtils"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static isSystemApplication(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return v0

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oneplus/settings/highpowerapp/PackageUtils;->isSystemApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSystemApplication(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 38
    if-nez p0, :cond_0

    .line 39
    const/4 v0, 0x0

    return v0

    .line 42
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oneplus/settings/highpowerapp/PackageUtils;->isSystemApplication(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSystemApplication(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 4
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 59
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 60
    :cond_0
    return v2

    .line 59
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 65
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    .line 66
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 69
    return v2
.end method
