.class Lcom/android/server/pm/PackageDexOptimizer;
.super Ljava/lang/Object;
.source "PackageDexOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageDexOptimizer$ForcedUpdatePackageDexOptimizer;
    }
.end annotation


# static fields
.field static final DEX_OPT_FAILED:I = -0x1

.field static final DEX_OPT_PERFORMED:I = 0x1

.field static final DEX_OPT_SKIPPED:I = 0x0

.field static final OAT_DIR_NAME:Ljava/lang/String; = "oat"

.field private static final TAG:Ljava/lang/String; = "PackageManager.DexOptimizer"


# instance fields
.field private final mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mInstallLock:Ljava/lang/Object;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private volatile mSystemReady:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "installer"    # Lcom/android/server/pm/Installer;
    .param p2, "installLock"    # Ljava/lang/Object;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "wakeLockTag"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 73
    iput-object p2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    .line 75
    const-string/jumbo v1, "power"

    invoke-virtual {p3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 76
    .local v0, "powerManager":Landroid/os/PowerManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 71
    return-void
.end method

.method protected constructor <init>(Lcom/android/server/pm/PackageDexOptimizer;)V
    .locals 1
    .param p1, "from"    # Lcom/android/server/pm/PackageDexOptimizer;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 81
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    .line 82
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 83
    iget-boolean v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    .line 79
    return-void
.end method

.method static canOptimizePackage(Landroid/content/pm/PackageParser$Package;)Z
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const/4 v0, 0x0

    .line 87
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private createOatDirIfSupported(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "dexInstructionSet"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 341
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/16 v4, 0x12

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 342
    invoke-static {p1}, Lcom/android/server/pm/PackageDexOptimizer;->isReserveApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 343
    return-object v6

    .line 348
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->canHaveOatDir()Z

    move-result v3

    if-nez v3, :cond_1

    .line 349
    return-object v6

    .line 351
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 352
    .local v0, "codePath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 353
    invoke-static {v0}, Lcom/android/server/pm/PackageDexOptimizer;->getOatDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 355
    .local v2, "oatDir":Ljava/io/File;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/android/server/pm/Installer;->createOatDir(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 356
    :catch_0
    move-exception v1

    .line 357
    .local v1, "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    const-string/jumbo v3, "PackageManager.DexOptimizer"

    const-string/jumbo v4, "Failed to create oat dir"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    return-object v6

    .line 362
    .end local v1    # "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    .end local v2    # "oatDir":Ljava/io/File;
    :cond_2
    return-object v6
.end method

.method static getOatDir(Ljava/io/File;)Ljava/io/File;
    .locals 2
    .param p0, "codePath"    # Ljava/io/File;

    .prologue
    .line 366
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "oat"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static isReserveApp(Landroid/content/pm/PackageParser$Package;)Z
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 433
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v0

    .line 434
    const-string/jumbo v1, "/system/reserve"

    .line 433
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUsedByOtherApps(Landroid/content/pm/PackageParser$Package;)Z
    .locals 11
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const/4 v10, 0x0

    .line 380
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->isForwardLocked()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 382
    return v10

    .line 385
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->getAllCodePathsExcludingResourceOnly()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "apkPath$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 387
    .local v0, "apkPath":Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/android/server/pm/PackageManagerServiceUtils;->realpath(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 393
    const/16 v8, 0x2f

    const/16 v9, 0x40

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    .line 394
    .local v7, "useMarker":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v2

    .line 395
    .local v2, "currentUserIds":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v8, v2

    if-ge v5, v8, :cond_1

    .line 397
    aget v8, v2, v5

    invoke-static {v8}, Landroid/os/Environment;->getDataProfilesDeForeignDexDirectory(I)Ljava/io/File;

    move-result-object v6

    .line 398
    .local v6, "profileDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 399
    .local v4, "foreignUseMark":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 400
    const/4 v8, 0x1

    return v8

    .line 388
    .end local v2    # "currentUserIds":[I
    .end local v4    # "foreignUseMark":Ljava/io/File;
    .end local v5    # "i":I
    .end local v6    # "profileDir":Ljava/io/File;
    .end local v7    # "useMarker":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 390
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v8, "PackageManager.DexOptimizer"

    const-string/jumbo v9, "Failed to get canonical path"

    invoke-static {v8, v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 395
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "currentUserIds":[I
    .restart local v4    # "foreignUseMark":Ljava/io/File;
    .restart local v5    # "i":I
    .restart local v6    # "profileDir":Ljava/io/File;
    .restart local v7    # "useMarker":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 404
    .end local v0    # "apkPath":Ljava/lang/String;
    .end local v2    # "currentUserIds":[I
    .end local v4    # "foreignUseMark":Ljava/io/File;
    .end local v5    # "i":I
    .end local v6    # "profileDir":Ljava/io/File;
    .end local v7    # "useMarker":Ljava/lang/String;
    :cond_3
    return v10
.end method

.method private performDexOptLI(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;)I
    .locals 37
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "sharedLibraries"    # [Ljava/lang/String;
    .param p3, "targetInstructionSets"    # [Ljava/lang/String;
    .param p4, "checkProfiles"    # Z
    .param p5, "targetCompilerFilter"    # Ljava/lang/String;
    .param p6, "packageStats"    # Lcom/android/server/pm/CompilerStats$PackageStats;

    .prologue
    .line 181
    if-eqz p3, :cond_0

    .line 182
    move-object/from16 v17, p3

    .line 184
    .local v17, "instructionSets":[Ljava/lang/String;
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageDexOptimizer;->canOptimizePackage(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 185
    const/4 v2, 0x0

    return v2

    .line 182
    .end local v17    # "instructionSets":[Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "instructionSets":[Ljava/lang/String;
    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$Package;->getAllCodePathsExcludingResourceOnly()Ljava/util/List;

    move-result-object v27

    .line 189
    .local v27, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v4

    .line 191
    .local v4, "sharedGid":I
    invoke-static/range {p5 .. p5}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v21

    .line 194
    .local v21, "isProfileGuidedFilter":Z
    if-eqz v21, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageDexOptimizer;->isUsedByOtherApps(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 195
    const/16 p4, 0x0

    .line 197
    .local p4, "checkProfiles":Z
    invoke-static/range {p5 .. p5}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getNonProfileGuidedCompilerFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 198
    invoke-static/range {p5 .. p5}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 199
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object/from16 v0, p5

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 201
    :cond_2
    const/16 v21, 0x0

    .line 205
    .end local v21    # "isProfileGuidedFilter":Z
    .end local p4    # "checkProfiles":Z
    :cond_3
    const/16 v25, 0x0

    .line 206
    .local v25, "newProfile":Z
    if-eqz p4, :cond_4

    if-eqz v21, :cond_4

    .line 209
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/pm/Installer;->mergeProfiles(ILjava/lang/String;)Z
    :try_end_0
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v25

    .line 215
    .end local v25    # "newProfile":Z
    :cond_4
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_7

    const/16 v34, 0x1

    .line 216
    .local v34, "vmSafeMode":Z
    :goto_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_8

    const/4 v13, 0x1

    .line 218
    .local v13, "debuggable":Z
    :goto_3
    const/16 v28, 0x0

    .line 219
    .local v28, "performedDexOpt":Z
    const/16 v31, 0x1

    .line 221
    .local v31, "successfulDexOpt":Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 222
    .local v14, "dexCodeInstructionSets":[Ljava/lang/String;
    const/4 v2, 0x0

    array-length v0, v14

    move/from16 v36, v0

    move/from16 v35, v2

    :goto_4
    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_14

    aget-object v6, v14, v35

    .line 223
    .local v6, "dexCodeInstructionSet":Ljava/lang/String;
    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, "path$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_5
    :pswitch_0
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 226
    .local v3, "path":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p5

    move/from16 v1, v25

    invoke-static {v3, v6, v0, v1}, Ldalvik/system/DexFile;->getDexOptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    .line 232
    .local v7, "dexoptNeeded":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/pm/PackageDexOptimizer;->adjustDexoptNeeded(I)I

    move-result v7

    .line 233
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEXOPT:Z

    if-eqz v2, :cond_6

    .line 234
    const-string/jumbo v2, "PackageManager.DexOptimizer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "DexoptNeeded for "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, "@"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, " is "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_6
    const/4 v8, 0x0

    .line 240
    .local v8, "oatDir":Ljava/lang/String;
    packed-switch v7, :pswitch_data_0

    .line 254
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid dexopt:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    .end local v3    # "path":Ljava/lang/String;
    .end local v6    # "dexCodeInstructionSet":Ljava/lang/String;
    .end local v7    # "dexoptNeeded":I
    .end local v8    # "oatDir":Ljava/lang/String;
    .end local v13    # "debuggable":Z
    .end local v14    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v26    # "path$iterator":Ljava/util/Iterator;
    .end local v28    # "performedDexOpt":Z
    .end local v31    # "successfulDexOpt":Z
    .end local v34    # "vmSafeMode":Z
    .restart local v25    # "newProfile":Z
    :catch_0
    move-exception v16

    .line 211
    .local v16, "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    const-string/jumbo v2, "PackageManager.DexOptimizer"

    const-string/jumbo v5, "Failed to merge profiles"

    move-object/from16 v0, v16

    invoke-static {v2, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 215
    .end local v16    # "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    .end local v25    # "newProfile":Z
    :cond_7
    const/16 v34, 0x0

    .restart local v34    # "vmSafeMode":Z
    goto/16 :goto_2

    .line 216
    :cond_8
    const/4 v13, 0x0

    .restart local v13    # "debuggable":Z
    goto/16 :goto_3

    .line 228
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v6    # "dexCodeInstructionSet":Ljava/lang/String;
    .restart local v14    # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v26    # "path$iterator":Ljava/util/Iterator;
    .restart local v28    # "performedDexOpt":Z
    .restart local v31    # "successfulDexOpt":Z
    :catch_1
    move-exception v20

    .line 229
    .local v20, "ioe":Ljava/io/IOException;
    const-string/jumbo v2, "PackageManager.DexOptimizer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "IOException reading apk: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-static {v2, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    const/4 v2, -0x1

    return v2

    .line 244
    .end local v20    # "ioe":Ljava/io/IOException;
    .restart local v7    # "dexoptNeeded":I
    .restart local v8    # "oatDir":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v15, "dex2oat"

    .line 245
    .local v15, "dexoptType":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/android/server/pm/PackageDexOptimizer;->createOatDirIfSupported(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 257
    .end local v8    # "oatDir":Ljava/lang/String;
    :goto_6
    const/4 v12, 0x0

    .line 258
    .local v12, "sharedLibrariesPath":Ljava/lang/String;
    if-eqz p2, :cond_b

    move-object/from16 v0, p2

    array-length v2, v0

    if-eqz v2, :cond_b

    .line 259
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .local v30, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    move-object/from16 v0, p2

    array-length v5, v0

    :goto_7
    if-ge v2, v5, :cond_a

    aget-object v24, p2, v2

    .line 261
    .local v24, "lib":Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-eqz v10, :cond_9

    .line 262
    const-string/jumbo v10, ":"

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_9
    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 248
    .end local v12    # "sharedLibrariesPath":Ljava/lang/String;
    .end local v15    # "dexoptType":Ljava/lang/String;
    .end local v24    # "lib":Ljava/lang/String;
    .end local v30    # "sb":Ljava/lang/StringBuilder;
    .restart local v8    # "oatDir":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v15, "patchoat"

    .restart local v15    # "dexoptType":Ljava/lang/String;
    goto :goto_6

    .line 251
    .end local v15    # "dexoptType":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v15, "self patchoat"

    .restart local v15    # "dexoptType":Ljava/lang/String;
    goto :goto_6

    .line 266
    .end local v8    # "oatDir":Ljava/lang/String;
    .restart local v12    # "sharedLibrariesPath":Ljava/lang/String;
    .restart local v30    # "sb":Ljava/lang/StringBuilder;
    :cond_a
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 268
    .end local v12    # "sharedLibrariesPath":Ljava/lang/String;
    .end local v30    # "sb":Ljava/lang/StringBuilder;
    :cond_b
    const-string/jumbo v2, "PackageManager.DexOptimizer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Running dexopt ("

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, ") on: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, " pkg="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 269
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 268
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 269
    const-string/jumbo v10, " isa="

    .line 268
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 270
    const-string/jumbo v10, " vmSafeMode="

    .line 268
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 270
    const-string/jumbo v10, " debuggable="

    .line 268
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 271
    const-string/jumbo v10, " target-filter="

    .line 268
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 271
    const-string/jumbo v10, " oatDir = "

    .line 268
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 272
    const-string/jumbo v10, " sharedLibraries="

    .line 268
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$Package;->isForwardLocked()Z

    move-result v2

    if-nez v2, :cond_c

    if-eqz v21, :cond_d

    :cond_c
    const/16 v22, 0x0

    .line 275
    .local v22, "isPublic":Z
    :goto_8
    if-eqz v21, :cond_e

    const/16 v29, 0x20

    .line 278
    .local v29, "profileFlag":I
    :goto_9
    const-string/jumbo v2, "speed"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v23, 0x80

    .line 282
    .local v23, "isSpeed":I
    :goto_a
    if-eqz v22, :cond_10

    const/4 v2, 0x2

    move v5, v2

    .line 283
    :goto_b
    if-eqz v34, :cond_11

    const/4 v2, 0x4

    .line 282
    :goto_c
    or-int/2addr v5, v2

    .line 284
    if-eqz v13, :cond_12

    const/16 v2, 0x8

    .line 282
    :goto_d
    or-int/2addr v2, v5

    or-int v2, v2, v29

    or-int/lit8 v2, v2, 0x10

    or-int v2, v2, v23

    .line 281
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageDexOptimizer;->adjustDexoptFlags(I)I

    move-result v9

    .line 297
    .local v9, "dexFlags":I
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    .line 299
    .local v32, "startTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 300
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    move-object/from16 v10, p5

    .line 299
    invoke-virtual/range {v2 .. v12}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const/16 v28, 0x1

    .line 304
    if-eqz p6, :cond_5

    .line 305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 306
    .local v18, "endTime":J
    sub-long v10, v18, v32

    long-to-int v2, v10

    int-to-long v10, v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v10, v11}, Lcom/android/server/pm/CompilerStats$PackageStats;->setCompileTime(Ljava/lang/String;J)V
    :try_end_2
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_5

    .line 308
    .end local v18    # "endTime":J
    .end local v32    # "startTime":J
    :catch_2
    move-exception v16

    .line 309
    .restart local v16    # "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    const-string/jumbo v2, "PackageManager.DexOptimizer"

    const-string/jumbo v5, "Failed to dexopt"

    move-object/from16 v0, v16

    invoke-static {v2, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    const/16 v31, 0x0

    goto/16 :goto_5

    .line 274
    .end local v9    # "dexFlags":I
    .end local v16    # "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    .end local v22    # "isPublic":Z
    .end local v23    # "isSpeed":I
    .end local v29    # "profileFlag":I
    :cond_d
    const/16 v22, 0x1

    .restart local v22    # "isPublic":Z
    goto :goto_8

    .line 275
    :cond_e
    const/16 v29, 0x0

    .restart local v29    # "profileFlag":I
    goto :goto_9

    .line 278
    :cond_f
    const/16 v23, 0x0

    .restart local v23    # "isSpeed":I
    goto :goto_a

    .line 282
    :cond_10
    const/4 v2, 0x0

    move v5, v2

    goto :goto_b

    .line 283
    :cond_11
    const/4 v2, 0x0

    goto :goto_c

    .line 284
    :cond_12
    const/4 v2, 0x0

    goto :goto_d

    .line 222
    .end local v3    # "path":Ljava/lang/String;
    .end local v7    # "dexoptNeeded":I
    .end local v15    # "dexoptType":Ljava/lang/String;
    .end local v22    # "isPublic":Z
    .end local v23    # "isSpeed":I
    .end local v29    # "profileFlag":I
    :cond_13
    add-int/lit8 v2, v35, 0x1

    move/from16 v35, v2

    goto/16 :goto_4

    .line 315
    .end local v6    # "dexCodeInstructionSet":Ljava/lang/String;
    .end local v26    # "path$iterator":Ljava/util/Iterator;
    :cond_14
    if-eqz v31, :cond_16

    .line 320
    if-eqz v28, :cond_15

    const/4 v2, 0x1

    :goto_e
    return v2

    :cond_15
    const/4 v2, 0x0

    goto :goto_e

    .line 322
    :cond_16
    const/4 v2, -0x1

    return v2

    .line 240
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected adjustDexoptFlags(I)I
    .locals 0
    .param p1, "dexoptFlags"    # I

    .prologue
    .line 129
    return p1
.end method

.method protected adjustDexoptNeeded(I)I
    .locals 0
    .param p1, "dexoptNeeded"    # I

    .prologue
    .line 122
    return p1
.end method

.method dumpDexoptState(Lcom/android/internal/util/IndentingPrintWriter;Landroid/content/pm/PackageParser$Package;)V
    .locals 12
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 136
    iget-object v8, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v8}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "instructionSets":[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "dexCodeInstructionSets":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->getAllCodePathsExcludingResourceOnly()Ljava/util/List;

    move-result-object v6

    .line 141
    .local v6, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    array-length v9, v0

    :goto_0
    if-ge v8, v9, :cond_1

    aget-object v1, v0, v8

    .line 142
    .local v1, "instructionSet":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Instruction Set: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 144
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "path$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 145
    .local v4, "path":Ljava/lang/String;
    const/4 v7, 0x0

    .line 147
    .local v7, "status":Ljava/lang/String;
    :try_start_0
    invoke-static {v4, v1}, Ldalvik/system/DexFile;->getDexFileStatus(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 151
    .local v7, "status":Ljava/lang/String;
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "path: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 152
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "status: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 148
    .local v7, "status":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 149
    .local v3, "ioe":Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[Exception]: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, "status":Ljava/lang/String;
    goto :goto_2

    .line 154
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "path":Ljava/lang/String;
    .end local v7    # "status":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 141
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 135
    .end local v1    # "instructionSet":Ljava/lang/String;
    .end local v5    # "path$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method getOatFileCompilerFilter(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;
    .locals 7
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 161
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v5}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, "instructionSets":[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "dexCodeInstructionSets":[Ljava/lang/String;
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_0

    .line 166
    const/4 v5, 0x0

    :try_start_0
    aget-object v2, v0, v5

    .line 167
    .local v2, "instructionSet":Ljava/lang/String;
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-static {v5, v2}, Ldalvik/system/DexFile;->getOatFileCompilerFilter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 168
    .local v1, "filter":Ljava/lang/String;
    return-object v1

    .line 169
    .end local v1    # "filter":Ljava/lang/String;
    .end local v2    # "instructionSet":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 170
    .local v4, "ioe":Ljava/io/IOException;
    const-string/jumbo v5, "TAG"

    const-string/jumbo v6, "Failed to getOatFileCompilerFilter"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    .end local v4    # "ioe":Ljava/io/IOException;
    :cond_0
    const/4 v5, 0x0

    return-object v5
.end method

.method performDexOpt(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;)I
    .locals 5
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "sharedLibraries"    # [Ljava/lang/String;
    .param p3, "instructionSets"    # [Ljava/lang/String;
    .param p4, "checkProfiles"    # Z
    .param p5, "targetCompilationFilter"    # Ljava/lang/String;
    .param p6, "packageStats"    # Lcom/android/server/pm/CompilerStats$PackageStats;

    .prologue
    .line 100
    iget-object v2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    .line 101
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    .line 102
    .local v0, "useLock":Z
    if-eqz v0, :cond_0

    .line 103
    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v3, Landroid/os/WorkSource;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v3, v4}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 104
    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOptLI(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 110
    if-eqz v0, :cond_1

    .line 111
    :try_start_2
    iget-object v3, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    monitor-exit v2

    .line 107
    return v1

    .line 109
    :catchall_0
    move-exception v1

    .line 110
    if-eqz v0, :cond_2

    .line 111
    :try_start_3
    iget-object v3, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 109
    :cond_2
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 100
    .end local v0    # "useLock":Z
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method systemReady()V
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    .line 369
    return-void
.end method
