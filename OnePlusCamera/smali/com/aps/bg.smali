.class public final Lcom/aps/bg;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, ""

    sput-object v0, Lcom/aps/bg;->a:Ljava/lang/String;

    return-void
.end method

.method protected static a(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "GPS_SATELLITE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method protected static a(Landroid/content/Context;)Z
    .locals 2

    if-nez p0, :cond_0

    sget-object v0, Lcom/aps/bg;->a:Ljava/lang/String;

    const-string/jumbo v1, "Error: No SD Card!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aps/bg;->a:Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method
