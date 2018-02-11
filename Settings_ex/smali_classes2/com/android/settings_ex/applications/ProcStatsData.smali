.class public Lcom/android/settings_ex/applications/ProcStatsData;
.super Ljava/lang/Object;
.source "ProcStatsData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/ProcStatsData$1;,
        Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ProcStatsManager"

.field static final sEntryCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_ex/applications/ProcStatsEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static sStatsXfer:Lcom/android/internal/app/procstats/ProcessStats;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDuration:J

.field private mMemInfo:Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;

.field private mMemStates:[I

.field private mPm:Landroid/content/pm/PackageManager;

.field private mProcessStats:Lcom/android/internal/app/procstats/IProcessStats;

.field private mStates:[I

.field private mStats:Lcom/android/internal/app/procstats/ProcessStats;

.field private mUseUss:Z

.field private memTotalTime:J

.field private pkgEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/ProcStatsPackageEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 453
    new-instance v0, Lcom/android/settings_ex/applications/ProcStatsData$1;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/ProcStatsData$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/ProcStatsData;->sEntryCompare:Ljava/util/Comparator;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useXfer"    # Z

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mContext:Landroid/content/Context;

    .line 80
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mPm:Landroid/content/pm/PackageManager;

    .line 83
    const-string/jumbo v0, "procstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 82
    invoke-static {v0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/procstats/IProcessStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mProcessStats:Lcom/android/internal/app/procstats/IProcessStats;

    .line 84
    sget-object v0, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mMemStates:[I

    .line 85
    sget-object v0, Lcom/android/internal/app/procstats/ProcessStats;->BACKGROUND_PROC_STATES:[I

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mStates:[I

    .line 86
    if-eqz p2, :cond_0

    .line 87
    sget-object v0, Lcom/android/settings_ex/applications/ProcStatsData;->sStatsXfer:Lcom/android/internal/app/procstats/ProcessStats;

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 76
    :cond_0
    return-void
.end method

.method private createOsEntry(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)Lcom/android/settings_ex/applications/ProcStatsPackageEntry;
    .locals 12
    .param p1, "bgTotals"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;
    .param p2, "runTotals"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;
    .param p3, "totalMem"    # Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;
    .param p4, "baseCacheRam"    # J

    .prologue
    .line 235
    new-instance v10, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    const-string/jumbo v1, "os"

    iget-wide v2, p0, Lcom/android/settings_ex/applications/ProcStatsData;->memTotalTime:J

    invoke-direct {v10, v1, v2, v3}, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;-><init>(Ljava/lang/String;J)V

    .line 237
    .local v10, "osPkg":Lcom/android/settings_ex/applications/ProcStatsPackageEntry;
    iget-wide v2, p3, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 238
    new-instance v0, Lcom/android/settings_ex/applications/ProcStatsEntry;

    const-string/jumbo v1, "os"

    .line 239
    iget-object v2, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0bc2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings_ex/applications/ProcStatsData;->memTotalTime:J

    .line 240
    iget-wide v6, p3, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    iget-wide v8, p0, Lcom/android/settings_ex/applications/ProcStatsData;->memTotalTime:J

    long-to-double v8, v8

    div-double/2addr v6, v8

    double-to-long v6, v6

    iget-wide v8, p0, Lcom/android/settings_ex/applications/ProcStatsData;->memTotalTime:J

    .line 238
    const/4 v2, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/android/settings_ex/applications/ProcStatsEntry;-><init>(Ljava/lang/String;ILjava/lang/String;JJJ)V

    .line 241
    .local v0, "osEntry":Lcom/android/settings_ex/applications/ProcStatsEntry;
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    sget-object v5, Lcom/android/settings_ex/applications/ProcStatsData;->sEntryCompare:Ljava/util/Comparator;

    iget-boolean v6, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mUseUss:Z

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/applications/ProcStatsEntry;->evaluateTargetPackage(Landroid/content/pm/PackageManager;Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V

    .line 242
    invoke-virtual {v10, v0}, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->addEntry(Lcom/android/settings_ex/applications/ProcStatsEntry;)V

    .line 244
    .end local v0    # "osEntry":Lcom/android/settings_ex/applications/ProcStatsEntry;
    :cond_0
    iget-wide v2, p3, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    .line 245
    new-instance v0, Lcom/android/settings_ex/applications/ProcStatsEntry;

    const-string/jumbo v1, "os"

    .line 246
    iget-object v2, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0bc3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings_ex/applications/ProcStatsData;->memTotalTime:J

    .line 247
    iget-wide v6, p3, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    iget-wide v8, p0, Lcom/android/settings_ex/applications/ProcStatsData;->memTotalTime:J

    long-to-double v8, v8

    div-double/2addr v6, v8

    double-to-long v6, v6

    iget-wide v8, p0, Lcom/android/settings_ex/applications/ProcStatsData;->memTotalTime:J

    .line 245
    const/4 v2, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/android/settings_ex/applications/ProcStatsEntry;-><init>(Ljava/lang/String;ILjava/lang/String;JJJ)V

    .line 248
    .restart local v0    # "osEntry":Lcom/android/settings_ex/applications/ProcStatsEntry;
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    sget-object v5, Lcom/android/settings_ex/applications/ProcStatsData;->sEntryCompare:Ljava/util/Comparator;

    iget-boolean v6, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mUseUss:Z

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/applications/ProcStatsEntry;->evaluateTargetPackage(Landroid/content/pm/PackageManager;Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V

    .line 249
    invoke-virtual {v10, v0}, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->addEntry(Lcom/android/settings_ex/applications/ProcStatsEntry;)V

    .line 260
    .end local v0    # "osEntry":Lcom/android/settings_ex/applications/ProcStatsEntry;
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-lez v1, :cond_2

    .line 261
    new-instance v0, Lcom/android/settings_ex/applications/ProcStatsEntry;

    const-string/jumbo v1, "os"

    .line 262
    iget-object v2, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0bc5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings_ex/applications/ProcStatsData;->memTotalTime:J

    .line 263
    const-wide/16 v6, 0x400

    div-long v6, p4, v6

    iget-wide v8, p0, Lcom/android/settings_ex/applications/ProcStatsData;->memTotalTime:J

    .line 261
    const/4 v2, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/android/settings_ex/applications/ProcStatsEntry;-><init>(Ljava/lang/String;ILjava/lang/String;JJJ)V

    .line 264
    .restart local v0    # "osEntry":Lcom/android/settings_ex/applications/ProcStatsEntry;
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    sget-object v5, Lcom/android/settings_ex/applications/ProcStatsData;->sEntryCompare:Ljava/util/Comparator;

    iget-boolean v6, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mUseUss:Z

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/applications/ProcStatsEntry;->evaluateTargetPackage(Landroid/content/pm/PackageManager;Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V

    .line 265
    invoke-virtual {v10, v0}, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->addEntry(Lcom/android/settings_ex/applications/ProcStatsEntry;)V

    .line 267
    .end local v0    # "osEntry":Lcom/android/settings_ex/applications/ProcStatsEntry;
    :cond_2
    return-object v10
.end method

.method private createPkgMap(Ljava/util/ArrayList;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;)V
    .locals 10
    .param p2, "bgTotals"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;
    .param p3, "runTotals"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/ProcStatsEntry;",
            ">;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;",
            ")V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "procEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ProcStatsEntry;>;"
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    .line 180
    .local v9, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/settings_ex/applications/ProcStatsPackageEntry;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v7, v1, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_1

    .line 181
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/ProcStatsEntry;

    .line 182
    .local v0, "proc":Lcom/android/settings_ex/applications/ProcStatsEntry;
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    sget-object v5, Lcom/android/settings_ex/applications/ProcStatsData;->sEntryCompare:Ljava/util/Comparator;

    iget-boolean v6, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mUseUss:Z

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/applications/ProcStatsEntry;->evaluateTargetPackage(Landroid/content/pm/PackageManager;Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V

    .line 183
    iget-object v1, v0, Lcom/android/settings_ex/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    invoke-virtual {v9, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    .line 184
    .local v8, "pkg":Lcom/android/settings_ex/applications/ProcStatsPackageEntry;
    if-nez v8, :cond_0

    .line 185
    new-instance v8, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    .end local v8    # "pkg":Lcom/android/settings_ex/applications/ProcStatsPackageEntry;
    iget-object v1, v0, Lcom/android/settings_ex/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/settings_ex/applications/ProcStatsData;->memTotalTime:J

    invoke-direct {v8, v1, v2, v3}, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;-><init>(Ljava/lang/String;J)V

    .line 186
    .restart local v8    # "pkg":Lcom/android/settings_ex/applications/ProcStatsPackageEntry;
    iget-object v1, v0, Lcom/android/settings_ex/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    invoke-virtual {v9, v1, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcStatsData;->pkgEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_0
    invoke-virtual {v8, v0}, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->addEntry(Lcom/android/settings_ex/applications/ProcStatsEntry;)V

    .line 180
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 177
    .end local v0    # "proc":Lcom/android/settings_ex/applications/ProcStatsEntry;
    .end local v8    # "pkg":Lcom/android/settings_ex/applications/ProcStatsPackageEntry;
    :cond_1
    return-void
.end method

.method private distributeZRam(D)V
    .locals 29
    .param p1, "zramWeight"    # D

    .prologue
    .line 199
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings_ex/applications/ProcStatsData;->memTotalTime:J

    long-to-double v4, v4

    div-double v4, p1, v4

    double-to-long v0, v4

    move-wide/from16 v26, v0

    .line 200
    .local v26, "zramMem":J
    const-wide/16 v24, 0x0

    .line 201
    .local v24, "totalTime":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/applications/ProcStatsData;->pkgEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v18, v3, -0x1

    .local v18, "i":I
    :goto_0
    if-ltz v18, :cond_1

    .line 202
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/applications/ProcStatsData;->pkgEntries:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    .line 203
    .local v17, "entry":Lcom/android/settings_ex/applications/ProcStatsPackageEntry;
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v19, v3, -0x1

    .local v19, "j":I
    :goto_1
    if-ltz v19, :cond_0

    .line 204
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/settings_ex/applications/ProcStatsEntry;

    .line 205
    .local v22, "proc":Lcom/android/settings_ex/applications/ProcStatsEntry;
    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/settings_ex/applications/ProcStatsEntry;->mRunDuration:J

    add-long v24, v24, v4

    .line 203
    add-int/lit8 v19, v19, -0x1

    goto :goto_1

    .line 201
    .end local v22    # "proc":Lcom/android/settings_ex/applications/ProcStatsEntry;
    :cond_0
    add-int/lit8 v18, v18, -0x1

    goto :goto_0

    .line 208
    .end local v17    # "entry":Lcom/android/settings_ex/applications/ProcStatsPackageEntry;
    .end local v19    # "j":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/applications/ProcStatsData;->pkgEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v18, v3, -0x1

    :goto_2
    if-ltz v18, :cond_5

    const-wide/16 v4, 0x0

    cmp-long v3, v24, v4

    if-lez v3, :cond_5

    .line 209
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/applications/ProcStatsData;->pkgEntries:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    .line 210
    .restart local v17    # "entry":Lcom/android/settings_ex/applications/ProcStatsPackageEntry;
    const-wide/16 v20, 0x0

    .line 211
    .local v20, "pkgRunTime":J
    const-wide/16 v6, 0x0

    .line 212
    .local v6, "maxRunTime":J
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v19, v3, -0x1

    .restart local v19    # "j":I
    :goto_3
    if-ltz v19, :cond_3

    .line 213
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/settings_ex/applications/ProcStatsEntry;

    .line 214
    .restart local v22    # "proc":Lcom/android/settings_ex/applications/ProcStatsEntry;
    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/settings_ex/applications/ProcStatsEntry;->mRunDuration:J

    add-long v20, v20, v4

    .line 215
    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/settings_ex/applications/ProcStatsEntry;->mRunDuration:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 216
    move-object/from16 v0, v22

    iget-wide v6, v0, Lcom/android/settings_ex/applications/ProcStatsEntry;->mRunDuration:J

    .line 212
    :cond_2
    add-int/lit8 v19, v19, -0x1

    goto :goto_3

    .line 219
    .end local v22    # "proc":Lcom/android/settings_ex/applications/ProcStatsEntry;
    :cond_3
    mul-long v4, v26, v20

    div-long v8, v4, v24

    .line 220
    .local v8, "pkgZRam":J
    const-wide/16 v4, 0x0

    cmp-long v3, v8, v4

    if-lez v3, :cond_4

    .line 221
    sub-long v26, v26, v8

    .line 222
    sub-long v24, v24, v20

    .line 223
    new-instance v2, Lcom/android/settings_ex/applications/ProcStatsEntry;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    .line 224
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mContext:Landroid/content/Context;

    const v5, 0x7f0e0bc4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 225
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/settings_ex/applications/ProcStatsData;->memTotalTime:J

    .line 223
    const/4 v4, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/android/settings_ex/applications/ProcStatsEntry;-><init>(Ljava/lang/String;ILjava/lang/String;JJJ)V

    .line 226
    .local v2, "procEntry":Lcom/android/settings_ex/applications/ProcStatsEntry;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    sget-object v15, Lcom/android/settings_ex/applications/ProcStatsData;->sEntryCompare:Ljava/util/Comparator;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mUseUss:Z

    move/from16 v16, v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v10, v2

    invoke-virtual/range {v10 .. v16}, Lcom/android/settings_ex/applications/ProcStatsEntry;->evaluateTargetPackage(Landroid/content/pm/PackageManager;Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V

    .line 227
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->addEntry(Lcom/android/settings_ex/applications/ProcStatsEntry;)V

    .line 208
    .end local v2    # "procEntry":Lcom/android/settings_ex/applications/ProcStatsEntry;
    :cond_4
    add-int/lit8 v18, v18, -0x1

    goto/16 :goto_2

    .line 193
    .end local v6    # "maxRunTime":J
    .end local v8    # "pkgZRam":J
    .end local v17    # "entry":Lcom/android/settings_ex/applications/ProcStatsPackageEntry;
    .end local v19    # "j":I
    .end local v20    # "pkgRunTime":J
    :cond_5
    return-void
.end method

.method private getProcs(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;)Ljava/util/ArrayList;
    .locals 25
    .param p1, "bgTotals"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;
    .param p2, "runTotals"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/ProcStatsEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v19, "procEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ProcStatsEntry;>;"
    new-instance v10, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v10}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 276
    .local v10, "entriesMap":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/settings_ex/applications/ProcStatsEntry;>;"
    const/4 v12, 0x0

    .local v12, "ipkg":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .local v8, "N":I
    :goto_0
    if-ge v12, v8, :cond_6

    .line 277
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/util/SparseArray;

    .line 279
    .local v18, "pkgUids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    const/4 v15, 0x0

    .local v15, "iu":I
    :goto_1
    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v15, v4, :cond_5

    .line 280
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/SparseArray;

    .line 281
    .local v24, "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    const/16 v16, 0x0

    .local v16, "iv":I
    :goto_2
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v16

    if-ge v0, v4, :cond_4

    .line 282
    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 283
    .local v22, "st":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    const/4 v13, 0x0

    .local v13, "iproc":I
    :goto_3
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v13, v4, :cond_3

    .line 284
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v4, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/app/procstats/ProcessState;

    .line 285
    .local v17, "pkgProc":Lcom/android/internal/app/procstats/ProcessState;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v5

    .line 286
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/app/procstats/ProcessState;->getUid()I

    move-result v6

    .line 285
    invoke-virtual {v4, v5, v6}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/procstats/ProcessState;

    .line 287
    .local v3, "proc":Lcom/android/internal/app/procstats/ProcessState;
    if-nez v3, :cond_1

    .line 288
    const-string/jumbo v4, "ProcStatsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No process found for pkg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 289
    const-string/jumbo v6, "/"

    .line 288
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 289
    move-object/from16 v0, v22

    iget v6, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    .line 288
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 289
    const-string/jumbo v6, " proc name "

    .line 288
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 289
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v6

    .line 288
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 292
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessState;->getUid()I

    move-result v5

    invoke-virtual {v10, v4, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/ProcStatsEntry;

    .line 293
    .local v2, "ent":Lcom/android/settings_ex/applications/ProcStatsEntry;
    if-nez v2, :cond_2

    .line 294
    new-instance v2, Lcom/android/settings_ex/applications/ProcStatsEntry;

    .end local v2    # "ent":Lcom/android/settings_ex/applications/ProcStatsEntry;
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    .line 295
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mUseUss:Z

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 294
    invoke-direct/range {v2 .. v7}, Lcom/android/settings_ex/applications/ProcStatsEntry;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Z)V

    .line 296
    .restart local v2    # "ent":Lcom/android/settings_ex/applications/ProcStatsEntry;
    iget-wide v4, v2, Lcom/android/settings_ex/applications/ProcStatsEntry;->mRunWeight:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 303
    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessState;->getUid()I

    move-result v5

    invoke-virtual {v10, v4, v5, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 304
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 307
    :cond_2
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/settings_ex/applications/ProcStatsEntry;->addPackage(Ljava/lang/String;)V

    goto :goto_4

    .line 281
    .end local v2    # "ent":Lcom/android/settings_ex/applications/ProcStatsEntry;
    .end local v3    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v17    # "pkgProc":Lcom/android/internal/app/procstats/ProcessState;
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 279
    .end local v13    # "iproc":I
    .end local v22    # "st":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 276
    .end local v16    # "iv":I
    .end local v24    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 317
    .end local v15    # "iu":I
    .end local v18    # "pkgUids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    :cond_6
    const/4 v11, 0x0

    .local v11, "ip":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v8

    :goto_5
    if-ge v11, v8, :cond_c

    .line 318
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/util/SparseArray;

    .line 320
    .local v23, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    const/4 v15, 0x0

    .restart local v15    # "iu":I
    :goto_6
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v15, v4, :cond_b

    .line 321
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/SparseArray;

    .line 322
    .restart local v24    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    const/16 v16, 0x0

    .restart local v16    # "iv":I
    :goto_7
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v16

    if-ge v0, v4, :cond_a

    .line 323
    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 324
    .local v20, "ps":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    const/4 v14, 0x0

    .local v14, "is":I
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v9

    .local v9, "NS":I
    :goto_8
    if-ge v14, v9, :cond_9

    .line 325
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/app/procstats/ServiceState;

    .line 326
    .local v21, "ss":Lcom/android/internal/app/procstats/ServiceState;
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 327
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v4

    .line 328
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 327
    invoke-virtual {v10, v4, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/ProcStatsEntry;

    .line 329
    .restart local v2    # "ent":Lcom/android/settings_ex/applications/ProcStatsEntry;
    if-eqz v2, :cond_8

    .line 333
    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/applications/ProcStatsEntry;->addService(Lcom/android/internal/app/procstats/ServiceState;)V

    .line 324
    .end local v2    # "ent":Lcom/android/settings_ex/applications/ProcStatsEntry;
    :cond_7
    :goto_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 335
    .restart local v2    # "ent":Lcom/android/settings_ex/applications/ProcStatsEntry;
    :cond_8
    const-string/jumbo v4, "ProcStatsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 336
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 335
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 336
    const-string/jumbo v6, " for service "

    .line 335
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 336
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/app/procstats/ServiceState;->getName()Ljava/lang/String;

    move-result-object v6

    .line 335
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 322
    .end local v2    # "ent":Lcom/android/settings_ex/applications/ProcStatsEntry;
    .end local v21    # "ss":Lcom/android/internal/app/procstats/ServiceState;
    :cond_9
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_7

    .line 320
    .end local v9    # "NS":I
    .end local v14    # "is":I
    .end local v20    # "ps":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_6

    .line 317
    .end local v16    # "iv":I
    .end local v24    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    .line 344
    .end local v15    # "iu":I
    .end local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    :cond_c
    return-object v19
.end method

.method private load()V
    .locals 8

    .prologue
    .line 349
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mProcessStats:Lcom/android/internal/app/procstats/IProcessStats;

    iget-wide v6, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mDuration:J

    invoke-interface {v4, v6, v7}, Lcom/android/internal/app/procstats/IProcessStats;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 350
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v4, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    iput-object v4, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 351
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 352
    .local v2, "is":Ljava/io/InputStream;
    iget-object v4, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v4, v2}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 354
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 357
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 358
    const-string/jumbo v4, "ProcStatsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failure reading process stats: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v6, v6, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 347
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_1
    return-void

    .line 355
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    .line 360
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v0

    .line 361
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "ProcStatsManager"

    const-string/jumbo v5, "RemoteException:"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mDuration:J

    return-wide v0
.end method

.method public getElapsedTime()J
    .locals 4

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-object v2, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v2, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/applications/ProcStatsPackageEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcStatsData;->pkgEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMemInfo()Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mMemInfo:Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;

    return-object v0
.end method

.method public getMemState()I
    .locals 2

    .prologue
    .line 110
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    .line 111
    .local v0, "factor":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 112
    const/4 v1, 0x0

    return v1

    .line 114
    :cond_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 115
    add-int/lit8 v0, v0, -0x4

    .line 117
    :cond_1
    return v0
.end method

.method public refreshStats(Z)V
    .locals 18
    .param p1, "forceLoad"    # Z

    .prologue
    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    .line 145
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/applications/ProcStatsData;->load()V

    .line 148
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/applications/ProcStatsData;->pkgEntries:Ljava/util/ArrayList;

    .line 150
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 152
    .local v8, "now":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v4, v2, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v5, v2, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v6, v2, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 152
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v2 .. v9}, Lcom/android/internal/app/procstats/DumpUtils;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/settings_ex/applications/ProcStatsData;->memTotalTime:J

    .line 155
    new-instance v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;

    .line 156
    sget-object v2, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mMemStates:[I

    .line 155
    invoke-direct {v13, v2, v3}, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;-><init>([I[I)V

    .line 157
    .local v13, "totalMem":Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v2, v13, v8, v9}, Lcom/android/internal/app/procstats/ProcessStats;->computeTotalMemoryUse(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    .line 159
    new-instance v11, Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings_ex/applications/ProcStatsData;->memTotalTime:J

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v16}, Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;-><init>(Landroid/content/Context;Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;JLcom/android/settings_ex/applications/ProcStatsData$MemInfo;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mMemInfo:Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;

    .line 161
    new-instance v11, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;

    .line 162
    sget-object v2, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mMemStates:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mStates:[I

    .line 161
    invoke-direct {v11, v2, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 163
    .local v11, "bgTotals":Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;
    new-instance v12, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;

    .line 164
    sget-object v2, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mMemStates:[I

    sget-object v4, Lcom/android/internal/app/procstats/ProcessStats;->NON_CACHED_PROC_STATES:[I

    .line 163
    invoke-direct {v12, v2, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 166
    .local v12, "runTotals":Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/settings_ex/applications/ProcStatsData;->getProcs(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11, v12}, Lcom/android/settings_ex/applications/ProcStatsData;->createPkgMap(Ljava/util/ArrayList;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;)V

    .line 167
    iget-wide v2, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    iget-boolean v2, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->hasSwappedOutPss:Z

    if-eqz v2, :cond_3

    .line 172
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mMemInfo:Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;

    iget-wide v14, v2, Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;->baseCacheRam:J

    move-object/from16 v10, p0

    .line 171
    invoke-direct/range {v10 .. v15}, Lcom/android/settings_ex/applications/ProcStatsData;->createOsEntry(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    move-result-object v17

    .line 173
    .local v17, "osPkg":Lcom/android/settings_ex/applications/ProcStatsPackageEntry;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/applications/ProcStatsData;->pkgEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    return-void

    .line 168
    .end local v17    # "osPkg":Lcom/android/settings_ex/applications/ProcStatsPackageEntry;
    :cond_3
    iget-wide v2, v13, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/settings_ex/applications/ProcStatsData;->distributeZRam(D)V

    goto :goto_0
.end method

.method public setDuration(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mDuration:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 130
    iput-wide p1, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mDuration:J

    .line 131
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ProcStatsData;->refreshStats(Z)V

    .line 128
    :cond_0
    return-void
.end method

.method public setMemStates([I)V
    .locals 1
    .param p1, "memStates"    # [I

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mMemStates:[I

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ProcStatsData;->refreshStats(Z)V

    .line 99
    return-void
.end method

.method public setStats([I)V
    .locals 1
    .param p1, "stats"    # [I

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mStates:[I

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ProcStatsData;->refreshStats(Z)V

    .line 104
    return-void
.end method

.method public setTotalTime(I)V
    .locals 2
    .param p1, "totalTime"    # I

    .prologue
    .line 92
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/settings_ex/applications/ProcStatsData;->memTotalTime:J

    .line 91
    return-void
.end method

.method public xferStats()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    sput-object v0, Lcom/android/settings_ex/applications/ProcStatsData;->sStatsXfer:Lcom/android/internal/app/procstats/ProcessStats;

    .line 95
    return-void
.end method
