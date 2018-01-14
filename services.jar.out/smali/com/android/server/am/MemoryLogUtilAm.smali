.class public Lcom/android/server/am/MemoryLogUtilAm;
.super Ljava/lang/Object;
.source "MemoryLogUtilAm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MemoryLogUtilAm$IonInfo;,
        Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;,
        Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    }
.end annotation


# static fields
.field private static final DURATION_DUMP_AM_LOW_MEMORY:I = 0x927c0

.field private static final DURATION_DUMP_LOW_MEMORY:I = 0x2bf20

.field static final FORCE_DUMP_ADJ:I = 0x4

.field static final MIN_DUMP_ADJ:I = 0x384

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
    .line 29
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sLastTimeDumpLowMemory:J

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/MemoryLogUtilAm;->sIsDumping:Z

    .line 63
    const/4 v0, 0x2

    sput v0, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static doDump(Lcom/android/server/am/ActivityManagerService;Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;ZZ)Ljava/lang/String;
    .locals 25
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "TOP_APP"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "dyingProc"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "isLauncherKilled"    # Z
    .param p5, "doInBg"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
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
    .line 152
    .local p1, "lruProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    sget-boolean v2, Lcom/android/server/am/MemoryLogUtilAm;->sIsDumping:Z

    if-eqz v2, :cond_0

    .line 153
    const/4 v2, 0x0

    return-object v2

    .line 155
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/am/MemoryLogUtilAm;->sIsDumping:Z

    .line 157
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/am/MemoryLogUtilAm;->sLastTimeDumpLowMemory:J

    .line 158
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v9, "allProcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;>;"
    new-instance v16, Ljava/util/Vector;

    invoke-direct/range {v16 .. v16}, Ljava/util/Vector;-><init>()V

    .line 160
    .local v16, "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .local v20, "serviceInfo":Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v17, "providerInfo":Ljava/lang/StringBuilder;
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "rec$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ProcessRecord;

    .line 164
    .local v18, "rec":Lcom/android/server/am/ProcessRecord;
    const/4 v11, 0x0

    .line 165
    .local v11, "isBinded":Z
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v2, :cond_1

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 166
    const/4 v11, 0x1

    .line 168
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 169
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 170
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    const-string/jumbo v4, "service"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 171
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "sr$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/am/ServiceRecord;

    .line 172
    .local v21, "sr":Lcom/android/server/am/ServiceRecord;
    if-eqz v11, :cond_3

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 176
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    sub-long v12, v4, v6

    .line 177
    .local v12, "duration":J
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v2, :cond_4

    .line 179
    const-string/jumbo v2, " <- "

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_4
    const-string/jumbo v2, " For "

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " ms."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 182
    .end local v12    # "duration":J
    .end local v21    # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v22    # "sr$iterator":Ljava/util/Iterator;
    :cond_5
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    const-string/jumbo v4, "provider"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 183
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 184
    .local v14, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ContentProviderRecord;>;"
    :cond_6
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 185
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ContentProviderRecord;

    .line 186
    .local v10, "cpRec":Lcom/android/server/am/ContentProviderRecord;
    if-eqz v11, :cond_7

    iget-object v2, v10, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 190
    :cond_7
    iget-object v2, v10, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v2, :cond_8

    .line 192
    const-string/jumbo v2, " <- "

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :cond_8
    const-string/jumbo v2, "."

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 198
    .end local v10    # "cpRec":Lcom/android/server/am/ContentProviderRecord;
    .end local v14    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ContentProviderRecord;>;"
    :cond_9
    new-instance v2, Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 202
    .end local v11    # "isBinded":Z
    .end local v18    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_a
    const-string/jumbo v2, "/proc"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v15

    .line 203
    .local v15, "pids":[I
    const/4 v2, 0x0

    array-length v0, v15

    move/from16 v24, v0

    move/from16 v23, v2

    :goto_3
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_c

    aget v3, v15, v23

    .line 204
    .local v3, "id":I
    const/4 v2, -0x1

    if-eq v3, v2, :cond_b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_b

    .line 205
    new-instance v2, Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;

    const-string/jumbo v6, "native"

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    const/16 v4, -0x3e8

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_b
    add-int/lit8 v2, v23, 0x1

    move/from16 v23, v2

    goto :goto_3

    .line 209
    .end local v3    # "id":I
    :cond_c
    if-eqz p5, :cond_e

    .line 210
    if-nez p2, :cond_d

    const-string/jumbo v2, ""

    :goto_4
    move-object/from16 v0, p0

    invoke-static {v0, v9, v2}, Lcom/android/server/am/MemoryLogUtilAm;->dumpInBackground(Lcom/android/server/am/ActivityManagerService;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 211
    const-string/jumbo v2, ""

    return-object v2

    .line 210
    :cond_d
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_4

    .line 213
    :cond_e
    if-nez p2, :cond_f

    const-string/jumbo v2, ""

    :goto_5
    move/from16 v0, p4

    invoke-static {v9, v2, v0}, Lcom/android/server/am/MemoryLogUtilAm;->doDump(Ljava/util/ArrayList;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_f
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_5
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
    .line 218
    .local p0, "allProc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .local v13, "result":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 222
    .local v11, "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :try_start_0
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 223
    .local v12, "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :try_start_1
    const-string/jumbo v0, "MemoryUsage"

    .end local v11    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    const-string/jumbo v1, "Memory Usage Breakdown Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Foreground Process : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 227
    .local v10, "log":Ljava/lang/String;
    const-string/jumbo v0, "MemoryUsage"

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    if-eqz p2, :cond_0

    .line 229
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .end local v10    # "log":Ljava/lang/String;
    :cond_0
    if-eqz p2, :cond_2

    .line 232
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->dumpHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :goto_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "info$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;

    .line 237
    .local v8, "info":Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;
    iget v0, v8, Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;->mPid:I

    iget v1, v8, Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;->mAdj:I

    iget-object v2, v8, Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;->mName:Ljava/lang/String;

    iget-object v3, v8, Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;->mAdjType:Ljava/lang/String;

    iget-object v4, v8, Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;->mServiceinfo:Ljava/lang/String;

    iget-object v5, v8, Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;->mProviderInfo:Ljava/lang/String;

    move/from16 v6, p2

    invoke-static/range {v0 .. v6}, Lcom/android/server/am/MemoryLogUtilAm;->dumpProcessStats(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 238
    .restart local v10    # "log":Ljava/lang/String;
    if-eqz p2, :cond_1

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 239
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 254
    .end local v8    # "info":Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;
    .end local v9    # "info$iterator":Ljava/util/Iterator;
    .end local v10    # "log":Ljava/lang/String;
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    move-object v11, v12

    .line 255
    .end local v12    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :goto_2
    :try_start_2
    const-string/jumbo v0, "MemoryUsage"

    const-string/jumbo v1, "Error while dumping low memory logs."

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 257
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/MemoryLogUtilAm;->sIsDumping:Z

    .line 259
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 234
    .restart local v12    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->dumpHeader()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 256
    :catchall_0
    move-exception v0

    move-object v11, v12

    .line 257
    .end local v12    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :goto_4
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/am/MemoryLogUtilAm;->sIsDumping:Z

    .line 256
    throw v0

    .line 243
    .restart local v9    # "info$iterator":Ljava/util/Iterator;
    .restart local v12    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_3
    if-eqz p2, :cond_4

    .line 244
    :try_start_4
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/MemoryLogUtilAm;->dumpMemoryLogFromFile(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/MemoryLogUtilAm;->dumpMtkGraphic(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->dumpMemInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :goto_5
    const-string/jumbo v0, "MemoryUsage"

    const-string/jumbo v1, "Memory Usage Breakdown End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 257
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/MemoryLogUtilAm;->sIsDumping:Z

    move-object v11, v12

    .end local v12    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .local v11, "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    goto :goto_3

    .line 248
    .end local v11    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v12    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_4
    :try_start_5
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/MemoryLogUtilAm;->dumpMemoryLogFromFile(Z)Ljava/lang/String;

    .line 249
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/MemoryLogUtilAm;->dumpMtkGraphic(Z)Ljava/lang/String;

    .line 250
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->dumpMemInfo()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 256
    .end local v9    # "info$iterator":Ljava/util/Iterator;
    .end local v12    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 254
    .local v11, "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v7

    .restart local v7    # "e":Ljava/lang/Exception;
    goto :goto_2
.end method

.method static doDumpCpuUsage(Lcom/android/server/am/ActivityManagerService;)V
    .locals 7
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "cpuInfo":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .local v1, "info":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 142
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v3

    .line 143
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/16 v6, 0xa

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 146
    const-string/jumbo v2, "MemoryUsage"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void

    .line 142
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static final native dumpHeader()Ljava/lang/String;
.end method

.method static dumpInBackground(Lcom/android/server/am/ActivityManagerService;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "TOP_APP"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "allProcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MemoryLogUtilAm$ProcessInfo;>;"
    new-instance v0, Lcom/android/server/am/MemoryLogUtilAm$1;

    const-string/jumbo v1, "MemoryUsageLog"

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/android/server/am/MemoryLogUtilAm$1;-><init>(Ljava/lang/String;Lcom/android/server/am/ActivityManagerService;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/am/MemoryLogUtilAm$1;->start()V

    .line 126
    return-void
.end method

.method static dumpLowMemoryLog(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;
    .locals 1
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "TOP_APP"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/am/MemoryLogUtilAm;->dumpLowMemoryLog(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static dumpLowMemoryLog(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;
    .locals 12
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "TOP_APP"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "dyingProc"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 95
    const/4 v7, 0x0

    .line 96
    .local v7, "isLauncherKilled":Z
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/am/MemoryLogUtilAm;->sLastTimeDumpLowMemory:J

    sub-long v10, v0, v2

    .line 98
    .local v10, "timeDiff":J
    if-eqz p2, :cond_4

    .line 99
    const-string/jumbo v0, "home"

    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 100
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "pr$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 101
    .local v8, "pr":Lcom/android/server/am/ProcessRecord;
    iget v0, v8, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v1, 0x384

    if-le v0, v1, :cond_0

    .line 102
    const-wide/32 v0, 0x927c0

    cmp-long v0, v10, v0

    if-gtz v0, :cond_1

    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sLastTimeDumpLowMemory:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/MemoryLogUtilAm;->doDump(Lcom/android/server/am/ActivityManagerService;Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 105
    :cond_2
    const/4 v0, 0x0

    return-object v0

    .line 109
    .end local v8    # "pr":Lcom/android/server/am/ProcessRecord;
    .end local v9    # "pr$iterator":Ljava/util/Iterator;
    :cond_3
    const/4 v7, 0x1

    .line 113
    :cond_4
    if-nez v7, :cond_5

    const-wide/32 v0, 0x2bf20

    cmp-long v0, v10, v0

    if-gez v0, :cond_5

    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-lez v0, :cond_5

    .line 114
    const/4 v0, 0x0

    return-object v0

    .line 117
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/MemoryLogUtilAm;->doDump(Lcom/android/server/am/ActivityManagerService;Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;ZZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 119
    .end local v10    # "timeDiff":J
    :catch_0
    move-exception v6

    .line 120
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "MemoryUsage"

    const-string/jumbo v1, "Error while dumping low memory logs."

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/MemoryLogUtilAm;->sIsDumping:Z

    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method static dumpMemInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->readExtraMemInfo()V

    .line 301
    const-string/jumbo v1, "System memory usage ---> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 302
    const-string/jumbo v2, "MemTotal: "

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 302
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getTotal()J

    move-result-wide v2

    .line 301
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 302
    const-string/jumbo v2, " KB, "

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 303
    const-string/jumbo v2, "MemFree: "

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 303
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getFree()J

    move-result-wide v2

    .line 301
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 303
    const-string/jumbo v2, " KB, "

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 304
    const-string/jumbo v2, "Buffers: "

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 304
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getBuffers()J

    move-result-wide v2

    .line 301
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 304
    const-string/jumbo v2, " KB, "

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 305
    const-string/jumbo v2, "Cached: "

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 305
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getCached()J

    move-result-wide v2

    .line 301
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 305
    const-string/jumbo v2, " KB, "

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 306
    const-string/jumbo v2, "Shmem: "

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 306
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getShmem()J

    move-result-wide v2

    .line 301
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 306
    const-string/jumbo v2, " KB, "

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 307
    const-string/jumbo v2, "Slab: "

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 307
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getSlab()J

    move-result-wide v2

    .line 301
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 307
    const-string/jumbo v2, " KB, "

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 308
    const-string/jumbo v2, "SReclaimable: "

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 308
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getSReclaimable()J

    move-result-wide v2

    .line 301
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 308
    const-string/jumbo v2, " KB, "

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 309
    const-string/jumbo v2, "SUnreclaim: "

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 309
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getSUnreclaim()J

    move-result-wide v2

    .line 301
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 309
    const-string/jumbo v2, " KB, "

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 310
    const-string/jumbo v2, "KernelStack: "

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 310
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getKernelStack()J

    move-result-wide v2

    .line 301
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 310
    const-string/jumbo v2, " KB, "

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 311
    const-string/jumbo v2, "PageTables: "

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 311
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getPageTable()J

    move-result-wide v2

    .line 301
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 311
    const-string/jumbo v2, " KB, "

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 312
    const-string/jumbo v2, "SwapTotal: "

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 312
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getSwapTotal()J

    move-result-wide v2

    .line 301
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 312
    const-string/jumbo v2, " KB, "

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 313
    const-string/jumbo v2, "SwapFree: "

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 313
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getSwapFree()J

    move-result-wide v2

    .line 301
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 313
    const-string/jumbo v2, " KB, "

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 314
    const-string/jumbo v2, "ZramUsed: "

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 314
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getZramInUse()J

    move-result-wide v2

    .line 301
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 314
    const-string/jumbo v2, " KB, "

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 315
    const-string/jumbo v2, "SwapCached: "

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 315
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getSwapCached()J

    move-result-wide v2

    .line 301
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 315
    const-string/jumbo v2, " KB, "

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 316
    const-string/jumbo v2, "VmallocUsed: "

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 316
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getVmallocUsed()J

    move-result-wide v2

    .line 301
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 316
    const-string/jumbo v2, " KB."

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    const-string/jumbo v1, "MemoryUsage"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static dumpMemoryLogFromFile(Z)Ljava/lang/String;
    .locals 42
    .param p0, "isHomeKilled"    # Z

    .prologue
    .line 559
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    .line 560
    .local v31, "result":Ljava/lang/StringBuilder;
    const/16 v17, 0x0

    .line 561
    .local v17, "input":Ljava/io/BufferedReader;
    const/16 v23, 0x0

    .line 562
    .local v23, "line":Ljava/lang/String;
    const/16 v26, 0x0

    .line 564
    .local v26, "path":Ljava/lang/String;
    sget v36, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_e

    .line 565
    const-string/jumbo v26, "/sys/kernel/debug/nvmap/iovmm/clients"

    .line 570
    .end local v26    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v26, :cond_1

    .line 572
    :try_start_0
    new-instance v18, Ljava/io/BufferedReader;

    new-instance v36, Ljava/io/FileReader;

    move-object/from16 v0, v36

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_14
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    .end local v17    # "input":Ljava/io/BufferedReader;
    .end local v23    # "line":Ljava/lang/String;
    .local v18, "input":Ljava/io/BufferedReader;
    :goto_1
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v23

    .local v23, "line":Ljava/lang/String;
    if-eqz v23, :cond_10

    .line 574
    const-string/jumbo v37, "MemoryUsage"

    sget v36, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    const/16 v38, 0x1

    move/from16 v0, v36

    move/from16 v1, v38

    if-ne v0, v1, :cond_f

    move-object/from16 v36, v23

    :goto_2
    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    goto :goto_1

    .line 576
    .end local v23    # "line":Ljava/lang/String;
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    move-object/from16 v17, v18

    .line 577
    .end local v18    # "input":Ljava/io/BufferedReader;
    :goto_3
    :try_start_2
    const-string/jumbo v36, "MemoryUsage"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "Error logging memory file "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 579
    if-eqz v17, :cond_1

    .line 581
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 587
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_4
    const-string/jumbo v26, "/d/ion/iommu"

    .line 589
    .local v26, "path":Ljava/lang/String;
    :try_start_4
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, v26

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 590
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v36

    if-eqz v36, :cond_1d

    .line 591
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 592
    .local v6, "allocMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 594
    .local v16, "infoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/MemoryLogUtilAm$IonInfo;>;"
    new-instance v18, Ljava/io/BufferedReader;

    new-instance v36, Ljava/io/FileReader;

    move-object/from16 v0, v36

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_13
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 595
    .restart local v18    # "input":Ljava/io/BufferedReader;
    :cond_2
    :goto_5
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v23

    .restart local v23    # "line":Ljava/lang/String;
    if-eqz v23, :cond_1a

    .line 596
    const-string/jumbo v36, "client              pid"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v36

    if-nez v36, :cond_3

    const-string/jumbo v36, "client          creator"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v36

    if-eqz v36, :cond_13

    .line 618
    :cond_3
    const-string/jumbo v36, "Total bytes currently"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_18

    .line 619
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "key$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_18

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 620
    .local v21, "key":Ljava/lang/String;
    const-string/jumbo v36, "_"

    move-object/from16 v0, v21

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 621
    .local v11, "index":I
    const/16 v36, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v36

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 622
    .local v7, "client":Ljava/lang/String;
    add-int/lit8 v36, v11, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    .line 623
    .local v28, "pid":Ljava/lang/String;
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "iommu : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 624
    const-string/jumbo v37, "%1$16s %2$16s %3$16d"

    const/16 v38, 0x3

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aput-object v7, v38, v39

    const/16 v39, 0x1

    aput-object v28, v38, v39

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    const/16 v40, 0x2

    aput-object v39, v38, v40

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    .line 623
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 625
    .local v34, "tmp":Ljava/lang/String;
    const-string/jumbo v36, "MemoryUsage"

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    if-eqz p0, :cond_4

    .line 627
    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, "\r\n"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_6

    .line 650
    .end local v7    # "client":Ljava/lang/String;
    .end local v11    # "index":I
    .end local v21    # "key":Ljava/lang/String;
    .end local v22    # "key$iterator":Ljava/util/Iterator;
    .end local v23    # "line":Ljava/lang/String;
    .end local v28    # "pid":Ljava/lang/String;
    .end local v34    # "tmp":Ljava/lang/String;
    :catch_1
    move-exception v9

    .restart local v9    # "e":Ljava/lang/Exception;
    move-object/from16 v17, v18

    .line 651
    .end local v6    # "allocMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v10    # "file":Ljava/io/File;
    .end local v16    # "infoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/MemoryLogUtilAm$IonInfo;>;"
    .end local v18    # "input":Ljava/io/BufferedReader;
    :goto_7
    :try_start_6
    const-string/jumbo v36, "MemoryUsage"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "Error logging memory file "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 653
    if-eqz v17, :cond_5

    .line 655
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 660
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_8
    const-string/jumbo v26, "/d/ion/heaps/system"

    .line 662
    :try_start_8
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, v26

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 663
    .restart local v10    # "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v36

    if-eqz v36, :cond_26

    .line 664
    new-instance v30, Ljava/util/HashMap;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashMap;-><init>()V

    .line 666
    .local v30, "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    new-instance v18, Ljava/io/BufferedReader;

    new-instance v36, Ljava/io/FileReader;

    move-object/from16 v0, v36

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_12
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 667
    .restart local v18    # "input":Ljava/io/BufferedReader;
    :cond_6
    :goto_9
    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v23

    .restart local v23    # "line":Ljava/lang/String;
    if-eqz v23, :cond_25

    .line 668
    const-string/jumbo v36, "\\s+"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v33

    .line 670
    .local v33, "split":[Ljava/lang/String;
    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x6

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_7

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x4

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_21

    .line 671
    :cond_7
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v35

    .line 672
    .local v35, "trim":Ljava/lang/String;
    const-string/jumbo v36, "client              pid"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_8

    const-string/jumbo v36, "total orphaned"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_8

    .line 673
    const-string/jumbo v36, "deferred free"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v36

    .line 672
    if-eqz v36, :cond_1e

    .line 674
    :cond_8
    const-string/jumbo v36, "MemoryUsage"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "ION-Breakdown : "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    if-eqz p0, :cond_6

    .line 676
    const-string/jumbo v36, "ion-heaps : "

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, "\r\n"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_9

    .line 703
    .end local v23    # "line":Ljava/lang/String;
    .end local v33    # "split":[Ljava/lang/String;
    .end local v35    # "trim":Ljava/lang/String;
    :catch_2
    move-exception v9

    .restart local v9    # "e":Ljava/lang/Exception;
    move-object/from16 v17, v18

    .line 704
    .end local v10    # "file":Ljava/io/File;
    .end local v18    # "input":Ljava/io/BufferedReader;
    .end local v30    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    :goto_a
    :try_start_a
    const-string/jumbo v36, "MemoryUsage"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "Error logging memory file "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 706
    if-eqz v17, :cond_9

    .line 708
    :try_start_b
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    .line 713
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_b
    const-string/jumbo v26, "/d/ion/heaps/ion_mm_heap"

    .line 715
    :try_start_c
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, v26

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 716
    .restart local v10    # "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v36

    if-eqz v36, :cond_c

    .line 717
    const/4 v12, -0x1

    .line 718
    .local v12, "indexClient":I
    const/4 v15, -0x1

    .line 719
    .local v15, "indexlDbgName":I
    const/4 v13, -0x1

    .line 720
    .local v13, "indexPid":I
    const/4 v14, -0x1

    .line 721
    .local v14, "indexSize":I
    const/16 v19, 0x0

    .line 722
    .local v19, "isMatch":Z
    new-instance v30, Ljava/util/HashMap;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashMap;-><init>()V

    .line 724
    .restart local v30    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    const-string/jumbo v34, ""

    .line 726
    .restart local v34    # "tmp":Ljava/lang/String;
    new-instance v18, Ljava/io/BufferedReader;

    new-instance v36, Ljava/io/FileReader;

    move-object/from16 v0, v36

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_11
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 727
    .restart local v18    # "input":Ljava/io/BufferedReader;
    :cond_a
    :goto_c
    :try_start_d
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v23

    .restart local v23    # "line":Ljava/lang/String;
    if-eqz v23, :cond_31

    .line 728
    const-string/jumbo v36, "mm_heap_freelist total_size"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_27

    .line 729
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "ion_mm_heap : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 730
    const-string/jumbo v36, "MemoryUsage"

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    if-eqz p0, :cond_b

    .line 732
    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, "\r\n"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :cond_b
    move-object/from16 v17, v18

    .line 793
    .end local v12    # "indexClient":I
    .end local v13    # "indexPid":I
    .end local v14    # "indexSize":I
    .end local v15    # "indexlDbgName":I
    .end local v18    # "input":Ljava/io/BufferedReader;
    .end local v19    # "isMatch":Z
    .end local v23    # "line":Ljava/lang/String;
    .end local v30    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .end local v34    # "tmp":Ljava/lang/String;
    :cond_c
    :goto_d
    if-eqz v17, :cond_d

    .line 795
    :try_start_e
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_f

    .line 799
    .end local v10    # "file":Ljava/io/File;
    :cond_d
    :goto_e
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    return-object v36

    .line 566
    .restart local v17    # "input":Ljava/io/BufferedReader;
    .local v23, "line":Ljava/lang/String;
    .local v26, "path":Ljava/lang/String;
    :cond_e
    sget v36, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    const/16 v37, 0x3

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_0

    .line 567
    const-string/jumbo v26, "/d/ion/ion-system-extra"

    .local v26, "path":Ljava/lang/String;
    goto/16 :goto_0

    .line 574
    .end local v17    # "input":Ljava/io/BufferedReader;
    .end local v26    # "path":Ljava/lang/String;
    .restart local v18    # "input":Ljava/io/BufferedReader;
    .local v23, "line":Ljava/lang/String;
    :cond_f
    :try_start_f
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "ion-extra : "

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    move-result-object v36

    goto/16 :goto_2

    .line 579
    :cond_10
    if-eqz v18, :cond_11

    .line 581
    :try_start_10
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3

    :cond_11
    :goto_f
    move-object/from16 v17, v18

    .end local v18    # "input":Ljava/io/BufferedReader;
    .local v17, "input":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 582
    .end local v17    # "input":Ljava/io/BufferedReader;
    .restart local v18    # "input":Ljava/io/BufferedReader;
    :catch_3
    move-exception v8

    .local v8, "e":Ljava/io/IOException;
    goto :goto_f

    .end local v8    # "e":Ljava/io/IOException;
    .end local v18    # "input":Ljava/io/BufferedReader;
    .end local v23    # "line":Ljava/lang/String;
    .restart local v9    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto/16 :goto_4

    .line 578
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v36

    .line 579
    :goto_10
    if-eqz v17, :cond_12

    .line 581
    :try_start_11
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5

    .line 578
    :cond_12
    :goto_11
    throw v36

    .line 582
    :catch_5
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_11

    .line 597
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v6    # "allocMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v10    # "file":Ljava/io/File;
    .restart local v16    # "infoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/MemoryLogUtilAm$IonInfo;>;"
    .restart local v18    # "input":Ljava/io/BufferedReader;
    .restart local v23    # "line":Ljava/lang/String;
    .restart local v26    # "path":Ljava/lang/String;
    :cond_13
    :try_start_12
    const-string/jumbo v36, "\\s+"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v33

    .line 598
    .restart local v33    # "split":[Ljava/lang/String;
    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x4

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_16

    .line 599
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    .line 600
    .local v32, "sb":Ljava/lang/StringBuilder;
    const/16 v36, 0x1

    aget-object v36, v33, v36

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, "_"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const/16 v37, 0x2

    aget-object v37, v33, v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 601
    .restart local v21    # "key":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_15

    .line 602
    const/16 v36, 0x3

    aget-object v36, v33, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    move-object/from16 v0, v21

    move-object/from16 v1, v36

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto/16 :goto_5

    .line 652
    .end local v21    # "key":Ljava/lang/String;
    .end local v23    # "line":Ljava/lang/String;
    .end local v32    # "sb":Ljava/lang/StringBuilder;
    .end local v33    # "split":[Ljava/lang/String;
    :catchall_1
    move-exception v36

    move-object/from16 v17, v18

    .line 653
    .end local v6    # "allocMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v10    # "file":Ljava/io/File;
    .end local v16    # "infoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/MemoryLogUtilAm$IonInfo;>;"
    .end local v18    # "input":Ljava/io/BufferedReader;
    :goto_12
    if-eqz v17, :cond_14

    .line 655
    :try_start_13
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    .line 652
    :cond_14
    :goto_13
    throw v36

    .line 604
    .restart local v6    # "allocMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v10    # "file":Ljava/io/File;
    .restart local v16    # "infoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/MemoryLogUtilAm$IonInfo;>;"
    .restart local v18    # "input":Ljava/io/BufferedReader;
    .restart local v21    # "key":Ljava/lang/String;
    .restart local v23    # "line":Ljava/lang/String;
    .restart local v32    # "sb":Ljava/lang/StringBuilder;
    .restart local v33    # "split":[Ljava/lang/String;
    :cond_15
    :try_start_14
    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Long;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    const/16 v38, 0x3

    aget-object v38, v33, v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v38

    add-long v36, v36, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    move-object/from16 v0, v21

    move-object/from16 v1, v36

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 607
    .end local v21    # "key":Ljava/lang/String;
    .end local v32    # "sb":Ljava/lang/StringBuilder;
    :cond_16
    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x5

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_3

    .line 608
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    .line 609
    .restart local v32    # "sb":Ljava/lang/StringBuilder;
    const/16 v36, 0x1

    aget-object v36, v33, v36

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, " "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const/16 v37, 0x2

    aget-object v37, v33, v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 610
    .restart local v21    # "key":Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_17

    .line 611
    new-instance v36, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;

    const/16 v37, 0x1

    aget-object v37, v33, v37

    const/16 v38, 0x2

    aget-object v38, v33, v38

    const/16 v39, 0x3

    aget-object v39, v33, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v40

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-wide/from16 v3, v40

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 613
    :cond_17
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;->mSize:J

    move-wide/from16 v38, v0

    const/16 v37, 0x3

    aget-object v37, v33, v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v40

    add-long v38, v38, v40

    move-wide/from16 v0, v38

    move-object/from16 v2, v36

    iput-wide v0, v2, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;->mSize:J

    goto/16 :goto_5

    .line 630
    .end local v21    # "key":Ljava/lang/String;
    .end local v32    # "sb":Ljava/lang/StringBuilder;
    .end local v33    # "split":[Ljava/lang/String;
    :cond_18
    const-string/jumbo v36, "client          creator"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v36

    if-eqz v36, :cond_19

    .line 631
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "iommu : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, "size (hex)"

    const-string/jumbo v38, "      size"

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 632
    .restart local v34    # "tmp":Ljava/lang/String;
    const-string/jumbo v36, "MemoryUsage"

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    if-eqz p0, :cond_2

    .line 634
    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, "\r\n"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 637
    .end local v34    # "tmp":Ljava/lang/String;
    :cond_19
    const-string/jumbo v36, "MemoryUsage"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "iommu : "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    if-eqz p0, :cond_2

    .line 639
    const-string/jumbo v36, "iommu : "

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, "\r\n"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 641
    :cond_1a
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .restart local v22    # "key$iterator":Ljava/util/Iterator;
    :cond_1b
    :goto_14
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_1c

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 642
    .restart local v21    # "key":Ljava/lang/String;
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "iommu : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 643
    const-string/jumbo v38, "%1$16s %2$16s %3$14d"

    const/16 v36, 0x3

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;->mClient:Ljava/lang/String;

    move-object/from16 v36, v0

    const/16 v40, 0x0

    aput-object v36, v39, v40

    .line 644
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;->mCreator:Ljava/lang/String;

    move-object/from16 v36, v0

    const/16 v40, 0x1

    aput-object v36, v39, v40

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;->mSize:J

    move-wide/from16 v40, v0

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    const/16 v40, 0x2

    aput-object v36, v39, v40

    .line 643
    invoke-static/range {v38 .. v39}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    .line 642
    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 645
    .restart local v34    # "tmp":Ljava/lang/String;
    const-string/jumbo v36, "MemoryUsage"

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    if-eqz p0, :cond_1b

    .line 647
    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, "\r\n"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto/16 :goto_14

    .end local v21    # "key":Ljava/lang/String;
    .end local v34    # "tmp":Ljava/lang/String;
    :cond_1c
    move-object/from16 v17, v18

    .line 653
    .end local v6    # "allocMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v16    # "infoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/MemoryLogUtilAm$IonInfo;>;"
    .end local v18    # "input":Ljava/io/BufferedReader;
    .end local v22    # "key$iterator":Ljava/util/Iterator;
    .end local v23    # "line":Ljava/lang/String;
    :cond_1d
    if-eqz v17, :cond_5

    .line 655
    :try_start_15
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_6

    goto/16 :goto_8

    .line 656
    :catch_6
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto/16 :goto_8

    .end local v8    # "e":Ljava/io/IOException;
    .end local v10    # "file":Ljava/io/File;
    .restart local v9    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto/16 :goto_8

    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto/16 :goto_13

    .line 679
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v10    # "file":Ljava/io/File;
    .restart local v18    # "input":Ljava/io/BufferedReader;
    .restart local v23    # "line":Ljava/lang/String;
    .restart local v30    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .restart local v33    # "split":[Ljava/lang/String;
    .restart local v35    # "trim":Ljava/lang/String;
    :cond_1e
    const/16 v36, 0x3

    :try_start_16
    aget-object v36, v33, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    .line 680
    .local v24, "memory":J
    new-instance v29, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;

    const/16 v36, 0x1

    aget-object v36, v33, v36

    const/16 v37, 0x2

    aget-object v37, v33, v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    move-object/from16 v0, v29

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;-><init>(Ljava/lang/String;I)V

    .line 681
    .local v29, "process":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_20

    .line 682
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Long;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    add-long v36, v36, v24

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_2
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    goto/16 :goto_9

    .line 705
    .end local v23    # "line":Ljava/lang/String;
    .end local v24    # "memory":J
    .end local v29    # "process":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    .end local v33    # "split":[Ljava/lang/String;
    .end local v35    # "trim":Ljava/lang/String;
    :catchall_2
    move-exception v36

    move-object/from16 v17, v18

    .line 706
    .end local v10    # "file":Ljava/io/File;
    .end local v18    # "input":Ljava/io/BufferedReader;
    .end local v30    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    :goto_15
    if-eqz v17, :cond_1f

    .line 708
    :try_start_17
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_b

    .line 705
    :cond_1f
    :goto_16
    throw v36

    .line 684
    .restart local v10    # "file":Ljava/io/File;
    .restart local v18    # "input":Ljava/io/BufferedReader;
    .restart local v23    # "line":Ljava/lang/String;
    .restart local v24    # "memory":J
    .restart local v29    # "process":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    .restart local v30    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .restart local v33    # "split":[Ljava/lang/String;
    .restart local v35    # "trim":Ljava/lang/String;
    :cond_20
    :try_start_18
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 687
    .end local v24    # "memory":J
    .end local v29    # "process":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    .end local v35    # "trim":Ljava/lang/String;
    :cond_21
    invoke-interface/range {v30 .. v30}, Ljava/util/Map;->isEmpty()Z

    move-result v36

    if-nez v36, :cond_24

    .line 688
    invoke-interface/range {v30 .. v30}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .restart local v22    # "key$iterator":Ljava/util/Iterator;
    :cond_22
    :goto_17
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_23

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;

    .line 689
    .local v20, "key":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    const-string/jumbo v36, "ION-Breakdown : %1$16s  %2$15d  %3$15d"

    const/16 v37, 0x3

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;->getProcessName()Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x0

    aput-object v38, v37, v39

    .line 690
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;->getPid()I

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    const/16 v39, 0x1

    aput-object v38, v37, v39

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    const/16 v39, 0x2

    aput-object v38, v37, v39

    .line 689
    invoke-static/range {v36 .. v37}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    .line 691
    .restart local v34    # "tmp":Ljava/lang/String;
    const-string/jumbo v36, "MemoryUsage"

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    if-eqz p0, :cond_22

    .line 693
    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, "\r\n"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 695
    .end local v20    # "key":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    .end local v34    # "tmp":Ljava/lang/String;
    :cond_23
    invoke-interface/range {v30 .. v30}, Ljava/util/Map;->clear()V

    .line 697
    .end local v22    # "key$iterator":Ljava/util/Iterator;
    :cond_24
    const-string/jumbo v36, "MemoryUsage"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "ION-Breakdown : "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    if-eqz p0, :cond_6

    .line 699
    const-string/jumbo v36, "ION-Breakdown : "

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, "\r\n"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_2
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    goto/16 :goto_9

    .end local v33    # "split":[Ljava/lang/String;
    :cond_25
    move-object/from16 v17, v18

    .line 706
    .end local v18    # "input":Ljava/io/BufferedReader;
    .end local v23    # "line":Ljava/lang/String;
    .end local v30    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    :cond_26
    if-eqz v17, :cond_9

    .line 708
    :try_start_19
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_9

    goto/16 :goto_b

    .line 709
    :catch_9
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto/16 :goto_b

    .end local v8    # "e":Ljava/io/IOException;
    .end local v10    # "file":Ljava/io/File;
    .restart local v9    # "e":Ljava/lang/Exception;
    :catch_a
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto/16 :goto_b

    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_b
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto/16 :goto_16

    .line 735
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v10    # "file":Ljava/io/File;
    .restart local v12    # "indexClient":I
    .restart local v13    # "indexPid":I
    .restart local v14    # "indexSize":I
    .restart local v15    # "indexlDbgName":I
    .restart local v18    # "input":Ljava/io/BufferedReader;
    .restart local v19    # "isMatch":Z
    .restart local v23    # "line":Ljava/lang/String;
    .restart local v30    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .restart local v34    # "tmp":Ljava/lang/String;
    :cond_27
    if-nez v19, :cond_29

    :try_start_1a
    const-string/jumbo v36, "          client("

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_29

    .line 736
    const-string/jumbo v36, "client("

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v36

    add-int/lit8 v12, v36, 0x7

    .line 737
    const-string/jumbo v36, "dbg_name)"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v36

    add-int/lit8 v15, v36, 0x9

    .line 738
    const-string/jumbo v36, "pid"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v36

    add-int/lit8 v13, v36, 0x3

    .line 739
    const-string/jumbo v36, "size"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v36

    add-int/lit8 v14, v36, 0x4

    .line 740
    if-lez v12, :cond_28

    if-lez v15, :cond_28

    if-lez v13, :cond_28

    if-lez v14, :cond_28

    .line 741
    const/16 v19, 0x1

    .line 743
    :cond_28
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "ion_mm_heap : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, "address"

    const-string/jumbo v38, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 744
    const-string/jumbo v36, "MemoryUsage"

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    if-eqz p0, :cond_a

    .line 746
    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, "\r\n"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_c
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    goto/16 :goto_c

    .line 791
    .end local v23    # "line":Ljava/lang/String;
    :catch_c
    move-exception v9

    .restart local v9    # "e":Ljava/lang/Exception;
    move-object/from16 v17, v18

    .line 793
    .end local v10    # "file":Ljava/io/File;
    .end local v12    # "indexClient":I
    .end local v13    # "indexPid":I
    .end local v14    # "indexSize":I
    .end local v15    # "indexlDbgName":I
    .end local v18    # "input":Ljava/io/BufferedReader;
    .end local v19    # "isMatch":Z
    .end local v30    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .end local v34    # "tmp":Ljava/lang/String;
    :goto_18
    if-eqz v17, :cond_d

    .line 795
    :try_start_1b
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_d

    goto/16 :goto_e

    .line 796
    :catch_d
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto/16 :goto_e

    .line 750
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v10    # "file":Ljava/io/File;
    .restart local v12    # "indexClient":I
    .restart local v13    # "indexPid":I
    .restart local v14    # "indexSize":I
    .restart local v15    # "indexlDbgName":I
    .restart local v18    # "input":Ljava/io/BufferedReader;
    .restart local v19    # "isMatch":Z
    .restart local v23    # "line":Ljava/lang/String;
    .restart local v30    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .restart local v34    # "tmp":Ljava/lang/String;
    :cond_29
    if-eqz v19, :cond_2c

    :try_start_1c
    const-string/jumbo v36, "("

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v36

    add-int/lit8 v36, v36, 0x1

    move/from16 v0, v36

    if-ne v0, v12, :cond_2c

    const-string/jumbo v36, ")"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    move-result v36

    add-int/lit8 v36, v36, 0x1

    move/from16 v0, v36

    if-ne v0, v15, :cond_2c

    .line 752
    add-int/lit8 v36, v13, 0x1

    :try_start_1d
    move-object/from16 v0, v23

    move/from16 v1, v36

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    .line 753
    .restart local v24    # "memory":J
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v37, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v37

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 754
    add-int/lit8 v37, v12, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v37

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v37

    .line 753
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 755
    .restart local v7    # "client":Ljava/lang/String;
    add-int/lit8 v36, v15, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v36

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 756
    .local v27, "pid":I
    new-instance v29, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-direct {v0, v7, v1}, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;-><init>(Ljava/lang/String;I)V

    .line 757
    .restart local v29    # "process":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_2b

    .line 758
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Long;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    add-long v36, v36, v24

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_e
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    goto/16 :goto_c

    .line 762
    .end local v7    # "client":Ljava/lang/String;
    .end local v24    # "memory":J
    .end local v27    # "pid":I
    .end local v29    # "process":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    :catch_e
    move-exception v9

    .line 763
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_1e
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "ion_mm_heap : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 764
    const-string/jumbo v36, "MemoryUsage"

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    if-eqz p0, :cond_a

    .line 766
    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, "\r\n"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_c
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    goto/16 :goto_c

    .line 792
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v23    # "line":Ljava/lang/String;
    :catchall_3
    move-exception v36

    move-object/from16 v17, v18

    .line 793
    .end local v10    # "file":Ljava/io/File;
    .end local v12    # "indexClient":I
    .end local v13    # "indexPid":I
    .end local v14    # "indexSize":I
    .end local v15    # "indexlDbgName":I
    .end local v18    # "input":Ljava/io/BufferedReader;
    .end local v19    # "isMatch":Z
    .end local v30    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .end local v34    # "tmp":Ljava/lang/String;
    :goto_19
    if-eqz v17, :cond_2a

    .line 795
    :try_start_1f
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_10

    .line 792
    :cond_2a
    :goto_1a
    throw v36

    .line 760
    .restart local v7    # "client":Ljava/lang/String;
    .restart local v10    # "file":Ljava/io/File;
    .restart local v12    # "indexClient":I
    .restart local v13    # "indexPid":I
    .restart local v14    # "indexSize":I
    .restart local v15    # "indexlDbgName":I
    .restart local v18    # "input":Ljava/io/BufferedReader;
    .restart local v19    # "isMatch":Z
    .restart local v23    # "line":Ljava/lang/String;
    .restart local v24    # "memory":J
    .restart local v27    # "pid":I
    .restart local v29    # "process":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    .restart local v30    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .restart local v34    # "tmp":Ljava/lang/String;
    :cond_2b
    :try_start_20
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_e
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    goto/16 :goto_c

    .line 768
    .end local v7    # "client":Ljava/lang/String;
    .end local v24    # "memory":J
    .end local v27    # "pid":I
    .end local v29    # "process":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    :cond_2c
    :try_start_21
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v37, "--------------------------------"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_30

    .line 769
    invoke-interface/range {v30 .. v30}, Ljava/util/Map;->isEmpty()Z

    move-result v36

    if-nez v36, :cond_2f

    .line 770
    invoke-interface/range {v30 .. v30}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .restart local v22    # "key$iterator":Ljava/util/Iterator;
    :cond_2d
    :goto_1b
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_2e

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;

    .line 771
    .restart local v20    # "key":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    const-string/jumbo v36, "ion_mm_heap : %1$34s %2$16d  %3$15d"

    const/16 v37, 0x3

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;->getProcessName()Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x0

    aput-object v38, v37, v39

    .line 772
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;->getPid()I

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    const/16 v39, 0x1

    aput-object v38, v37, v39

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    const/16 v39, 0x2

    aput-object v38, v37, v39

    .line 771
    invoke-static/range {v36 .. v37}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    .line 773
    const-string/jumbo v36, "MemoryUsage"

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    if-eqz p0, :cond_2d

    .line 775
    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, "\r\n"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 777
    .end local v20    # "key":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    :cond_2e
    invoke-interface/range {v30 .. v30}, Ljava/util/Map;->clear()V

    .line 779
    .end local v22    # "key$iterator":Ljava/util/Iterator;
    :cond_2f
    move-object/from16 v34, v23

    .line 780
    const-string/jumbo v36, "MemoryUsage"

    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    if-eqz p0, :cond_a

    .line 782
    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, "\r\n"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 784
    :cond_30
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "ion_mm_heap : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 785
    const-string/jumbo v36, "MemoryUsage"

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    if-eqz p0, :cond_a

    .line 787
    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, "\r\n"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_c
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    goto/16 :goto_c

    .line 796
    .end local v12    # "indexClient":I
    .end local v13    # "indexPid":I
    .end local v14    # "indexSize":I
    .end local v15    # "indexlDbgName":I
    .end local v18    # "input":Ljava/io/BufferedReader;
    .end local v19    # "isMatch":Z
    .end local v23    # "line":Ljava/lang/String;
    .end local v30    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .end local v34    # "tmp":Ljava/lang/String;
    :catch_f
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto/16 :goto_e

    .end local v8    # "e":Ljava/io/IOException;
    .end local v10    # "file":Ljava/io/File;
    :catch_10
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto/16 :goto_1a

    .line 792
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v36

    goto/16 :goto_19

    .line 791
    :catch_11
    move-exception v9

    .restart local v9    # "e":Ljava/lang/Exception;
    goto/16 :goto_18

    .line 705
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_5
    move-exception v36

    goto/16 :goto_15

    .line 703
    :catch_12
    move-exception v9

    .restart local v9    # "e":Ljava/lang/Exception;
    goto/16 :goto_a

    .line 652
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_6
    move-exception v36

    goto/16 :goto_12

    .line 650
    :catch_13
    move-exception v9

    .restart local v9    # "e":Ljava/lang/Exception;
    goto/16 :goto_7

    .line 578
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v26    # "path":Ljava/lang/String;
    .restart local v18    # "input":Ljava/io/BufferedReader;
    :catchall_7
    move-exception v36

    move-object/from16 v17, v18

    .end local v18    # "input":Ljava/io/BufferedReader;
    .restart local v17    # "input":Ljava/io/BufferedReader;
    goto/16 :goto_10

    .line 576
    .local v17, "input":Ljava/io/BufferedReader;
    .local v23, "line":Ljava/lang/String;
    :catch_14
    move-exception v9

    .restart local v9    # "e":Ljava/lang/Exception;
    goto/16 :goto_3

    .end local v9    # "e":Ljava/lang/Exception;
    .end local v17    # "input":Ljava/io/BufferedReader;
    .restart local v10    # "file":Ljava/io/File;
    .restart local v12    # "indexClient":I
    .restart local v13    # "indexPid":I
    .restart local v14    # "indexSize":I
    .restart local v15    # "indexlDbgName":I
    .restart local v18    # "input":Ljava/io/BufferedReader;
    .restart local v19    # "isMatch":Z
    .local v23, "line":Ljava/lang/String;
    .restart local v26    # "path":Ljava/lang/String;
    .restart local v30    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .restart local v34    # "tmp":Ljava/lang/String;
    :cond_31
    move-object/from16 v17, v18

    .end local v18    # "input":Ljava/io/BufferedReader;
    .local v17, "input":Ljava/io/BufferedReader;
    goto/16 :goto_d
.end method

.method static dumpMtkGraphic(Z)Ljava/lang/String;
    .locals 2
    .param p0, "isLauncherKilled"    # Z

    .prologue
    .line 263
    sget v0, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 264
    invoke-static {p0}, Lcom/android/server/am/MemoryLogUtilAm;->dumpMtkPvrGraphic(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 265
    :cond_0
    sget v0, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 266
    invoke-static {p0}, Lcom/android/server/am/MemoryLogUtilAm;->dumpMtkMaliGraphic(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 269
    :cond_1
    const-string/jumbo v0, ""

    return-object v0
.end method

.method static dumpMtkMaliGraphic(Z)Ljava/lang/String;
    .locals 24
    .param p0, "isLauncherKilled"    # Z

    .prologue
    .line 855
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 856
    .local v15, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v16, ""

    .line 857
    .local v16, "tmp":Ljava/lang/String;
    const/4 v2, 0x0

    .line 859
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_0
    const-string/jumbo v11, "/d/mali/mem/"

    .line 860
    .local v11, "parentPath":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 861
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 862
    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10

    .line 863
    .local v10, "list":[Ljava/lang/String;
    const-string/jumbo v16, "MTK_Mali       Tid          HW Accel  Process"

    .line 864
    const-string/jumbo v17, "MemoryUsage"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    if-eqz p0, :cond_0

    .line 866
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v20, "\r\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 867
    :cond_0
    const/4 v7, 0x0

    .local v7, "i":I
    move-object v3, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v3, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    array-length v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_9

    .line 868
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v20, "/"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v20, v10, v7

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 869
    .local v12, "procPath":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 870
    .local v13, "process":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result v17

    if-eqz v17, :cond_8

    .line 872
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/FileReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 874
    .end local v3    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_3
    const-string/jumbo v14, ""

    .line 875
    .local v14, "processName":Ljava/lang/String;
    const-wide/16 v18, 0x0

    .line 876
    .local v18, "value":J
    const/4 v8, 0x0

    .line 877
    .local v8, "isFoundProcessName":Z
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, "line":Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 878
    if-nez v8, :cond_2

    .line 879
    const-string/jumbo v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 880
    const/4 v8, 0x1

    .line 882
    :cond_2
    const-string/jumbo v17, "Total allocated memory:"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 883
    const-string/jumbo v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 887
    :cond_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "MTK_Mali  %1$8s  %2$16d  "

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    aget-object v22, v10, v7

    const/16 v23, 0x0

    aput-object v22, v21, v23

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    const/16 v23, 0x1

    aput-object v22, v21, v23

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 888
    const-string/jumbo v17, "MemoryUsage"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    if-eqz p0, :cond_4

    .line 890
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v20, "\r\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 893
    :cond_4
    if-eqz v2, :cond_5

    .line 895
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 867
    .end local v8    # "isFoundProcessName":Z
    .end local v9    # "line":Ljava/lang/String;
    .end local v14    # "processName":Ljava/lang/String;
    .end local v18    # "value":J
    :cond_5
    :goto_1
    add-int/lit8 v7, v7, 0x1

    move-object v3, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 896
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "isFoundProcessName":Z
    .restart local v9    # "line":Ljava/lang/String;
    .restart local v14    # "processName":Ljava/lang/String;
    .restart local v18    # "value":J
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    goto :goto_1

    .line 891
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v8    # "isFoundProcessName":Z
    .end local v9    # "line":Ljava/lang/String;
    .end local v14    # "processName":Ljava/lang/String;
    .end local v18    # "value":J
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    move-object v2, v3

    .line 893
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :goto_2
    if-eqz v2, :cond_5

    .line 895
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 896
    :catch_2
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 892
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v17

    move-object v2, v3

    .line 893
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :goto_3
    if-eqz v2, :cond_6

    .line 895
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 892
    :cond_6
    :goto_4
    :try_start_7
    throw v17
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 903
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "i":I
    .end local v10    # "list":[Ljava/lang/String;
    .end local v11    # "parentPath":Ljava/lang/String;
    .end local v12    # "procPath":Ljava/lang/String;
    .end local v13    # "process":Ljava/io/File;
    :catch_3
    move-exception v5

    .line 905
    :cond_7
    :goto_5
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    return-object v17

    .line 896
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v7    # "i":I
    .restart local v10    # "list":[Ljava/lang/String;
    .restart local v11    # "parentPath":Ljava/lang/String;
    .restart local v12    # "procPath":Ljava/lang/String;
    .restart local v13    # "process":Ljava/io/File;
    :catch_4
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 903
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v12    # "procPath":Ljava/lang/String;
    .end local v13    # "process":Ljava/io/File;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catch_5
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_5

    .line 892
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v12    # "procPath":Ljava/lang/String;
    .restart local v13    # "process":Ljava/io/File;
    :catchall_1
    move-exception v17

    goto :goto_3

    .line 891
    :catch_6
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    goto :goto_2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :cond_8
    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v12    # "procPath":Ljava/lang/String;
    .end local v13    # "process":Ljava/io/File;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :cond_9
    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_5
.end method

.method static dumpMtkPvrGraphic(Z)Ljava/lang/String;
    .locals 22
    .param p0, "isLauncherKilled"    # Z

    .prologue
    .line 803
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 804
    .local v14, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 805
    .local v2, "br":Ljava/io/BufferedReader;
    const-string/jumbo v15, ""

    .line 807
    .local v15, "tmp":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v11, "/d/pvr/pid/"

    .line 808
    .local v11, "parentPath":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 809
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 810
    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10

    .line 811
    .local v10, "list":[Ljava/lang/String;
    const-string/jumbo v15, "MTK_Pvr       Pid          HW Accel"

    .line 812
    const-string/jumbo v18, "MemoryUsage"

    move-object/from16 v0, v18

    invoke-static {v0, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    if-eqz p0, :cond_0

    .line 814
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\r\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 815
    :cond_0
    const/4 v8, 0x0

    .local v8, "i":I
    move-object v3, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v3, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    array-length v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_9

    .line 816
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v19, v10, v8

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 817
    .local v12, "procPath":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 818
    .local v13, "process":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 819
    new-instance v7, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "/process_stats"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 820
    .local v7, "gl":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result v18

    if-eqz v18, :cond_8

    .line 822
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/FileReader;

    move-object/from16 v0, v18

    invoke-direct {v0, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 824
    .end local v3    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    const-wide/16 v16, 0x0

    .line 825
    .local v16, "value":J
    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, "line":Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 826
    const-string/jumbo v18, "MemoryUsageKMalloc "

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 827
    const-string/jumbo v18, "MemoryUsageAllocPTMemoryUMA "

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    .line 826
    if-nez v18, :cond_2

    .line 828
    const-string/jumbo v18, "MemoryUsageAllocGPUMemUMA "

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    .line 826
    if-eqz v18, :cond_1

    .line 829
    :cond_2
    const-string/jumbo v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    add-long v16, v16, v18

    goto :goto_1

    .line 832
    :cond_3
    const-string/jumbo v18, "MTK_Pvr  %1$8s  %2$16d"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    aget-object v20, v10, v8

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const/16 v21, 0x1

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 833
    const-string/jumbo v18, "MemoryUsage"

    move-object/from16 v0, v18

    invoke-static {v0, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    if-eqz p0, :cond_4

    .line 835
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\r\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 838
    :cond_4
    if-eqz v2, :cond_5

    .line 840
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 815
    .end local v7    # "gl":Ljava/io/File;
    .end local v9    # "line":Ljava/lang/String;
    .end local v16    # "value":J
    :cond_5
    :goto_2
    add-int/lit8 v8, v8, 0x1

    move-object v3, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 841
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "gl":Ljava/io/File;
    .restart local v9    # "line":Ljava/lang/String;
    .restart local v16    # "value":J
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    goto :goto_2

    .line 836
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "line":Ljava/lang/String;
    .end local v16    # "value":J
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    move-object v2, v3

    .line 838
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :goto_3
    if-eqz v2, :cond_5

    .line 840
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 841
    :catch_2
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 837
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v18

    move-object v2, v3

    .line 838
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :goto_4
    if-eqz v2, :cond_6

    .line 840
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 837
    :cond_6
    :goto_5
    :try_start_7
    throw v18
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 849
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "gl":Ljava/io/File;
    .end local v8    # "i":I
    .end local v10    # "list":[Ljava/lang/String;
    .end local v11    # "parentPath":Ljava/lang/String;
    .end local v12    # "procPath":Ljava/lang/String;
    .end local v13    # "process":Ljava/io/File;
    :catch_3
    move-exception v5

    .line 851
    :cond_7
    :goto_6
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    return-object v18

    .line 841
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v7    # "gl":Ljava/io/File;
    .restart local v8    # "i":I
    .restart local v10    # "list":[Ljava/lang/String;
    .restart local v11    # "parentPath":Ljava/lang/String;
    .restart local v12    # "procPath":Ljava/lang/String;
    .restart local v13    # "process":Ljava/io/File;
    :catch_4
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 849
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "gl":Ljava/io/File;
    .end local v12    # "procPath":Ljava/lang/String;
    .end local v13    # "process":Ljava/io/File;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catch_5
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_6

    .line 837
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v7    # "gl":Ljava/io/File;
    .restart local v12    # "procPath":Ljava/lang/String;
    .restart local v13    # "process":Ljava/io/File;
    .restart local v16    # "value":J
    :catchall_1
    move-exception v18

    goto :goto_4

    .line 836
    :catch_6
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    goto :goto_3

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "gl":Ljava/io/File;
    .end local v16    # "value":J
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :cond_8
    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v12    # "procPath":Ljava/lang/String;
    .end local v13    # "process":Ljava/io/File;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :cond_9
    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_6
.end method

.method public static final native dumpProcessStats(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method private static getBuffers()J
    .locals 2

    .prologue
    .line 523
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sBuffers:J

    return-wide v0
.end method

.method private static getCached()J
    .locals 2

    .prologue
    .line 551
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sCached:J

    return-wide v0
.end method

.method public static final native getDetailRegionMemory(ILjava/lang/String;)[I
.end method

.method private static getFree()J
    .locals 2

    .prologue
    .line 547
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sFree:J

    return-wide v0
.end method

.method private static getKernelStack()J
    .locals 2

    .prologue
    .line 499
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sKernelStack:J

    return-wide v0
.end method

.method private static getPageTable()J
    .locals 2

    .prologue
    .line 503
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sPageTables:J

    return-wide v0
.end method

.method static getProcessNameFromPid(I)Ljava/lang/String;
    .locals 10
    .param p0, "pid"    # I

    .prologue
    .line 273
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "/proc/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/cmdline"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .local v4, "file":Ljava/io/File;
    const/4 v0, 0x0

    .line 275
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 278
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    const/16 v7, 0x32

    :try_start_1
    new-array v6, v7, [C

    .line 280
    .local v6, "temp":[C
    invoke-virtual {v1, v6}, Ljava/io/BufferedReader;->read([C)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 281
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    .line 282
    .local v5, "proc":Ljava/lang/String;
    const-string/jumbo v7, "MemoryUsage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Process name : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 287
    if-eqz v1, :cond_0

    .line 289
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 283
    :cond_0
    :goto_0
    return-object v5

    .line 290
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto :goto_0

    .line 287
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "proc":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    .line 289
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_1
    move-object v0, v1

    .line 294
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "temp":[C
    :cond_3
    :goto_2
    const-string/jumbo v7, ""

    return-object v7

    .line 290
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "temp":[C
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 285
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "temp":[C
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_2
    move-exception v3

    .line 287
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    if-eqz v0, :cond_3

    .line 289
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 290
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 286
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v7

    .line 287
    .end local v0    # "br":Ljava/io/BufferedReader;
    :goto_4
    if-eqz v0, :cond_4

    .line 289
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 286
    :cond_4
    :goto_5
    throw v7

    .line 290
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 286
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 285
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_5
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method public static final native getRegionMemory(ILjava/lang/String;)J
.end method

.method private static getSReclaimable()J
    .locals 2

    .prologue
    .line 535
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sSReclaimable:J

    return-wide v0
.end method

.method private static getSUnreclaim()J
    .locals 2

    .prologue
    .line 539
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sSUnreclaim:J

    return-wide v0
.end method

.method private static getShmem()J
    .locals 2

    .prologue
    .line 527
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sShmem:J

    return-wide v0
.end method

.method private static getSlab()J
    .locals 2

    .prologue
    .line 531
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sSlab:J

    return-wide v0
.end method

.method private static getSwapCached()J
    .locals 2

    .prologue
    .line 519
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sSwapCached:J

    return-wide v0
.end method

.method private static getSwapFree()J
    .locals 2

    .prologue
    .line 511
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sSwapFree:J

    return-wide v0
.end method

.method private static getSwapTotal()J
    .locals 2

    .prologue
    .line 507
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sSwapTotal:J

    return-wide v0
.end method

.method private static getTotal()J
    .locals 2

    .prologue
    .line 543
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sTotal:J

    return-wide v0
.end method

.method private static getValue(Ljava/lang/String;)J
    .locals 4
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    .line 492
    const-string/jumbo v1, "\\s+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "split":[Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 494
    .local v2, "value":J
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 495
    return-wide v2
.end method

.method private static getVmallocUsed()J
    .locals 2

    .prologue
    .line 555
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sVmallocUsed:J

    return-wide v0
.end method

.method private static getZramInUse()J
    .locals 2

    .prologue
    .line 515
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J

    return-wide v0
.end method

.method static init()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/sys/kernel/debug/nvmap/iovmm/clients"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    const/4 v1, 0x1

    sput v1, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    .line 65
    :goto_0
    return-void

    .line 70
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    const-string/jumbo v1, "/d/pvr/pid/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    const/4 v1, 0x4

    sput v1, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    goto :goto_0

    .line 74
    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    const-string/jumbo v1, "/d/mali/mem/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    const/4 v1, 0x5

    sput v1, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    goto :goto_0

    .line 78
    :cond_2
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    const-string/jumbo v1, "/system/lib/libbrcm_ril.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 80
    const/4 v1, 0x3

    sput v1, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    goto :goto_0

    .line 82
    :cond_3
    const/4 v1, 0x2

    sput v1, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    goto :goto_0
.end method

.method private static readExtraMemInfo()V
    .locals 16

    .prologue
    const-wide/16 v12, 0x0

    .line 324
    sput-wide v12, Lcom/android/server/am/MemoryLogUtilAm;->sKernelStack:J

    .line 325
    sput-wide v12, Lcom/android/server/am/MemoryLogUtilAm;->sPageTables:J

    .line 330
    sput-wide v12, Lcom/android/server/am/MemoryLogUtilAm;->sSwapTotal:J

    .line 331
    sput-wide v12, Lcom/android/server/am/MemoryLogUtilAm;->sSwapFree:J

    .line 332
    sput-wide v12, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J

    .line 333
    sput-wide v12, Lcom/android/server/am/MemoryLogUtilAm;->sSwapCached:J

    .line 334
    sput-wide v12, Lcom/android/server/am/MemoryLogUtilAm;->sBuffers:J

    .line 335
    sput-wide v12, Lcom/android/server/am/MemoryLogUtilAm;->sShmem:J

    .line 336
    sput-wide v12, Lcom/android/server/am/MemoryLogUtilAm;->sSlab:J

    .line 337
    sput-wide v12, Lcom/android/server/am/MemoryLogUtilAm;->sSReclaimable:J

    .line 338
    sput-wide v12, Lcom/android/server/am/MemoryLogUtilAm;->sSUnreclaim:J

    .line 339
    sput-wide v12, Lcom/android/server/am/MemoryLogUtilAm;->sTotal:J

    .line 340
    sput-wide v12, Lcom/android/server/am/MemoryLogUtilAm;->sFree:J

    .line 341
    sput-wide v12, Lcom/android/server/am/MemoryLogUtilAm;->sCached:J

    .line 342
    sput-wide v12, Lcom/android/server/am/MemoryLogUtilAm;->sVmallocUsed:J

    .line 344
    const/4 v2, 0x0

    .line 346
    .local v2, "count":I
    const/4 v0, 0x0

    .line 348
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    const-string/jumbo v10, "/proc/meminfo"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-eqz v7, :cond_e

    const/16 v9, 0xe

    if-ge v2, v9, :cond_e

    .line 350
    const-string/jumbo v9, "MemTotal:"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 351
    invoke-static {v7}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v10

    sput-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sTotal:J

    .line 352
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 353
    :cond_1
    const-string/jumbo v9, "MemFree:"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 354
    invoke-static {v7}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v10

    sput-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sFree:J

    .line 355
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 356
    :cond_2
    const-string/jumbo v9, "Buffers:"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 357
    invoke-static {v7}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v10

    sput-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sBuffers:J

    .line 358
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 359
    :cond_3
    const-string/jumbo v9, "Cached:"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 360
    invoke-static {v7}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v10

    sput-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sCached:J

    .line 361
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 362
    :cond_4
    const-string/jumbo v9, "KernelStack:"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 363
    invoke-static {v7}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v10

    sput-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sKernelStack:J

    .line 364
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 365
    :cond_5
    const-string/jumbo v9, "PageTables:"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 366
    invoke-static {v7}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v10

    sput-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sPageTables:J

    .line 367
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 368
    :cond_6
    const-string/jumbo v9, "SwapTotal:"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 369
    invoke-static {v7}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v10

    sput-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sSwapTotal:J

    .line 370
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 371
    :cond_7
    const-string/jumbo v9, "SwapFree:"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 372
    invoke-static {v7}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v10

    sput-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sSwapFree:J

    .line 373
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 374
    :cond_8
    const-string/jumbo v9, "ZramAlloc:"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 375
    invoke-static {v7}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v10

    sput-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J

    .line 376
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 377
    :cond_9
    const-string/jumbo v9, "SwapCached:"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 378
    invoke-static {v7}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v10

    sput-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sSwapCached:J

    .line 379
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 380
    :cond_a
    const-string/jumbo v9, "Shmem:"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 381
    invoke-static {v7}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v10

    sput-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sShmem:J

    .line 382
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 383
    :cond_b
    const-string/jumbo v9, "Slab:"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 384
    invoke-static {v7}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v10

    sput-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sSlab:J

    .line 385
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 386
    :cond_c
    const-string/jumbo v9, "SReclaimable:"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 387
    invoke-static {v7}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v10

    sput-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sSReclaimable:J

    .line 388
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 389
    :cond_d
    const-string/jumbo v9, "SUnreclaim:"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 390
    invoke-static {v7}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v10

    sput-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sSUnreclaim:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_22
    .catchall {:try_start_1 .. :try_end_1} :catchall_10

    .line 391
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 396
    :cond_e
    if-eqz v1, :cond_f

    .line 398
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_f
    :goto_1
    move-object v0, v1

    .line 402
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v7    # "line":Ljava/lang/String;
    :cond_10
    :goto_2
    const/4 v5, 0x0

    .line 403
    .local v5, "file":Ljava/io/File;
    sget-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J

    cmp-long v9, v10, v12

    if-nez v9, :cond_16

    .line 405
    :try_start_3
    new-instance v6, Ljava/io/File;

    const-string/jumbo v9, "/sys/block/zram0/mem_used_total"

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_20
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 406
    .end local v5    # "file":Ljava/io/File;
    .local v6, "file":Ljava/io/File;
    :try_start_4
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_19

    .line 407
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_21
    .catchall {:try_start_4 .. :try_end_4} :catchall_e

    .line 408
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "line":Ljava/lang/String;
    if-eqz v7, :cond_18

    .line 409
    sget-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v14, 0x400

    div-long/2addr v12, v14

    add-long/2addr v10, v12

    sput-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_f

    goto :goto_3

    .line 412
    .end local v7    # "line":Ljava/lang/String;
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .local v5, "file":Ljava/io/File;
    move-object v0, v1

    .line 414
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "file":Ljava/io/File;
    :goto_4
    if-eqz v0, :cond_11

    .line 416
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a

    :cond_11
    :goto_5
    move-object v6, v5

    .restart local v6    # "file":Ljava/io/File;
    move-object v1, v0

    .line 421
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :goto_6
    :try_start_7
    new-instance v5, Ljava/io/File;

    const-string/jumbo v9, "/sys/block/zram1/mem_used_total"

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1e
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 422
    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    :try_start_8
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 423
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1f
    .catchall {:try_start_8 .. :try_end_8} :catchall_c

    .line 424
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    :goto_7
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "line":Ljava/lang/String;
    if-eqz v7, :cond_1d

    .line 425
    sget-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v14, 0x400

    div-long/2addr v12, v14

    add-long/2addr v10, v12

    sput-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_d

    goto :goto_7

    .line 428
    .end local v7    # "line":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 430
    .restart local v4    # "e":Ljava/lang/Exception;
    :goto_8
    if-eqz v0, :cond_12

    .line 432
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_12
    :goto_9
    move-object v6, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    move-object v1, v0

    .line 437
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :try_start_b
    new-instance v5, Ljava/io/File;

    const-string/jumbo v9, "/sys/block/zram2/mem_used_total"

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1c
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 438
    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    :try_start_c
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 439
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1d
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    .line 440
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_a
    :try_start_d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "line":Ljava/lang/String;
    if-eqz v7, :cond_20

    .line 441
    sget-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v14, 0x400

    div-long/2addr v12, v14

    add-long/2addr v10, v12

    sput-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    goto :goto_a

    .line 444
    .end local v7    # "line":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 446
    .restart local v4    # "e":Ljava/lang/Exception;
    :goto_b
    if-eqz v0, :cond_13

    .line 448
    :try_start_e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_10

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_13
    :goto_c
    move-object v6, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    move-object v1, v0

    .line 453
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :try_start_f
    new-instance v5, Ljava/io/File;

    const-string/jumbo v9, "/sys/block/zram3/mem_used_total"

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1a
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 454
    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    :try_start_10
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_22

    .line 455
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1b
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 456
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_d
    :try_start_11
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "line":Ljava/lang/String;
    if-eqz v7, :cond_23

    .line 457
    sget-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v14, 0x400

    div-long/2addr v12, v14

    add-long/2addr v10, v12

    sput-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    goto :goto_d

    .line 460
    .end local v7    # "line":Ljava/lang/String;
    :catch_3
    move-exception v4

    .line 462
    .restart local v4    # "e":Ljava/lang/Exception;
    :goto_e
    if-eqz v0, :cond_14

    .line 464
    :try_start_12
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_13

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_14
    :goto_f
    move-object v6, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    move-object v1, v0

    .line 470
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :try_start_13
    new-instance v5, Ljava/io/File;

    const-string/jumbo v9, "/proc/vmallocinfo"

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_18
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 471
    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    :try_start_14
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_25

    .line 472
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_19
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 473
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_15
    :goto_10
    :try_start_15
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "line":Ljava/lang/String;
    if-eqz v7, :cond_26

    .line 474
    const-string/jumbo v9, "ioremap"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_15

    const-string/jumbo v9, "map_lowmem"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_15

    .line 476
    const-string/jumbo v9, "\\s+"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 477
    .local v8, "split":[Ljava/lang/String;
    sget-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sVmallocUsed:J

    const/4 v9, 0x1

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v14, 0x400

    div-long/2addr v12, v14

    add-long/2addr v10, v12

    sput-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sVmallocUsed:J
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    goto :goto_10

    .line 480
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "split":[Ljava/lang/String;
    :catch_4
    move-exception v4

    .line 482
    .restart local v4    # "e":Ljava/lang/Exception;
    :goto_11
    if-eqz v0, :cond_16

    .line 484
    :try_start_16
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_16

    .line 323
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "file":Ljava/io/File;
    :cond_16
    :goto_12
    return-void

    .line 399
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "line":Ljava/lang/String;
    :catch_5
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    goto/16 :goto_1

    .line 394
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v7    # "line":Ljava/lang/String;
    .local v0, "br":Ljava/io/BufferedReader;
    :catch_6
    move-exception v4

    .line 396
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "e":Ljava/lang/Exception;
    :goto_13
    if-eqz v0, :cond_10

    .line 398
    :try_start_17
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_7

    goto/16 :goto_2

    .line 399
    :catch_7
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto/16 :goto_2

    .line 395
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v9

    .line 396
    .end local v0    # "br":Ljava/io/BufferedReader;
    :goto_14
    if-eqz v0, :cond_17

    .line 398
    :try_start_18
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_8

    .line 395
    :cond_17
    :goto_15
    throw v9

    .line 399
    :catch_8
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_15

    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v7    # "line":Ljava/lang/String;
    :cond_18
    move-object v0, v1

    .line 414
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v7    # "line":Ljava/lang/String;
    :cond_19
    if-eqz v0, :cond_1a

    .line 416
    :try_start_19
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_9

    :cond_1a
    :goto_16
    move-object v1, v0

    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_6

    .line 417
    .end local v1    # "br":Ljava/io/BufferedReader;
    :catch_9
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_16

    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "file":Ljava/io/File;
    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_a
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto/16 :goto_5

    .line 413
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/Exception;
    .local v5, "file":Ljava/io/File;
    :catchall_1
    move-exception v9

    .line 414
    .end local v5    # "file":Ljava/io/File;
    :goto_17
    if-eqz v0, :cond_1b

    .line 416
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_b

    .line 413
    :cond_1b
    :goto_18
    throw v9

    .line 417
    :catch_b
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_18

    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .local v5, "file":Ljava/io/File;
    :cond_1c
    move-object v0, v1

    .line 430
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_1d
    if-eqz v0, :cond_12

    .line 432
    :try_start_1b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_c

    goto/16 :goto_9

    .line 433
    :catch_c
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto/16 :goto_9

    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_d
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto/16 :goto_9

    .line 429
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "file":Ljava/io/File;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "file":Ljava/io/File;
    :catchall_2
    move-exception v9

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v0, v1

    .line 430
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_19
    if-eqz v0, :cond_1e

    .line 432
    :try_start_1c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_e

    .line 429
    :cond_1e
    :goto_1a
    throw v9

    .line 433
    :catch_e
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_1a

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_1f
    move-object v0, v1

    .line 446
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_20
    if-eqz v0, :cond_13

    .line 448
    :try_start_1d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_f

    goto/16 :goto_c

    .line 449
    :catch_f
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto/16 :goto_c

    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_10
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto/16 :goto_c

    .line 445
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "file":Ljava/io/File;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "file":Ljava/io/File;
    :catchall_3
    move-exception v9

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v0, v1

    .line 446
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_1b
    if-eqz v0, :cond_21

    .line 448
    :try_start_1e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_11

    .line 445
    :cond_21
    :goto_1c
    throw v9

    .line 449
    :catch_11
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_1c

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_22
    move-object v0, v1

    .line 462
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_23
    if-eqz v0, :cond_14

    .line 464
    :try_start_1f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_12

    goto/16 :goto_f

    .line 465
    :catch_12
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto/16 :goto_f

    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_13
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto/16 :goto_f

    .line 461
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "file":Ljava/io/File;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "file":Ljava/io/File;
    :catchall_4
    move-exception v9

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v0, v1

    .line 462
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_1d
    if-eqz v0, :cond_24

    .line 464
    :try_start_20
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_14

    .line 461
    :cond_24
    :goto_1e
    throw v9

    .line 465
    :catch_14
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_1e

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_25
    move-object v0, v1

    .line 482
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_26
    if-eqz v0, :cond_16

    .line 484
    :try_start_21
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_15

    goto :goto_12

    .line 485
    :catch_15
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto/16 :goto_12

    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_16
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto/16 :goto_12

    .line 481
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "file":Ljava/io/File;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "file":Ljava/io/File;
    :catchall_5
    move-exception v9

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v0, v1

    .line 482
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_1f
    if-eqz v0, :cond_27

    .line 484
    :try_start_22
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_17

    .line 481
    :cond_27
    :goto_20
    throw v9

    .line 485
    :catch_17
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_20

    .line 481
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_6
    move-exception v9

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1f

    :catchall_7
    move-exception v9

    goto :goto_1f

    .line 480
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "file":Ljava/io/File;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "file":Ljava/io/File;
    :catch_18
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_11

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_19
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_11

    .line 461
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_8
    move-exception v9

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1d

    :catchall_9
    move-exception v9

    goto :goto_1d

    .line 460
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "file":Ljava/io/File;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "file":Ljava/io/File;
    :catch_1a
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_e

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_1b
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_e

    .line 445
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_a
    move-exception v9

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1b

    :catchall_b
    move-exception v9

    goto :goto_1b

    .line 444
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "file":Ljava/io/File;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "file":Ljava/io/File;
    :catch_1c
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_b

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_1d
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_b

    .line 429
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_c
    move-exception v9

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_19

    :catchall_d
    move-exception v9

    goto :goto_19

    .line 428
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "file":Ljava/io/File;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "file":Ljava/io/File;
    :catch_1e
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_8

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_1f
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_8

    .line 413
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    :catchall_e
    move-exception v9

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    goto/16 :goto_17

    .end local v5    # "file":Ljava/io/File;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "file":Ljava/io/File;
    :catchall_f
    move-exception v9

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_17

    .line 412
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v5, "file":Ljava/io/File;
    :catch_20
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    goto/16 :goto_4

    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    :catch_21
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .local v5, "file":Ljava/io/File;
    goto/16 :goto_4

    .line 395
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "file":Ljava/io/File;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_10
    move-exception v9

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_14

    .line 394
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_22
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_13
.end method
