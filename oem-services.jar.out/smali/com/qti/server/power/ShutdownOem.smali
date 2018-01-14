.class public final Lcom/qti/server/power/ShutdownOem;
.super Ljava/lang/Object;
.source "ShutdownOem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QualcommShutdown"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rebootOrShutdown(ZLjava/lang/String;)V
    .locals 2
    .param p1, "reboot"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 22
    const-string/jumbo v0, "QualcommShutdown"

    const-string/jumbo v1, "Qualcomm reboot/shutdown."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {}, Lcom/qti/server/power/SubSystemShutdown;->shutdown()I

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    const-string/jumbo v0, "QualcommShutdown"

    const-string/jumbo v1, "Failed to shutdown modem."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :goto_0
    return-void

    .line 27
    :cond_0
    const-string/jumbo v0, "QualcommShutdown"

    const-string/jumbo v1, "Modem shutdown successful."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
