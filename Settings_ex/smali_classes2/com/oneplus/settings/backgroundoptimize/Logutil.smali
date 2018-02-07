.class public Lcom/oneplus/settings/backgroundoptimize/Logutil;
.super Ljava/lang/Object;
.source "Logutil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 14
    sget-boolean v0, Lcom/oneplus/settings/SettingsBaseApplication;->ONEPLUS_DEBUG:Z

    if-eqz v0, :cond_0

    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_0
    return-void
.end method
