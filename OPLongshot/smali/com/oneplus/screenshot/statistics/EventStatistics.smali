.class public Lcom/oneplus/screenshot/statistics/EventStatistics;
.super Ljava/lang/Object;
.source "EventStatistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/statistics/EventStatistics$Action;,
        Lcom/oneplus/screenshot/statistics/EventStatistics$Error;,
        Lcom/oneplus/screenshot/statistics/EventStatistics$Base;
    }
.end annotation


# static fields
.field private static APPBASE:I

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/oneplus/screenshot/statistics/EventStatistics;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/screenshot/statistics/EventStatistics;->TAG:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    sput v0, Lcom/oneplus/screenshot/statistics/EventStatistics;->APPBASE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 10
    sget v0, Lcom/oneplus/screenshot/statistics/EventStatistics;->APPBASE:I

    return v0
.end method

.method public static addAction(Landroid/content/Context;Lcom/oneplus/screenshot/statistics/EventStatistics$Action;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # Lcom/oneplus/screenshot/statistics/EventStatistics$Action;

    .prologue
    .line 28
    return-void
.end method

.method public static addError(Landroid/content/Context;Lcom/oneplus/screenshot/statistics/EventStatistics$Error;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # Lcom/oneplus/screenshot/statistics/EventStatistics$Error;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 24
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 50
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "AppCode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 51
    .local v0, "appCode":I
    mul-int/lit16 v2, v0, 0x2710

    sput v2, Lcom/oneplus/screenshot/statistics/EventStatistics;->APPBASE:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v0    # "appCode":I
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v2

    goto :goto_0

    .line 52
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private static isDebuggable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-static {p0}, Lcom/oneplus/screenshot/util/Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static onDebug(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    return-void
.end method

.method public static onError(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    return-void
.end method
