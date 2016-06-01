.class public Lcom/waves/maxxaudio/WavesFXLogger;
.super Ljava/lang/Object;
.source "WavesFXLogger.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WavesFX"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Assert(ZLjava/lang/String;)V
    .locals 3
    .param p0, "isOK"    # Z
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 33
    if-eqz p0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x7

    const-string v1, "WavesFX"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, p1, v2}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static Assert(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "isOK"    # Z
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 39
    if-eqz p0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x7

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, p1, p2, v1}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static Log(ILjava/lang/String;)V
    .locals 2
    .param p0, "priority"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 11
    const-string v0, "WavesFX"

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-static {p0, v0, p1, v1}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 12
    return-void
.end method

.method public static Log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 15
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 16
    return-void
.end method

.method private static Log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v2, 0x1

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method

.method public static Log(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 7
    const/4 v0, 0x2

    const-string v1, "WavesFX"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, p0, v2}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 8
    return-void
.end method

.method public static ShortLog(ILjava/lang/String;)V
    .locals 1
    .param p0, "priority"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 25
    const-string v0, "WavesFX"

    invoke-static {p0, v0, p1}, Lcom/waves/maxxaudio/WavesFXLogger;->ShortLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static ShortLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {p1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    return-void
.end method

.method public static ShortLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 29
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lcom/waves/maxxaudio/WavesFXLogger;->ShortLog(ILjava/lang/String;)V

    .line 30
    return-void
.end method
