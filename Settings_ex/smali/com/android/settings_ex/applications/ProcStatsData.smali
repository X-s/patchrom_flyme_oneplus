.class public Lcom/android/settings_ex/applications/ProcStatsData;
.super Ljava/lang/Object;
.source "ProcStatsData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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

.field private static sStatsXfer:Lcom/android/internal/app/ProcessStats;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDuration:J

.field private mMemInfo:Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;

.field private mMemStates:[I

.field private mPm:Landroid/content/pm/PackageManager;

.field private mProcessStats:Lcom/android/internal/app/IProcessStats;

.field private mStates:[I

.field private mStats:Lcom/android/internal/app/ProcessStats;

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
    .line 400
    new-instance v0, Lcom/android/settings_ex/applications/ProcStatsData$1;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/ProcStatsData$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/ProcStatsData;->sEntryCompare:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useXfer"    # Z

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mPm:Landroid/content/pm/PackageManager;

    .line 75
    const-string v0, "procstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IProcessStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IProcessStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mProcessStats:Lcom/android/internal/app/IProcessStats;

    .line 77
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mMemStates:[I

    .line 78
    sget-object v0, Lcom/android/internal/app/ProcessStats;->BACKGROUND_PROC_STATES:[I

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mStates:[I

    .line 79
    if-eqz p2, :cond_0

    .line 80
    sget-object v0, Lcom/android/settings_ex/applications/ProcStatsData;->sStatsXfer:Lcom/android/internal/app/ProcessStats;

    iput-object v0, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    .line 82
    :cond_0
    return-void
.end method

.method private createOsEntry(Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;J)Lcom/android/settings_ex/applications/ProcStatsPackageEntry;
    .locals 12
    .param p1, "bgTotals"    # Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    .param p2, "runTotals"    # Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    .param p3, "totalMem"    # Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;
    .param p4, "baseCacheRam"    # J

    .prologue
    .line 186
    new-instance v8, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    const-string v1, "os"

    iget-wide v2, p0, Lcom/android/settings_ex/applications/ProcStatsData;->memTotalTime:J

    invoke-direct {v8, v1, v2, v3}, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;-><init>(Ljava/lang/String;J)V

    .line 188
    .local v8, "osPkg":Lcom/android/settings_ex/applications/ProcStatsPackageEntry;
    iget-wide v2, p3, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 189
    new-instance v0, Lcom/android/settings_ex/applications/ProcStatsEntry;

    const-string v1, "os"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0989

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings_ex/applications/ProcStatsData;->memTotalTime:J

    iget-wide v6, p3, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    iget-wide v10, p0, Lcom/android/settings_ex/applications/ProcStatsData;->memTotalTime:J

    long-to-double v10, v10

    div-double/2addr v6, v10

    double-to-long v6, v6

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/applications/ProcStatsEntry;-><init>(Ljava/lang/String;ILjava/lang/String;JJ)V

    .line 192
    .local v0, "osEntry":Lcom/android/settings_ex/applications/ProcStatsEntry;
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    sget-object v5, Lcom/android/settings_ex/applications/ProcStatsData;->sEntryCompare:Ljava/util/Comparator;

    iget-boolean v6, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mUseUss:Z

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/applications/ProcStatsEntry;->evaluateTargetPackage(Landroid/content/pm/PackageManager;Lcom/android/internal/app/ProcessStats;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V

    .line 193
    invoke-virtual {v8, v0}, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->addEntry(Lcom/android/settings_ex/applications/ProcStatsEntry;)V

    .line 195
    .end local v0    # "osEntry":Lcom/android/settings_ex/applications/ProcStatsEntry;
    :cond_0
    iget-wide v2, p3, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    .line 196
    new-instance v0, Lcom/android/settings_ex/applications/ProcStatsEntry;

    const-string v1, "os"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mContext:Landroid/content/Context;

    const v4, 0x7f0c098a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings_ex/applications/ProcStatsData;->memTotalTime:J

    iget-wide v6, p3, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    iget-wide v10, p0, Lcom/android/settings_ex/applications/ProcStatsData;->memTotalTime:J

    long-to-double v10, v10

    div-double/2addr v6, v10

    double-to-long v6, v6

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/applications/ProcStatsEntry;-><init>(Ljava/lang/String;ILjava/lang/String;JJ)V

    .line 199
    .restart local v0    # "osEntry":Lcom/android/settings_ex/applications/ProcStatsEntry;
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    sget-object v5, Lcom/android/settings_ex/applications/ProcStatsData;->sEntryCompare:Ljava/util/Comparator;

    iget-boolean v6, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mUseUss:Z

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/applications/ProcStatsEntry;->evaluateTargetPackage(Landroid/content/pm/PackageManager;Lcom/android/internal/app/ProcessStats;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V

    .line 200
    invoke-virtual {v8, v0}, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->addEntry(Lcom/android/settings_ex/applications/ProcStatsEntry;)V

    .line 202
    .end local v0    # "osEntry":Lcom/android/settings_ex/applications/ProcStatsEntry;
    :cond_1
    iget-wide v2, p3, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_2

    .line 203
    new-instance v0, Lcom/android/settings_ex/applications/ProcStatsEntry;

    const-string v1, "os"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mContext:Landroid/content/Context;

    const v4, 0x7f0c098b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings_ex/applications/ProcStatsData;->memTotalTime:J

    iget-wide v6, p3, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    iget-wide v10, p0, Lcom/android/settings_ex/applications/ProcStatsData;->memTotalTime:J

    long-to-double v10, v10

    div-double/2addr v6, v10

    double-to-long v6, v6

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/applications/ProcStatsEntry;-><init>(Ljava/lang/String;ILjava/lang/String;JJ)V

    .line 206
    .restart local v0    # "osEntry":Lcom/android/settings_ex/applications/ProcStatsEntry;
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    sget-object v5, Lcom/android/settings_ex/applications/ProcStatsData;->sEntryCompare:Ljava/util/Comparator;

    iget-boolean v6, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mUseUss:Z

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/applications/ProcStatsEntry;->evaluateTargetPackage(Landroid/content/pm/PackageManager;Lcom/android/internal/app/ProcessStats;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V

    .line 207
    invoke-virtual {v8, v0}, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->addEntry(Lcom/android/settings_ex/applications/ProcStatsEntry;)V

    .line 209
    .end local v0    # "osEntry":Lcom/android/settings_ex/applications/ProcStatsEntry;
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-lez v1, :cond_3

    .line 210
    new-instance v0, Lcom/android/settings_ex/applications/ProcStatsEntry;

    const-string v1, "os"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mContext:Landroid/content/Context;

    const v4, 0x7f0c098c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings_ex/applications/ProcStatsData;->memTotalTime:J

    const-wide/16 v6, 0x400

    div-long v6, p4, v6

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/applications/ProcStatsEntry;-><init>(Ljava/lang/String;ILjava/lang/String;JJ)V

    .line 213
    .restart local v0    # "osEntry":Lcom/android/settings_ex/applications/ProcStatsEntry;
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    sget-object v5, Lcom/android/settings_ex/applications/ProcStatsData;->sEntryCompare:Ljava/util/Comparator;

    iget-boolean v6, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mUseUss:Z

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/applications/ProcStatsEntry;->evaluateTargetPackage(Landroid/content/pm/PackageManager;Lcom/android/internal/app/ProcessStats;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V

    .line 214
    invoke-virtual {v8, v0}, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->addEntry(Lcom/android/settings_ex/applications/ProcStatsEntry;)V

    .line 216
    .end local v0    # "osEntry":Lcom/android/settings_ex/applications/ProcStatsEntry;
    :cond_3
    return-object v8
.end method

.method private createPkgMap(Ljava/util/ArrayList;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;)V
    .locals 10
    .param p2, "bgTotals"    # Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    .param p3, "runTotals"    # Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/ProcStatsEntry;",
            ">;",
            "Lcom/android/internal/app/ProcessStats$ProcessDataCollection;",
            "Lcom/android/internal/app/ProcessStats$ProcessDataCollection;",
            ")V"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "procEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ProcStatsEntry;>;"
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    .line 170
    .local v9, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/settings_ex/applications/ProcStatsPackageEntry;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v7, v1, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_1

    .line 171
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/ProcStatsEntry;

    .line 172
    .local v0, "proc":Lcom/android/settings_ex/applications/ProcStatsEntry;
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    sget-object v5, Lcom/android/settings_ex/applications/ProcStatsData;->sEntryCompare:Ljava/util/Comparator;

    iget-boolean v6, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mUseUss:Z

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/applications/ProcStatsEntry;->evaluateTargetPackage(Landroid/content/pm/PackageManager;Lcom/android/internal/app/ProcessStats;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V

    .line 173
    iget-object v1, v0, Lcom/android/settings_ex/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    invoke-virtual {v9, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    .line 174
    .local v8, "pkg":Lcom/android/settings_ex/applications/ProcStatsPackageEntry;
    if-nez v8, :cond_0

    .line 175
    new-instance v8, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    .end local v8    # "pkg":Lcom/android/settings_ex/applications/ProcStatsPackageEntry;
    iget-object v1, v0, Lcom/android/settings_ex/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/settings_ex/applications/ProcStatsData;->memTotalTime:J

    invoke-direct {v8, v1, v2, v3}, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;-><init>(Ljava/lang/String;J)V

    .line 176
    .restart local v8    # "pkg":Lcom/android/settings_ex/applications/ProcStatsPackageEntry;
    iget-object v1, v0, Lcom/android/settings_ex/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    invoke-virtual {v9, v1, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcStatsData;->pkgEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_0
    invoke-virtual {v8, v0}, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->addEntry(Lcom/android/settings_ex/applications/ProcStatsEntry;)V

    .line 170
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 181
    .end local v0    # "proc":Lcom/android/settings_ex/applications/ProcStatsEntry;
    .end local v8    # "pkg":Lcom/android/settings_ex/applications/ProcStatsPackageEntry;
    :cond_1
    return-void
.end method

.method private getProcs(Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;)Ljava/util/ArrayList;
    .locals 25
    .param p1, "bgTotals"    # Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    .param p2, "runTotals"    # Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/ProcessStats$ProcessDataCollection;",
            "Lcom/android/internal/app/ProcessStats$ProcessDataCollection;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/ProcStatsEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v19, "procEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ProcStatsEntry;>;"
    new-instance v10, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v10}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 225
    .local v10, "entriesMap":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/settings_ex/applications/ProcStatsEntry;>;"
    const/4 v12, 0x0

    .local v12, "ipkg":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .local v8, "N":I
    :goto_0
    if-ge v12, v8, :cond_6

    .line 226
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/util/SparseArray;

    .line 228
    .local v18, "pkgUids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    const/4 v15, 0x0

    .local v15, "iu":I
    :goto_1
    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v15, v4, :cond_5

    .line 229
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/SparseArray;

    .line 230
    .local v24, "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    const/16 v16, 0x0

    .local v16, "iv":I
    :goto_2
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v16

    if-ge v0, v4, :cond_4

    .line 231
    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 232
    .local v22, "st":Lcom/android/internal/app/ProcessStats$PackageState;
    const/4 v13, 0x0

    .local v13, "iproc":I
    :goto_3
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v13, v4, :cond_3

    .line 233
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v4, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 234
    .local v17, "pkgProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 236
    .local v3, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v3, :cond_1

    .line 237
    const-string v4, "ProcStatsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No process found for pkg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget v6, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " proc name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 241
    :cond_1
    iget-object v4, v3, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    iget v5, v3, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {v10, v4, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/ProcStatsEntry;

    .line 242
    .local v2, "ent":Lcom/android/settings_ex/applications/ProcStatsEntry;
    if-nez v2, :cond_2

    .line 243
    new-instance v2, Lcom/android/settings_ex/applications/ProcStatsEntry;

    .end local v2    # "ent":Lcom/android/settings_ex/applications/ProcStatsEntry;
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mUseUss:Z

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/settings_ex/applications/ProcStatsEntry;-><init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Z)V

    .line 245
    .restart local v2    # "ent":Lcom/android/settings_ex/applications/ProcStatsEntry;
    iget-wide v4, v2, Lcom/android/settings_ex/applications/ProcStatsEntry;->mRunWeight:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 252
    iget-object v4, v3, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    iget v5, v3, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {v10, v4, v5, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 253
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 256
    :cond_2
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/settings_ex/applications/ProcStatsEntry;->addPackage(Ljava/lang/String;)V

    goto :goto_4

    .line 230
    .end local v2    # "ent":Lcom/android/settings_ex/applications/ProcStatsEntry;
    .end local v3    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v17    # "pkgProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 228
    .end local v13    # "iproc":I
    .end local v22    # "st":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 225
    .end local v16    # "iv":I
    .end local v24    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 266
    .end local v15    # "iu":I
    .end local v18    # "pkgUids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    :cond_6
    const/4 v11, 0x0

    .local v11, "ip":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v8

    :goto_5
    if-ge v11, v8, :cond_c

    .line 267
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/util/SparseArray;

    .line 269
    .local v23, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    const/4 v15, 0x0

    .restart local v15    # "iu":I
    :goto_6
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v15, v4, :cond_b

    .line 270
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/SparseArray;

    .line 271
    .restart local v24    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    const/16 v16, 0x0

    .restart local v16    # "iv":I
    :goto_7
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v16

    if-ge v0, v4, :cond_a

    .line 272
    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 273
    .local v20, "ps":Lcom/android/internal/app/ProcessStats$PackageState;
    const/4 v14, 0x0

    .local v14, "is":I
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v9

    .local v9, "NS":I
    :goto_8
    if-ge v14, v9, :cond_9

    .line 274
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 275
    .local v21, "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 276
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v10, v4, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/ProcStatsEntry;

    .line 278
    .restart local v2    # "ent":Lcom/android/settings_ex/applications/ProcStatsEntry;
    if-eqz v2, :cond_8

    .line 282
    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/applications/ProcStatsEntry;->addService(Lcom/android/internal/app/ProcessStats$ServiceState;)V

    .line 273
    .end local v2    # "ent":Lcom/android/settings_ex/applications/ProcStatsEntry;
    :cond_7
    :goto_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 284
    .restart local v2    # "ent":Lcom/android/settings_ex/applications/ProcStatsEntry;
    :cond_8
    const-string v4, "ProcStatsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 271
    .end local v2    # "ent":Lcom/android/settings_ex/applications/ProcStatsEntry;
    .end local v21    # "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_9
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_7

    .line 269
    .end local v9    # "NS":I
    .end local v14    # "is":I
    .end local v20    # "ps":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_6

    .line 266
    .end local v16    # "iv":I
    .end local v24    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    .line 293
    .end local v15    # "iu":I
    .end local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    :cond_c
    return-object v19
.end method

.method private load()V
    .locals 6

    .prologue
    .line 298
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mProcessStats:Lcom/android/internal/app/IProcessStats;

    iget-wide v4, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mDuration:J

    invoke-interface {v3, v4, v5}, Lcom/android/internal/app/IProcessStats;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 299
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v3, Lcom/android/internal/app/ProcessStats;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/internal/app/ProcessStats;-><init>(Z)V

    iput-object v3, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    .line 300
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 301
    .local v1, "is":Ljava/io/InputStream;
    iget-object v3, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/ProcessStats;->read(Ljava/io/InputStream;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 306
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v3, v3, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 307
    const-string v3, "ProcStatsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure reading process stats: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v5, v5, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 312
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_1
    return-void

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ProcStatsManager"

    const-string v4, "RemoteException:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 304
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mDuration:J

    return-wide v0
.end method

.method public getElapsedTime()J
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    iget-object v2, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-wide v2, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

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
    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcStatsData;->pkgEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMemInfo()Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mMemInfo:Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;

    return-object v0
.end method

.method public getMemState()I
    .locals 2

    .prologue
    .line 103
    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    iget v0, v1, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    .line 104
    .local v0, "factor":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 105
    const/4 v1, 0x0

    .line 110
    :goto_0
    return v1

    .line 107
    :cond_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 108
    add-int/lit8 v0, v0, -0x4

    :cond_1
    move v1, v0

    .line 110
    goto :goto_0
.end method

.method public refreshStats(Z)V
    .locals 18
    .param p1, "forceLoad"    # Z

    .prologue
    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    .line 138
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/applications/ProcStatsData;->load()V

    .line 141
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/applications/ProcStatsData;->pkgEntries:Ljava/util/ArrayList;

    .line 143
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 145
    .local v8, "now":J
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    iget v5, v5, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-wide v6, v6, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    invoke-static/range {v2 .. v9}, Lcom/android/internal/app/ProcessStats;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/settings_ex/applications/ProcStatsData;->memTotalTime:J

    .line 148
    new-instance v13, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;

    sget-object v2, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mMemStates:[I

    invoke-direct {v13, v2, v3}, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;-><init>([I[I)V

    .line 150
    .local v13, "totalMem":Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v2, v13, v8, v9}, Lcom/android/internal/app/ProcessStats;->computeTotalMemoryUse(Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;J)V

    .line 152
    new-instance v11, Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings_ex/applications/ProcStatsData;->memTotalTime:J

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v16}, Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;-><init>(Landroid/content/Context;Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;JLcom/android/settings_ex/applications/ProcStatsData$1;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mMemInfo:Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;

    .line 154
    new-instance v11, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;

    sget-object v2, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mMemStates:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mStates:[I

    invoke-direct {v11, v2, v3, v4}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 156
    .local v11, "bgTotals":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    new-instance v12, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;

    sget-object v2, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mMemStates:[I

    sget-object v4, Lcom/android/internal/app/ProcessStats;->NON_CACHED_PROC_STATES:[I

    invoke-direct {v12, v2, v3, v4}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 159
    .local v12, "runTotals":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/settings_ex/applications/ProcStatsData;->getProcs(Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11, v12}, Lcom/android/settings_ex/applications/ProcStatsData;->createPkgMap(Ljava/util/ArrayList;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/applications/ProcStatsData;->mMemInfo:Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;

    iget-wide v14, v2, Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;->baseCacheRam:J

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/settings_ex/applications/ProcStatsData;->createOsEntry(Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;J)Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    move-result-object v17

    .line 163
    .local v17, "osPkg":Lcom/android/settings_ex/applications/ProcStatsPackageEntry;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/applications/ProcStatsData;->pkgEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method

.method public setDuration(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mDuration:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 123
    iput-wide p1, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mDuration:J

    .line 124
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ProcStatsData;->refreshStats(Z)V

    .line 126
    :cond_0
    return-void
.end method

.method public setMemStates([I)V
    .locals 1
    .param p1, "memStates"    # [I

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mMemStates:[I

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ProcStatsData;->refreshStats(Z)V

    .line 95
    return-void
.end method

.method public setStats([I)V
    .locals 1
    .param p1, "stats"    # [I

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mStates:[I

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ProcStatsData;->refreshStats(Z)V

    .line 100
    return-void
.end method

.method public setTotalTime(I)V
    .locals 2
    .param p1, "totalTime"    # I

    .prologue
    .line 85
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/settings_ex/applications/ProcStatsData;->memTotalTime:J

    .line 86
    return-void
.end method

.method public xferStats()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcStatsData;->mStats:Lcom/android/internal/app/ProcessStats;

    sput-object v0, Lcom/android/settings_ex/applications/ProcStatsData;->sStatsXfer:Lcom/android/internal/app/ProcessStats;

    .line 90
    return-void
.end method
