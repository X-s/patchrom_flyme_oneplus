.class Lcom/android/internal/os/RuntimeInit$UncaughtHandler;
.super Ljava/lang/Object;
.source "RuntimeInit.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RuntimeInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UncaughtHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/RuntimeInit$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/os/RuntimeInit$1;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 10
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    const/16 v9, 0xa

    .line 80
    :try_start_0
    # getter for: Lcom/android/internal/os/RuntimeInit;->mCrashing:Z
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$000()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    .line 117
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Landroid/os/Process;->killProcess(I)V

    .line 118
    invoke-static {v9}, Ljava/lang/System;->exit(I)V

    .line 120
    :goto_0
    return-void

    .line 81
    :cond_0
    const/4 v6, 0x1

    :try_start_1
    # setter for: Lcom/android/internal/os/RuntimeInit;->mCrashing:Z
    invoke-static {v6}, Lcom/android/internal/os/RuntimeInit;->access$002(Z)Z

    .line 83
    # getter for: Lcom/android/internal/os/RuntimeInit;->mApplicationObject:Landroid/os/IBinder;
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$100()Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_2

    .line 84
    const-string v6, "AndroidRuntime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "*** FATAL EXCEPTION IN SYSTEM PROCESS: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/internal/os/RuntimeInit;->Clog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    invoke-static {v6, v7, p2}, Lcom/android/internal/os/RuntimeInit;->access$200(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    :cond_1
    :goto_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    # getter for: Lcom/android/internal/os/RuntimeInit;->mApplicationObject:Landroid/os/IBinder;
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$100()Landroid/os/IBinder;

    move-result-object v7

    new-instance v8, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v8, p2}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v6, v7, v8}, Landroid/app/IActivityManager;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Landroid/os/Process;->killProcess(I)V

    .line 118
    invoke-static {v9}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 86
    :cond_2
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .local v3, "message":Ljava/lang/StringBuilder;
    const-string v6, "FATAL EXCEPTION: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, "processName":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 90
    const-string v6, "Process: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_3
    const-string v6, "PID: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    const-string v6, "AndroidRuntime"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/internal/os/RuntimeInit;->Clog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    invoke-static {v6, v7, p2}, Lcom/android/internal/os/RuntimeInit;->access$200(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/4 v8, 0x2

    aput v8, v6, v7

    invoke-static {v6}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 96
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 97
    .local v0, "app":Landroid/app/Application;
    if-nez v0, :cond_4

    .line 98
    .local v1, "context":Landroid/content/Context;
    :goto_2
    if-eqz v1, :cond_1

    .line 99
    new-instance v2, Lnet/oneplus/odm/insight/tracker/AppTracker;

    invoke-direct {v2, v1}, Lnet/oneplus/odm/insight/tracker/AppTracker;-><init>(Landroid/content/Context;)V

    .line 100
    .local v2, "mOATracker":Lnet/oneplus/odm/insight/tracker/AppTracker;
    const-string v6, "crash"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lnet/oneplus/odm/insight/tracker/AppTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 109
    .end local v0    # "app":Landroid/app/Application;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "mOATracker":Lnet/oneplus/odm/insight/tracker/AppTracker;
    .end local v3    # "message":Ljava/lang/StringBuilder;
    .end local v4    # "processName":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 111
    .local v5, "t2":Ljava/lang/Throwable;
    :try_start_3
    const-string v6, "AndroidRuntime"

    const-string v7, "Error reporting crash"

    # invokes: Lcom/android/internal/os/RuntimeInit;->Clog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    invoke-static {v6, v7, v5}, Lcom/android/internal/os/RuntimeInit;->access$200(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    :goto_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Landroid/os/Process;->killProcess(I)V

    .line 118
    invoke-static {v9}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_0

    .line 97
    .end local v5    # "t2":Ljava/lang/Throwable;
    .restart local v0    # "app":Landroid/app/Application;
    .restart local v3    # "message":Ljava/lang/StringBuilder;
    .restart local v4    # "processName":Ljava/lang/String;
    :cond_4
    :try_start_4
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    goto :goto_2

    .line 117
    .end local v0    # "app":Landroid/app/Application;
    .end local v3    # "message":Ljava/lang/StringBuilder;
    .end local v4    # "processName":Ljava/lang/String;
    :catchall_0
    move-exception v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {v7}, Landroid/os/Process;->killProcess(I)V

    .line 118
    invoke-static {v9}, Ljava/lang/System;->exit(I)V

    throw v6

    .line 112
    .restart local v5    # "t2":Ljava/lang/Throwable;
    :catch_1
    move-exception v6

    goto :goto_3
.end method
