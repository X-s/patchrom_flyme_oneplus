.class public Lcom/oppo/tribune/util/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static startThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1
    .param p0, "target"    # Ljava/lang/Runnable;

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 25
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 26
    return-object v0
.end method

.method public static startThread(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;
    .locals 1
    .param p0, "target"    # Ljava/lang/Runnable;
    .param p1, "threadName"    # Ljava/lang/String;

    .prologue
    .line 30
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 31
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 32
    return-object v0
.end method

.method public static startThread(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Thread;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "t":Ljava/lang/Thread;, "TT;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 38
    return-object p0
.end method
