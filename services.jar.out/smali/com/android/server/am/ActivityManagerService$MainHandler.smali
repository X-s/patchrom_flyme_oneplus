.class final Lcom/android/server/am/ActivityManagerService$MainHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2089
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2090
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2089
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 93
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2095
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 2094
    :cond_0
    :goto_0
    return-void

    .line 2097
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v83

    .line 2098
    .local v83, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/res/Configuration;

    .line 2099
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .line 2098
    move-object/from16 v0, v83

    invoke-static {v0, v4, v7}, Landroid/provider/Settings$System;->putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z

    goto :goto_0

    .line 2102
    .end local v83    # "resolver":Landroid/content/ContentResolver;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2103
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    .line 2102
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2107
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_1

    .line 2108
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    iput-boolean v7, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 2109
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v7, 0xc

    invoke-virtual {v4, v7}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v71

    .line 2110
    .local v71, "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v71

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2111
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v8, 0x4e20

    move-object/from16 v0, v71

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2112
    return-void

    .line 2114
    .end local v71    # "nmsg":Landroid/os/Message;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7, v4}, Lcom/android/server/am/ActiveServices;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    .line 2117
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2118
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v60, v4, -0x1

    .local v60, "i":I
    :goto_1
    if-ltz v60, :cond_3

    .line 2119
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v60

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Lcom/android/server/am/ProcessRecord;

    .line 2120
    .local v80, "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v80

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_2

    .line 2124
    :try_start_2
    move-object/from16 v0, v80

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string/jumbo v8, "updateTimeZone"

    invoke-static {v4, v8}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V

    .line 2126
    move-object/from16 v0, v80

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2118
    :cond_2
    :goto_2
    add-int/lit8 v60, v60, -0x1

    goto :goto_1

    .line 2127
    :catch_0
    move-exception v56

    .line 2128
    .local v56, "ex":Landroid/os/RemoteException;
    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get1()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to update time zone for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v80

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 2117
    .end local v56    # "ex":Landroid/os/RemoteException;
    .end local v60    # "i":I
    .end local v80    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_1
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .restart local v60    # "i":I
    :cond_3
    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    .line 2135
    .end local v60    # "i":I
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2136
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v60, v4, -0x1

    .restart local v60    # "i":I
    :goto_3
    if-ltz v60, :cond_5

    .line 2137
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v60

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Lcom/android/server/am/ProcessRecord;

    .line 2138
    .restart local v80    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v80

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v4, :cond_4

    .line 2140
    :try_start_5
    move-object/from16 v0, v80

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2136
    :cond_4
    :goto_4
    add-int/lit8 v60, v60, -0x1

    goto :goto_3

    .line 2141
    :catch_1
    move-exception v56

    .line 2142
    .restart local v56    # "ex":Landroid/os/RemoteException;
    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get1()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to clear dns cache for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v80

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    .line 2135
    .end local v56    # "ex":Landroid/os/RemoteException;
    .end local v60    # "i":I
    .end local v80    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_2
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .restart local v60    # "i":I
    :cond_5
    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    .line 2149
    .end local v60    # "i":I
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v78, v0

    check-cast v78, Landroid/net/ProxyInfo;

    .line 2150
    .local v78, "proxy":Landroid/net/ProxyInfo;
    const-string/jumbo v59, ""

    .line 2151
    .local v59, "host":Ljava/lang/String;
    const-string/jumbo v74, ""

    .line 2152
    .local v74, "port":Ljava/lang/String;
    const-string/jumbo v57, ""

    .line 2153
    .local v57, "exclList":Ljava/lang/String;
    sget-object v73, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 2154
    .local v73, "pacFileUrl":Landroid/net/Uri;
    if-eqz v78, :cond_6

    .line 2155
    invoke-virtual/range {v78 .. v78}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v59

    .line 2156
    invoke-virtual/range {v78 .. v78}, Landroid/net/ProxyInfo;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v74

    .line 2157
    invoke-virtual/range {v78 .. v78}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v57

    .line 2158
    invoke-virtual/range {v78 .. v78}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v73

    .line 2160
    :cond_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2161
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v60, v4, -0x1

    .restart local v60    # "i":I
    :goto_5
    if-ltz v60, :cond_8

    .line 2162
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v60

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Lcom/android/server/am/ProcessRecord;

    .line 2163
    .restart local v80    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v80

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v4, :cond_7

    .line 2165
    :try_start_8
    move-object/from16 v0, v80

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v59

    move-object/from16 v1, v74

    move-object/from16 v2, v57

    move-object/from16 v3, v73

    invoke-interface {v4, v0, v1, v2, v3}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 2161
    :cond_7
    :goto_6
    add-int/lit8 v60, v60, -0x1

    goto :goto_5

    .line 2166
    :catch_2
    move-exception v56

    .line 2167
    .restart local v56    # "ex":Landroid/os/RemoteException;
    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get1()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to update http proxy for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2168
    move-object/from16 v0, v80

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 2167
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_6

    .line 2160
    .end local v56    # "ex":Landroid/os/RemoteException;
    .end local v60    # "i":I
    .end local v80    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_3
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .restart local v60    # "i":I
    :cond_8
    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    .line 2175
    .end local v57    # "exclList":Ljava/lang/String;
    .end local v59    # "host":Ljava/lang/String;
    .end local v60    # "i":I
    .end local v73    # "pacFileUrl":Landroid/net/Uri;
    .end local v74    # "port":Ljava/lang/String;
    .end local v78    # "proxy":Landroid/net/ProxyInfo;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_9

    .line 2176
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    iput-boolean v7, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 2177
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v7, 0x14

    invoke-virtual {v4, v7}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v71

    .line 2178
    .restart local v71    # "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v71

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2179
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v8, 0x2710

    move-object/from16 v0, v71

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2180
    return-void

    .line 2182
    .end local v71    # "nmsg":Landroid/os/Message;
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Lcom/android/server/am/ProcessRecord;

    .line 2183
    .local v45, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2184
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v45

    invoke-static {v4, v0}, Lcom/android/server/am/ActivityManagerService;->-wrap15(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    monitor-exit v7

    .line 2183
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_4
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2188
    .end local v45    # "app":Lcom/android/server/am/ProcessRecord;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Lcom/android/server/am/ProcessRecord;

    .line 2189
    .restart local v45    # "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2190
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v45

    invoke-static {v4, v0}, Lcom/android/server/am/ActivityManagerService;->-wrap14(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    monitor-exit v7

    .line 2189
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_5
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2194
    .end local v45    # "app":Lcom/android/server/am/ProcessRecord;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2195
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mActivityStarter:Lcom/android/server/am/ActivityStarter;

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityStarter;->doPendingActivityLaunchesLocked(Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    monitor-exit v7

    .line 2194
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_6
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2199
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v15

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2200
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 2201
    .local v6, "appId":I
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    .line 2202
    .local v12, "userId":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Landroid/os/Bundle;

    .line 2203
    .local v46, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "pkg"

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2204
    .local v5, "pkg":Ljava/lang/String;
    const-string/jumbo v4, "reason"

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2205
    .local v13, "reason":Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityManagerService$FlymeActivityManagerServiceInjector;->isFlymePackageShouldRestart(Landroid/os/Message;)Z

    move-result v4

    if-eqz v4, :cond_flyme_0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->forceStopFlymePackageLocked(Landroid/os/Message;)V

    monitor-exit v15

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_flyme_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 2206
    const/4 v11, 0x0

    .line 2205
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    monitor-exit v15

    .line 2199
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "appId":I
    .end local v12    # "userId":I
    .end local v13    # "reason":Ljava/lang/String;
    .end local v46    # "bundle":Landroid/os/Bundle;
    :catchall_7
    move-exception v4

    monitor-exit v15

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2210
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v4}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    goto/16 :goto_0

    .line 2213
    :sswitch_b
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v62

    .line 2214
    .local v62, "inm":Landroid/app/INotificationManager;
    if-nez v62, :cond_a

    .line 2215
    return-void

    .line 2218
    :cond_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v84, v0

    check-cast v84, Lcom/android/server/am/ActivityRecord;

    .line 2219
    .local v84, "root":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v84

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v77, v0

    .line 2220
    .local v77, "process":Lcom/android/server/am/ProcessRecord;
    if-nez v77, :cond_b

    .line 2221
    return-void

    .line 2225
    :cond_b
    :try_start_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v77

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v49

    .line 2226
    .local v49, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 2227
    invoke-virtual/range {v49 .. v49}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-virtual/range {v49 .. v49}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const v8, #android:string@heavy_weight_notification#t

    invoke-virtual {v4, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v86

    .local v86, "text":Ljava/lang/String;
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, v49

    invoke-direct {v4, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v7, #android:drawable@stat_sys_adb#t

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v86

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v8, #android:color@system_notification_accent_color#t

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v86

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2237
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v8, #android:string@heavy_weight_notification_detail#t

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 2228
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2238
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 2239
    move-object/from16 v0, v84

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v16, v0

    .line 2240
    new-instance v19, Landroid/os/UserHandle;

    move-object/from16 v0, v84

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 2238
    const/4 v15, 0x0

    .line 2239
    const/high16 v17, 0x10000000

    const/16 v18, 0x0

    .line 2238
    invoke-static/range {v14 .. v19}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 2228
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_e} :catch_4

    move-result-object v19

    .line 2243
    .local v19, "notification":Landroid/app/Notification;
    const/4 v4, 0x1

    :try_start_f
    new-array v0, v4, [I

    move-object/from16 v20, v0

    .local v20, "outId":[I
    const-string v15, "android"

    const-string v16, "android"

    move-object/from16 v0, v84

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v21, v0

    const/16 v17, 0x0

    const v18, #android:string@heavy_weight_notification#t

    move-object/from16 v14, v62

    invoke-interface/range {v14 .. v21}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_f} :catch_4

    goto/16 :goto_0

    .line 2247
    .end local v20    # "outId":[I
    :catch_3
    move-exception v55

    .line 2248
    .local v55, "e":Ljava/lang/RuntimeException;
    :try_start_10
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get1()Ljava/lang/String;

    move-result-object v4

    .line 2249
    const-string/jumbo v7, "Error showing notification for heavy-weight app"

    .line 2248
    move-object/from16 v0, v55

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_10} :catch_4

    goto/16 :goto_0

    .line 2252
    .end local v19    # "notification":Landroid/app/Notification;
    .end local v49    # "context":Landroid/content/Context;
    .end local v55    # "e":Ljava/lang/RuntimeException;
    .end local v86    # "text":Ljava/lang/String;
    :catch_4
    move-exception v51

    .line 2253
    .local v51, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get1()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "Unable to create context for heavy notification"

    move-object/from16 v0, v51

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2257
    .end local v51    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v62    # "inm":Landroid/app/INotificationManager;
    .end local v77    # "process":Lcom/android/server/am/ProcessRecord;
    .end local v84    # "root":Lcom/android/server/am/ActivityRecord;
    :sswitch_c
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v14

    .local v14, "inm":Landroid/app/INotificationManager;
    if-nez v14, :cond_c

    return-void

    :cond_c
    :try_start_11
    const-string v4, "android"

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    const/4 v8, 0x0

    const v9, #android:string@heavy_weight_notification#t

    invoke-interface {v14, v4, v8, v9, v7}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_15

    goto/16 :goto_0

    .line 2264
    :catch_5
    move-exception v55

    .line 2265
    .restart local v55    # "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get1()Ljava/lang/String;

    move-result-object v4

    .line 2266
    const-string/jumbo v7, "Error canceling notification for service"

    .line 2265
    move-object/from16 v0, v55

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2271
    .end local v14    # "inm":Landroid/app/INotificationManager;
    .end local v55    # "e":Ljava/lang/RuntimeException;
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_12
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2272
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked(Z)V

    .line 2273
    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 2274
    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v71

    .line 2275
    .restart local v71    # "nmsg":Landroid/os/Message;
    sget v4, Lcom/android/server/am/ActivityManagerService;->POWER_CHECK_DELAY:I

    int-to-long v8, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    monitor-exit v7

    .line 2271
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    .end local v71    # "nmsg":Landroid/os/Message;
    :catchall_8
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2282
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mOHPD:Lcom/android/server/am/OnePlusHighPowerDetector;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2285
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mOHPD:Lcom/android/server/am/OnePlusHighPowerDetector;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2288
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mOHPD:Lcom/android/server/am/OnePlusHighPowerDetector;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2291
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mOHPD:Lcom/android/server/am/OnePlusHighPowerDetector;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2294
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mOHPD:Lcom/android/server/am/OnePlusHighPowerDetector;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2297
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mOHPD:Lcom/android/server/am/OnePlusHighPowerDetector;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2300
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mOHPD:Lcom/android/server/am/OnePlusHighPowerDetector;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2303
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mOHPD:Lcom/android/server/am/OnePlusHighPowerDetector;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2306
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mOHPD:Lcom/android/server/am/OnePlusHighPowerDetector;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2310
    :sswitch_17
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v64, v0

    check-cast v64, Ljava/util/ArrayList;

    .line 2311
    .local v64, "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    new-instance v87, Lcom/android/server/am/ActivityManagerService$MainHandler$1;

    move-object/from16 v0, v87

    move-object/from16 v1, p0

    move-object/from16 v2, v64

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler$1;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/util/ArrayList;)V

    .line 2316
    .local v87, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v87 .. v87}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 2320
    .end local v64    # "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    .end local v87    # "thread":Ljava/lang/Thread;
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserState;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v7, v4, v8, v9}, Lcom/android/server/am/UserController;->dispatchUserSwitch(Lcom/android/server/am/UserState;II)V

    goto/16 :goto_0

    .line 2324
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserState;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v7, v4, v8, v9}, Lcom/android/server/am/UserController;->continueUserSwitch(Lcom/android/server/am/UserState;II)V

    goto/16 :goto_0

    .line 2328
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserState;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v7, v4, v8, v9}, Lcom/android/server/am/UserController;->timeoutUserSwitch(Lcom/android/server/am/UserState;II)V

    goto/16 :goto_0

    .line 2332
    :sswitch_1b
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_e

    const/16 v70, 0x1

    .line 2333
    .local v70, "nextState":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v4

    move/from16 v0, v70

    if-eq v4, v0, :cond_0

    .line 2334
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_IMMERSIVE:Z

    if-eqz v4, :cond_d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get2()Ljava/lang/String;

    move-result-object v7

    .line 2335
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Applying new update lock state \'"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v70

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2336
    const-string/jumbo v8, "\' for "

    .line 2335
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2336
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 2335
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2334
    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    :cond_d
    if-eqz v70, :cond_f

    .line 2338
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->acquire()V

    goto/16 :goto_0

    .line 2332
    .end local v70    # "nextState":Z
    :cond_e
    const/16 v70, 0x0

    .restart local v70    # "nextState":Z
    goto :goto_7

    .line 2340
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->release()V

    goto/16 :goto_0

    .line 2346
    .end local v70    # "nextState":Z
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-wrap20(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_0

    .line 2350
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_13
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2351
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v4, v8, v9, v10, v11}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    monitor-exit v7

    .line 2350
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_9
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2356
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_14
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2357
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v4}, Lcom/android/server/am/UserController;->startProfilesLocked()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    monitor-exit v7

    .line 2356
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_a
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2362
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_15
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2363
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v60, v4, -0x1

    .restart local v60    # "i":I
    :goto_8
    if-ltz v60, :cond_12

    .line 2364
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v60

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Lcom/android/server/am/ProcessRecord;

    .line 2365
    .restart local v80    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v80

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    if-eqz v4, :cond_10

    .line 2367
    :try_start_16
    move-object/from16 v0, v80

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_11

    const/4 v4, 0x0

    :goto_9
    invoke-interface {v8, v4}, Landroid/app/IApplicationThread;->updateTimePrefs(Z)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_6
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    .line 2363
    :cond_10
    :goto_a
    add-int/lit8 v60, v60, -0x1

    goto :goto_8

    .line 2367
    :cond_11
    const/4 v4, 0x1

    goto :goto_9

    .line 2368
    :catch_6
    move-exception v56

    .line 2369
    .restart local v56    # "ex":Landroid/os/RemoteException;
    :try_start_17
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get1()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to update preferences for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v80

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    goto :goto_a

    .line 2362
    .end local v56    # "ex":Landroid/os/RemoteException;
    .end local v60    # "i":I
    .end local v80    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_b
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .restart local v60    # "i":I
    :cond_12
    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    .line 2377
    .end local v60    # "i":I
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 2378
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    .line 2377
    const v9, 0x8007

    invoke-virtual {v4, v9, v7, v8}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 2379
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startUser(I)V

    goto/16 :goto_0

    .line 2383
    :sswitch_21
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 2384
    .restart local v12    # "userId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v4, v12}, Lcom/android/server/SystemServiceManager;->unlockUser(I)V

    .line 2385
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_18
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2386
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v4, v12}, Lcom/android/server/am/RecentTasks;->loadUserRecentsLocked(I)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    monitor-exit v7

    .line 2385
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2388
    if-nez v12, :cond_13

    .line 2389
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/high16 v7, 0x40000

    invoke-static {v4, v7}, Lcom/android/server/am/ActivityManagerService;->-wrap17(Lcom/android/server/am/ActivityManagerService;I)V

    .line 2391
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4, v12}, Lcom/android/server/am/ActivityManagerService;->-wrap12(Lcom/android/server/am/ActivityManagerService;I)V

    .line 2392
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserState;

    invoke-virtual {v7, v4}, Lcom/android/server/am/UserController;->finishUserUnlocked(Lcom/android/server/am/UserState;)V

    goto/16 :goto_0

    .line 2385
    :catchall_c
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2396
    .end local v12    # "userId":I
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 2398
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg2:I

    .line 2397
    const/16 v9, 0x4008

    .line 2396
    invoke-virtual {v4, v9, v7, v8}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 2399
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 2401
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    .line 2400
    const v9, 0x8008

    .line 2399
    invoke-virtual {v4, v9, v7, v8}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 2402
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->switchUser(I)V

    goto/16 :goto_0

    .line 2406
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_19
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2407
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v4}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v79

    .line 2408
    .local v79, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v79, :cond_14

    move-object/from16 v0, v79

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_14

    move-object/from16 v0, v79

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    if-eqz v4, :cond_14

    .line 2410
    :try_start_1a
    move-object/from16 v0, v79

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v79

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v4, v8}, Landroid/app/IApplicationThread;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 2414
    move-object/from16 v0, v79

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 2415
    .restart local v12    # "userId":I
    sget-boolean v4, Lcom/android/server/am/ActivityManagerService;->IS_APP_LOCKER_ENABLED:Z

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mHintConfirmed:Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_8
    .catchall {:try_start_1a .. :try_end_1a} :catchall_d

    if-eqz v4, :cond_15

    .end local v12    # "userId":I
    :cond_14
    :goto_b
    monitor-exit v7

    .line 2406
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    .line 2415
    .restart local v12    # "userId":I
    :cond_15
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPassedPackageList:Ljava/util/ArrayList;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v79

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2416
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_8
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    .line 2418
    .local v23, "hintIntent":Landroid/content/Intent;
    :try_start_1c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get1()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "AppLocker: start app locker hint: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v79

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    const-string/jumbo v4, "com.oneplus.applocker"

    const-string/jumbo v8, "com.oneplus.applocker.AppLockerHintActivity"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2420
    const/high16 v4, 0x20000000

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2421
    move-object/from16 v0, v79

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v4, :cond_16

    .line 2422
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mActivityStarter:Lcom/android/server/am/ActivityStarter;

    move-object/from16 v21, v0

    .line 2423
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfirmResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v26, v0

    .line 2424
    move-object/from16 v0, v79

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v0, v4, Lcom/android/server/am/ActivityManagerService;->mRequestHashCode:I

    move/from16 v32, v0

    .line 2422
    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 2423
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    .line 2424
    const/16 v31, 0x0

    .line 2425
    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    .line 2422
    invoke-virtual/range {v21 .. v44}, Lcom/android/server/am/ActivityStarter;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/app/ActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I

    .line 2432
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x1

    iput-boolean v8, v4, Lcom/android/server/am/ActivityManagerService;->mHintConfirmed:Z

    .line 2433
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2434
    const-string/jumbo v8, "op_applocker_hint_confirmed"

    const/4 v9, 0x1

    .line 2433
    invoke-static {v4, v8, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_8
    .catchall {:try_start_1c .. :try_end_1c} :catchall_d

    goto/16 :goto_b

    .line 2435
    :catch_7
    move-exception v53

    .line 2436
    .local v53, "e":Ljava/lang/Exception;
    :try_start_1d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get1()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "AppLocker: No activity to handle start "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v53

    invoke-static {v4, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_8
    .catchall {:try_start_1d .. :try_end_1d} :catchall_d

    goto/16 :goto_b

    .line 2440
    .end local v12    # "userId":I
    .end local v23    # "hintIntent":Landroid/content/Intent;
    .end local v53    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v52

    .local v52, "e":Landroid/os/RemoteException;
    goto/16 :goto_b

    .line 2427
    .end local v52    # "e":Landroid/os/RemoteException;
    .restart local v12    # "userId":I
    .restart local v23    # "hintIntent":Landroid/content/Intent;
    :cond_16
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v79

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v25, v0

    move-object/from16 v0, v79

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 2428
    const-string/jumbo v28, ""

    move-object/from16 v0, v79

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v29, v0

    move-object/from16 v0, v79

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 2429
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v0, v4, Lcom/android/server/am/ActivityManagerService;->mRequestHashCode:I

    move/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, -0x2710

    move-object/from16 v27, v23

    .line 2427
    invoke-virtual/range {v24 .. v36}, Lcom/android/server/am/ActivityManagerService;->oemStartActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_8
    .catchall {:try_start_1e .. :try_end_1e} :catchall_d

    goto :goto_c

    .line 2406
    .end local v12    # "userId":I
    .end local v23    # "hintIntent":Landroid/content/Intent;
    .end local v79    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_d
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2447
    :sswitch_24
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_17

    .line 2448
    const-string/jumbo v4, "FinishBooting"

    const-wide/16 v8, 0x40

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2449
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->finishBooting()V

    .line 2450
    const-wide/16 v8, 0x40

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 2452
    :cond_17
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_0

    .line 2453
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enableScreenAfterBoot()V

    goto/16 :goto_0

    .line 2459
    :sswitch_25
    :try_start_1f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, Ljava/util/Locale;

    .line 2460
    .local v63, "l":Ljava/util/Locale;
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v85

    .line 2461
    .local v85, "service":Landroid/os/IBinder;
    invoke-static/range {v85 .. v85}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v65

    .line 2462
    .local v65, "mountService":Landroid/os/storage/IMountService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get1()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Storing locale "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v63 .. v63}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " for decryption UI"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    const-string/jumbo v4, "SystemLocale"

    invoke-virtual/range {v63 .. v63}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v65

    invoke-interface {v0, v4, v7}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_9

    goto/16 :goto_0

    .line 2464
    .end local v63    # "l":Ljava/util/Locale;
    .end local v65    # "mountService":Landroid/os/storage/IMountService;
    .end local v85    # "service":Landroid/os/IBinder;
    :catch_9
    move-exception v52

    .line 2465
    .restart local v52    # "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get1()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "Error storing locale for decryption UI"

    move-object/from16 v0, v52

    invoke-static {v4, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2470
    .end local v52    # "e":Landroid/os/RemoteException;
    :sswitch_26
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_20
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2471
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get16(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_e

    move-result v4

    add-int/lit8 v60, v4, -0x1

    .restart local v60    # "i":I
    :goto_d
    if-ltz v60, :cond_18

    .line 2474
    :try_start_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get16(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    move/from16 v0, v60

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/app/ITaskStackListener;

    invoke-interface {v4}, Landroid/app/ITaskStackListener;->onTaskStackChanged()V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_21} :catch_14
    .catchall {:try_start_21 .. :try_end_21} :catchall_e

    .line 2471
    :goto_e
    add-int/lit8 v60, v60, -0x1

    goto :goto_d

    .line 2479
    :cond_18
    :try_start_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get16(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_e

    monitor-exit v7

    .line 2470
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    .end local v60    # "i":I
    :catchall_e
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2484
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_23
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2485
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get16(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_f

    move-result v4

    add-int/lit8 v60, v4, -0x1

    .restart local v60    # "i":I
    :goto_f
    if-ltz v60, :cond_19

    .line 2488
    :try_start_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get16(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    move/from16 v0, v60

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/app/ITaskStackListener;

    invoke-interface {v4}, Landroid/app/ITaskStackListener;->onActivityPinned()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_24} :catch_13
    .catchall {:try_start_24 .. :try_end_24} :catchall_f

    .line 2485
    :goto_10
    add-int/lit8 v60, v60, -0x1

    goto :goto_f

    .line 2493
    :cond_19
    :try_start_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get16(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_f

    monitor-exit v7

    .line 2484
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    .end local v60    # "i":I
    :catchall_f
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2498
    :sswitch_28
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_26
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2499
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get16(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_10

    move-result v4

    add-int/lit8 v60, v4, -0x1

    .restart local v60    # "i":I
    :goto_11
    if-ltz v60, :cond_1a

    .line 2502
    :try_start_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get16(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    move/from16 v0, v60

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/app/ITaskStackListener;

    invoke-interface {v4}, Landroid/app/ITaskStackListener;->onPinnedActivityRestartAttempt()V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_27} :catch_12
    .catchall {:try_start_27 .. :try_end_27} :catchall_10

    .line 2499
    :goto_12
    add-int/lit8 v60, v60, -0x1

    goto :goto_11

    .line 2507
    :cond_1a
    :try_start_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get16(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_10

    monitor-exit v7

    .line 2498
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    .end local v60    # "i":I
    :catchall_10
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2512
    :sswitch_29
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_29
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2513
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get16(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_11

    move-result v4

    add-int/lit8 v60, v4, -0x1

    .restart local v60    # "i":I
    :goto_13
    if-ltz v60, :cond_1b

    .line 2516
    :try_start_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get16(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    move/from16 v0, v60

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/app/ITaskStackListener;

    invoke-interface {v4}, Landroid/app/ITaskStackListener;->onPinnedStackAnimationEnded()V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2a} :catch_11
    .catchall {:try_start_2a .. :try_end_2a} :catchall_11

    .line 2513
    :goto_14
    add-int/lit8 v60, v60, -0x1

    goto :goto_13

    .line 2521
    :cond_1b
    :try_start_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get16(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_11

    monitor-exit v7

    .line 2512
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    .end local v60    # "i":I
    :catchall_11
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2526
    :sswitch_2a
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_2c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2527
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get16(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_12

    move-result v4

    add-int/lit8 v60, v4, -0x1

    .restart local v60    # "i":I
    :goto_15
    if-ltz v60, :cond_1c

    .line 2530
    :try_start_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get16(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    move/from16 v0, v60

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/app/ITaskStackListener;

    .line 2531
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    .line 2530
    invoke-interface {v4, v7, v9}, Landroid/app/ITaskStackListener;->onActivityForcedResizable(Ljava/lang/String;I)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_2d} :catch_10
    .catchall {:try_start_2d .. :try_end_2d} :catchall_12

    .line 2527
    :goto_16
    add-int/lit8 v60, v60, -0x1

    goto :goto_15

    .line 2536
    :cond_1c
    :try_start_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get16(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_12

    monitor-exit v8

    .line 2526
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    .end local v60    # "i":I
    :catchall_12
    move-exception v4

    monitor-exit v8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2541
    :sswitch_2b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_2f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2542
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get16(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_13

    move-result v4

    add-int/lit8 v60, v4, -0x1

    .restart local v60    # "i":I
    :goto_17
    if-ltz v60, :cond_1d

    .line 2545
    :try_start_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get16(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    move/from16 v0, v60

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/app/ITaskStackListener;

    invoke-interface {v4}, Landroid/app/ITaskStackListener;->onActivityDismissingDockedStack()V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_30} :catch_f
    .catchall {:try_start_30 .. :try_end_30} :catchall_13

    .line 2542
    :goto_18
    add-int/lit8 v60, v60, -0x1

    goto :goto_17

    .line 2551
    :cond_1d
    :try_start_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get16(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_13

    monitor-exit v7

    .line 2541
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    .end local v60    # "i":I
    :catchall_13
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2556
    :sswitch_2c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v89, v0

    .line 2557
    .local v89, "uid":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v58, v0

    check-cast v58, [B

    .line 2559
    .local v58, "firstPacket":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v7

    .line 2560
    const/16 v60, 0x0

    .restart local v60    # "i":I
    :goto_19
    :try_start_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v60

    if-ge v0, v4, :cond_1f

    .line 2561
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    move/from16 v0, v60

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Lcom/android/server/am/ProcessRecord;

    .line 2562
    .local v72, "p":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v72

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->uid:I
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_14

    move/from16 v0, v89

    if-ne v4, v0, :cond_1e

    .line 2564
    :try_start_33
    move-object/from16 v0, v72

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v58

    invoke-interface {v4, v0}, Landroid/app/IApplicationThread;->notifyCleartextNetwork([B)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_33} :catch_e
    .catchall {:try_start_33 .. :try_end_33} :catchall_14

    .line 2560
    :cond_1e
    :goto_1a
    add-int/lit8 v60, v60, 0x1

    goto :goto_19

    .end local v72    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_1f
    monitor-exit v7

    goto/16 :goto_0

    .line 2559
    :catchall_14
    move-exception v4

    monitor-exit v7

    throw v4

    .line 2577
    .end local v58    # "firstPacket":[B
    .end local v60    # "i":I
    .end local v89    # "uid":I
    :sswitch_2d
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_34
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2578
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    move-object/from16 v76, v0

    .line 2579
    .local v76, "procName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v0, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I

    move/from16 v89, v0

    .line 2580
    .restart local v89    # "uid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, v76

    move/from16 v1, v89

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v90

    check-cast v90, Landroid/util/Pair;

    .line 2581
    .local v90, "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    if-nez v90, :cond_20

    .line 2582
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    const/4 v8, 0x0

    move-object/from16 v0, v76

    invoke-virtual {v4, v0, v8}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v90

    .end local v90    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    check-cast v90, Landroid/util/Pair;

    .line 2584
    .restart local v90    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_20
    if-eqz v90, :cond_21

    .line 2585
    move-object/from16 v0, v90

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v66

    .line 2586
    .local v66, "memLimit":J
    move-object/from16 v0, v90

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v81, v0

    check-cast v81, Ljava/lang/String;
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_15

    :goto_1b
    monitor-exit v7

    .line 2577
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2592
    if-nez v76, :cond_22

    .line 2593
    return-void

    .line 2588
    .end local v66    # "memLimit":J
    :cond_21
    const-wide/16 v66, 0x0

    .line 2589
    .restart local v66    # "memLimit":J
    const/16 v81, 0x0

    .local v81, "reportPackage":Ljava/lang/String;
    goto :goto_1b

    .line 2577
    .end local v66    # "memLimit":J
    .end local v76    # "procName":Ljava/lang/String;
    .end local v81    # "reportPackage":Ljava/lang/String;
    .end local v89    # "uid":I
    .end local v90    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :catchall_15
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2596
    .restart local v66    # "memLimit":J
    .restart local v76    # "procName":Ljava/lang/String;
    .restart local v89    # "uid":I
    .restart local v90    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_22
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v4, :cond_23

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get3()Ljava/lang/String;

    move-result-object v4

    .line 2597
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Showing dump heap notification from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v76

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v89

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2596
    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    :cond_23
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v14

    .line 2600
    .restart local v14    # "inm":Landroid/app/INotificationManager;
    if-nez v14, :cond_24

    .line 2601
    return-void

    .line 2604
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v76, v7, v8

    const v8, #android:string@dump_heap_notification#t

    invoke-virtual {v4, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v86

    .line 2607
    .restart local v86    # "text":Ljava/lang/String;
    new-instance v50, Landroid/content/Intent;

    invoke-direct/range {v50 .. v50}, Landroid/content/Intent;-><init>()V

    .line 2608
    .local v50, "deleteIntent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.server.am.DELETE_DUMPHEAP"

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2609
    new-instance v26, Landroid/content/Intent;

    invoke-direct/range {v26 .. v26}, Landroid/content/Intent;-><init>()V

    .line 2610
    .local v26, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "android"

    const-class v7, Lcom/android/internal/app/DumpHeapActivity;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2611
    const-string/jumbo v4, "process"

    move-object/from16 v0, v26

    move-object/from16 v1, v76

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2612
    const-string/jumbo v4, "size"

    move-object/from16 v0, v26

    move-wide/from16 v1, v66

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2613
    if-eqz v81, :cond_25

    .line 2614
    const-string/jumbo v4, "direct_launch"

    move-object/from16 v0, v26

    move-object/from16 v1, v81

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2616
    :cond_25
    invoke-static/range {v89 .. v89}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 2617
    .restart local v12    # "userId":I
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v7, #android:drawable@stat_sys_adb#t

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v86

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v8, #android:color@system_notification_accent_color#t

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v86

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2627
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v8, #android:string@dump_heap_notification_detail#t

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 2617
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2628
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    .line 2630
    new-instance v29, Landroid/os/UserHandle;

    move-object/from16 v0, v29

    invoke-direct {v0, v12}, Landroid/os/UserHandle;-><init>(I)V

    .line 2628
    const/16 v25, 0x0

    .line 2629
    const/high16 v27, 0x10000000

    const/16 v28, 0x0

    .line 2628
    invoke-static/range {v24 .. v29}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 2617
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2631
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 2632
    sget-object v8, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 2631
    const/4 v9, 0x0

    .line 2632
    const/4 v10, 0x0

    .line 2631
    move-object/from16 v0, v50

    invoke-static {v7, v9, v0, v10, v8}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 2617
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v19

    .line 2636
    .restart local v19    # "notification":Landroid/app/Notification;
    const/4 v4, 0x1

    :try_start_35
    new-array v0, v4, [I

    move-object/from16 v20, v0

    .restart local v20    # "outId":[I
    const-string v15, "android"

    const-string v16, "android"

    const/16 v17, 0x0

    const v18, #android:string@dump_heap_notification#t

    move/from16 v21, v12

    invoke-interface/range {v14 .. v21}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_35
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_35} :catch_a
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_35} :catch_d

    goto/16 :goto_0

    .line 2640
    .end local v20    # "outId":[I
    :catch_a
    move-exception v55

    .line 2641
    .restart local v55    # "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get1()Ljava/lang/String;

    move-result-object v4

    .line 2642
    const-string/jumbo v7, "Error showing notification for dump heap"

    .line 2641
    move-object/from16 v0, v55

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2647
    .end local v12    # "userId":I
    .end local v14    # "inm":Landroid/app/INotificationManager;
    .end local v19    # "notification":Landroid/app/Notification;
    .end local v26    # "intent":Landroid/content/Intent;
    .end local v50    # "deleteIntent":Landroid/content/Intent;
    .end local v55    # "e":Ljava/lang/RuntimeException;
    .end local v66    # "memLimit":J
    .end local v76    # "procName":Ljava/lang/String;
    .end local v86    # "text":Ljava/lang/String;
    .end local v89    # "uid":I
    .end local v90    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :sswitch_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v7

    .line 2648
    sget-object v8, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    .line 2651
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    .line 2649
    const/4 v10, 0x3

    .line 2647
    invoke-virtual {v4, v7, v8, v10, v9}, Lcom/android/server/am/ActivityManagerService;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;II)V

    .line 2652
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_36
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2653
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    iput-object v8, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpFile:Ljava/lang/String;

    .line 2654
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    iput-object v8, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 2655
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, -0x1

    iput v8, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpPid:I

    .line 2656
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, -0x1

    iput v8, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_16

    monitor-exit v7

    .line 2652
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_16
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2660
    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v7}, Lcom/android/server/am/UserController;->dispatchForegroundProfileChanged(I)V

    goto/16 :goto_0

    .line 2663
    :sswitch_30
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v88, v0

    check-cast v88, Lcom/android/server/am/AppTimeTracker;

    .line 2664
    .local v88, "tracker":Lcom/android/server/am/AppTimeTracker;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v88

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppTimeTracker;->deliverResult(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 2667
    .end local v88    # "tracker":Lcom/android/server/am/AppTimeTracker;
    :sswitch_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v7}, Lcom/android/server/am/UserController;->dispatchUserSwitchComplete(I)V

    goto/16 :goto_0

    .line 2670
    :sswitch_32
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Landroid/app/IUiAutomationConnection;

    .line 2672
    .local v48, "connection":Landroid/app/IUiAutomationConnection;
    :try_start_37
    invoke-interface/range {v48 .. v48}, Landroid/app/IUiAutomationConnection;->shutdown()V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_37} :catch_b

    .line 2678
    :goto_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    invoke-static {v4, v7}, Lcom/android/server/am/ActivityManagerService;->-set5(Lcom/android/server/am/ActivityManagerService;Z)Z

    goto/16 :goto_0

    .line 2673
    :catch_b
    move-exception v52

    .line 2674
    .restart local v52    # "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get1()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "Error shutting down UiAutomationConnection"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 2681
    .end local v48    # "connection":Landroid/app/IUiAutomationConnection;
    .end local v52    # "e":Landroid/os/RemoteException;
    :sswitch_33
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_38
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2682
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get9(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 2683
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get6(Lcom/android/server/am/ActivityManagerService;)J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const-wide/16 v16, 0x9c4

    sub-long v10, v10, v16

    cmp-long v4, v8, v10

    if-gez v4, :cond_27

    .line 2684
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-wrap5()I

    .line 2685
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    invoke-static {v4, v8}, Lcom/android/server/am/ActivityManagerService;->-set2(Lcom/android/server/am/ActivityManagerService;Z)Z

    .line 2686
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-wide/16 v8, 0x0

    invoke-static {v4, v8, v9}, Lcom/android/server/am/ActivityManagerService;->-set0(Lcom/android/server/am/ActivityManagerService;J)J
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_17

    :cond_26
    :goto_1d
    monitor-exit v7

    .line 2681
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    .line 2688
    :cond_27
    :try_start_39
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v8, 0x3a

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v69

    .line 2689
    .local v69, "newmsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v8, 0x9c4

    move-object/from16 v0, v69

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_17

    goto :goto_1d

    .line 2681
    .end local v69    # "newmsg":Landroid/os/Message;
    :catchall_17
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2695
    :sswitch_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->idleUids()V

    goto/16 :goto_0

    .line 2698
    :sswitch_35
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_3a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2699
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->logStackState()V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_18

    monitor-exit v7

    .line 2698
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_18
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2703
    :sswitch_36
    const-class v4, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v92

    check-cast v92, Lcom/android/server/vr/VrManagerInternal;

    .line 2704
    .local v92, "vrService":Lcom/android/server/vr/VrManagerInternal;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v79, v0

    check-cast v79, Lcom/android/server/am/ActivityRecord;

    .line 2709
    .restart local v79    # "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_3b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2710
    move-object/from16 v0, v79

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_29

    const/16 v91, 0x1

    .line 2711
    .local v91, "vrMode":Z
    :goto_1e
    move-object/from16 v0, v79

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    move-object/from16 v82, v0

    .line 2712
    .local v82, "requestedPackage":Landroid/content/ComponentName;
    move-object/from16 v0, v79

    iget v12, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 2713
    .restart local v12    # "userId":I
    move-object/from16 v0, v79

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v47

    .line 2714
    .local v47, "callingPackage":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    move/from16 v0, v91

    if-eq v4, v0, :cond_28

    .line 2715
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, v91

    invoke-static {v4, v0}, Lcom/android/server/am/ActivityManagerService;->-set1(Lcom/android/server/am/ActivityManagerService;Z)Z

    .line 2716
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v9}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v9

    invoke-static {v8, v9}, Lcom/android/server/am/ActivityManagerService;->-wrap3(Landroid/content/res/Configuration;Z)Z

    move-result v8

    invoke-static {v4, v8}, Lcom/android/server/am/ActivityManagerService;->-set4(Lcom/android/server/am/ActivityManagerService;Z)Z

    .line 2717
    move-object/from16 v0, v79

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_28

    .line 2718
    move-object/from16 v0, v79

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v75, v0

    .line 2719
    .local v75, "proc":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v75

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    if-lez v4, :cond_28

    .line 2720
    move-object/from16 v0, v75

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_19

    const/4 v8, 0x2

    if-ne v4, v8, :cond_28

    .line 2722
    :try_start_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 2723
    move-object/from16 v0, v75

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    .line 2724
    const v8, 0x40000001    # 2.0000002f

    const/4 v9, 0x1

    .line 2723
    invoke-static {v4, v8, v9}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3c .. :try_end_3c} :catch_c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_19

    .end local v75    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_28
    :goto_1f
    monitor-exit v7

    .line 2709
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2738
    move-object/from16 v0, v92

    move/from16 v1, v91

    move-object/from16 v2, v82

    move-object/from16 v3, v47

    invoke-virtual {v0, v1, v2, v12, v3}, Lcom/android/server/vr/VrManagerInternal;->setVrMode(ZLandroid/content/ComponentName;ILandroid/content/ComponentName;)V

    goto/16 :goto_0

    .line 2710
    .end local v12    # "userId":I
    .end local v47    # "callingPackage":Landroid/content/ComponentName;
    .end local v82    # "requestedPackage":Landroid/content/ComponentName;
    .end local v91    # "vrMode":Z
    :cond_29
    const/16 v91, 0x0

    .restart local v91    # "vrMode":Z
    goto/16 :goto_1e

    .line 2726
    .restart local v12    # "userId":I
    .restart local v47    # "callingPackage":Landroid/content/ComponentName;
    .restart local v75    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v82    # "requestedPackage":Landroid/content/ComponentName;
    :cond_2a
    :try_start_3d
    move-object/from16 v0, v75

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    .line 2727
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 2726
    invoke-static {v4, v8, v9}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3d .. :try_end_3d} :catch_c
    .catchall {:try_start_3d .. :try_end_3d} :catchall_19

    goto :goto_1f

    .line 2729
    :catch_c
    move-exception v54

    .line 2730
    .local v54, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get1()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to set scheduling policy, thread does not exist:\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v54

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_19

    goto :goto_1f

    .line 2709
    .end local v12    # "userId":I
    .end local v47    # "callingPackage":Landroid/content/ComponentName;
    .end local v54    # "e":Ljava/lang/IllegalArgumentException;
    .end local v75    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v82    # "requestedPackage":Landroid/content/ComponentName;
    .end local v91    # "vrMode":Z
    :catchall_19
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2741
    .end local v79    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v92    # "vrService":Lcom/android/server/vr/VrManagerInternal;
    :sswitch_37
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v79, v0

    check-cast v79, Lcom/android/server/am/ActivityRecord;

    .line 2742
    .restart local v79    # "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v79, :cond_2b

    move-object/from16 v0, v79

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_2b

    const/16 v68, 0x1

    .line 2743
    .local v68, "needsVrMode":Z
    :goto_20
    if-eqz v68, :cond_0

    .line 2744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v4, v7, :cond_2c

    const/16 v28, 0x1

    :goto_21
    move-object/from16 v0, v79

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    move-object/from16 v29, v0

    move-object/from16 v0, v79

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v30, v0

    .line 2745
    move-object/from16 v0, v79

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v31

    const/16 v32, 0x0

    .line 2744
    invoke-static/range {v27 .. v32}, Lcom/android/server/am/ActivityManagerService;->-wrap6(Lcom/android/server/am/ActivityManagerService;ZLandroid/content/ComponentName;ILandroid/content/ComponentName;Z)V

    goto/16 :goto_0

    .line 2742
    .end local v68    # "needsVrMode":Z
    :cond_2b
    const/16 v68, 0x0

    goto :goto_20

    .line 2744
    .restart local v68    # "needsVrMode":Z
    :cond_2c
    const/16 v28, 0x0

    goto :goto_21

    .line 2751
    .end local v68    # "needsVrMode":Z
    .end local v79    # "r":Lcom/android/server/am/ActivityRecord;
    :sswitch_38
    const-string/jumbo v4, ""

    sput-object v4, Lcom/android/server/am/ActivityManagerService;->mIgnoredAnrProcess:Ljava/lang/String;

    goto/16 :goto_0

    .line 2758
    :sswitch_39
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v7, v4}, Lcom/android/server/am/ActivityManagerService;->-wrap11(Lcom/android/server/am/ActivityManagerService;I)V

    goto/16 :goto_0

    .line 2643
    .restart local v12    # "userId":I
    .restart local v14    # "inm":Landroid/app/INotificationManager;
    .restart local v19    # "notification":Landroid/app/Notification;
    .restart local v26    # "intent":Landroid/content/Intent;
    .restart local v50    # "deleteIntent":Landroid/content/Intent;
    .restart local v66    # "memLimit":J
    .restart local v76    # "procName":Ljava/lang/String;
    .restart local v86    # "text":Ljava/lang/String;
    .restart local v89    # "uid":I
    .restart local v90    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :catch_d
    move-exception v52

    .restart local v52    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 2565
    .end local v12    # "userId":I
    .end local v14    # "inm":Landroid/app/INotificationManager;
    .end local v19    # "notification":Landroid/app/Notification;
    .end local v26    # "intent":Landroid/content/Intent;
    .end local v50    # "deleteIntent":Landroid/content/Intent;
    .end local v52    # "e":Landroid/os/RemoteException;
    .end local v66    # "memLimit":J
    .end local v76    # "procName":Ljava/lang/String;
    .end local v86    # "text":Ljava/lang/String;
    .end local v90    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v58    # "firstPacket":[B
    .restart local v60    # "i":I
    .restart local v72    # "p":Lcom/android/server/am/ProcessRecord;
    :catch_e
    move-exception v61

    .local v61, "ignored":Landroid/os/RemoteException;
    goto/16 :goto_1a

    .line 2547
    .end local v58    # "firstPacket":[B
    .end local v61    # "ignored":Landroid/os/RemoteException;
    .end local v72    # "p":Lcom/android/server/am/ProcessRecord;
    .end local v89    # "uid":I
    :catch_f
    move-exception v52

    .restart local v52    # "e":Landroid/os/RemoteException;
    goto/16 :goto_18

    .line 2532
    .end local v52    # "e":Landroid/os/RemoteException;
    :catch_10
    move-exception v52

    .restart local v52    # "e":Landroid/os/RemoteException;
    goto/16 :goto_16

    .line 2517
    .end local v52    # "e":Landroid/os/RemoteException;
    :catch_11
    move-exception v52

    .restart local v52    # "e":Landroid/os/RemoteException;
    goto/16 :goto_14

    .line 2503
    .end local v52    # "e":Landroid/os/RemoteException;
    :catch_12
    move-exception v52

    .restart local v52    # "e":Landroid/os/RemoteException;
    goto/16 :goto_12

    .line 2489
    .end local v52    # "e":Landroid/os/RemoteException;
    :catch_13
    move-exception v52

    .restart local v52    # "e":Landroid/os/RemoteException;
    goto/16 :goto_10

    .line 2475
    .end local v52    # "e":Landroid/os/RemoteException;
    :catch_14
    move-exception v52

    .restart local v52    # "e":Landroid/os/RemoteException;
    goto/16 :goto_e

    .line 2267
    .end local v52    # "e":Landroid/os/RemoteException;
    .end local v60    # "i":I
    .restart local v14    # "inm":Landroid/app/INotificationManager;
    :catch_15
    move-exception v52

    .restart local v52    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 2250
    .end local v14    # "inm":Landroid/app/INotificationManager;
    .end local v52    # "e":Landroid/os/RemoteException;
    .restart local v19    # "notification":Landroid/app/Notification;
    .restart local v49    # "context":Landroid/content/Context;
    .restart local v62    # "inm":Landroid/app/INotificationManager;
    .restart local v77    # "process":Lcom/android/server/am/ProcessRecord;
    .restart local v84    # "root":Lcom/android/server/am/ActivityRecord;
    .restart local v86    # "text":Ljava/lang/String;
    :catch_16
    move-exception v52

    .restart local v52    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 2095
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_3
        0x14 -> :sswitch_6
        0x15 -> :sswitch_8
        0x16 -> :sswitch_9
        0x17 -> :sswitch_a
        0x18 -> :sswitch_b
        0x19 -> :sswitch_c
        0x1b -> :sswitch_d
        0x1c -> :sswitch_4
        0x1d -> :sswitch_5
        0x21 -> :sswitch_17
        0x22 -> :sswitch_18
        0x23 -> :sswitch_19
        0x24 -> :sswitch_1a
        0x25 -> :sswitch_1b
        0x26 -> :sswitch_1c
        0x27 -> :sswitch_1d
        0x28 -> :sswitch_1e
        0x29 -> :sswitch_1f
        0x2a -> :sswitch_20
        0x2b -> :sswitch_22
        0x2c -> :sswitch_23
        0x2d -> :sswitch_24
        0x2f -> :sswitch_25
        0x31 -> :sswitch_26
        0x32 -> :sswitch_2c
        0x33 -> :sswitch_2d
        0x34 -> :sswitch_2e
        0x35 -> :sswitch_2f
        0x37 -> :sswitch_30
        0x38 -> :sswitch_31
        0x39 -> :sswitch_32
        0x3a -> :sswitch_33
        0x3b -> :sswitch_7
        0x3c -> :sswitch_34
        0x3d -> :sswitch_21
        0x3e -> :sswitch_35
        0x3f -> :sswitch_36
        0x40 -> :sswitch_27
        0x41 -> :sswitch_28
        0x42 -> :sswitch_29
        0x43 -> :sswitch_2a
        0x44 -> :sswitch_2b
        0x45 -> :sswitch_37
        0x45e -> :sswitch_39
        0xd348 -> :sswitch_38
        0xd6d8 -> :sswitch_e
        0xd6d9 -> :sswitch_f
        0xd6da -> :sswitch_10
        0xd6db -> :sswitch_12
        0xd6dc -> :sswitch_13
        0xd6dd -> :sswitch_14
        0xd6de -> :sswitch_11
        0xd6df -> :sswitch_15
        0xd6e0 -> :sswitch_16
    .end sparse-switch
.end method

.method private forceStopFlymePackageLocked(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue    
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->forceStopFlymePackageLocked(Landroid/os/Message;)V

    return-void
.end method
