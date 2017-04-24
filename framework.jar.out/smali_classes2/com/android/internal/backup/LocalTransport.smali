.class public Lcom/android/internal/backup/LocalTransport;
.super Landroid/app/backup/BackupTransport;
.source "LocalTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/backup/LocalTransport$DecodedFilename;
    }
.end annotation


# static fields
.field private static final CURRENT_SET_TOKEN:J = 0x1L

.field private static final DEBUG:Z = false

.field private static final FULL_DATA_DIR:Ljava/lang/String; = "_full"

.field private static final INCREMENTAL_DIR:Ljava/lang/String; = "_delta"

.field static final POSSIBLE_SETS:[J

.field private static final TAG:Ljava/lang/String; = "LocalTransport"

.field private static final TRANSPORT_DATA_MANAGEMENT_LABEL:Ljava/lang/String; = ""

.field private static final TRANSPORT_DESTINATION_STRING:Ljava/lang/String; = "Backing up to debug-only private cache"

.field private static final TRANSPORT_DIR_NAME:Ljava/lang/String; = "com.android.internal.backup.LocalTransport"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurFullRestoreStream:Ljava/io/FileInputStream;

.field private mCurrentSetDir:Ljava/io/File;

.field private mCurrentSetFullDir:Ljava/io/File;

.field private mCurrentSetIncrementalDir:Ljava/io/File;

.field private mDataDir:Ljava/io/File;

.field private mFullBackupBuffer:[B

.field private mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

.field private mFullRestoreBuffer:[B

.field private mFullRestoreSocketStream:Ljava/io/FileOutputStream;

.field private mFullTargetPackage:Ljava/lang/String;

.field private mRestorePackage:I

.field private mRestorePackages:[Landroid/content/pm/PackageInfo;

.field private mRestoreSetDir:Ljava/io/File;

.field private mRestoreSetFullDir:Ljava/io/File;

.field private mRestoreSetIncrementalDir:Ljava/io/File;

.field private mRestoreType:I

.field private mSocket:Landroid/os/ParcelFileDescriptor;

.field private mSocketInputStream:Ljava/io/FileInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 414
    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/backup/LocalTransport;->POSSIBLE_SETS:[J

    return-void

    :array_0
    .array-data 8
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/app/backup/BackupTransport;-><init>()V

    .line 75
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "backup"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    .line 76
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    .line 77
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    const-string v2, "_delta"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetIncrementalDir:Ljava/io/File;

    .line 78
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    const-string v2, "_full"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetFullDir:Ljava/io/File;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    .line 108
    iput-object p1, p0, Lcom/android/internal/backup/LocalTransport;->mContext:Landroid/content/Context;

    .line 109
    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->makeDataDirs()V

    .line 110
    return-void
.end method

.method private contentsByKey(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/backup/LocalTransport$DecodedFilename;",
            ">;"
        }
    .end annotation

    .prologue
    .line 572
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 573
    .local v0, "allFiles":[Ljava/io/File;
    if-eqz v0, :cond_0

    array-length v6, v0

    if-nez v6, :cond_1

    .line 574
    :cond_0
    const/4 v2, 0x0

    .line 583
    :goto_0
    return-object v2

    .line 578
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 579
    .local v2, "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/backup/LocalTransport$DecodedFilename;>;"
    move-object v1, v0

    .local v1, "arr$":[Ljava/io/File;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v3, v1, v4

    .line 580
    .local v3, "f":Ljava/io/File;
    new-instance v6, Lcom/android/internal/backup/LocalTransport$DecodedFilename;

    invoke-direct {v6, v3}, Lcom/android/internal/backup/LocalTransport$DecodedFilename;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 582
    .end local v3    # "f":Ljava/io/File;
    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0
.end method

.method private deleteContents(Ljava/io/File;)V
    .locals 6
    .param p1, "dirname"    # Ljava/io/File;

    .prologue
    .line 236
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 237
    .local v1, "contents":[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 238
    move-object v0, v1

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 239
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 242
    invoke-direct {p0, v2}, Lcom/android/internal/backup/LocalTransport;->deleteContents(Ljava/io/File;)V

    .line 244
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 238
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 247
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    return-void
.end method

.method private makeDataDirs()V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 100
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    const-string v0, "LocalTransport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELinux restorecon failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetFullDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 104
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetIncrementalDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 105
    return-void
.end method

.method private resetFullRestoreState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 599
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 600
    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    .line 601
    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreSocketStream:Ljava/io/FileOutputStream;

    .line 602
    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreBuffer:[B

    .line 603
    return-void
.end method

.method private tarballFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 307
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetFullDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private tearDownFullBackup()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 284
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_1

    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 288
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 290
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mSocketInputStream:Ljava/io/FileInputStream;

    .line 291
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    .line 292
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    .line 300
    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    .line 303
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 293
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/io/IOException;
    const/16 v1, -0x3e8

    .line 299
    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    .line 300
    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    goto :goto_0

    .line 299
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    .line 300
    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    throw v1
.end method


# virtual methods
.method public abortFullRestore()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 694
    iget v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 695
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "abortFullRestore() but not currently restoring"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->resetFullRestoreState()V

    .line 698
    iput v2, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    .line 699
    return v2
.end method

.method public cancelFullBackup()V
    .locals 2

    .prologue
    .line 405
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/backup/LocalTransport;->tarballFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 406
    .local v0, "archive":Ljava/io/File;
    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->tearDownFullBackup()I

    .line 407
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 410
    :cond_0
    return-void
.end method

.method public checkFullBackupSize(J)I
    .locals 5
    .param p1, "size"    # J

    .prologue
    .line 318
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_1

    const/4 v0, 0x0

    .line 319
    .local v0, "result":I
    :goto_0
    if-eqz v0, :cond_0

    .line 324
    :cond_0
    return v0

    .line 318
    .end local v0    # "result":I
    :cond_1
    const/16 v0, -0x3ea

    goto :goto_0
.end method

.method public clearBackupData(Landroid/content/pm/PackageInfo;)I
    .locals 9
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 253
    new-instance v5, Ljava/io/File;

    iget-object v7, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetIncrementalDir:Ljava/io/File;

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 254
    .local v5, "packageDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 255
    .local v2, "fileset":[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 256
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 257
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 256
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 259
    .end local v1    # "f":Ljava/io/File;
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 262
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    new-instance v5, Ljava/io/File;

    .end local v5    # "packageDir":Ljava/io/File;
    iget-object v7, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetFullDir:Ljava/io/File;

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 263
    .restart local v5    # "packageDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 264
    .local v6, "tarballs":[Ljava/io/File;
    if-eqz v6, :cond_3

    .line 265
    move-object v0, v6

    .restart local v0    # "arr$":[Ljava/io/File;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 266
    .restart local v1    # "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 265
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 268
    .end local v1    # "f":Ljava/io/File;
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 271
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_3
    const/4 v7, 0x0

    return v7
.end method

.method public configurationIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public currentDestinationString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const-string v0, "Backing up to debug-only private cache"

    return-object v0
.end method

.method public dataManagementIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public dataManagementLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const-string v0, ""

    return-object v0
.end method

.method public finishBackup()I
    .locals 1

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->tearDownFullBackup()I

    move-result v0

    return v0
.end method

.method public finishRestore()V
    .locals 2

    .prologue
    .line 589
    iget v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 590
    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->resetFullRestoreState()V

    .line 592
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    .line 593
    return-void
.end method

.method public getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;
    .locals 18

    .prologue
    .line 418
    sget-object v12, Lcom/android/internal/backup/LocalTransport;->POSSIBLE_SETS:[J

    array-length v12, v12

    add-int/lit8 v12, v12, 0x1

    new-array v4, v12, [J

    .line 419
    .local v4, "existing":[J
    const/4 v8, 0x0

    .line 422
    .local v8, "num":I
    sget-object v2, Lcom/android/internal/backup/LocalTransport;->POSSIBLE_SETS:[J

    .local v2, "arr$":[J
    array-length v7, v2

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    move v9, v8

    .end local v8    # "num":I
    .local v9, "num":I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-wide v10, v2, v6

    .line 423
    .local v10, "token":J
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 424
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "num":I
    .restart local v8    # "num":I
    aput-wide v10, v4, v9

    .line 422
    :goto_1
    add-int/lit8 v6, v6, 0x1

    move v9, v8

    .end local v8    # "num":I
    .restart local v9    # "num":I
    goto :goto_0

    .line 428
    .end local v10    # "token":J
    :cond_0
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "num":I
    .restart local v8    # "num":I
    const-wide/16 v12, 0x1

    aput-wide v12, v4, v9

    .line 430
    new-array v3, v8, [Landroid/app/backup/RestoreSet;

    .line 431
    .local v3, "available":[Landroid/app/backup/RestoreSet;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v12, v3

    if-ge v5, v12, :cond_1

    .line 432
    new-instance v12, Landroid/app/backup/RestoreSet;

    const-string v13, "Local disk image"

    const-string v14, "flash"

    aget-wide v16, v4, v5

    move-wide/from16 v0, v16

    invoke-direct {v12, v13, v14, v0, v1}, Landroid/app/backup/RestoreSet;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    aput-object v12, v3, v5

    .line 431
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 434
    :cond_1
    return-object v3

    .end local v3    # "available":[Landroid/app/backup/RestoreSet;
    .end local v5    # "i":I
    .end local v8    # "num":I
    .restart local v9    # "num":I
    .restart local v10    # "token":J
    :cond_2
    move v8, v9

    .end local v9    # "num":I
    .restart local v8    # "num":I
    goto :goto_1
.end method

.method public getCurrentRestoreSet()J
    .locals 2

    .prologue
    .line 440
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I
    .locals 7
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 629
    iget v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 630
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Asked for full restore data for non-stream package"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 634
    :cond_0
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    if-nez v4, :cond_1

    .line 635
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    iget v5, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    aget-object v4, v4, v5

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 637
    .local v3, "name":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetFullDir:Ljava/io/File;

    invoke-direct {v0, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 639
    .local v0, "dataset":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreSocketStream:Ljava/io/FileOutputStream;

    .line 647
    const/16 v4, 0x800

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreBuffer:[B

    .line 652
    .end local v0    # "dataset":Ljava/io/File;
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreBuffer:[B

    invoke-virtual {v4, v5}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 653
    .local v2, "nRead":I
    if-gez v2, :cond_2

    .line 655
    const/4 v2, -0x1

    .line 676
    .end local v2    # "nRead":I
    :goto_0
    return v2

    .line 640
    .restart local v0    # "dataset":Ljava/io/File;
    .restart local v3    # "name":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 643
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "LocalTransport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to read archive for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const/16 v2, -0x3ea

    goto :goto_0

    .line 656
    .end local v0    # "dataset":Ljava/io/File;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "name":Ljava/lang/String;
    .restart local v2    # "nRead":I
    :cond_2
    if-nez v2, :cond_3

    .line 660
    :try_start_2
    const-string v4, "LocalTransport"

    const-string v5, "read() of archive file returned 0; treating as EOF"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const/4 v2, -0x1

    goto :goto_0

    .line 666
    :cond_3
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreSocketStream:Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreBuffer:[B

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 668
    .end local v2    # "nRead":I
    :catch_1
    move-exception v1

    .line 669
    .restart local v1    # "e":Ljava/io/IOException;
    const/16 v2, -0x3e8

    goto :goto_0

    .line 670
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    throw v4
.end method

.method public getRestoreData(Landroid/os/ParcelFileDescriptor;)I
    .locals 14
    .param p1, "outFd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    const/16 v10, -0x3e8

    .line 509
    iget-object v11, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    if-nez v11, :cond_0

    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "startRestore not called"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 510
    :cond_0
    iget v11, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    if-gez v11, :cond_1

    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "nextRestorePackage not called"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 511
    :cond_1
    iget v11, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_2

    .line 512
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "getRestoreData(fd) for non-key/value dataset"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 514
    :cond_2
    new-instance v8, Ljava/io/File;

    iget-object v11, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetIncrementalDir:Ljava/io/File;

    iget-object v12, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    iget v13, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    aget-object v12, v12, v13

    iget-object v12, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v8, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 522
    .local v8, "packageDir":Ljava/io/File;
    invoke-direct {p0, v8}, Lcom/android/internal/backup/LocalTransport;->contentsByKey(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v0

    .line 523
    .local v0, "blobs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/backup/LocalTransport$DecodedFilename;>;"
    if-nez v0, :cond_3

    .line 524
    const-string v11, "LocalTransport"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No keys for package: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :goto_0
    return v10

    .line 530
    :cond_3
    new-instance v7, Landroid/app/backup/BackupDataOutput;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    invoke-direct {v7, v11}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 532
    .local v7, "out":Landroid/app/backup/BackupDataOutput;
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/backup/LocalTransport$DecodedFilename;

    .line 533
    .local v6, "keyEntry":Lcom/android/internal/backup/LocalTransport$DecodedFilename;
    iget-object v3, v6, Lcom/android/internal/backup/LocalTransport$DecodedFilename;->file:Ljava/io/File;

    .line 534
    .local v3, "f":Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    .local v5, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v12

    long-to-int v9, v12

    .line 537
    .local v9, "size":I
    new-array v1, v9, [B

    .line 538
    .local v1, "buf":[B
    invoke-virtual {v5, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 540
    iget-object v11, v6, Lcom/android/internal/backup/LocalTransport$DecodedFilename;->key:Ljava/lang/String;

    invoke-virtual {v7, v11, v9}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 541
    invoke-virtual {v7, v1, v9}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 543
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 547
    .end local v1    # "buf":[B
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "in":Ljava/io/FileInputStream;
    .end local v6    # "keyEntry":Lcom/android/internal/backup/LocalTransport$DecodedFilename;
    .end local v9    # "size":I
    :catch_0
    move-exception v2

    .line 548
    .local v2, "e":Ljava/io/IOException;
    const-string v11, "LocalTransport"

    const-string v12, "Unable to read backup records"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 543
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "keyEntry":Lcom/android/internal/backup/LocalTransport$DecodedFilename;
    :catchall_0
    move-exception v11

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    throw v11
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 546
    .end local v3    # "f":Ljava/io/File;
    .end local v5    # "in":Ljava/io/FileInputStream;
    .end local v6    # "keyEntry":Lcom/android/internal/backup/LocalTransport$DecodedFilename;
    :cond_4
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public initializeDevice()I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/internal/backup/LocalTransport;->deleteContents(Ljava/io/File;)V

    .line 154
    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->makeDataDirs()V

    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 3

    .prologue
    .line 114
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextRestorePackage()Landroid/app/backup/RestoreDescription;
    .locals 8

    .prologue
    .line 461
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "startRestore not called"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 463
    :cond_0
    const/4 v1, 0x0

    .line 464
    .local v1, "found":Z
    :cond_1
    iget v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    iget-object v5, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 465
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    iget v5, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    aget-object v4, v4, v5

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 469
    .local v3, "name":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetIncrementalDir:Ljava/io/File;

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, "contents":[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v4, v0

    if-lez v4, :cond_2

    .line 475
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    .line 476
    const/4 v1, 0x1

    .line 479
    :cond_2
    if-nez v1, :cond_3

    .line 481
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetFullDir:Ljava/io/File;

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 482
    .local v2, "maybeFullData":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 487
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    .line 488
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    .line 489
    const/4 v1, 0x1

    .line 493
    .end local v2    # "maybeFullData":Ljava/io/File;
    :cond_3
    if-eqz v1, :cond_1

    .line 494
    new-instance v4, Landroid/app/backup/RestoreDescription;

    iget v5, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    invoke-direct {v4, v3, v5}, Landroid/app/backup/RestoreDescription;-><init>(Ljava/lang/String;I)V

    .line 504
    .end local v0    # "contents":[Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    :goto_0
    return-object v4

    :cond_4
    sget-object v4, Landroid/app/backup/RestoreDescription;->NO_MORE_PACKAGES:Landroid/app/backup/RestoreDescription;

    goto :goto_0
.end method

.method public performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I
    .locals 13
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "data"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 171
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetIncrementalDir:Ljava/io/File;

    iget-object v11, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 172
    .local v9, "packageDir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 178
    new-instance v3, Landroid/app/backup/BackupDataInput;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    .line 180
    .local v3, "changeSet":Landroid/app/backup/BackupDataInput;
    const/16 v2, 0x200

    .line 181
    .local v2, "bufSize":I
    :try_start_0
    new-array v1, v2, [B

    .line 182
    .local v1, "buf":[B
    :goto_0
    invoke-virtual {v3}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 183
    invoke-virtual {v3}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 184
    .local v8, "key":Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/util/encoders/Base64;->encode([B)[B

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>([B)V

    .line 185
    .local v0, "base64Key":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v9, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 187
    .local v7, "entityFile":Ljava/io/File;
    invoke-virtual {v3}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v4

    .line 192
    .local v4, "dataSize":I
    if-ltz v4, :cond_2

    .line 193
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 194
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 196
    :cond_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 198
    .local v6, "entity":Ljava/io/FileOutputStream;
    if-le v4, v2, :cond_1

    .line 199
    move v2, v4

    .line 200
    new-array v1, v2, [B

    .line 202
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {v3, v1, v10, v4}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v6, v1, v10, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 227
    .end local v0    # "base64Key":Ljava/lang/String;
    .end local v1    # "buf":[B
    .end local v4    # "dataSize":I
    .end local v6    # "entity":Ljava/io/FileOutputStream;
    .end local v7    # "entityFile":Ljava/io/File;
    .end local v8    # "key":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 229
    .local v5, "e":Ljava/io/IOException;
    const-string v10, "LocalTransport"

    const-string v11, "Exception reading backup input:"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    const/16 v10, -0x3e8

    .end local v5    # "e":Ljava/io/IOException;
    :goto_1
    return v10

    .line 216
    .restart local v0    # "base64Key":Ljava/lang/String;
    .restart local v1    # "buf":[B
    .restart local v4    # "dataSize":I
    .restart local v6    # "entity":Ljava/io/FileOutputStream;
    .restart local v7    # "entityFile":Ljava/io/File;
    .restart local v8    # "key":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 217
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_3
    const-string v10, "LocalTransport"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to update key file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 218
    const/16 v10, -0x3e8

    .line 220
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    throw v10

    .line 223
    .end local v6    # "entity":Ljava/io/FileOutputStream;
    :cond_2
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 226
    .end local v0    # "base64Key":Ljava/lang/String;
    .end local v4    # "dataSize":I
    .end local v7    # "entityFile":Ljava/io/File;
    .end local v8    # "key":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I
    .locals 4
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "socket"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    const/16 v1, -0x3e8

    .line 329
    iget-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_0

    .line 330
    const-string v2, "LocalTransport"

    const-string v3, "Attempt to initiate full backup while one is in progress"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :goto_0
    return v1

    .line 342
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    .line 343
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mSocketInputStream:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    .line 350
    const/16 v1, 0x1000

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    .line 352
    const/4 v1, 0x0

    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "LocalTransport"

    const-string v3, "Unable to process socket for full backup"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestBackupTime()J
    .locals 2

    .prologue
    .line 147
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public requestFullBackupTime()J
    .locals 2

    .prologue
    .line 312
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public sendBackupData(I)I
    .locals 10
    .param p1, "numBytes"    # I

    .prologue
    const/4 v6, 0x0

    const/16 v5, -0x3e8

    .line 357
    iget-object v7, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    if-nez v7, :cond_0

    .line 358
    const-string v6, "LocalTransport"

    const-string v7, "Attempted sendBackupData before performFullBackup"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :goto_0
    return v5

    .line 362
    :cond_0
    iget-object v7, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    array-length v7, v7

    if-le p1, v7, :cond_1

    .line 363
    new-array v7, p1, [B

    iput-object v7, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    .line 366
    :cond_1
    iget-object v7, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    if-nez v7, :cond_2

    .line 369
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/internal/backup/LocalTransport;->tarballFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 370
    .local v3, "tarball":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 374
    .local v4, "tarstream":Ljava/io/FileOutputStream;
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v7, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    .line 377
    .end local v3    # "tarball":Ljava/io/File;
    .end local v4    # "tarstream":Ljava/io/FileOutputStream;
    :cond_2
    move v0, p1

    .line 378
    .local v0, "bytesLeft":I
    :goto_1
    if-lez v0, :cond_4

    .line 380
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/backup/LocalTransport;->mSocketInputStream:Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    .line 381
    .local v2, "nRead":I
    if-gez v2, :cond_3

    .line 383
    const-string v6, "LocalTransport"

    const-string v7, "Unexpected EOD; failing backup"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 388
    .end local v2    # "nRead":I
    :catch_0
    move-exception v1

    .line 389
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "LocalTransport"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error handling backup data for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 371
    .end local v0    # "bytesLeft":I
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 372
    .local v1, "e":Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 386
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "bytesLeft":I
    .restart local v2    # "nRead":I
    :cond_3
    :try_start_2
    iget-object v7, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    iget-object v8, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v2}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 387
    sub-int/2addr v0, v2

    goto :goto_1

    .end local v2    # "nRead":I
    :cond_4
    move v5, v6

    .line 396
    goto :goto_0
.end method

.method public startRestore(J[Landroid/content/pm/PackageInfo;)I
    .locals 3
    .param p1, "token"    # J
    .param p3, "packages"    # [Landroid/content/pm/PackageInfo;

    .prologue
    .line 447
    iput-object p3, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    .line 448
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    .line 449
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetDir:Ljava/io/File;

    .line 450
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetDir:Ljava/io/File;

    const-string v2, "_delta"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetIncrementalDir:Ljava/io/File;

    .line 451
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetDir:Ljava/io/File;

    const-string v2, "_full"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetFullDir:Ljava/io/File;

    .line 452
    const/4 v0, 0x0

    return v0
.end method

.method public transportDirName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    const-string v0, "com.android.internal.backup.LocalTransport"

    return-object v0
.end method
