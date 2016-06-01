.class public Lcom/oneplus/tuner/utillty/AudioTunerLog;
.super Ljava/lang/Object;
.source "AudioTunerLog.java"


# static fields
.field private static DEBUG:Z = false

.field private static final DEBUG_PROPERTY:Ljava/lang/String; = "audio.tuner.debug"

.field private static ENG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    const-string v0, "audio.tuner.debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/tuner/utillty/AudioTunerLog;->DEBUG:Z

    .line 13
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/tuner/utillty/AudioTunerLog;->ENG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 17
    sget-boolean v0, Lcom/oneplus/tuner/utillty/AudioTunerLog;->DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/oneplus/tuner/utillty/AudioTunerLog;->ENG:Z

    if-eqz v0, :cond_1

    .line 18
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 25
    sget-boolean v0, Lcom/oneplus/tuner/utillty/AudioTunerLog;->DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/oneplus/tuner/utillty/AudioTunerLog;->ENG:Z

    if-eqz v0, :cond_1

    .line 26
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 49
    sget-boolean v0, Lcom/oneplus/tuner/utillty/AudioTunerLog;->DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/oneplus/tuner/utillty/AudioTunerLog;->ENG:Z

    if-eqz v0, :cond_1

    .line 50
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 57
    sget-boolean v0, Lcom/oneplus/tuner/utillty/AudioTunerLog;->DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/oneplus/tuner/utillty/AudioTunerLog;->ENG:Z

    if-eqz v0, :cond_1

    .line 58
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    :cond_1
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 33
    sget-boolean v0, Lcom/oneplus/tuner/utillty/AudioTunerLog;->DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/oneplus/tuner/utillty/AudioTunerLog;->ENG:Z

    if-eqz v0, :cond_1

    .line 34
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_1
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 41
    sget-boolean v0, Lcom/oneplus/tuner/utillty/AudioTunerLog;->DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/oneplus/tuner/utillty/AudioTunerLog;->ENG:Z

    if-eqz v0, :cond_1

    .line 42
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 65
    sget-boolean v0, Lcom/oneplus/tuner/utillty/AudioTunerLog;->DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/oneplus/tuner/utillty/AudioTunerLog;->ENG:Z

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 73
    sget-boolean v0, Lcom/oneplus/tuner/utillty/AudioTunerLog;->DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/oneplus/tuner/utillty/AudioTunerLog;->ENG:Z

    if-eqz v0, :cond_1

    .line 74
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    :cond_1
    return-void
.end method
