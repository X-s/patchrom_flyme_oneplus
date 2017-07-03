.class public final Lcom/oneplus/base/NativeLibrary;
.super Ljava/lang/Object;
.source "NativeLibrary.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OPBaseNativeLibrary"

.field private static volatile m_IsLoaded:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static load()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 27
    sget-boolean v2, Lcom/oneplus/base/NativeLibrary;->m_IsLoaded:Z

    if-eqz v2, :cond_0

    .line 42
    .local v0, "ex":Ljava/lang/Throwable;
    :goto_0
    return v1

    .line 29
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_0
    const-class v2, Lcom/oneplus/base/NativeLibrary;

    monitor-enter v2

    .line 31
    :try_start_0
    sget-boolean v3, Lcom/oneplus/base/NativeLibrary;->m_IsLoaded:Z

    if-eqz v3, :cond_1

    .line 32
    monitor-exit v2

    goto :goto_0

    .line 29
    .restart local v0    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 35
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    const-string v3, "opbaselib"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 36
    const/4 v3, 0x1

    sput-boolean v3, Lcom/oneplus/base/NativeLibrary;->m_IsLoaded:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :try_start_2
    monitor-exit v2

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 41
    .restart local v0    # "ex":Ljava/lang/Throwable;
    const-string v1, "OPBaseNativeLibrary"

    const-string v3, "load() - Fail to load native library"

    invoke-static {v1, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x0

    goto :goto_0
.end method
