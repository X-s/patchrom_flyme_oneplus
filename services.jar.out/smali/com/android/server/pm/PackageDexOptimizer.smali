.class final Lcom/android/server/pm/PackageDexOptimizer;
.super Ljava/lang/Object;
.source "PackageDexOptimizer.java"


# static fields
.field static final DEX_OPT_DEFERRED:I = 0x2

.field static final DEX_OPT_FAILED:I = -0x1

.field static final DEX_OPT_PERFORMED:I = 0x1

.field static final DEX_OPT_SKIPPED:I = 0x0

.field static final OAT_DIR_NAME:Ljava/lang/String; = "oat"

.field private static final TAG:Ljava/lang/String; = "PackageManager.DexOptimizer"


# instance fields
.field private mDeferredDexOpt:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation
.end field

.field private final mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private volatile mSystemReady:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 3
    .param p1, "packageManagerService"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 61
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 63
    .local v0, "powerManager":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "*dexopt*"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 64
    return-void
.end method

.method private createOatDirIfSupported(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "dexInstructionSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 223
    invoke-static {p1}, Lcom/android/server/pm/PackageDexOptimizer;->isReserveApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-object v2

    .line 228
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->canHaveOatDir()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    new-instance v0, Ljava/io/File;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, "codePath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    invoke-static {v0}, Lcom/android/server/pm/PackageDexOptimizer;->getOatDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 234
    .local v1, "oatDir":Ljava/io/File;
    iget-object v2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/android/server/pm/Installer;->createOatDir(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method static getOatDir(Ljava/io/File;)Ljava/io/File;
    .locals 2
    .param p0, "codePath"    # Ljava/io/File;

    .prologue
    .line 242
    new-instance v0, Ljava/io/File;

    const-string v1, "oat"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static isReserveApp(Landroid/content/pm/PackageParser$Package;)Z
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 288
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/system/reserve"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performDexOptLI(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;ZZZLandroid/util/ArraySet;)I
    .locals 26
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "targetInstructionSets"    # [Ljava/lang/String;
    .param p3, "forceDex"    # Z
    .param p4, "defer"    # Z
    .param p5, "bootComplete"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "[",
            "Ljava/lang/String;",
            "ZZZ",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 100
    .local p6, "done":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz p2, :cond_2

    move-object/from16 v4, p2

    .line 103
    .local v4, "instructionSets":[Ljava/lang/String;
    :goto_0
    if-eqz p6, :cond_1

    .line 104
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 105
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 106
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move-object/from16 v2, p0

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOptLibsLI(Ljava/util/ArrayList;[Ljava/lang/String;ZZZLandroid/util/ArraySet;)V

    .line 109
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 110
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    move-object/from16 v2, p0

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOptLibsLI(Ljava/util/ArrayList;[Ljava/lang/String;ZZZLandroid/util/ArraySet;)V

    .line 115
    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_3

    .line 116
    const/4 v2, 0x0

    .line 204
    :goto_1
    return v2

    .line 100
    .end local v4    # "instructionSets":[Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 119
    .restart local v4    # "instructionSets":[Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_4

    const/4 v12, 0x1

    .line 120
    .local v12, "vmSafeMode":Z
    :goto_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    const/4 v13, 0x1

    .line 122
    .local v13, "debuggable":Z
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$Package;->getAllCodePathsExcludingResourceOnly()Ljava/util/List;

    move-result-object v23

    .line 123
    .local v23, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v24, 0x0

    .line 128
    .local v24, "performedDexOpt":Z
    invoke-static {v4}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 129
    .local v17, "dexCodeInstructionSets":[Ljava/lang/String;
    move-object/from16 v16, v17

    .local v16, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    move/from16 v20, v19

    .end local v19    # "i$":I
    .local v20, "i$":I
    :goto_4
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_f

    aget-object v10, v16, v20

    .line 130
    .local v10, "dexCodeInstructionSet":Ljava/lang/String;
    if-nez p3, :cond_6

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mDexOptPerformed:Landroid/util/ArraySet;

    invoke-virtual {v2, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 129
    .end local v20    # "i$":I
    :goto_5
    add-int/lit8 v19, v20, 0x1

    .restart local v19    # "i$":I
    move/from16 v20, v19

    .end local v19    # "i$":I
    .restart local v20    # "i$":I
    goto :goto_4

    .line 119
    .end local v10    # "dexCodeInstructionSet":Ljava/lang/String;
    .end local v12    # "vmSafeMode":Z
    .end local v13    # "debuggable":Z
    .end local v16    # "arr$":[Ljava/lang/String;
    .end local v17    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v20    # "i$":I
    .end local v22    # "len$":I
    .end local v23    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "performedDexOpt":Z
    :cond_4
    const/4 v12, 0x0

    goto :goto_2

    .line 120
    .restart local v12    # "vmSafeMode":Z
    :cond_5
    const/4 v13, 0x0

    goto :goto_3

    .line 134
    .restart local v10    # "dexCodeInstructionSet":Ljava/lang/String;
    .restart local v13    # "debuggable":Z
    .restart local v16    # "arr$":[Ljava/lang/String;
    .restart local v17    # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v20    # "i$":I
    .restart local v22    # "len$":I
    .restart local v23    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "performedDexOpt":Z
    :cond_6
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .end local v20    # "i$":I
    .local v19, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 136
    .local v6, "path":Ljava/lang/String;
    if-eqz p3, :cond_8

    .line 137
    const/4 v11, 0x1

    .line 148
    .local v11, "dexoptNeeded":I
    :goto_7
    if-nez p3, :cond_9

    if-eqz p4, :cond_9

    if-eqz v11, :cond_9

    .line 152
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/PackageDexOptimizer;->addPackageForDeferredDexopt(Landroid/content/pm/PackageParser$Package;)V

    .line 153
    const/4 v2, 0x2

    goto :goto_1

    .line 140
    .end local v11    # "dexoptNeeded":I
    :cond_8
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move/from16 v0, p4

    invoke-static {v6, v2, v10, v0}, Ldalvik/system/DexFile;->getDexOptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .restart local v11    # "dexoptNeeded":I
    goto :goto_7

    .line 142
    .end local v11    # "dexoptNeeded":I
    :catch_0
    move-exception v21

    .line 143
    .local v21, "ioe":Ljava/io/IOException;
    const-string v2, "PackageManager.DexOptimizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException reading apk: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    const/4 v2, -0x1

    goto/16 :goto_1

    .line 156
    .end local v21    # "ioe":Ljava/io/IOException;
    .restart local v11    # "dexoptNeeded":I
    :cond_9
    if-eqz v11, :cond_7

    .line 158
    const/4 v14, 0x0

    .line 159
    .local v14, "oatDir":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v11, v2, :cond_a

    .line 160
    const-string v18, "dex2oat"

    .line 162
    .local v18, "dexoptType":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/android/server/pm/PackageDexOptimizer;->createOatDirIfSupported(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v14

    .line 175
    :goto_8
    const-string v2, "PackageManager.DexOptimizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Running dexopt ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") on: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " pkg="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " isa="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " vmSafeMode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " debuggable="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " oatDir = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " bootComplete="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v7

    .line 180
    .local v7, "sharedGid":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageDexOptimizer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$Package;->isForwardLocked()Z

    move-result v2

    if-nez v2, :cond_d

    const/4 v8, 0x1

    :goto_9
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move/from16 v15, p5

    invoke-virtual/range {v5 .. v15}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;Z)I

    move-result v25

    .line 186
    .local v25, "ret":I
    if-nez v25, :cond_7

    .line 187
    const/16 v24, 0x1

    goto/16 :goto_6

    .line 163
    .end local v7    # "sharedGid":I
    .end local v25    # "ret":I
    :catch_1
    move-exception v21

    .line 164
    .restart local v21    # "ioe":Ljava/io/IOException;
    const-string v2, "PackageManager.DexOptimizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create oatDir for package: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v2, -0x1

    goto/16 :goto_1

    .line 167
    .end local v18    # "dexoptType":Ljava/lang/String;
    .end local v21    # "ioe":Ljava/io/IOException;
    :cond_a
    const/4 v2, 0x2

    if-ne v11, v2, :cond_b

    .line 168
    const-string v18, "patchoat"

    .restart local v18    # "dexoptType":Ljava/lang/String;
    goto/16 :goto_8

    .line 169
    .end local v18    # "dexoptType":Ljava/lang/String;
    :cond_b
    const/4 v2, 0x3

    if-ne v11, v2, :cond_c

    .line 170
    const-string v18, "self patchoat"

    .restart local v18    # "dexoptType":Ljava/lang/String;
    goto/16 :goto_8

    .line 172
    .end local v18    # "dexoptType":Ljava/lang/String;
    :cond_c
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid dexopt needed: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 180
    .restart local v7    # "sharedGid":I
    .restart local v18    # "dexoptType":Ljava/lang/String;
    :cond_d
    const/4 v8, 0x0

    goto :goto_9

    .line 197
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "sharedGid":I
    .end local v11    # "dexoptNeeded":I
    .end local v14    # "oatDir":Ljava/lang/String;
    .end local v18    # "dexoptType":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mDexOptPerformed:Landroid/util/ArraySet;

    invoke-virtual {v2, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 204
    .end local v10    # "dexCodeInstructionSet":Ljava/lang/String;
    .end local v19    # "i$":Ljava/util/Iterator;
    .restart local v20    # "i$":I
    :cond_f
    if-eqz v24, :cond_10

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method private performDexOptLibsLI(Ljava/util/ArrayList;[Ljava/lang/String;ZZZLandroid/util/ArraySet;)V
    .locals 9
    .param p2, "instructionSets"    # [Ljava/lang/String;
    .param p3, "forceDex"    # Z
    .param p4, "defer"    # Z
    .param p5, "bootComplete"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "ZZZ",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "libs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p6, "done":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 248
    .local v8, "libName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v8}, Lcom/android/server/pm/PackageManagerService;->findSharedNonSystemLibrary(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 250
    .local v1, "libPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_0

    invoke-virtual {p6, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 251
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOptLI(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;ZZZLandroid/util/ArraySet;)I

    goto :goto_0

    .line 254
    .end local v1    # "libPkg":Landroid/content/pm/PackageParser$Package;
    .end local v8    # "libName":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public addPackageForDeferredDexopt(Landroid/content/pm/PackageParser$Package;)V
    .locals 1
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDeferredDexOpt:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDeferredDexOpt:Landroid/util/ArraySet;

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDeferredDexOpt:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 271
    return-void
.end method

.method public clearDeferredDexOptPackages()Landroid/util/ArraySet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDeferredDexOpt:Landroid/util/ArraySet;

    .line 262
    .local v0, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/PackageParser$Package;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDeferredDexOpt:Landroid/util/ArraySet;

    .line 263
    return-object v0
.end method

.method performDexOpt(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;ZZZZ)I
    .locals 9
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "instructionSets"    # [Ljava/lang/String;
    .param p3, "forceDex"    # Z
    .param p4, "defer"    # Z
    .param p5, "inclDependencies"    # Z
    .param p6, "bootComplete"    # Z

    .prologue
    .line 76
    if-eqz p5, :cond_3

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 77
    :cond_0
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 78
    .local v6, "done":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v8

    .line 83
    :try_start_0
    iget-boolean v7, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    .line 84
    .local v7, "useLock":Z
    if-eqz v7, :cond_1

    .line 85
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v1, v2}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 86
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    .line 89
    :try_start_1
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOptLI(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;ZZZLandroid/util/ArraySet;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 91
    if-eqz v7, :cond_2

    .line 92
    :try_start_2
    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    monitor-exit v8

    return v0

    .line 80
    .end local v6    # "done":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v7    # "useLock":Z
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "done":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_0

    .line 91
    .restart local v7    # "useLock":Z
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 92
    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_4
    throw v0

    .line 95
    .end local v7    # "useLock":Z
    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public removePackageForDeferredDexopt(Landroid/content/pm/PackageParser$Package;)V
    .locals 1
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDeferredDexOpt:Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDeferredDexOpt:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 279
    :cond_0
    return-void
.end method

.method systemReady()V
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    .line 284
    return-void
.end method
