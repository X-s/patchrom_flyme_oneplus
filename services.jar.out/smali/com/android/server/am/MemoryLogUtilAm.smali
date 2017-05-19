.class public Lcom/android/server/am/MemoryLogUtilAm;
.super Ljava/lang/Object;
.source "MemoryLogUtilAm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;,
        Lcom/android/server/am/MemoryLogUtilAm$IonInfo;,
        Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    }
.end annotation


# static fields
.field private static final DURATION_DUMP_AM_LOW_MEMORY:I = 0xea60

.field private static final DURATION_DUMP_LOW_MEMORY:I = 0x4e20

.field static final FORCE_DUMP_ADJ:I = 0x4

.field static final MIN_DUMP_ADJ:I = 0x6

.field private static final NUM_EXTRAM_MEMINFO:I = 0xe

.field static final PLATFORM_BRCM:I = 0x3

.field static final PLATFORM_MTK_MALI:I = 0x5

.field static final PLATFORM_MTK_PVR:I = 0x4

.field static final PLATFORM_NONE:I = 0x0

.field static final PLATFORM_NV:I = 0x1

.field static final PLATFORM_QCT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MemoryUsage"

.field static mPlatform:I = 0x0

.field private static sBuffers:J = 0x0L

.field private static sCached:J = 0x0L

.field private static sFree:J = 0x0L

.field private static sIsDumping:Z = false

.field private static sKernelStack:J = 0x0L

.field private static final sLargeRamCriteria:J = 0x100000L

.field private static sLastTimeDumpLowMemory:J

.field private static sPageTables:J

.field private static sSReclaimable:J

.field private static sSUnreclaim:J

.field private static sShmem:J

.field private static sSlab:J

.field private static sSwapCached:J

.field private static sSwapFree:J

.field private static sSwapTotal:J

.field private static sTotal:J

.field private static sVmallocUsed:J

.field private static sZramInUse:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sLastTimeDumpLowMemory:J

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/MemoryLogUtilAm;->sIsDumping:Z

    .line 62
    const/4 v0, 0x2

    sput v0, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 937
    return-void
.end method

.method static doDump(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;ZZ)Ljava/lang/String;
    .locals 25
    .param p1, "TOP_APP"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "dyingProc"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "isLauncherKilled"    # Z
    .param p4, "doInBg"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            "Lcom/android/server/am/ProcessRecord;",
            "ZZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "lruProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    sget-boolean v2, Lcom/android/server/am/MemoryLogUtilAm;->sIsDumping:Z

    if-eqz v2, :cond_0

    .line 139
    const/4 v2, 0x0

    .line 199
    :goto_0
    return-object v2

    .line 141
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/am/MemoryLogUtilAm;->sIsDumping:Z

    .line 143
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/am/MemoryLogUtilAm;->sLastTimeDumpLowMemory:J

    .line 144
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v9, "allProcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;>;"
    new-instance v20, Ljava/util/Vector;

    invoke-direct/range {v20 .. v20}, Ljava/util/Vector;-><init>()V

    .line 146
    .local v20, "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v23, "serviceInfo":Ljava/lang/StringBuilder;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .local v21, "providerInfo":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/am/ProcessRecord;

    .line 150
    .local v22, "rec":Lcom/android/server/am/ProcessRecord;
    const/16 v16, 0x0

    .line 151
    .local v16, "isBinded":Z
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v2, :cond_1

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 152
    const/16 v16, 0x1

    .line 154
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 155
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 156
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    const-string v4, "service"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 157
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/ServiceRecord;

    .line 158
    .local v24, "sr":Lcom/android/server/am/ServiceRecord;
    if-eqz v16, :cond_3

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 162
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v24

    iget-wide v6, v0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    sub-long v12, v4, v6

    .line 163
    .local v12, "duration":J
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v2, :cond_4

    .line 165
    const-string v2, " <- "

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_4
    const-string v2, " For "

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ms."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 168
    .end local v12    # "duration":J
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v24    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_5
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    const-string v4, "provider"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 169
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 170
    .local v17, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ContentProviderRecord;>;"
    :cond_6
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 171
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ContentProviderRecord;

    .line 172
    .local v11, "cpRec":Lcom/android/server/am/ContentProviderRecord;
    if-eqz v16, :cond_7

    iget-object v2, v11, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 176
    :cond_7
    iget-object v2, v11, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v2, :cond_8

    .line 178
    const-string v2, " <- "

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_8
    const-string v2, "."

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 184
    .end local v11    # "cpRec":Lcom/android/server/am/ContentProviderRecord;
    .end local v17    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ContentProviderRecord;>;"
    :cond_9
    new-instance v2, Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;

    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    const-string v7, ""

    const-string v8, ""

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 188
    .end local v16    # "isBinded":Z
    .end local v22    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_a
    const-string v2, "/proc"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v19

    .line 189
    .local v19, "pids":[I
    move-object/from16 v10, v19

    .local v10, "arr$":[I
    array-length v0, v10

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_4
    move/from16 v0, v18

    if-ge v14, v0, :cond_c

    aget v3, v10, v14

    .line 190
    .local v3, "id":I
    const/4 v2, -0x1

    if-eq v3, v2, :cond_b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_b

    .line 191
    new-instance v2, Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;

    const/16 v4, -0x11

    const/4 v5, 0x0

    const-string v6, "native"

    const-string v7, ""

    const-string v8, ""

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_b
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 195
    .end local v3    # "id":I
    :cond_c
    if-eqz p4, :cond_e

    .line 196
    if-nez p1, :cond_d

    const-string v2, ""

    :goto_5
    invoke-static {v9, v2}, Lcom/android/server/am/MemoryLogUtilAm;->dumpInBackground(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 197
    const-string v2, ""

    goto/16 :goto_0

    .line 196
    :cond_d
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_5

    .line 199
    :cond_e
    if-nez p1, :cond_f

    const-string v2, ""

    :goto_6
    move/from16 v0, p3

    invoke-static {v9, v2, v0}, Lcom/android/server/am/MemoryLogUtilAm;->doDump(Ljava/util/ArrayList;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_6
.end method

.method static doDump(Ljava/util/ArrayList;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 14
    .param p1, "TOP_APP"    # Ljava/lang/String;
    .param p2, "isLauncherKilled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, "allProc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .local v13, "result":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 208
    .local v11, "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :try_start_0
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 209
    .end local v11    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .local v12, "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :try_start_1
    const-string v0, "MemoryUsage"

    const-string v1, "Memory Usage Breakdown Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Foreground Process : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 213
    .local v10, "log":Ljava/lang/String;
    const-string v0, "MemoryUsage"

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    if-eqz p2, :cond_0

    .line 215
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .end local v10    # "log":Ljava/lang/String;
    :cond_0
    if-eqz p2, :cond_2

    .line 218
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->dumpHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;

    .line 223
    .local v9, "info":Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;
    iget v0, v9, Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;->mPid:I

    iget v1, v9, Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;->mAdj:I

    iget-object v2, v9, Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;->mName:Ljava/lang/String;

    iget-object v3, v9, Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;->mAdjType:Ljava/lang/String;

    iget-object v4, v9, Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;->mServiceinfo:Ljava/lang/String;

    iget-object v5, v9, Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;->mProviderInfo:Ljava/lang/String;

    move/from16 v6, p2

    invoke-static/range {v0 .. v6}, Lcom/android/server/am/MemoryLogUtilAm;->dumpProcessStats(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 224
    .restart local v10    # "log":Ljava/lang/String;
    if-eqz p2, :cond_1

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 225
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 240
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "info":Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;
    .end local v10    # "log":Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v11, v12

    .line 241
    .end local v12    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .local v7, "e":Ljava/lang/Exception;
    .restart local v11    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :goto_2
    :try_start_2
    const-string v0, "MemoryUsage"

    const-string v1, "Error while dumping low memory logs."

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 243
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/MemoryLogUtilAm;->sIsDumping:Z

    .line 245
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 220
    .end local v11    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v12    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->dumpHeader()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 243
    :catchall_0
    move-exception v0

    move-object v11, v12

    .end local v12    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v11    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :goto_4
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/am/MemoryLogUtilAm;->sIsDumping:Z

    throw v0

    .line 229
    .end local v11    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v12    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_3
    if-eqz p2, :cond_4

    .line 230
    :try_start_4
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/MemoryLogUtilAm;->dumpMemoryLogFromFile(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/MemoryLogUtilAm;->dumpMtkGraphic(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->dumpMemInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :goto_5
    const-string v0, "MemoryUsage"

    const-string v1, "Memory Usage Breakdown End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 243
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/MemoryLogUtilAm;->sIsDumping:Z

    move-object v11, v12

    .line 244
    .end local v12    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v11    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    goto :goto_3

    .line 234
    .end local v11    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v12    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_4
    :try_start_5
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/MemoryLogUtilAm;->dumpMemoryLogFromFile(Z)Ljava/lang/String;

    .line 235
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/MemoryLogUtilAm;->dumpMtkGraphic(Z)Ljava/lang/String;

    .line 236
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->dumpMemInfo()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 243
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v12    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v11    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 240
    :catch_1
    move-exception v7

    goto :goto_2
.end method

.method public static final native dumpHeader()Ljava/lang/String;
.end method

.method static dumpInBackground(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .param p1, "TOP_APP"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "allProcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;>;"
    new-instance v0, Lcom/android/server/am/MemoryLogUtilAm$1;

    const-string v1, "MemoryUsageLog"

    invoke-direct {v0, v1, p0, p1}, Lcom/android/server/am/MemoryLogUtilAm$1;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/am/MemoryLogUtilAm$1;->start()V

    .line 133
    return-void
.end method

.method static dumpLowMemoryLog(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;
    .locals 1
    .param p1, "TOP_APP"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "lruProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/am/MemoryLogUtilAm;->dumpLowMemoryLog(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static dumpLowMemoryLog(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;
    .locals 10
    .param p1, "TOP_APP"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "dyingProc"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            "Lcom/android/server/am/ProcessRecord;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "lruProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v2, 0x0

    .line 95
    .local v2, "isLauncherKilled":Z
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sget-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sLastTimeDumpLowMemory:J

    sub-long v4, v6, v8

    .line 97
    .local v4, "timeDiff":J
    if-eqz p2, :cond_4

    .line 98
    const-string v6, "home"

    iget-object v7, p2, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 99
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 100
    .local v3, "pr":Lcom/android/server/am/ProcessRecord;
    iget v6, v3, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/4 v7, 0x6

    if-le v6, v7, :cond_0

    .line 101
    const-wide/32 v6, 0xea60

    cmp-long v6, v4, v6

    if-gtz v6, :cond_1

    sget-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sLastTimeDumpLowMemory:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 102
    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {p0, p1, p2, v6, v7}, Lcom/android/server/am/MemoryLogUtilAm;->doDump(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;ZZ)Ljava/lang/String;

    move-result-object v6

    .line 121
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "pr":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "timeDiff":J
    :goto_0
    return-object v6

    .line 104
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "pr":Lcom/android/server/am/ProcessRecord;
    .restart local v4    # "timeDiff":J
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 108
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_3
    const/4 v2, 0x1

    .line 112
    :cond_4
    if-nez v2, :cond_5

    const-wide/16 v6, 0x4e20

    cmp-long v6, v4, v6

    if-gez v6, :cond_5

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_5

    .line 113
    const/4 v6, 0x0

    goto :goto_0

    .line 116
    :cond_5
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {p0, p1, p2, v6, v7}, Lcom/android/server/am/MemoryLogUtilAm;->doDump(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;ZZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 118
    .end local v4    # "timeDiff":J
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "MemoryUsage"

    const-string v7, "Error while dumping low memory logs."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/server/am/MemoryLogUtilAm;->sIsDumping:Z

    .line 121
    const/4 v6, 0x0

    goto :goto_0
.end method

.method static dumpMemInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->readExtraMemInfo()V

    .line 287
    const-string v1, "System memory usage ---> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MemTotal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getTotal()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KB, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MemFree: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getFree()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KB, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Buffers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getBuffers()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KB, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Cached: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getCached()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KB, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Shmem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getShmem()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KB, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Slab: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getSlab()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KB, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SReclaimable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getSReclaimable()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KB, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SUnreclaim: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getSUnreclaim()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KB, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "KernelStack: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getKernelStack()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KB, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PageTables: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getPageTable()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KB, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SwapTotal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getSwapTotal()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KB, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SwapFree: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getSwapFree()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KB, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ZramUsed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getZramInUse()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KB, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SwapCached: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getSwapCached()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KB, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "VmallocUsed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getVmallocUsed()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KB."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const-string v1, "MemoryUsage"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static dumpMemoryLogFromFile(Z)Ljava/lang/String;
    .locals 38
    .param p0, "isHomeKilled"    # Z

    .prologue
    .line 545
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 546
    .local v26, "result":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .line 547
    .local v15, "input":Ljava/io/BufferedReader;
    const/16 v19, 0x0

    .line 548
    .local v19, "line":Ljava/lang/String;
    const/16 v22, 0x0

    .line 550
    .local v22, "path":Ljava/lang/String;
    sget v31, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_b

    .line 551
    const-string v22, "/sys/kernel/debug/nvmap/iovmm/clients"

    .line 556
    :cond_0
    :goto_0
    if-eqz v22, :cond_1

    .line 558
    :try_start_0
    new-instance v16, Ljava/io/BufferedReader;

    new-instance v31, Ljava/io/FileReader;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_14
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    .end local v15    # "input":Ljava/io/BufferedReader;
    .local v16, "input":Ljava/io/BufferedReader;
    :goto_1
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_d

    .line 560
    const-string v32, "MemoryUsage"

    sget v31, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    const/16 v33, 0x1

    move/from16 v0, v31

    move/from16 v1, v33

    if-ne v0, v1, :cond_c

    move-object/from16 v31, v19

    :goto_2
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    goto :goto_1

    .line 562
    :catch_0
    move-exception v6

    move-object/from16 v15, v16

    .line 563
    .end local v16    # "input":Ljava/io/BufferedReader;
    .local v6, "e":Ljava/lang/Exception;
    .restart local v15    # "input":Ljava/io/BufferedReader;
    :goto_3
    :try_start_2
    const-string v31, "MemoryUsage"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Error logging memory file "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 565
    if-eqz v15, :cond_1

    .line 567
    :try_start_3
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 573
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_4
    const-string v22, "/d/ion/iommu"

    .line 575
    :try_start_4
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 576
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v31

    if-eqz v31, :cond_1a

    .line 577
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 578
    .local v4, "allocMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 580
    .local v14, "infoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/MemoryLogUtilAm$IonInfo;>;"
    new-instance v16, Ljava/io/BufferedReader;

    new-instance v31, Ljava/io/FileReader;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_13
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 581
    .end local v15    # "input":Ljava/io/BufferedReader;
    .restart local v16    # "input":Ljava/io/BufferedReader;
    :cond_2
    :goto_5
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_17

    .line 582
    const-string v31, "client              pid"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_13

    const-string v31, "client          creator"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_13

    .line 583
    const-string v31, "\\s+"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 584
    .local v28, "split":[Ljava/lang/String;
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x4

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_11

    .line 585
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 586
    .local v27, "sb":Ljava/lang/StringBuilder;
    const/16 v31, 0x1

    aget-object v31, v28, v31

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "_"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x2

    aget-object v32, v28, v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 587
    .local v18, "key":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_f

    .line 588
    const/16 v31, 0x3

    aget-object v31, v28, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    .line 636
    .end local v18    # "key":Ljava/lang/String;
    .end local v27    # "sb":Ljava/lang/StringBuilder;
    .end local v28    # "split":[Ljava/lang/String;
    :catch_1
    move-exception v6

    move-object/from16 v15, v16

    .line 637
    .end local v4    # "allocMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v7    # "file":Ljava/io/File;
    .end local v14    # "infoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/MemoryLogUtilAm$IonInfo;>;"
    .end local v16    # "input":Ljava/io/BufferedReader;
    .restart local v6    # "e":Ljava/lang/Exception;
    .restart local v15    # "input":Ljava/io/BufferedReader;
    :goto_6
    :try_start_6
    const-string v31, "MemoryUsage"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Error logging memory file "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 639
    if-eqz v15, :cond_3

    .line 641
    :try_start_7
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_b

    .line 646
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_7
    const-string v22, "/d/ion/heaps/system"

    .line 648
    :try_start_8
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 649
    .restart local v7    # "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v31

    if-eqz v31, :cond_23

    .line 650
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    .line 652
    .local v25, "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    new-instance v16, Ljava/io/BufferedReader;

    new-instance v31, Ljava/io/FileReader;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_12
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 653
    .end local v15    # "input":Ljava/io/BufferedReader;
    .restart local v16    # "input":Ljava/io/BufferedReader;
    :cond_4
    :goto_8
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_22

    .line 654
    const-string v31, "\\s+"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 656
    .restart local v28    # "split":[Ljava/lang/String;
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x6

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_5

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x4

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1e

    .line 657
    :cond_5
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v30

    .line 658
    .local v30, "trim":Ljava/lang/String;
    const-string v31, "client              pid"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_6

    const-string v31, "total orphaned"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_6

    const-string v31, "deferred free"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_1b

    .line 660
    :cond_6
    const-string v31, "MemoryUsage"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "ION-Breakdown : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    if-eqz p0, :cond_4

    .line 662
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "ion-heaps : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\r\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_8

    .line 689
    .end local v28    # "split":[Ljava/lang/String;
    .end local v30    # "trim":Ljava/lang/String;
    :catch_2
    move-exception v6

    move-object/from16 v15, v16

    .line 690
    .end local v7    # "file":Ljava/io/File;
    .end local v16    # "input":Ljava/io/BufferedReader;
    .end local v25    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .restart local v6    # "e":Ljava/lang/Exception;
    .restart local v15    # "input":Ljava/io/BufferedReader;
    :goto_9
    :try_start_a
    const-string v31, "MemoryUsage"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Error logging memory file "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 692
    if-eqz v15, :cond_7

    .line 694
    :try_start_b
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d

    .line 699
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_a
    const-string v22, "/d/ion/heaps/ion_mm_heap"

    .line 701
    :try_start_c
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 702
    .restart local v7    # "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v31

    if-eqz v31, :cond_9

    .line 703
    const/4 v10, -0x1

    .line 704
    .local v10, "indexClient":I
    const/4 v13, -0x1

    .line 705
    .local v13, "indexlDbgName":I
    const/4 v11, -0x1

    .line 706
    .local v11, "indexPid":I
    const/4 v12, -0x1

    .line 707
    .local v12, "indexSize":I
    const/16 v17, 0x0

    .line 708
    .local v17, "isMatch":Z
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    .line 710
    .restart local v25    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    const-string v29, ""

    .line 712
    .local v29, "tmp":Ljava/lang/String;
    new-instance v16, Ljava/io/BufferedReader;

    new-instance v31, Ljava/io/FileReader;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_11
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 713
    .end local v15    # "input":Ljava/io/BufferedReader;
    .restart local v16    # "input":Ljava/io/BufferedReader;
    :cond_8
    :goto_b
    :try_start_d
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_2e

    .line 714
    const-string v31, "mm_heap_freelist total_size"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_24

    .line 715
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "ion_mm_heap : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 716
    const-string v31, "MemoryUsage"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    if-eqz p0, :cond_2e

    .line 718
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\r\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-object/from16 v15, v16

    .line 779
    .end local v10    # "indexClient":I
    .end local v11    # "indexPid":I
    .end local v12    # "indexSize":I
    .end local v13    # "indexlDbgName":I
    .end local v16    # "input":Ljava/io/BufferedReader;
    .end local v17    # "isMatch":Z
    .end local v25    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .end local v29    # "tmp":Ljava/lang/String;
    .restart local v15    # "input":Ljava/io/BufferedReader;
    :cond_9
    :goto_c
    if-eqz v15, :cond_a

    .line 781
    :try_start_e
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_f

    .line 785
    .end local v7    # "file":Ljava/io/File;
    :cond_a
    :goto_d
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    return-object v31

    .line 552
    :cond_b
    sget v31, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 553
    const-string v22, "/d/ion/ion-system-extra"

    goto/16 :goto_0

    .line 560
    .end local v15    # "input":Ljava/io/BufferedReader;
    .restart local v16    # "input":Ljava/io/BufferedReader;
    :cond_c
    :try_start_f
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "ion-extra : "

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    move-result-object v31

    goto/16 :goto_2

    .line 565
    :cond_d
    if-eqz v16, :cond_2f

    .line 567
    :try_start_10
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3

    move-object/from16 v15, v16

    .line 569
    .end local v16    # "input":Ljava/io/BufferedReader;
    .restart local v15    # "input":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 568
    .end local v15    # "input":Ljava/io/BufferedReader;
    .restart local v16    # "input":Ljava/io/BufferedReader;
    :catch_3
    move-exception v31

    move-object/from16 v15, v16

    .line 569
    .end local v16    # "input":Ljava/io/BufferedReader;
    .restart local v15    # "input":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 565
    :catchall_0
    move-exception v31

    :goto_e
    if-eqz v15, :cond_e

    .line 567
    :try_start_11
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    .line 569
    :cond_e
    :goto_f
    throw v31

    .line 590
    .end local v15    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "allocMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v7    # "file":Ljava/io/File;
    .restart local v14    # "infoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/MemoryLogUtilAm$IonInfo;>;"
    .restart local v16    # "input":Ljava/io/BufferedReader;
    .restart local v18    # "key":Ljava/lang/String;
    .restart local v27    # "sb":Ljava/lang/StringBuilder;
    .restart local v28    # "split":[Ljava/lang/String;
    :cond_f
    :try_start_12
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Long;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    const/16 v31, 0x3

    aget-object v31, v28, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v34

    add-long v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto/16 :goto_5

    .line 639
    .end local v18    # "key":Ljava/lang/String;
    .end local v27    # "sb":Ljava/lang/StringBuilder;
    .end local v28    # "split":[Ljava/lang/String;
    :catchall_1
    move-exception v31

    move-object/from16 v15, v16

    .end local v4    # "allocMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v7    # "file":Ljava/io/File;
    .end local v14    # "infoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/MemoryLogUtilAm$IonInfo;>;"
    .end local v16    # "input":Ljava/io/BufferedReader;
    .restart local v15    # "input":Ljava/io/BufferedReader;
    :goto_10
    if-eqz v15, :cond_10

    .line 641
    :try_start_13
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    .line 643
    :cond_10
    :goto_11
    throw v31

    .line 593
    .end local v15    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "allocMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v7    # "file":Ljava/io/File;
    .restart local v14    # "infoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/MemoryLogUtilAm$IonInfo;>;"
    .restart local v16    # "input":Ljava/io/BufferedReader;
    .restart local v28    # "split":[Ljava/lang/String;
    :cond_11
    :try_start_14
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x5

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_13

    .line 594
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 595
    .restart local v27    # "sb":Ljava/lang/StringBuilder;
    const/16 v31, 0x1

    aget-object v31, v28, v31

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x2

    aget-object v32, v28, v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 596
    .restart local v18    # "key":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_12

    .line 597
    new-instance v31, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;

    const/16 v32, 0x1

    aget-object v32, v28, v32

    const/16 v33, 0x2

    aget-object v33, v28, v33

    const/16 v34, 0x3

    aget-object v34, v28, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v34

    invoke-direct/range {v31 .. v35}, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 599
    :cond_12
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;->mSize:J

    move-wide/from16 v32, v0

    const/16 v34, 0x3

    aget-object v34, v28, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v34

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, v31

    iput-wide v0, v2, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;->mSize:J

    goto/16 :goto_5

    .line 604
    .end local v18    # "key":Ljava/lang/String;
    .end local v27    # "sb":Ljava/lang/StringBuilder;
    .end local v28    # "split":[Ljava/lang/String;
    :cond_13
    const-string v31, "Total bytes currently"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_15

    .line 605
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_14
    :goto_12
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_15

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 606
    .restart local v18    # "key":Ljava/lang/String;
    const-string v31, "_"

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 607
    .local v9, "index":I
    const/16 v31, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 608
    .local v5, "client":Ljava/lang/String;
    add-int/lit8 v31, v9, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    .line 609
    .local v23, "pid":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "iommu : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "%1$16s %2$16s %3$16d"

    const/16 v33, 0x3

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput-object v5, v33, v34

    const/16 v34, 0x1

    aput-object v23, v33, v34

    const/16 v34, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 611
    .restart local v29    # "tmp":Ljava/lang/String;
    const-string v31, "MemoryUsage"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    if-eqz p0, :cond_14

    .line 613
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\r\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 616
    .end local v5    # "client":Ljava/lang/String;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "index":I
    .end local v18    # "key":Ljava/lang/String;
    .end local v23    # "pid":Ljava/lang/String;
    .end local v29    # "tmp":Ljava/lang/String;
    :cond_15
    const-string v31, "client          creator"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_16

    .line 617
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "iommu : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "size (hex)"

    const-string v33, "      size"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 618
    .restart local v29    # "tmp":Ljava/lang/String;
    const-string v31, "MemoryUsage"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    if-eqz p0, :cond_2

    .line 620
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\r\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 623
    .end local v29    # "tmp":Ljava/lang/String;
    :cond_16
    const-string v31, "MemoryUsage"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "iommu : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    if-eqz p0, :cond_2

    .line 625
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "iommu : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\r\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 627
    :cond_17
    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_18
    :goto_13
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_19

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 628
    .restart local v18    # "key":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "iommu : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "%1$16s %2$16s %3$14d"

    const/16 v31, 0x3

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;->mClient:Ljava/lang/String;

    move-object/from16 v31, v0

    aput-object v31, v34, v35

    const/16 v35, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;->mCreator:Ljava/lang/String;

    move-object/from16 v31, v0

    aput-object v31, v34, v35

    const/16 v35, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;->mSize:J

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    aput-object v31, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 631
    .restart local v29    # "tmp":Ljava/lang/String;
    const-string v31, "MemoryUsage"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    if-eqz p0, :cond_18

    .line 633
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\r\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto/16 :goto_13

    .end local v18    # "key":Ljava/lang/String;
    .end local v29    # "tmp":Ljava/lang/String;
    :cond_19
    move-object/from16 v15, v16

    .line 639
    .end local v4    # "allocMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v14    # "infoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/MemoryLogUtilAm$IonInfo;>;"
    .end local v16    # "input":Ljava/io/BufferedReader;
    .restart local v15    # "input":Ljava/io/BufferedReader;
    :cond_1a
    if-eqz v15, :cond_3

    .line 641
    :try_start_15
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_4

    goto/16 :goto_7

    .line 642
    :catch_4
    move-exception v31

    goto/16 :goto_7

    .line 665
    .end local v15    # "input":Ljava/io/BufferedReader;
    .restart local v16    # "input":Ljava/io/BufferedReader;
    .restart local v25    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .restart local v28    # "split":[Ljava/lang/String;
    .restart local v30    # "trim":Ljava/lang/String;
    :cond_1b
    const/16 v31, 0x3

    :try_start_16
    aget-object v31, v28, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 666
    .local v20, "memory":J
    new-instance v24, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;

    const/16 v31, 0x1

    aget-object v31, v28, v31

    const/16 v32, 0x2

    aget-object v32, v28, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;-><init>(Ljava/lang/String;I)V

    .line 667
    .local v24, "process":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1d

    .line 668
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Long;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    add-long v32, v32, v20

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_2
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    goto/16 :goto_8

    .line 692
    .end local v20    # "memory":J
    .end local v24    # "process":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    .end local v28    # "split":[Ljava/lang/String;
    .end local v30    # "trim":Ljava/lang/String;
    :catchall_2
    move-exception v31

    move-object/from16 v15, v16

    .end local v7    # "file":Ljava/io/File;
    .end local v16    # "input":Ljava/io/BufferedReader;
    .end local v25    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .restart local v15    # "input":Ljava/io/BufferedReader;
    :goto_14
    if-eqz v15, :cond_1c

    .line 694
    :try_start_17
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_e

    .line 696
    :cond_1c
    :goto_15
    throw v31

    .line 670
    .end local v15    # "input":Ljava/io/BufferedReader;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v16    # "input":Ljava/io/BufferedReader;
    .restart local v20    # "memory":J
    .restart local v24    # "process":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    .restart local v25    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .restart local v28    # "split":[Ljava/lang/String;
    .restart local v30    # "trim":Ljava/lang/String;
    :cond_1d
    :try_start_18
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 673
    .end local v20    # "memory":J
    .end local v24    # "process":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    .end local v30    # "trim":Ljava/lang/String;
    :cond_1e
    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_21

    .line 674
    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_1f
    :goto_16
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_20

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;

    .line 675
    .local v18, "key":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    const-string v31, "ION-Breakdown : %1$16s  %2$15d  %3$15d"

    const/16 v32, 0x3

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;->getProcessName()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x1

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;->getPid()I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x2

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    .line 677
    .restart local v29    # "tmp":Ljava/lang/String;
    const-string v31, "MemoryUsage"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    if-eqz p0, :cond_1f

    .line 679
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\r\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 681
    .end local v18    # "key":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    .end local v29    # "tmp":Ljava/lang/String;
    :cond_20
    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->clear()V

    .line 683
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_21
    const-string v31, "MemoryUsage"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "ION-Breakdown : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    if-eqz p0, :cond_4

    .line 685
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "ION-Breakdown : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\r\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_2
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    goto/16 :goto_8

    .end local v28    # "split":[Ljava/lang/String;
    :cond_22
    move-object/from16 v15, v16

    .line 692
    .end local v16    # "input":Ljava/io/BufferedReader;
    .end local v25    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .restart local v15    # "input":Ljava/io/BufferedReader;
    :cond_23
    if-eqz v15, :cond_7

    .line 694
    :try_start_19
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_5

    goto/16 :goto_a

    .line 695
    :catch_5
    move-exception v31

    goto/16 :goto_a

    .line 721
    .end local v15    # "input":Ljava/io/BufferedReader;
    .restart local v10    # "indexClient":I
    .restart local v11    # "indexPid":I
    .restart local v12    # "indexSize":I
    .restart local v13    # "indexlDbgName":I
    .restart local v16    # "input":Ljava/io/BufferedReader;
    .restart local v17    # "isMatch":Z
    .restart local v25    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .restart local v29    # "tmp":Ljava/lang/String;
    :cond_24
    if-nez v17, :cond_26

    :try_start_1a
    const-string v31, "          client("

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_26

    .line 722
    const-string v31, "client("

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v31

    add-int/lit8 v10, v31, 0x7

    .line 723
    const-string v31, "dbg_name)"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v31

    add-int/lit8 v13, v31, 0x9

    .line 724
    const-string v31, "pid"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v31

    add-int/lit8 v11, v31, 0x3

    .line 725
    const-string v31, "size"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v31

    add-int/lit8 v12, v31, 0x4

    .line 726
    if-lez v10, :cond_25

    if-lez v13, :cond_25

    if-lez v11, :cond_25

    if-lez v12, :cond_25

    .line 727
    const/16 v17, 0x1

    .line 729
    :cond_25
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "ion_mm_heap : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "address"

    const-string v33, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 730
    const-string v31, "MemoryUsage"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    if-eqz p0, :cond_8

    .line 732
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\r\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_6
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    goto/16 :goto_b

    .line 777
    :catch_6
    move-exception v31

    move-object/from16 v15, v16

    .line 779
    .end local v7    # "file":Ljava/io/File;
    .end local v10    # "indexClient":I
    .end local v11    # "indexPid":I
    .end local v12    # "indexSize":I
    .end local v13    # "indexlDbgName":I
    .end local v16    # "input":Ljava/io/BufferedReader;
    .end local v17    # "isMatch":Z
    .end local v25    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .end local v29    # "tmp":Ljava/lang/String;
    .restart local v15    # "input":Ljava/io/BufferedReader;
    :goto_17
    if-eqz v15, :cond_a

    .line 781
    :try_start_1b
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_7

    goto/16 :goto_d

    .line 782
    :catch_7
    move-exception v31

    goto/16 :goto_d

    .line 736
    .end local v15    # "input":Ljava/io/BufferedReader;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v10    # "indexClient":I
    .restart local v11    # "indexPid":I
    .restart local v12    # "indexSize":I
    .restart local v13    # "indexlDbgName":I
    .restart local v16    # "input":Ljava/io/BufferedReader;
    .restart local v17    # "isMatch":Z
    .restart local v25    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .restart local v29    # "tmp":Ljava/lang/String;
    :cond_26
    if-eqz v17, :cond_29

    :try_start_1c
    const-string v31, "("

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v31

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    if-ne v0, v10, :cond_29

    const-string v31, ")"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_6
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    move-result v31

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    if-ne v0, v13, :cond_29

    .line 738
    add-int/lit8 v31, v11, 0x1

    :try_start_1d
    move-object/from16 v0, v19

    move/from16 v1, v31

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 739
    .restart local v20    # "memory":J
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v32

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    add-int/lit8 v32, v10, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v32

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 741
    .restart local v5    # "client":Ljava/lang/String;
    add-int/lit8 v31, v13, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v31

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 742
    .local v23, "pid":I
    new-instance v24, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-direct {v0, v5, v1}, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;-><init>(Ljava/lang/String;I)V

    .line 743
    .restart local v24    # "process":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_28

    .line 744
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Long;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    add-long v32, v32, v20

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_8
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    goto/16 :goto_b

    .line 748
    .end local v5    # "client":Ljava/lang/String;
    .end local v20    # "memory":J
    .end local v23    # "pid":I
    .end local v24    # "process":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    :catch_8
    move-exception v6

    .line 749
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_1e
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "ion_mm_heap : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 750
    const-string v31, "MemoryUsage"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    if-eqz p0, :cond_8

    .line 752
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\r\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_6
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    goto/16 :goto_b

    .line 779
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v31

    move-object/from16 v15, v16

    .end local v7    # "file":Ljava/io/File;
    .end local v10    # "indexClient":I
    .end local v11    # "indexPid":I
    .end local v12    # "indexSize":I
    .end local v13    # "indexlDbgName":I
    .end local v16    # "input":Ljava/io/BufferedReader;
    .end local v17    # "isMatch":Z
    .end local v25    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .end local v29    # "tmp":Ljava/lang/String;
    .restart local v15    # "input":Ljava/io/BufferedReader;
    :goto_18
    if-eqz v15, :cond_27

    .line 781
    :try_start_1f
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_10

    .line 783
    :cond_27
    :goto_19
    throw v31

    .line 746
    .end local v15    # "input":Ljava/io/BufferedReader;
    .restart local v5    # "client":Ljava/lang/String;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v10    # "indexClient":I
    .restart local v11    # "indexPid":I
    .restart local v12    # "indexSize":I
    .restart local v13    # "indexlDbgName":I
    .restart local v16    # "input":Ljava/io/BufferedReader;
    .restart local v17    # "isMatch":Z
    .restart local v20    # "memory":J
    .restart local v23    # "pid":I
    .restart local v24    # "process":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    .restart local v25    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .restart local v29    # "tmp":Ljava/lang/String;
    :cond_28
    :try_start_20
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_8
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    goto/16 :goto_b

    .line 754
    .end local v5    # "client":Ljava/lang/String;
    .end local v20    # "memory":J
    .end local v23    # "pid":I
    .end local v24    # "process":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    :cond_29
    :try_start_21
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    const-string v32, "--------------------------------"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_2d

    .line 755
    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_2c

    .line 756
    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_2a
    :goto_1a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_2b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;

    .line 757
    .restart local v18    # "key":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    const-string v31, "ion_mm_heap : %1$34s %2$16d  %3$15d"

    const/16 v32, 0x3

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;->getProcessName()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x1

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;->getPid()I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x2

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    .line 759
    const-string v31, "MemoryUsage"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    if-eqz p0, :cond_2a

    .line 761
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\r\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 763
    .end local v18    # "key":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    :cond_2b
    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->clear()V

    .line 765
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_2c
    move-object/from16 v29, v19

    .line 766
    const-string v31, "MemoryUsage"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    if-eqz p0, :cond_8

    .line 768
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\r\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 770
    :cond_2d
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "ion_mm_heap : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 771
    const-string v31, "MemoryUsage"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    if-eqz p0, :cond_8

    .line 773
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\r\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_6
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    goto/16 :goto_b

    .line 568
    .end local v7    # "file":Ljava/io/File;
    .end local v10    # "indexClient":I
    .end local v11    # "indexPid":I
    .end local v12    # "indexSize":I
    .end local v13    # "indexlDbgName":I
    .end local v16    # "input":Ljava/io/BufferedReader;
    .end local v17    # "isMatch":Z
    .end local v25    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .end local v29    # "tmp":Ljava/lang/String;
    .restart local v6    # "e":Ljava/lang/Exception;
    .restart local v15    # "input":Ljava/io/BufferedReader;
    :catch_9
    move-exception v31

    goto/16 :goto_4

    .end local v6    # "e":Ljava/lang/Exception;
    :catch_a
    move-exception v32

    goto/16 :goto_f

    .line 642
    .restart local v6    # "e":Ljava/lang/Exception;
    :catch_b
    move-exception v31

    goto/16 :goto_7

    .end local v6    # "e":Ljava/lang/Exception;
    :catch_c
    move-exception v32

    goto/16 :goto_11

    .line 695
    .restart local v6    # "e":Ljava/lang/Exception;
    :catch_d
    move-exception v31

    goto/16 :goto_a

    .end local v6    # "e":Ljava/lang/Exception;
    :catch_e
    move-exception v32

    goto/16 :goto_15

    .line 782
    .restart local v7    # "file":Ljava/io/File;
    :catch_f
    move-exception v31

    goto/16 :goto_d

    .end local v7    # "file":Ljava/io/File;
    :catch_10
    move-exception v32

    goto/16 :goto_19

    .line 779
    :catchall_4
    move-exception v31

    goto/16 :goto_18

    .line 777
    :catch_11
    move-exception v31

    goto/16 :goto_17

    .line 692
    :catchall_5
    move-exception v31

    goto/16 :goto_14

    .line 689
    :catch_12
    move-exception v6

    goto/16 :goto_9

    .line 639
    :catchall_6
    move-exception v31

    goto/16 :goto_10

    .line 636
    :catch_13
    move-exception v6

    goto/16 :goto_6

    .line 565
    .end local v15    # "input":Ljava/io/BufferedReader;
    .restart local v16    # "input":Ljava/io/BufferedReader;
    :catchall_7
    move-exception v31

    move-object/from16 v15, v16

    .end local v16    # "input":Ljava/io/BufferedReader;
    .restart local v15    # "input":Ljava/io/BufferedReader;
    goto/16 :goto_e

    .line 562
    :catch_14
    move-exception v6

    goto/16 :goto_3

    .end local v15    # "input":Ljava/io/BufferedReader;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v10    # "indexClient":I
    .restart local v11    # "indexPid":I
    .restart local v12    # "indexSize":I
    .restart local v13    # "indexlDbgName":I
    .restart local v16    # "input":Ljava/io/BufferedReader;
    .restart local v17    # "isMatch":Z
    .restart local v25    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .restart local v29    # "tmp":Ljava/lang/String;
    :cond_2e
    move-object/from16 v15, v16

    .end local v16    # "input":Ljava/io/BufferedReader;
    .restart local v15    # "input":Ljava/io/BufferedReader;
    goto/16 :goto_c

    .end local v7    # "file":Ljava/io/File;
    .end local v10    # "indexClient":I
    .end local v11    # "indexPid":I
    .end local v12    # "indexSize":I
    .end local v13    # "indexlDbgName":I
    .end local v15    # "input":Ljava/io/BufferedReader;
    .end local v17    # "isMatch":Z
    .end local v25    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .end local v29    # "tmp":Ljava/lang/String;
    .restart local v16    # "input":Ljava/io/BufferedReader;
    :cond_2f
    move-object/from16 v15, v16

    .end local v16    # "input":Ljava/io/BufferedReader;
    .restart local v15    # "input":Ljava/io/BufferedReader;
    goto/16 :goto_4
.end method

.method static dumpMtkGraphic(Z)Ljava/lang/String;
    .locals 2
    .param p0, "isLauncherKilled"    # Z

    .prologue
    .line 249
    sget v0, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 250
    invoke-static {p0}, Lcom/android/server/am/MemoryLogUtilAm;->dumpMtkPvrGraphic(Z)Ljava/lang/String;

    move-result-object v0

    .line 255
    :goto_0
    return-object v0

    .line 251
    :cond_0
    sget v0, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 252
    invoke-static {p0}, Lcom/android/server/am/MemoryLogUtilAm;->dumpMtkMaliGraphic(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 255
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method static dumpMtkMaliGraphic(Z)Ljava/lang/String;
    .locals 22
    .param p0, "isLauncherKilled"    # Z

    .prologue
    .line 841
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 842
    .local v13, "sb":Ljava/lang/StringBuilder;
    const-string v14, ""

    .line 843
    .local v14, "tmp":Ljava/lang/String;
    const/4 v2, 0x0

    .line 845
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_0
    const-string v9, "/d/mali/mem/"

    .line 846
    .local v9, "parentPath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 847
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 848
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    .line 849
    .local v8, "list":[Ljava/lang/String;
    const-string v14, "MTK_Mali       Tid          HW Accel  Process"

    .line 850
    const-string v15, "MemoryUsage"

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    if-eqz p0, :cond_0

    .line 852
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, "\r\n"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 853
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    move-object v3, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v3, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    array-length v15, v8

    if-ge v5, v15, :cond_9

    .line 854
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, "/"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v18, v8, v5

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 855
    .local v10, "procPath":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 856
    .local v11, "process":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result v15

    if-eqz v15, :cond_8

    .line 858
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/FileReader;

    invoke-direct {v15, v11}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 860
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :try_start_3
    const-string v12, ""

    .line 861
    .local v12, "processName":Ljava/lang/String;
    const-wide/16 v16, 0x0

    .line 862
    .local v16, "value":J
    const/4 v6, 0x0

    .line 863
    .local v6, "isFoundProcessName":Z
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 864
    if-nez v6, :cond_2

    .line 865
    const/4 v15, 0x0

    const-string v18, ":"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v7, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 866
    const/4 v6, 0x1

    .line 868
    :cond_2
    const-string v15, "Total allocated memory:"

    invoke-virtual {v7, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 869
    const-string v15, " "

    invoke-virtual {v7, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v7, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 873
    :cond_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "MTK_Mali  %1$8s  %2$16d  "

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v21, v8, v5

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 874
    const-string v15, "MemoryUsage"

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    if-eqz p0, :cond_4

    .line 876
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, "\r\n"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 879
    :cond_4
    if-eqz v2, :cond_5

    .line 881
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 853
    .end local v6    # "isFoundProcessName":Z
    .end local v7    # "line":Ljava/lang/String;
    .end local v12    # "processName":Ljava/lang/String;
    .end local v16    # "value":J
    :cond_5
    :goto_1
    add-int/lit8 v5, v5, 0x1

    move-object v3, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 877
    :catch_0
    move-exception v15

    move-object v2, v3

    .line 879
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :goto_2
    if-eqz v2, :cond_5

    .line 881
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 882
    :catch_1
    move-exception v15

    goto :goto_1

    .line 879
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v15

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :goto_3
    if-eqz v2, :cond_6

    .line 881
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 883
    :cond_6
    :goto_4
    :try_start_7
    throw v15
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 889
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "i":I
    .end local v8    # "list":[Ljava/lang/String;
    .end local v9    # "parentPath":Ljava/lang/String;
    .end local v10    # "procPath":Ljava/lang/String;
    .end local v11    # "process":Ljava/io/File;
    :catch_2
    move-exception v15

    .line 891
    :cond_7
    :goto_5
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    return-object v15

    .line 882
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "i":I
    .restart local v6    # "isFoundProcessName":Z
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "list":[Ljava/lang/String;
    .restart local v9    # "parentPath":Ljava/lang/String;
    .restart local v10    # "procPath":Ljava/lang/String;
    .restart local v11    # "process":Ljava/io/File;
    .restart local v12    # "processName":Ljava/lang/String;
    .restart local v16    # "value":J
    :catch_3
    move-exception v15

    goto :goto_1

    .end local v6    # "isFoundProcessName":Z
    .end local v7    # "line":Ljava/lang/String;
    .end local v12    # "processName":Ljava/lang/String;
    .end local v16    # "value":J
    :catch_4
    move-exception v18

    goto :goto_4

    .line 889
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v10    # "procPath":Ljava/lang/String;
    .end local v11    # "process":Ljava/io/File;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catch_5
    move-exception v15

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_5

    .line 879
    .restart local v10    # "procPath":Ljava/lang/String;
    .restart local v11    # "process":Ljava/io/File;
    :catchall_1
    move-exception v15

    goto :goto_3

    .line 877
    :catch_6
    move-exception v15

    goto :goto_2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :cond_8
    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v10    # "procPath":Ljava/lang/String;
    .end local v11    # "process":Ljava/io/File;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :cond_9
    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_5
.end method

.method static dumpMtkPvrGraphic(Z)Ljava/lang/String;
    .locals 18
    .param p0, "isLauncherKilled"    # Z

    .prologue
    .line 789
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 790
    .local v10, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 791
    .local v0, "br":Ljava/io/BufferedReader;
    const-string v11, ""

    .line 793
    .local v11, "tmp":Ljava/lang/String;
    :try_start_0
    const-string v7, "/d/pvr/pid/"

    .line 794
    .local v7, "parentPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 795
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 796
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    .line 797
    .local v6, "list":[Ljava/lang/String;
    const-string v11, "MTK_Pvr       Pid          HW Accel"

    .line 798
    const-string v14, "MemoryUsage"

    invoke-static {v14, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    if-eqz p0, :cond_0

    .line 800
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\r\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 801
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    move-object v1, v0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    array-length v14, v6

    if-ge v4, v14, :cond_9

    .line 802
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v6, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 803
    .local v8, "procPath":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 804
    .local v9, "process":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 805
    new-instance v3, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/process_stats"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 806
    .local v3, "gl":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result v14

    if-eqz v14, :cond_8

    .line 808
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/FileReader;

    invoke-direct {v14, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 810
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    const-wide/16 v12, 0x0

    .line 811
    .local v12, "value":J
    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 812
    const-string v14, "MemoryUsageKMalloc "

    invoke-virtual {v5, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "MemoryUsageAllocPTMemoryUMA "

    invoke-virtual {v5, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "MemoryUsageAllocGPUMemUMA "

    invoke-virtual {v5, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 815
    :cond_2
    const-string v14, " "

    invoke-virtual {v5, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v5, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    add-long/2addr v12, v14

    goto :goto_1

    .line 818
    :cond_3
    const-string v14, "MTK_Pvr  %1$8s  %2$16d"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aget-object v17, v6, v4

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 819
    const-string v14, "MemoryUsage"

    invoke-static {v14, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    if-eqz p0, :cond_4

    .line 821
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\r\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 824
    :cond_4
    if-eqz v0, :cond_5

    .line 826
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 801
    .end local v3    # "gl":Ljava/io/File;
    .end local v5    # "line":Ljava/lang/String;
    .end local v12    # "value":J
    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move-object v1, v0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 822
    .restart local v3    # "gl":Ljava/io/File;
    :catch_0
    move-exception v14

    move-object v0, v1

    .line 824
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_3
    if-eqz v0, :cond_5

    .line 826
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 827
    :catch_1
    move-exception v14

    goto :goto_2

    .line 824
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v14

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_4
    if-eqz v0, :cond_6

    .line 826
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 828
    :cond_6
    :goto_5
    :try_start_7
    throw v14
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 835
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "gl":Ljava/io/File;
    .end local v4    # "i":I
    .end local v6    # "list":[Ljava/lang/String;
    .end local v7    # "parentPath":Ljava/lang/String;
    .end local v8    # "procPath":Ljava/lang/String;
    .end local v9    # "process":Ljava/io/File;
    :catch_2
    move-exception v14

    .line 837
    :cond_7
    :goto_6
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    .line 827
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "gl":Ljava/io/File;
    .restart local v4    # "i":I
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "list":[Ljava/lang/String;
    .restart local v7    # "parentPath":Ljava/lang/String;
    .restart local v8    # "procPath":Ljava/lang/String;
    .restart local v9    # "process":Ljava/io/File;
    .restart local v12    # "value":J
    :catch_3
    move-exception v14

    goto :goto_2

    .end local v5    # "line":Ljava/lang/String;
    .end local v12    # "value":J
    :catch_4
    move-exception v15

    goto :goto_5

    .line 835
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "gl":Ljava/io/File;
    .end local v8    # "procPath":Ljava/lang/String;
    .end local v9    # "process":Ljava/io/File;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_5
    move-exception v14

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_6

    .line 824
    .restart local v3    # "gl":Ljava/io/File;
    .restart local v8    # "procPath":Ljava/lang/String;
    .restart local v9    # "process":Ljava/io/File;
    .restart local v12    # "value":J
    :catchall_1
    move-exception v14

    goto :goto_4

    .line 822
    :catch_6
    move-exception v14

    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "gl":Ljava/io/File;
    .end local v12    # "value":J
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_8
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v8    # "procPath":Ljava/lang/String;
    .end local v9    # "process":Ljava/io/File;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_9
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_6
.end method

.method public static final native dumpProcessStats(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method private static getBuffers()J
    .locals 2

    .prologue
    .line 509
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sBuffers:J

    return-wide v0
.end method

.method private static getCached()J
    .locals 2

    .prologue
    .line 537
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sCached:J

    return-wide v0
.end method

.method public static final native getDetailRegionMemory(ILjava/lang/String;)[I
.end method

.method private static getFree()J
    .locals 2

    .prologue
    .line 533
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sFree:J

    return-wide v0
.end method

.method private static getKernelStack()J
    .locals 2

    .prologue
    .line 485
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sKernelStack:J

    return-wide v0
.end method

.method private static getPageTable()J
    .locals 2

    .prologue
    .line 489
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sPageTables:J

    return-wide v0
.end method

.method static getProcessNameFromPid(I)Ljava/lang/String;
    .locals 8
    .param p0, "pid"    # I

    .prologue
    .line 259
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/proc/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/cmdline"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    .local v2, "file":Ljava/io/File;
    const/4 v0, 0x0

    .line 261
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 264
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    const/16 v5, 0x32

    :try_start_1
    new-array v4, v5, [C

    .line 266
    .local v4, "temp":[C
    invoke-virtual {v1, v4}, Ljava/io/BufferedReader;->read([C)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 267
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    .line 268
    .local v3, "proc":Ljava/lang/String;
    const-string v5, "MemoryUsage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Process name : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 273
    if-eqz v1, :cond_0

    .line 275
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v0, v1

    .line 280
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "proc":Ljava/lang/String;
    .end local v4    # "temp":[C
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_1
    return-object v3

    .line 273
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "temp":[C
    :cond_1
    if-eqz v1, :cond_4

    .line 275
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, v1

    .line 280
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "temp":[C
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_2
    :goto_2
    const-string v3, ""

    goto :goto_1

    .line 276
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "temp":[C
    :catch_0
    move-exception v5

    move-object v0, v1

    .line 277
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 271
    .end local v4    # "temp":[C
    :catch_1
    move-exception v5

    .line 273
    :goto_3
    if-eqz v0, :cond_2

    .line 275
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 276
    :catch_2
    move-exception v5

    goto :goto_2

    .line 273
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v0, :cond_3

    .line 275
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 277
    :cond_3
    :goto_5
    throw v5

    .line 276
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "proc":Ljava/lang/String;
    .restart local v4    # "temp":[C
    :catch_3
    move-exception v5

    goto :goto_0

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "proc":Ljava/lang/String;
    .end local v4    # "temp":[C
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v6

    goto :goto_5

    .line 273
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 271
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_5
    move-exception v5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "temp":[C
    :cond_4
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static final native getRegionMemory(ILjava/lang/String;)J
.end method

.method private static getSReclaimable()J
    .locals 2

    .prologue
    .line 521
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sSReclaimable:J

    return-wide v0
.end method

.method private static getSUnreclaim()J
    .locals 2

    .prologue
    .line 525
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sSUnreclaim:J

    return-wide v0
.end method

.method private static getShmem()J
    .locals 2

    .prologue
    .line 513
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sShmem:J

    return-wide v0
.end method

.method private static getSlab()J
    .locals 2

    .prologue
    .line 517
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sSlab:J

    return-wide v0
.end method

.method private static getSwapCached()J
    .locals 2

    .prologue
    .line 505
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sSwapCached:J

    return-wide v0
.end method

.method private static getSwapFree()J
    .locals 2

    .prologue
    .line 497
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sSwapFree:J

    return-wide v0
.end method

.method private static getSwapTotal()J
    .locals 2

    .prologue
    .line 493
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sSwapTotal:J

    return-wide v0
.end method

.method private static getTotal()J
    .locals 2

    .prologue
    .line 529
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sTotal:J

    return-wide v0
.end method

.method private static getValue(Ljava/lang/String;)J
    .locals 4
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    .line 478
    const-string v1, "\\s+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "split":[Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 480
    .local v2, "value":J
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 481
    return-wide v2
.end method

.method private static getVmallocUsed()J
    .locals 2

    .prologue
    .line 541
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sVmallocUsed:J

    return-wide v0
.end method

.method private static getZramInUse()J
    .locals 2

    .prologue
    .line 501
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J

    return-wide v0
.end method

.method static init()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/kernel/debug/nvmap/iovmm/clients"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    const/4 v1, 0x1

    sput v1, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    .line 85
    :goto_0
    return-void

    .line 69
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    const-string v1, "/d/pvr/pid/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    const/4 v1, 0x4

    sput v1, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    goto :goto_0

    .line 73
    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    const-string v1, "/d/mali/mem/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    const/4 v1, 0x5

    sput v1, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    goto :goto_0

    .line 77
    :cond_2
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    const-string v1, "/system/lib/libbrcm_ril.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 79
    const/4 v1, 0x3

    sput v1, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    goto :goto_0

    .line 81
    :cond_3
    const/4 v1, 0x2

    sput v1, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    goto :goto_0
.end method

.method private static readExtraMemInfo()V
    .locals 14

    .prologue
    const-wide/16 v10, 0x0

    .line 310
    sput-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sKernelStack:J

    .line 311
    sput-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sPageTables:J

    .line 316
    sput-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sSwapTotal:J

    .line 317
    sput-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sSwapFree:J

    .line 318
    sput-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J

    .line 319
    sput-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sSwapCached:J

    .line 320
    sput-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sBuffers:J

    .line 321
    sput-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sShmem:J

    .line 322
    sput-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sSlab:J

    .line 323
    sput-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sSReclaimable:J

    .line 324
    sput-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sSUnreclaim:J

    .line 325
    sput-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sTotal:J

    .line 326
    sput-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sFree:J

    .line 327
    sput-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sCached:J

    .line 328
    sput-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sVmallocUsed:J

    .line 330
    const/4 v2, 0x0

    .line 332
    .local v2, "count":I
    const/4 v0, 0x0

    .line 334
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/proc/meminfo"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_e

    const/16 v7, 0xe

    if-ge v2, v7, :cond_e

    .line 336
    const-string v7, "MemTotal:"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 337
    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v8

    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sTotal:J

    .line 338
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 339
    :cond_1
    const-string v7, "MemFree:"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 340
    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v8

    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sFree:J

    .line 341
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 342
    :cond_2
    const-string v7, "Buffers:"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 343
    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v8

    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sBuffers:J

    .line 344
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 345
    :cond_3
    const-string v7, "Cached:"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 346
    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v8

    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sCached:J

    .line 347
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 348
    :cond_4
    const-string v7, "KernelStack:"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 349
    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v8

    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sKernelStack:J

    .line 350
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 351
    :cond_5
    const-string v7, "PageTables:"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 352
    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v8

    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sPageTables:J

    .line 353
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 354
    :cond_6
    const-string v7, "SwapTotal:"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 355
    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v8

    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sSwapTotal:J

    .line 356
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 357
    :cond_7
    const-string v7, "SwapFree:"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 358
    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v8

    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sSwapFree:J

    .line 359
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 360
    :cond_8
    const-string v7, "ZramAlloc:"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 361
    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v8

    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J

    .line 362
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 363
    :cond_9
    const-string v7, "SwapCached:"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 364
    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v8

    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sSwapCached:J

    .line 365
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 366
    :cond_a
    const-string v7, "Shmem:"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 367
    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v8

    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sShmem:J

    .line 368
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 369
    :cond_b
    const-string v7, "Slab:"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 370
    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v8

    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sSlab:J

    .line 371
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 372
    :cond_c
    const-string v7, "SReclaimable:"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 373
    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v8

    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sSReclaimable:J

    .line 374
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 375
    :cond_d
    const-string v7, "SUnreclaim:"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 376
    invoke-static {v5}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v8

    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sSUnreclaim:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_22
    .catchall {:try_start_1 .. :try_end_1} :catchall_10

    .line 377
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 382
    :cond_e
    if-eqz v1, :cond_27

    .line 384
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-object v0, v1

    .line 388
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_f
    :goto_1
    const/4 v3, 0x0

    .line 389
    .local v3, "file":Ljava/io/File;
    sget-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_11

    .line 391
    :try_start_3
    new-instance v4, Ljava/io/File;

    const-string v7, "/sys/block/zram0/mem_used_total"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_20
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 392
    .end local v3    # "file":Ljava/io/File;
    .local v4, "file":Ljava/io/File;
    :try_start_4
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 393
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_21
    .catchall {:try_start_4 .. :try_end_4} :catchall_e

    .line 394
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "line":Ljava/lang/String;
    if-eqz v5, :cond_13

    .line 395
    sget-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_f

    goto :goto_2

    .line 398
    .end local v5    # "line":Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v0, v1

    .line 400
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_3
    if-eqz v0, :cond_25

    .line 402
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    move-object v4, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    move-object v1, v0

    .line 407
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :goto_4
    :try_start_7
    new-instance v3, Ljava/io/File;

    const-string v7, "/sys/block/zram1/mem_used_total"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1e
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 408
    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :try_start_8
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 409
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1f
    .catchall {:try_start_8 .. :try_end_8} :catchall_c

    .line 410
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_5
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "line":Ljava/lang/String;
    if-eqz v5, :cond_17

    .line 411
    sget-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_d

    goto :goto_5

    .line 414
    .end local v5    # "line":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 416
    :goto_6
    if-eqz v0, :cond_24

    .line 418
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b

    move-object v4, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    move-object v1, v0

    .line 423
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :goto_7
    :try_start_b
    new-instance v3, Ljava/io/File;

    const-string v7, "/sys/block/zram2/mem_used_total"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1c
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 424
    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :try_start_c
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_19

    .line 425
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1d
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    .line 426
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_8
    :try_start_d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "line":Ljava/lang/String;
    if-eqz v5, :cond_1a

    .line 427
    sget-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    goto :goto_8

    .line 430
    .end local v5    # "line":Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 432
    :goto_9
    if-eqz v0, :cond_23

    .line 434
    :try_start_e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    move-object v4, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    move-object v1, v0

    .line 439
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :goto_a
    :try_start_f
    new-instance v3, Ljava/io/File;

    const-string v7, "/sys/block/zram3/mem_used_total"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1a
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 440
    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :try_start_10
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 441
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1b
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 442
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_b
    :try_start_11
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "line":Ljava/lang/String;
    if-eqz v5, :cond_1d

    .line 443
    sget-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    goto :goto_b

    .line 446
    .end local v5    # "line":Ljava/lang/String;
    :catch_3
    move-exception v7

    .line 448
    :goto_c
    if-eqz v0, :cond_22

    .line 450
    :try_start_12
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_f

    move-object v4, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    move-object v1, v0

    .line 456
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :goto_d
    :try_start_13
    new-instance v3, Ljava/io/File;

    const-string v7, "/proc/vmallocinfo"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_18
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 457
    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :try_start_14
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 458
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_19
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 459
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_10
    :goto_e
    :try_start_15
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "line":Ljava/lang/String;
    if-eqz v5, :cond_20

    .line 460
    const-string v7, "ioremap"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_10

    const-string v7, "map_lowmem"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 462
    const-string v7, "\\s+"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 463
    .local v6, "split":[Ljava/lang/String;
    sget-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sVmallocUsed:J

    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sVmallocUsed:J
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    goto :goto_e

    .line 466
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "split":[Ljava/lang/String;
    :catch_4
    move-exception v7

    .line 468
    :goto_f
    if-eqz v0, :cond_11

    .line 470
    :try_start_16
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_16

    .line 475
    :cond_11
    :goto_10
    return-void

    .line 385
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "file":Ljava/io/File;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    :catch_5
    move-exception v7

    move-object v0, v1

    .line 386
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_1

    .line 380
    .end local v5    # "line":Ljava/lang/String;
    :catch_6
    move-exception v7

    .line 382
    :goto_11
    if-eqz v0, :cond_f

    .line 384
    :try_start_17
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_7

    goto/16 :goto_1

    .line 385
    :catch_7
    move-exception v7

    goto/16 :goto_1

    .line 382
    :catchall_0
    move-exception v7

    :goto_12
    if-eqz v0, :cond_12

    .line 384
    :try_start_18
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_11

    .line 386
    :cond_12
    :goto_13
    throw v7

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "line":Ljava/lang/String;
    :cond_13
    move-object v0, v1

    .line 400
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_14
    if-eqz v0, :cond_26

    .line 402
    :try_start_19
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_8

    move-object v1, v0

    .line 404
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 403
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_8
    move-exception v7

    move-object v1, v0

    .line 404
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 403
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "file":Ljava/io/File;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "file":Ljava/io/File;
    :catch_9
    move-exception v7

    move-object v4, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    move-object v1, v0

    .line 404
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 400
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "file":Ljava/io/File;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "file":Ljava/io/File;
    :catchall_1
    move-exception v7

    :goto_14
    if-eqz v0, :cond_15

    .line 402
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_12

    .line 404
    :cond_15
    :goto_15
    throw v7

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_16
    move-object v0, v1

    .line 416
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_17
    if-eqz v0, :cond_24

    .line 418
    :try_start_1b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_a

    move-object v4, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    move-object v1, v0

    .line 420
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_7

    .line 419
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "file":Ljava/io/File;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "file":Ljava/io/File;
    :catch_a
    move-exception v7

    move-object v4, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    move-object v1, v0

    .line 420
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_7

    .line 419
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "file":Ljava/io/File;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "file":Ljava/io/File;
    :catch_b
    move-exception v7

    move-object v4, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    move-object v1, v0

    .line 420
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_7

    .line 416
    :catchall_2
    move-exception v7

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_16
    if-eqz v0, :cond_18

    .line 418
    :try_start_1c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_13

    .line 420
    :cond_18
    :goto_17
    throw v7

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_19
    move-object v0, v1

    .line 432
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_1a
    if-eqz v0, :cond_23

    .line 434
    :try_start_1d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_c

    move-object v4, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    move-object v1, v0

    .line 436
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_a

    .line 435
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "file":Ljava/io/File;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "file":Ljava/io/File;
    :catch_c
    move-exception v7

    move-object v4, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    move-object v1, v0

    .line 436
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_a

    .line 435
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "file":Ljava/io/File;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "file":Ljava/io/File;
    :catch_d
    move-exception v7

    move-object v4, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    move-object v1, v0

    .line 436
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_a

    .line 432
    :catchall_3
    move-exception v7

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_18
    if-eqz v0, :cond_1b

    .line 434
    :try_start_1e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_14

    .line 436
    :cond_1b
    :goto_19
    throw v7

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_1c
    move-object v0, v1

    .line 448
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_1d
    if-eqz v0, :cond_22

    .line 450
    :try_start_1f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_e

    move-object v4, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    move-object v1, v0

    .line 452
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_d

    .line 451
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "file":Ljava/io/File;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "file":Ljava/io/File;
    :catch_e
    move-exception v7

    move-object v4, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    move-object v1, v0

    .line 452
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_d

    .line 451
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "file":Ljava/io/File;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "file":Ljava/io/File;
    :catch_f
    move-exception v7

    move-object v4, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    move-object v1, v0

    .line 452
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_d

    .line 448
    :catchall_4
    move-exception v7

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_1a
    if-eqz v0, :cond_1e

    .line 450
    :try_start_20
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_15

    .line 452
    :cond_1e
    :goto_1b
    throw v7

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_1f
    move-object v0, v1

    .line 468
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_20
    if-eqz v0, :cond_11

    .line 470
    :try_start_21
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_10

    goto/16 :goto_10

    .line 471
    :catch_10
    move-exception v7

    goto/16 :goto_10

    .line 468
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "file":Ljava/io/File;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "file":Ljava/io/File;
    :catchall_5
    move-exception v7

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_1c
    if-eqz v0, :cond_21

    .line 470
    :try_start_22
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_17

    .line 472
    :cond_21
    :goto_1d
    throw v7

    .line 385
    .end local v3    # "file":Ljava/io/File;
    :catch_11
    move-exception v8

    goto/16 :goto_13

    .line 403
    .restart local v3    # "file":Ljava/io/File;
    :catch_12
    move-exception v8

    goto :goto_15

    .line 419
    :catch_13
    move-exception v8

    goto :goto_17

    .line 435
    :catch_14
    move-exception v8

    goto :goto_19

    .line 451
    :catch_15
    move-exception v8

    goto :goto_1b

    .line 471
    :catch_16
    move-exception v7

    goto/16 :goto_10

    :catch_17
    move-exception v8

    goto :goto_1d

    .line 468
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_6
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1c

    :catchall_7
    move-exception v7

    goto :goto_1c

    .line 466
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "file":Ljava/io/File;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "file":Ljava/io/File;
    :catch_18
    move-exception v7

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_f

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_19
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_f

    .line 448
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_8
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1a

    :catchall_9
    move-exception v7

    goto :goto_1a

    .line 446
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "file":Ljava/io/File;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "file":Ljava/io/File;
    :catch_1a
    move-exception v7

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_c

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_1b
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_c

    .line 432
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_a
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_18

    :catchall_b
    move-exception v7

    goto :goto_18

    .line 430
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "file":Ljava/io/File;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "file":Ljava/io/File;
    :catch_1c
    move-exception v7

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_9

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_1d
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_9

    .line 416
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_c
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_16

    :catchall_d
    move-exception v7

    goto/16 :goto_16

    .line 414
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "file":Ljava/io/File;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "file":Ljava/io/File;
    :catch_1e
    move-exception v7

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_6

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_1f
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_6

    .line 400
    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :catchall_e
    move-exception v7

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto/16 :goto_14

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "file":Ljava/io/File;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "file":Ljava/io/File;
    :catchall_f
    move-exception v7

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_14

    .line 398
    :catch_20
    move-exception v7

    goto/16 :goto_3

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :catch_21
    move-exception v7

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto/16 :goto_3

    .line 382
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "file":Ljava/io/File;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_10
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_12

    .line 380
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_22
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_11

    .restart local v3    # "file":Ljava/io/File;
    :cond_22
    move-object v4, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    move-object v1, v0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_d

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "file":Ljava/io/File;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "file":Ljava/io/File;
    :cond_23
    move-object v4, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    move-object v1, v0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_a

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "file":Ljava/io/File;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "file":Ljava/io/File;
    :cond_24
    move-object v4, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    move-object v1, v0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_7

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "file":Ljava/io/File;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "file":Ljava/io/File;
    :cond_25
    move-object v4, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    move-object v1, v0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_26
    move-object v1, v0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .end local v4    # "file":Ljava/io/File;
    .restart local v5    # "line":Ljava/lang/String;
    :cond_27
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_1
.end method
