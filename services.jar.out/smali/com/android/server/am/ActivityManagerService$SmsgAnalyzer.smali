.class final Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SmsgAnalyzer"
.end annotation


# instance fields
.field bcastAppChanged:Z

.field hasVisibleWindow:Z

.field inSmsg:Z

.field isBcastReceiver:Z

.field isImportantBg:Z

.field isTopAppUid:Z

.field mSmsgFastBcast:Z

.field mSmsgFgSleep:Z

.field mSmsgFgUseUid:Z

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field topAppChanged:Z

.field visibleAppChanged:Z


# direct methods
.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1126
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1127
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->mSmsgFastBcast:Z

    .line 1128
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->mSmsgFgUseUid:Z

    .line 1129
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->mSmsgFgSleep:Z

    .line 1130
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->isTopAppUid:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->isBcastReceiver:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->hasVisibleWindow:Z

    .line 1131
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->visibleAppChanged:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->bcastAppChanged:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->topAppChanged:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "x1"    # Lcom/android/server/am/ActivityManagerService$1;

    .prologue
    .line 1126
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    return-void
.end method

.method private appHasVisibleWindow(Lcom/android/server/am/ProcessRecord;Lcom/android/server/wm/WindowManagerService;)Z
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/16 v6, 0x28

    const/4 v3, 0x0

    .line 1148
    invoke-virtual {p2}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 1149
    .local v1, "mWindow":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/os/IBinder;Landroid/view/WindowManagerPolicy$WindowState;>;"
    if-nez v1, :cond_0

    .line 1167
    :goto_0
    return v3

    .line 1152
    :cond_0
    monitor-enter v1

    .line 1153
    :try_start_0
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1154
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1155
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/WindowManagerPolicy$WindowState;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1156
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManagerPolicy$WindowState;

    .line 1157
    .local v2, "token":Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v6, :cond_1

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le v4, v6, :cond_1

    .line 1162
    const/4 v3, 0x1

    monitor-exit v1

    goto :goto_0

    .line 1166
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/WindowManagerPolicy$WindowState;>;"
    .end local v2    # "token":Landroid/view/WindowManagerPolicy$WindowState;
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public analyzeAppProperties(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;ZLcom/android/server/wm/WindowManagerService;)V
    .locals 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "TOP_APP"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "bSleeping"    # Z
    .param p4, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1171
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->curProcState:I

    const/4 v4, 0x7

    if-gt v1, v4, :cond_a

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->isImportantBg:Z

    .line 1172
    iput-boolean v3, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->hasVisibleWindow:Z

    iput-boolean v3, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->isBcastReceiver:Z

    iput-boolean v3, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->isTopAppUid:Z

    .line 1173
    iput-boolean v3, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->topAppChanged:Z

    iput-boolean v3, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->bcastAppChanged:Z

    iput-boolean v3, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->visibleAppChanged:Z

    .line 1176
    :try_start_0
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v1}, Landroid/os/Process;->getProcessGroup(I)I

    move-result v1

    const/16 v4, 0x10

    if-ne v1, v4, :cond_b

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->inSmsg:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1184
    :goto_2
    :try_start_1
    invoke-direct {p0, p1, p4}, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->appHasVisibleWindow(Lcom/android/server/am/ProcessRecord;Lcom/android/server/wm/WindowManagerService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->hasVisibleWindow:Z

    .line 1185
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->inSmsg:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->hasVisibleWindow:Z

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->smsgVisibleSkipped:Z

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->hasVisibleWindow:Z

    if-nez v1, :cond_c

    :cond_1
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->visibleAppChanged:Z

    .line 1187
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->mSmsgFastBcast:Z

    if-eqz v1, :cond_5

    .line 1188
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    if-nez v1, :cond_5

    .line 1189
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->curProcState:I

    const/16 v4, 0xb

    if-eq v1, v4, :cond_2

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    const-string v4, "broadcast"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_2
    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->isBcastReceiver:Z

    .line 1191
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->smsgBcastSkipped:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->isBcastReceiver:Z

    if-eqz v1, :cond_4

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->inSmsg:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->isBcastReceiver:Z

    if-eqz v1, :cond_5

    .line 1192
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->bcastAppChanged:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1199
    :cond_5
    :goto_5
    if-eqz p2, :cond_9

    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_9

    .line 1200
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->mSmsgFgUseUid:Z

    if-eqz v1, :cond_8

    .line 1201
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    if-nez v1, :cond_8

    .line 1202
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->mSmsgFgSleep:Z

    if-eqz v1, :cond_e

    if-eqz p3, :cond_e

    .line 1203
    iput-boolean v3, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->isTopAppUid:Z

    .line 1206
    :goto_6
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->smsgTopSkipped:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->isTopAppUid:Z

    if-eqz v1, :cond_7

    :cond_6
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->isTopAppUid:Z

    if-eqz v1, :cond_10

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->smsgTopSkipped:Z

    if-nez v1, :cond_10

    :cond_7
    :goto_7
    iput-boolean v2, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->topAppChanged:Z

    .line 1209
    :cond_8
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->mSmsgFgSleep:Z

    if-eqz v1, :cond_9

    .line 1210
    if-eqz p3, :cond_9

    if-ne p1, p2, :cond_9

    .line 1211
    iput v3, p1, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    .line 1212
    iput-boolean v3, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->visibleAppChanged:Z

    iput-boolean v3, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->hasVisibleWindow:Z

    iput-boolean v3, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->isImportantBg:Z

    .line 1216
    :cond_9
    return-void

    :cond_a
    move v1, v3

    .line 1171
    goto/16 :goto_0

    :cond_b
    move v1, v3

    .line 1176
    goto/16 :goto_1

    .line 1177
    :catch_0
    move-exception v0

    .line 1179
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->inSmsg:Z

    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->inSmsg:Z

    goto/16 :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_c
    move v1, v3

    .line 1185
    goto :goto_3

    :cond_d
    move v1, v3

    .line 1189
    goto :goto_4

    .line 1205
    :cond_e
    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, v4, :cond_f

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v4, 0x3e8

    if-le v1, v4, :cond_f

    move v1, v2

    :goto_8
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->isTopAppUid:Z

    goto :goto_6

    :cond_f
    move v1, v3

    goto :goto_8

    :cond_10
    move v2, v3

    .line 1206
    goto :goto_7

    .line 1195
    :catch_1
    move-exception v1

    goto :goto_5
.end method

.method public appPropertyCheck(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v2, 0x1

    .line 1220
    const/4 v0, 0x1

    .line 1222
    .local v0, "applicable":Z
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->hasVisibleWindow:Z

    if-eqz v1, :cond_0

    .line 1223
    iput-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->smsgVisibleSkipped:Z

    .line 1225
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->isBcastReceiver:Z

    if-eqz v1, :cond_1

    .line 1226
    iput-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->smsgBcastSkipped:Z

    .line 1229
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->isTopAppUid:Z

    if-eqz v1, :cond_2

    .line 1230
    iput-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->smsgTopSkipped:Z

    .line 1232
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->hasVisibleWindow:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->isBcastReceiver:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->isTopAppUid:Z

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->isImportantBg:Z

    if-eqz v1, :cond_4

    .line 1233
    :cond_3
    const/4 v0, 0x0

    .line 1235
    :cond_4
    return v0
.end method

.method public bailout()Z
    .locals 1

    .prologue
    .line 1143
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->inSmsg:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->isImportantBg:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->visibleAppChanged:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->bcastAppChanged:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->topAppChanged:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateConfig(ZZZ)V
    .locals 0
    .param p1, "fast_broadcast"    # Z
    .param p2, "use_uid"    # Z
    .param p3, "fg_sleep"    # Z

    .prologue
    .line 1136
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->mSmsgFastBcast:Z

    .line 1137
    iput-boolean p2, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->mSmsgFgUseUid:Z

    .line 1138
    iput-boolean p3, p0, Lcom/android/server/am/ActivityManagerService$SmsgAnalyzer;->mSmsgFgSleep:Z

    .line 1139
    return-void
.end method
