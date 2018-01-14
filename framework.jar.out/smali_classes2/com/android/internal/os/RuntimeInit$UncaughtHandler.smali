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
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/RuntimeInit$UncaughtHandler;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 13
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 88
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->-get1()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_0

    .line 158
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {v10}, Landroid/os/Process;->killProcess(I)V

    .line 159
    const/16 v10, 0xa

    invoke-static {v10}, Ljava/lang/System;->exit(I)V

    .line 88
    return-void

    .line 89
    :cond_0
    const/4 v10, 0x1

    :try_start_1
    invoke-static {v10}, Lcom/android/internal/os/RuntimeInit;->-set0(Z)Z

    .line 91
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->-get0()Landroid/os/IBinder;

    move-result-object v10

    if-nez v10, :cond_3

    .line 92
    const-string/jumbo v10, "AndroidRuntime"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "*** FATAL EXCEPTION IN SYSTEM PROCESS: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, p2}, Lcom/android/internal/os/RuntimeInit;->-wrap0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    :cond_1
    :goto_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 140
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ActivityThread;->stopProfiling()V

    .line 144
    :cond_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    .line 145
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->-get0()Landroid/os/IBinder;

    move-result-object v11

    new-instance v12, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v12, p2}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    .line 144
    invoke-interface {v10, v11, v12}, Landroid/app/IActivityManager;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {v10}, Landroid/os/Process;->killProcess(I)V

    .line 159
    const/16 v10, 0xa

    invoke-static {v10}, Ljava/lang/System;->exit(I)V

    .line 85
    :goto_1
    return-void

    .line 94
    :cond_3
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v4, "message":Ljava/lang/StringBuilder;
    const-string/jumbo v10, "FATAL EXCEPTION: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, "processName":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 98
    const-string/jumbo v10, "Process: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_4
    const-string/jumbo v10, "PID: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    const-string/jumbo v10, "AndroidRuntime"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, p2}, Lcom/android/internal/os/RuntimeInit;->-wrap0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x2

    const/4 v12, 0x0

    aput v11, v10, v12

    invoke-static {v10}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 105
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 106
    .local v0, "context":Landroid/content/Context;
    new-instance v3, Lnet/oneplus/odm/insight/tracker/AppTracker;

    invoke-direct {v3, v0}, Lnet/oneplus/odm/insight/tracker/AppTracker;-><init>(Landroid/content/Context;)V

    .line 107
    .local v3, "mOATracker":Lnet/oneplus/odm/insight/tracker/AppTracker;
    const-string/jumbo v10, "crash"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Lnet/oneplus/odm/insight/tracker/AppTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    :try_start_3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->-get2()Ljava/util/ArrayList;

    move-result-object v10

    if-nez v10, :cond_5

    .line 114
    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v11, v10, v12

    invoke-static {v10}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 115
    new-instance v10, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x5070011

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v10}, Lcom/android/internal/os/RuntimeInit;->-set1(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 122
    :cond_5
    :goto_2
    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->-get2()Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->-get2()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 123
    new-instance v9, Lnet/oneplus/odm/insight/tracker/OSTracker;

    invoke-direct {v9, v0}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;)V

    .line 124
    .local v9, "tracker":Lnet/oneplus/odm/insight/tracker/OSTracker;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 125
    .local v1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v10, "name"

    invoke-virtual {v1, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string/jumbo v10, "system_app_crash"

    invoke-virtual {v9, v10, v1}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 128
    .end local v1    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v9    # "tracker":Lnet/oneplus/odm/insight/tracker/OSTracker;
    :catch_0
    move-exception v2

    .line 129
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v10, "AndroidRuntime"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 146
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v3    # "mOATracker":Lnet/oneplus/odm/insight/tracker/AppTracker;
    .end local v4    # "message":Ljava/lang/StringBuilder;
    .end local v6    # "processName":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 147
    .local v7, "t2":Ljava/lang/Throwable;
    :try_start_5
    instance-of v10, v7, Landroid/os/DeadObjectException;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v10, :cond_8

    .line 158
    :goto_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {v10}, Landroid/os/Process;->killProcess(I)V

    .line 159
    const/16 v10, 0xa

    invoke-static {v10}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_1

    .line 116
    .end local v7    # "t2":Ljava/lang/Throwable;
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v3    # "mOATracker":Lnet/oneplus/odm/insight/tracker/AppTracker;
    .restart local v4    # "message":Ljava/lang/StringBuilder;
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "processName":Ljava/lang/String;
    :cond_6
    const/4 v10, 0x1

    :try_start_6
    new-array v10, v10, [I

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v11, v10, v12

    invoke-static {v10}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 117
    new-instance v10, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x5070010

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v10}, Lcom/android/internal/os/RuntimeInit;->-set1(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 156
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "mOATracker":Lnet/oneplus/odm/insight/tracker/AppTracker;
    .end local v4    # "message":Ljava/lang/StringBuilder;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "processName":Ljava/lang/String;
    :catchall_0
    move-exception v10

    .line 158
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-static {v11}, Landroid/os/Process;->killProcess(I)V

    .line 159
    const/16 v11, 0xa

    invoke-static {v11}, Ljava/lang/System;->exit(I)V

    .line 156
    throw v10

    .line 119
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v3    # "mOATracker":Lnet/oneplus/odm/insight/tracker/AppTracker;
    .restart local v4    # "message":Ljava/lang/StringBuilder;
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "processName":Ljava/lang/String;
    :cond_7
    :try_start_7
    new-instance v10, Ljava/lang/Exception;

    const-string/jumbo v11, "Neither O2 or H2."

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 151
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "mOATracker":Lnet/oneplus/odm/insight/tracker/AppTracker;
    .end local v4    # "message":Ljava/lang/StringBuilder;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "processName":Ljava/lang/String;
    .restart local v7    # "t2":Ljava/lang/Throwable;
    :cond_8
    :try_start_8
    const-string/jumbo v10, "AndroidRuntime"

    const-string/jumbo v11, "Error reporting crash"

    invoke-static {v10, v11, v7}, Lcom/android/internal/os/RuntimeInit;->-wrap0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 152
    :catch_2
    move-exception v8

    .local v8, "t3":Ljava/lang/Throwable;
    goto :goto_3
.end method
