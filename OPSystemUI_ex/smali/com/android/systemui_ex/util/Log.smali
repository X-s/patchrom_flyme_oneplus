.class public final Lcom/android/systemui_ex/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static volatile m_PrintDebugLogs:Z

.field private static volatile m_PrintVerboseLogs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 9
    sput-boolean v0, Lcom/android/systemui_ex/util/Log;->m_PrintDebugLogs:Z

    .line 10
    sput-boolean v0, Lcom/android/systemui_ex/util/Log;->m_PrintVerboseLogs:Z

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 25
    sget-boolean v0, Lcom/android/systemui_ex/util/Log;->m_PrintDebugLogs:Z

    if-eqz v0, :cond_0

    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 362
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return-void
.end method
