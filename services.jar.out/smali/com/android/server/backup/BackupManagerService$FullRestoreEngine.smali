.class Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;
.super Lcom/android/server/backup/BackupManagerService$RestoreEngine;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullRestoreEngine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;,
        Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;,
        Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;
    }
.end annotation


# instance fields
.field mAgent:Landroid/app/IBackupAgent;

.field mAgentPackage:Ljava/lang/String;

.field mAllowApks:Z

.field mAllowObbs:Z

.field mBuffer:[B

.field mBytes:J

.field final mClearedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mDeleteObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;

.field final mInstallObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

.field final mManifestSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

.field mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field mOnlyPackage:Landroid/content/pm/PackageInfo;

.field final mPackageInstallers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPackagePolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/BackupManagerService$RestorePolicy;",
            ">;"
        }
    .end annotation
.end field

.field mPipes:[Landroid/os/ParcelFileDescriptor;

.field mTargetApp:Landroid/content/pm/ApplicationInfo;

.field mWidgetData:[B

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/content/pm/PackageInfo;ZZ)V
    .locals 2
    .param p2, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p3, "onlyPackage"    # Landroid/content/pm/PackageInfo;
    .param p4, "allowApks"    # Z
    .param p5, "allowObbs"    # Z

    .prologue
    const/4 v1, 0x0

    .line 4735
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService$RestoreEngine;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    .line 4672
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    .line 4675
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    .line 4679
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    .line 4682
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    .line 4686
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    .line 4695
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 4698
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mWidgetData:[B

    .line 5162
    new-instance v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

    invoke-direct {v0, p0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;-><init>(Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

    .line 5163
    new-instance v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;

    invoke-direct {v0, p0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;-><init>(Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;

    .line 4736
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 4737
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    .line 4738
    iput-boolean p4, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAllowApks:Z

    .line 4739
    iput-boolean p5, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAllowObbs:Z

    .line 4740
    const v0, 0x8000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBuffer:[B

    .line 4741
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    .line 4742
    return-void
.end method

.method private HEXLOG([B)V
    .locals 11
    .param p1, "block"    # [B

    .prologue
    const/16 v5, 0x10

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 5673
    const/4 v3, 0x0

    .line 5674
    .local v3, "offset":I
    array-length v4, p1

    .line 5675
    .local v4, "todo":I
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v6, 0x40

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5676
    .local v0, "buf":Ljava/lang/StringBuilder;
    :goto_0
    if-lez v4, :cond_2

    .line 5677
    const-string v6, "%04x   "

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5678
    if-le v4, v5, :cond_0

    move v2, v5

    .line 5679
    .local v2, "numThisLine":I
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_1

    .line 5680
    const-string v6, "%02x "

    new-array v7, v10, [Ljava/lang/Object;

    add-int v8, v3, v1

    aget-byte v8, p1, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5679
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "i":I
    .end local v2    # "numThisLine":I
    :cond_0
    move v2, v4

    .line 5678
    goto :goto_1

    .line 5682
    .restart local v1    # "i":I
    .restart local v2    # "numThisLine":I
    :cond_1
    const-string v6, "hexdump"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5683
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5684
    sub-int/2addr v4, v2

    .line 5685
    add-int/2addr v3, v2

    .line 5686
    goto :goto_0

    .line 5687
    .end local v1    # "i":I
    .end local v2    # "numThisLine":I
    :cond_2
    return-void
.end method

.method private isRestorableFile(Lcom/android/server/backup/BackupManagerService$FileMetadata;)Z
    .locals 3
    .param p1, "info"    # Lcom/android/server/backup/BackupManagerService$FileMetadata;

    .prologue
    const/4 v0, 0x0

    .line 5640
    const-string v1, "c"

    iget-object v2, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5669
    :cond_0
    :goto_0
    return v0

    .line 5647
    :cond_1
    const-string v1, "r"

    iget-object v2, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5652
    iget-object v1, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v2, "no_backup/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5661
    :cond_2
    iget-object v1, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5669
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method dumpFileMetadata(Lcom/android/server/backup/BackupManagerService$FileMetadata;)V
    .locals 0
    .param p1, "info"    # Lcom/android/server/backup/BackupManagerService$FileMetadata;

    .prologue
    .line 5531
    return-void
.end method

.method extractLine([BI[Ljava/lang/String;)I
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "outStr"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5486
    array-length v1, p1

    .line 5487
    .local v1, "end":I
    if-lt p2, v1, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Incomplete data"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5490
    :cond_0
    move v2, p2

    .local v2, "pos":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 5491
    aget-byte v0, p1, v2

    .line 5494
    .local v0, "c":B
    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    .line 5498
    .end local v0    # "c":B
    :cond_1
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/String;

    sub-int v5, v2, p2

    invoke-direct {v4, p1, p2, v5}, Ljava/lang/String;-><init>([BII)V

    aput-object v4, p3, v3

    .line 5499
    add-int/lit8 v2, v2, 0x1

    .line 5500
    return v2

    .line 5490
    .restart local v0    # "c":B
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method extractRadix([BIII)J
    .locals 10
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "maxChars"    # I
    .param p4, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5776
    const-wide/16 v4, 0x0

    .line 5777
    .local v4, "value":J
    add-int v1, p2, p3

    .line 5778
    .local v1, "end":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 5779
    aget-byte v0, p1, v2

    .line 5781
    .local v0, "b":B
    if-eqz v0, :cond_0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_1

    .line 5788
    .end local v0    # "b":B
    :cond_0
    return-wide v4

    .line 5782
    .restart local v0    # "b":B
    :cond_1
    const/16 v3, 0x30

    if-lt v0, v3, :cond_2

    add-int/lit8 v3, p4, 0x30

    add-int/lit8 v3, v3, -0x1

    if-le v0, v3, :cond_3

    .line 5783
    :cond_2
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid number in header: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-char v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' for radix "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5786
    :cond_3
    int-to-long v6, p4

    mul-long/2addr v6, v4

    add-int/lit8 v3, v0, -0x30

    int-to-long v8, v3

    add-long v4, v6, v8

    .line 5778
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method extractString([BII)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "maxChars"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5792
    add-int v0, p2, p3

    .line 5793
    .local v0, "end":I
    move v1, p2

    .line 5795
    .local v1, "eos":I
    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5796
    :cond_0
    new-instance v2, Ljava/lang/String;

    sub-int v3, v1, p2

    const-string v4, "US-ASCII"

    invoke-direct {v2, p1, p2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v2
.end method

.method public getAgent()Landroid/app/IBackupAgent;
    .locals 1

    .prologue
    .line 4745
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    return-object v0
.end method

.method installApk(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 22
    .param p1, "info"    # Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .param p2, "installerPackage"    # Ljava/lang/String;
    .param p3, "instream"    # Ljava/io/InputStream;

    .prologue
    .line 5166
    const/4 v9, 0x1

    .line 5168
    .local v9, "okay":Z
    const-string v18, "RestoreEngine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Installing from backup: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5172
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mDataDir:Ljava/io/File;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5174
    .local v4, "apkFile":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 5175
    .local v5, "apkStream":Ljava/io/FileOutputStream;
    const v18, 0x8000

    move/from16 v0, v18

    new-array v6, v0, [B

    .line 5176
    .local v6, "buffer":[B
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    .line 5177
    .local v14, "size":J
    :goto_0
    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-lez v18, :cond_2

    .line 5178
    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v18, v18, v14

    if-gez v18, :cond_1

    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 5179
    .local v16, "toRead":J
    :goto_1
    const/16 v18, 0x0

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 5180
    .local v7, "didRead":I
    if-ltz v7, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    move-wide/from16 v18, v0

    int-to-long v0, v7

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    .line 5181
    :cond_0
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v6, v0, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 5182
    int-to-long v0, v7

    move-wide/from16 v18, v0

    sub-long v14, v14, v18

    .line 5183
    goto :goto_0

    .end local v7    # "didRead":I
    .end local v16    # "toRead":J
    :cond_1
    move-wide/from16 v16, v14

    .line 5178
    goto :goto_1

    .line 5184
    :cond_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 5187
    const/16 v18, 0x1

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 5190
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    .line 5191
    .local v10, "packageUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;->reset()V

    .line 5192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService;->access$400(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

    move-object/from16 v19, v0

    const/16 v20, 0x22

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, p2

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;)V

    .line 5195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;->waitForCompletion()V

    .line 5197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;->getResult()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 5201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    sget-object v19, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 5202
    const/4 v9, 0x0

    .line 5261
    :cond_3
    :goto_2
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 5264
    .end local v5    # "apkStream":Ljava/io/FileOutputStream;
    .end local v6    # "buffer":[B
    .end local v10    # "packageUri":Landroid/net/Uri;
    .end local v14    # "size":J
    :goto_3
    return v9

    .line 5206
    .restart local v5    # "apkStream":Ljava/io/FileOutputStream;
    .restart local v6    # "buffer":[B
    .restart local v10    # "packageUri":Landroid/net/Uri;
    .restart local v14    # "size":J
    :cond_4
    const/4 v13, 0x0

    .line 5207
    .local v13, "uninstall":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 5208
    const-string v18, "RestoreEngine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Restore stream claimed to include apk for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " but apk was really "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5212
    const/4 v9, 0x0

    .line 5213
    const/4 v13, 0x1

    .line 5250
    :cond_5
    :goto_4
    if-eqz v13, :cond_3

    .line 5251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;->reset()V

    .line 5252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService;->access$400(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 5254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;->waitForCompletion()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 5257
    .end local v5    # "apkStream":Ljava/io/FileOutputStream;
    .end local v6    # "buffer":[B
    .end local v10    # "packageUri":Landroid/net/Uri;
    .end local v13    # "uninstall":Z
    .end local v14    # "size":J
    :catch_0
    move-exception v8

    .line 5258
    .local v8, "e":Ljava/io/IOException;
    :try_start_2
    const-string v18, "RestoreEngine"

    const-string v19, "Unable to transcribe restored apk for install"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5259
    const/4 v9, 0x0

    .line 5261
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto/16 :goto_3

    .line 5216
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v5    # "apkStream":Ljava/io/FileOutputStream;
    .restart local v6    # "buffer":[B
    .restart local v10    # "packageUri":Landroid/net/Uri;
    .restart local v13    # "uninstall":Z
    .restart local v14    # "size":J
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService;->access$400(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x40

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 5218
    .local v11, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    const v19, 0x8000

    and-int v18, v18, v19

    if-nez v18, :cond_7

    .line 5219
    const-string v18, "RestoreEngine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Restore stream contains apk of package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " but it disallows backup/restore"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5221
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 5224
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/content/pm/Signature;

    .line 5225
    .local v12, "sigs":[Landroid/content/pm/Signature;
    invoke-static {v12, v11}, Lcom/android/server/backup/BackupManagerService;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 5228
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v0

    const/16 v19, 0x2710

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_5

    .line 5230
    const-string v18, "RestoreEngine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Installed app "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " has restricted uid and no agent"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5232
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 5235
    :cond_8
    const-string v18, "RestoreEngine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Installed app "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " signatures do not match restore manifest"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5237
    const/4 v9, 0x0

    .line 5238
    const/4 v13, 0x1

    goto/16 :goto_4

    .line 5241
    .end local v11    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v12    # "sigs":[Landroid/content/pm/Signature;
    :catch_1
    move-exception v8

    .line 5242
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    const-string v18, "RestoreEngine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Install of package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " succeeded but now not found"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5244
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 5261
    .end local v5    # "apkStream":Ljava/io/FileOutputStream;
    .end local v6    # "buffer":[B
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10    # "packageUri":Landroid/net/Uri;
    .end local v13    # "uninstall":Z
    .end local v14    # "size":J
    :catchall_0
    move-exception v18

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    throw v18
.end method

.method readAppManifest(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/io/InputStream;)Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    .locals 22
    .param p1, "info"    # Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .param p2, "instream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5350
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v18, v0

    const-wide/32 v20, 0x10000

    cmp-long v17, v18, v20

    if-lez v17, :cond_0

    .line 5351
    new-instance v17, Ljava/io/IOException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Restore manifest too big; corrupt? size="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 5354
    :cond_0
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v4, v0, [B

    .line 5359
    .local v4, "buffer":[B
    const/16 v17, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v20, v0

    cmp-long v17, v18, v20

    if-nez v17, :cond_1

    .line 5360
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    .line 5363
    sget-object v13, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    .line 5364
    .local v13, "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v15, v0, [Ljava/lang/String;

    .line 5365
    .local v15, "str":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 5368
    .local v11, "offset":I
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11, v15}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 5369
    const/16 v17, 0x0

    aget-object v17, v15, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 5370
    .local v16, "version":I
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    .line 5371
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11, v15}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 5372
    const/16 v17, 0x0

    aget-object v9, v15, v17

    .line 5374
    .local v9, "manifestPackage":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 5375
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11, v15}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 5376
    const/16 v17, 0x0

    aget-object v17, v15, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 5377
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11, v15}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 5380
    const/16 v17, 0x0

    aget-object v17, v15, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 5381
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11, v15}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 5382
    const/16 v17, 0x0

    aget-object v17, v15, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_2

    const/16 v17, 0x0

    aget-object v17, v15, v17

    :goto_0
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->installerPackageName:Ljava/lang/String;

    .line 5383
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11, v15}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 5384
    const/16 v17, 0x0

    aget-object v17, v15, v17

    const-string v18, "1"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 5385
    .local v7, "hasApk":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11, v15}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 5386
    const/16 v17, 0x0

    aget-object v17, v15, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 5387
    .local v10, "numSigs":I
    if-lez v10, :cond_c

    .line 5388
    new-array v14, v10, [Landroid/content/pm/Signature;

    .line 5389
    .local v14, "sigs":[Landroid/content/pm/Signature;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v10, :cond_3

    .line 5390
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11, v15}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 5391
    new-instance v17, Landroid/content/pm/Signature;

    const/16 v18, 0x0

    aget-object v18, v15, v18

    invoke-direct/range {v17 .. v18}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v17, v14, v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 5389
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 5361
    .end local v7    # "hasApk":Z
    .end local v8    # "i":I
    .end local v9    # "manifestPackage":Ljava/lang/String;
    .end local v10    # "numSigs":I
    .end local v11    # "offset":I
    .end local v13    # "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    .end local v14    # "sigs":[Landroid/content/pm/Signature;
    .end local v15    # "str":[Ljava/lang/String;
    .end local v16    # "version":I
    :cond_1
    new-instance v17, Ljava/io/IOException;

    const-string v18, "Unexpected EOF in manifest"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 5382
    .restart local v9    # "manifestPackage":Ljava/lang/String;
    .restart local v11    # "offset":I
    .restart local v13    # "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    .restart local v15    # "str":[Ljava/lang/String;
    .restart local v16    # "version":I
    :cond_2
    const/16 v17, 0x0

    goto :goto_0

    .line 5393
    .restart local v7    # "hasApk":Z
    .restart local v8    # "i":I
    .restart local v10    # "numSigs":I
    .restart local v14    # "sigs":[Landroid/content/pm/Signature;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 5397
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v17 .. v17}, Lcom/android/server/backup/BackupManagerService;->access$400(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x40

    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 5400
    .local v12, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 5401
    .local v6, "flags":I
    const v17, 0x8000

    and-int v17, v17, v6

    if-eqz v17, :cond_a

    .line 5404
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v0

    const/16 v18, 0x2710

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 5413
    :cond_4
    invoke-static {v14, v12}, Lcom/android/server/backup/BackupManagerService;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 5414
    iget v0, v12, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, v16

    if-lt v0, v1, :cond_6

    .line 5415
    const-string v17, "RestoreEngine"

    const-string v18, "Sig + version match; taking data"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5416
    sget-object v13, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 5458
    .end local v6    # "flags":I
    .end local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_2
    :try_start_3
    sget-object v17, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    move-object/from16 v0, v17

    if-ne v13, v0, :cond_5

    if-nez v7, :cond_5

    .line 5459
    const-string v17, "RestoreEngine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Cannot restore package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " without the matching .apk"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    .line 5480
    .end local v7    # "hasApk":Z
    .end local v8    # "i":I
    .end local v9    # "manifestPackage":Ljava/lang/String;
    .end local v10    # "numSigs":I
    .end local v14    # "sigs":[Landroid/content/pm/Signature;
    .end local v16    # "version":I
    :cond_5
    :goto_3
    return-object v13

    .line 5421
    .restart local v6    # "flags":I
    .restart local v7    # "hasApk":Z
    .restart local v8    # "i":I
    .restart local v9    # "manifestPackage":Ljava/lang/String;
    .restart local v10    # "numSigs":I
    .restart local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v14    # "sigs":[Landroid/content/pm/Signature;
    .restart local v16    # "version":I
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAllowApks:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 5422
    const-string v17, "RestoreEngine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Data version "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " is newer than installed version "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v12, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " - requiring apk"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5426
    sget-object v13, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    goto :goto_2

    .line 5428
    :cond_7
    const-string v17, "RestoreEngine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Data requires newer version "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "; ignoring"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5430
    sget-object v13, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    goto/16 :goto_2

    .line 5434
    :cond_8
    const-string v17, "RestoreEngine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Restore manifest signatures do not match installed application for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 5445
    .end local v6    # "flags":I
    .end local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v5

    .line 5449
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAllowApks:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    .line 5450
    const-string v17, "RestoreEngine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " not installed; requiring apk in dataset"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5452
    sget-object v13, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 5438
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "flags":I
    .restart local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_9
    :try_start_6
    const-string v17, "RestoreEngine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " is system level with no agent"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_2

    .line 5474
    .end local v6    # "flags":I
    .end local v7    # "hasApk":Z
    .end local v8    # "i":I
    .end local v9    # "manifestPackage":Ljava/lang/String;
    .end local v10    # "numSigs":I
    .end local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v14    # "sigs":[Landroid/content/pm/Signature;
    .end local v16    # "version":I
    :catch_1
    move-exception v5

    .line 5475
    .local v5, "e":Ljava/lang/NumberFormatException;
    const-string v17, "RestoreEngine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Corrupt restore manifest for package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 5442
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .restart local v6    # "flags":I
    .restart local v7    # "hasApk":Z
    .restart local v8    # "i":I
    .restart local v9    # "manifestPackage":Ljava/lang/String;
    .restart local v10    # "numSigs":I
    .restart local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v14    # "sigs":[Landroid/content/pm/Signature;
    .restart local v16    # "version":I
    :cond_a
    :try_start_7
    const-string v17, "RestoreEngine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Restore manifest from "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " but allowBackup=false"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_2

    .line 5476
    .end local v6    # "flags":I
    .end local v7    # "hasApk":Z
    .end local v8    # "i":I
    .end local v9    # "manifestPackage":Ljava/lang/String;
    .end local v10    # "numSigs":I
    .end local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v14    # "sigs":[Landroid/content/pm/Signature;
    .end local v16    # "version":I
    :catch_2
    move-exception v5

    .line 5477
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    const-string v17, "RestoreEngine"

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 5454
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7    # "hasApk":Z
    .restart local v8    # "i":I
    .restart local v9    # "manifestPackage":Ljava/lang/String;
    .restart local v10    # "numSigs":I
    .restart local v14    # "sigs":[Landroid/content/pm/Signature;
    .restart local v16    # "version":I
    :cond_b
    :try_start_8
    sget-object v13, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    goto/16 :goto_2

    .line 5463
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8    # "i":I
    .end local v14    # "sigs":[Landroid/content/pm/Signature;
    :cond_c
    const-string v17, "RestoreEngine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Missing signature on backed-up package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 5467
    .end local v7    # "hasApk":Z
    .end local v10    # "numSigs":I
    :cond_d
    const-string v17, "RestoreEngine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Expected package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " but restore manifest claims "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 5471
    .end local v9    # "manifestPackage":Ljava/lang/String;
    :cond_e
    const-string v17, "RestoreEngine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unknown restore manifest version "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " for package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_3
.end method

.method readExactly(Ljava/io/InputStream;[BII)I
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5694
    if-gtz p4, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "size must be > 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5696
    :cond_0
    const/4 v1, 0x0

    .line 5697
    .local v1, "soFar":I
    :goto_0
    if-ge v1, p4, :cond_1

    .line 5698
    add-int v2, p3, v1

    sub-int v3, p4, v1

    invoke-virtual {p1, p2, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 5699
    .local v0, "nRead":I
    if-gtz v0, :cond_2

    .line 5706
    .end local v0    # "nRead":I
    :cond_1
    return v1

    .line 5703
    .restart local v0    # "nRead":I
    :cond_2
    add-int/2addr v1, v0

    .line 5705
    goto :goto_0
.end method

.method readMetadata(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/io/InputStream;)V
    .locals 16
    .param p1, "info"    # Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .param p2, "instream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5286
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    const-wide/32 v14, 0x10000

    cmp-long v11, v12, v14

    if-lez v11, :cond_0

    .line 5287
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Metadata too big; corrupt? size="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 5290
    :cond_0
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    long-to-int v11, v12

    new-array v3, v11, [B

    .line 5291
    .local v3, "buffer":[B
    const/4 v11, 0x0

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    long-to-int v12, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3, v11, v12}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v11

    int-to-long v12, v11

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    cmp-long v11, v12, v14

    if-nez v11, :cond_1

    .line 5292
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    .line 5295
    const/4 v11, 0x1

    new-array v8, v11, [Ljava/lang/String;

    .line 5296
    .local v8, "str":[Ljava/lang/String;
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11, v8}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    move-result v5

    .line 5297
    .local v5, "offset":I
    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 5298
    .local v10, "version":I
    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 5299
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v8}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    move-result v5

    .line 5300
    const/4 v11, 0x0

    aget-object v6, v8, v11

    .line 5301
    .local v6, "pkg":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 5304
    new-instance v2, Ljava/io/ByteArrayInputStream;

    array-length v11, v3

    sub-int/2addr v11, v5

    invoke-direct {v2, v3, v5, v11}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 5306
    .local v2, "bin":Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 5307
    .local v4, "in":Ljava/io/DataInputStream;
    :goto_0
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v11

    if-lez v11, :cond_4

    .line 5308
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 5309
    .local v9, "token":I
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 5310
    .local v7, "size":I
    const/high16 v11, 0x10000

    if-le v7, v11, :cond_2

    .line 5311
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Datum "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " too big; corrupt? size="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 5293
    .end local v2    # "bin":Ljava/io/ByteArrayInputStream;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v5    # "offset":I
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "size":I
    .end local v8    # "str":[Ljava/lang/String;
    .end local v9    # "token":I
    .end local v10    # "version":I
    :cond_1
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Unexpected EOF in widget data"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 5315
    .restart local v2    # "bin":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "offset":I
    .restart local v6    # "pkg":Ljava/lang/String;
    .restart local v7    # "size":I
    .restart local v8    # "str":[Ljava/lang/String;
    .restart local v9    # "token":I
    .restart local v10    # "version":I
    :cond_2
    packed-switch v9, :pswitch_data_0

    .line 5328
    const-string v11, "RestoreEngine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Ignoring metadata blob "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5332
    invoke-virtual {v4, v7}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto :goto_0

    .line 5321
    :pswitch_0
    new-array v11, v7, [B

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mWidgetData:[B

    .line 5322
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mWidgetData:[B

    invoke-virtual {v4, v11}, Ljava/io/DataInputStream;->read([B)I

    goto/16 :goto_0

    .line 5338
    .end local v2    # "bin":Ljava/io/ByteArrayInputStream;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v7    # "size":I
    .end local v9    # "token":I
    :cond_3
    const-string v11, "RestoreEngine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Metadata mismatch: package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " but widget data for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5344
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_4
    :goto_1
    return-void

    .line 5342
    :cond_5
    const-string v11, "RestoreEngine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unsupported metadata version "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5315
    nop

    :pswitch_data_0
    .packed-switch 0x1ffed01
        :pswitch_0
    .end packed-switch
.end method

.method readPaxExtendedHeader(Ljava/io/InputStream;Lcom/android/server/backup/BackupManagerService$FileMetadata;)Z
    .locals 16
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "info"    # Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5721
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    const-wide/32 v14, 0x8000

    cmp-long v12, v12, v14

    if-lez v12, :cond_0

    .line 5722
    const-string v12, "RestoreEngine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Suspiciously large pax header size "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " - aborting"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5724
    new-instance v12, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Sanity failure: pax header size "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 5728
    :cond_0
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    const-wide/16 v14, 0x1ff

    add-long/2addr v12, v14

    const/16 v14, 0x9

    shr-long/2addr v12, v14

    long-to-int v8, v12

    .line 5729
    .local v8, "numBlocks":I
    mul-int/lit16 v12, v8, 0x200

    new-array v3, v12, [B

    .line 5730
    .local v3, "data":[B
    const/4 v12, 0x0

    array-length v13, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v12, v13}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v12

    array-length v13, v3

    if-ge v12, v13, :cond_1

    .line 5731
    new-instance v12, Ljava/io/IOException;

    const-string v13, "Unable to read full pax header"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 5733
    :cond_1
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    array-length v14, v3

    int-to-long v14, v14

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    .line 5735
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    long-to-int v2, v12

    .line 5736
    .local v2, "contentSize":I
    const/4 v9, 0x0

    .line 5739
    .local v9, "offset":I
    :cond_2
    add-int/lit8 v4, v9, 0x1

    .line 5740
    .local v4, "eol":I
    :goto_0
    if-ge v4, v2, :cond_3

    aget-byte v12, v3, v4

    const/16 v13, 0x20

    if-eq v12, v13, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5741
    :cond_3
    if-lt v4, v2, :cond_4

    .line 5743
    new-instance v12, Ljava/io/IOException;

    const-string v13, "Invalid pax data"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 5746
    :cond_4
    sub-int v12, v4, v9

    const/16 v13, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9, v12, v13}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractRadix([BIII)J

    move-result-wide v12

    long-to-int v7, v12

    .line 5747
    .local v7, "linelen":I
    add-int/lit8 v5, v4, 0x1

    .line 5748
    .local v5, "key":I
    add-int v12, v9, v7

    add-int/lit8 v4, v12, -0x1

    .line 5750
    add-int/lit8 v11, v5, 0x1

    .local v11, "value":I
    :goto_1
    aget-byte v12, v3, v11

    const/16 v13, 0x3d

    if-eq v12, v13, :cond_5

    if-gt v11, v4, :cond_5

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 5751
    :cond_5
    if-le v11, v4, :cond_6

    .line 5752
    new-instance v12, Ljava/io/IOException;

    const-string v13, "Invalid pax declaration"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 5756
    :cond_6
    new-instance v6, Ljava/lang/String;

    sub-int v12, v11, v5

    const-string v13, "UTF-8"

    invoke-direct {v6, v3, v5, v12, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 5758
    .local v6, "keyStr":Ljava/lang/String;
    new-instance v10, Ljava/lang/String;

    add-int/lit8 v12, v11, 0x1

    sub-int v13, v4, v11

    add-int/lit8 v13, v13, -0x1

    const-string v14, "UTF-8"

    invoke-direct {v10, v3, v12, v13, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 5760
    .local v10, "valStr":Ljava/lang/String;
    const-string v12, "path"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 5761
    move-object/from16 v0, p2

    iput-object v10, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 5768
    :goto_2
    add-int/2addr v9, v7

    .line 5769
    if-lt v9, v2, :cond_2

    .line 5771
    const/4 v12, 0x1

    return v12

    .line 5762
    :cond_7
    const-string v12, "size"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 5763
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p2

    iput-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    goto :goto_2

    .line 5765
    :cond_8
    const-string v12, "RestoreEngine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unhandled pax key: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method readTarHeader(Ljava/io/InputStream;[B)Z
    .locals 6
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "block"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x200

    const/4 v1, 0x0

    .line 5710
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v0

    .line 5711
    .local v0, "got":I
    if-nez v0, :cond_0

    .line 5714
    :goto_0
    return v1

    .line 5712
    :cond_0
    if-ge v0, v2, :cond_1

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to read full block header"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5713
    :cond_1
    iget-wide v2, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    const-wide/16 v4, 0x200

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    .line 5714
    const/4 v1, 0x1

    goto :goto_0
.end method

.method readTarHeaders(Ljava/io/InputStream;)Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .locals 13
    .param p1, "instream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5535
    const/16 v8, 0x200

    new-array v0, v8, [B

    .line 5536
    .local v0, "block":[B
    const/4 v3, 0x0

    .line 5538
    .local v3, "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readTarHeader(Ljava/io/InputStream;[B)Z

    move-result v2

    .line 5539
    .local v2, "gotHeader":Z
    if-eqz v2, :cond_7

    .line 5542
    :try_start_0
    new-instance v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;

    invoke-direct {v4}, Lcom/android/server/backup/BackupManagerService$FileMetadata;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5543
    .end local v3    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .local v4, "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    const/16 v8, 0x7c

    const/16 v9, 0xc

    const/16 v10, 0x8

    :try_start_1
    invoke-virtual {p0, v0, v8, v9, v10}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    .line 5544
    const/16 v8, 0x88

    const/16 v9, 0xc

    const/16 v10, 0x8

    invoke-virtual {p0, v0, v8, v9, v10}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mtime:J

    .line 5545
    const/16 v8, 0x64

    const/16 v9, 0x8

    const/16 v10, 0x8

    invoke-virtual {p0, v0, v8, v9, v10}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    .line 5547
    const/16 v8, 0x159

    const/16 v9, 0x9b

    invoke-virtual {p0, v0, v8, v9}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractString([BII)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 5548
    const/4 v8, 0x0

    const/16 v9, 0x64

    invoke-virtual {p0, v0, v8, v9}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractString([BII)Ljava/lang/String;

    move-result-object v5

    .line 5549
    .local v5, "path":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 5550
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 5551
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 5555
    :cond_1
    const/16 v8, 0x9c

    aget-byte v7, v0, v8

    .line 5556
    .local v7, "typeChar":I
    const/16 v8, 0x78

    if-ne v7, v8, :cond_4

    .line 5558
    invoke-virtual {p0, p1, v4}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readPaxExtendedHeader(Ljava/io/InputStream;Lcom/android/server/backup/BackupManagerService$FileMetadata;)Z

    move-result v2

    .line 5559
    if-eqz v2, :cond_2

    .line 5562
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readTarHeader(Ljava/io/InputStream;[B)Z

    move-result v2

    .line 5564
    :cond_2
    if-nez v2, :cond_3

    new-instance v8, Ljava/io/IOException;

    const-string v9, "Bad or missing pax header"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5626
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "typeChar":I
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 5628
    .end local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .local v1, "e":Ljava/io/IOException;
    .restart local v3    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    :goto_0
    const-string v8, "RestoreEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Parse error in header: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5633
    throw v1

    .line 5566
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .restart local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v7    # "typeChar":I
    :cond_3
    const/16 v8, 0x9c

    :try_start_2
    aget-byte v7, v0, v8

    .line 5569
    :cond_4
    sparse-switch v7, :sswitch_data_0

    .line 5585
    const-string v8, "RestoreEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown tar entity type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5586
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown entity type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 5570
    :sswitch_0
    const/4 v8, 0x1

    iput v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->type:I

    .line 5593
    :cond_5
    :goto_1
    const-string v8, "shared/"

    const/4 v9, 0x0

    iget-object v10, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "shared/"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 5596
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v9, "shared/"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 5597
    const-string v8, "com.android.sharedstoragebackup"

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    .line 5598
    const-string v8, "shared"

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    .line 5599
    const-string v8, "RestoreEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File in shared storage: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    move-object v3, v4

    .end local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "typeChar":I
    .restart local v3    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    :cond_7
    move-object v8, v3

    .line 5636
    :goto_3
    return-object v8

    .line 5572
    .end local v3    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .restart local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v7    # "typeChar":I
    :sswitch_1
    const/4 v8, 0x2

    iput v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->type:I

    .line 5573
    iget-wide v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    .line 5574
    const-string v8, "RestoreEngine"

    const-string v9, "Directory entry with nonzero size in header"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5575
    const-wide/16 v8, 0x0

    iput-wide v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    goto :goto_1

    .line 5582
    :sswitch_2
    const/4 v3, 0x0

    move-object v8, v3

    move-object v3, v4

    .end local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .restart local v3    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    goto :goto_3

    .line 5600
    .end local v3    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .restart local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    :cond_8
    const-string v8, "apps/"

    const/4 v9, 0x0

    iget-object v10, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "apps/"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 5605
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v9, "apps/"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 5608
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 5609
    .local v6, "slash":I
    if-gez v6, :cond_9

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Illegal semantic path in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 5610
    :cond_9
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    .line 5611
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 5615
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v9, "_manifest"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v9, "_meta"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 5617
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 5618
    if-gez v6, :cond_a

    .line 5619
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Illegal semantic path in non-manifest "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 5622
    :cond_a
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    .line 5623
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 5626
    .end local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "slash":I
    .end local v7    # "typeChar":I
    .restart local v3    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    :catch_1
    move-exception v1

    goto/16 :goto_0

    .line 5569
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x30 -> :sswitch_0
        0x35 -> :sswitch_1
    .end sparse-switch
.end method

.method public restoreOneFile(Ljava/io/InputStream;Z)Z
    .locals 44
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "mustKillAgent"    # Z

    .prologue
    .line 4749
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->isRunning()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4750
    const-string v5, "RestoreEngine"

    const-string v7, "Restore engine used after halting"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4751
    const/4 v5, 0x0

    .line 5067
    :goto_0
    return v5

    .line 4759
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readTarHeaders(Ljava/io/InputStream;)Lcom/android/server/backup/BackupManagerService$FileMetadata;

    move-result-object v33

    .line 4760
    .local v33, "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    if-eqz v33, :cond_4

    .line 4765
    move-object/from16 v0, v33

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    .line 4766
    .local v6, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 4769
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    if-eqz v5, :cond_1

    .line 4770
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4771
    const-string v5, "RestoreEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected data for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " but saw "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4773
    const/4 v5, -0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->setResult(I)V

    .line 4774
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->setRunning(Z)V

    .line 4775
    const/4 v5, 0x0

    goto :goto_0

    .line 4781
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 4782
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v7, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4787
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v5, :cond_3

    .line 4788
    const-string v5, "RestoreEngine"

    const-string v7, "Saw new package; finalizing old one"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4790
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->tearDownPipes()V

    .line 4791
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 4792
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 4793
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    .line 4797
    :cond_3
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v7, "_manifest"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4798
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readAppManifest(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/io/InputStream;)Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4799
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    move-object/from16 v0, v33

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4803
    move-object/from16 v0, v33

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->skipTarPadding(JLjava/io/InputStream;)V

    .line 4804
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->sendOnRestorePackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5057
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_4
    :goto_1
    if-nez v33, :cond_5

    .line 5061
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->tearDownPipes()V

    .line 5062
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->setRunning(Z)V

    .line 5063
    if-eqz p2, :cond_5

    .line 5064
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 5067
    :cond_5
    if-eqz v33, :cond_1c

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 4805
    .restart local v6    # "pkg":Ljava/lang/String;
    :cond_6
    :try_start_1
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v7, "_meta"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 4807
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readMetadata(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/io/InputStream;)V

    .line 4808
    move-object/from16 v0, v33

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->skipTarPadding(JLjava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 5050
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v33    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    :catch_0
    move-exception v32

    .line 5051
    .local v32, "e":Ljava/io/IOException;
    const-string v5, "RestoreEngine"

    const-string v7, "io exception on restore socket read"

    move-object/from16 v0, v32

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5052
    const/4 v5, -0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->setResult(I)V

    .line 5053
    const/16 v33, 0x0

    .restart local v33    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    goto :goto_1

    .line 4812
    .end local v32    # "e":Ljava/io/IOException;
    .restart local v6    # "pkg":Ljava/lang/String;
    :cond_7
    const/16 v35, 0x1

    .line 4813
    .local v35, "okay":Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    .line 4814
    .local v40, "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    sget-object v5, Lcom/android/server/backup/BackupManagerService$6;->$SwitchMap$com$android$server$backup$BackupManagerService$RestorePolicy:[I

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_0

    .line 4859
    const-string v5, "RestoreEngine"

    const-string v7, "Invalid policy from manifest"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4860
    const/16 v35, 0x0

    .line 4861
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v7, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4866
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->isRestorableFile(Lcom/android/server/backup/BackupManagerService$FileMetadata;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 4867
    const/16 v35, 0x0

    .line 4872
    :cond_9
    if-eqz v35, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v5, :cond_a

    .line 4873
    const-string v5, "RestoreEngine"

    const-string v7, "Reusing existing agent instance"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4875
    :cond_a
    if-eqz v35, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-nez v5, :cond_d

    .line 4876
    const-string v5, "RestoreEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Need to launch agent for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4879
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->access$400(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 4883
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 4887
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v5, :cond_b

    .line 4888
    const-string v5, "RestoreEngine"

    const-string v7, "Clearing app data preparatory to full restore"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4889
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    .line 4894
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4902
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->setUpPipes()V

    .line 4903
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v8, 0x3

    invoke-virtual {v5, v7, v8}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 4905
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgentPackage:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    .line 4912
    :goto_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-nez v5, :cond_d

    .line 4913
    const-string v5, "RestoreEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to create agent for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4914
    const/16 v35, 0x0

    .line 4915
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->tearDownPipes()V

    .line 4916
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v7, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4922
    :cond_d
    if-eqz v35, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 4923
    const-string v5, "RestoreEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Restoring data for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " but agent is for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4925
    const/16 v35, 0x0

    .line 4932
    :cond_e
    if-eqz v35, :cond_19

    .line 4933
    const/4 v4, 0x1

    .line 4934
    .local v4, "agentSuccess":Z
    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v42, v0

    .line 4935
    .local v42, "toCopy":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/BackupManagerService;->generateToken()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v16

    .line 4937
    .local v16, "token":I
    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-wide/32 v8, 0x493e0

    const/4 v7, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v0, v8, v9, v7}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    .line 4938
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v7, "obb"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 4939
    const-string v5, "RestoreEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Restoring OBB file for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v33

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4941
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object/from16 v0, v33

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, v33

    iget v10, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->type:I

    move-object/from16 v0, v33

    iget-object v11, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    move-object/from16 v0, v33

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    move-object/from16 v0, v33

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mtime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v5 .. v17}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 4976
    :goto_4
    if-eqz v35, :cond_12

    .line 4981
    const/16 v39, 0x1

    .line 4982
    .local v39, "pipeOkay":Z
    :try_start_6
    new-instance v38, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 4984
    .local v38, "pipe":Ljava/io/FileOutputStream;
    :cond_f
    :goto_5
    const-wide/16 v8, 0x0

    cmp-long v5, v42, v8

    if-lez v5, :cond_11

    .line 4985
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBuffer:[B

    array-length v5, v5

    int-to-long v8, v5

    cmp-long v5, v42, v8

    if-lez v5, :cond_17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBuffer:[B

    array-length v0, v5

    move/from16 v41, v0

    .line 4987
    .local v41, "toRead":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBuffer:[B

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v5, v7, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v36

    .line 4988
    .local v36, "nRead":I
    if-ltz v36, :cond_10

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    move/from16 v0, v36

    int-to-long v12, v0

    add-long/2addr v8, v12

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    .line 4989
    :cond_10
    if-gtz v36, :cond_18

    .line 5006
    .end local v36    # "nRead":I
    .end local v41    # "toRead":I
    :cond_11
    move-object/from16 v0, v33

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->skipTarPadding(JLjava/io/InputStream;)V

    .line 5010
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/server/backup/BackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v4

    .line 5015
    .end local v38    # "pipe":Ljava/io/FileOutputStream;
    .end local v39    # "pipeOkay":Z
    :cond_12
    if-nez v4, :cond_19

    .line 5016
    const-string v5, "RestoreEngine"

    const-string v7, "Agent failure; ending restore"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5017
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v7, 0x7

    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 5018
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->tearDownPipes()V

    .line 5019
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 5020
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 5021
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v7, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5025
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    if-eqz v5, :cond_19

    .line 5026
    const/4 v5, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->setResult(I)V

    .line 5027
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->setRunning(Z)V

    .line 5028
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 4816
    .end local v4    # "agentSuccess":Z
    .end local v16    # "token":I
    .end local v42    # "toCopy":J
    :pswitch_0
    const/16 v35, 0x0

    .line 4817
    goto/16 :goto_2

    .line 4822
    :pswitch_1
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v7, "a"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 4823
    const-string v5, "RestoreEngine"

    const-string v7, "APK file; installing"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4825
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    .line 4826
    .local v34, "installerName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->installApk(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v35

    .line 4828
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    if-eqz v35, :cond_13

    sget-object v5, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    :goto_7
    invoke-virtual {v7, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4834
    move-object/from16 v0, v33

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->skipTarPadding(JLjava/io/InputStream;)V

    .line 4835
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 4828
    :cond_13
    sget-object v5, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    goto :goto_7

    .line 4839
    .end local v34    # "installerName":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v7, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4840
    const/16 v35, 0x0

    .line 4842
    goto/16 :goto_2

    .line 4845
    :pswitch_2
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v7, "a"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 4846
    const-string v5, "RestoreEngine"

    const-string v7, "apk present but ACCEPT"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 4851
    const/16 v35, 0x0

    goto/16 :goto_2

    .line 4951
    .restart local v4    # "agentSuccess":Z
    .restart local v16    # "token":I
    .restart local v42    # "toCopy":J
    :cond_15
    :try_start_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v7, "system"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 4952
    const-string v5, "RestoreEngine"

    const-string v7, "system process agent - spinning a thread"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4953
    new-instance v11, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v7, 0x0

    aget-object v15, v5, v7

    move-object/from16 v12, p0

    move-object/from16 v14, v33

    invoke-direct/range {v11 .. v16}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;-><init>(Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;Landroid/app/IBackupAgent;Lcom/android/server/backup/BackupManagerService$FileMetadata;Landroid/os/ParcelFileDescriptor;I)V

    .line 4955
    .local v11, "runner":Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;
    new-instance v5, Ljava/lang/Thread;

    const-string v7, "restore-sys-runner"

    invoke-direct {v5, v11, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_4

    .line 4962
    .end local v11    # "runner":Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;
    :catch_1
    move-exception v32

    .line 4964
    .restart local v32    # "e":Ljava/io/IOException;
    :try_start_8
    const-string v5, "RestoreEngine"

    const-string v7, "Couldn\'t establish restore"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 4965
    const/4 v4, 0x0

    .line 4966
    const/16 v35, 0x0

    .line 4973
    goto/16 :goto_4

    .line 4957
    .end local v32    # "e":Ljava/io/IOException;
    :cond_16
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v7, 0x0

    aget-object v18, v5, v7

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v19, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->type:I

    move/from16 v21, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mtime:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v0, v5, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move-object/from16 v29, v0

    move/from16 v28, v16

    invoke-interface/range {v17 .. v29}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_4

    .line 4967
    :catch_2
    move-exception v32

    .line 4970
    .local v32, "e":Landroid/os/RemoteException;
    :try_start_a
    const-string v5, "RestoreEngine"

    const-string v7, "Agent crashed during full restore"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 4971
    const/4 v4, 0x0

    .line 4972
    const/16 v35, 0x0

    goto/16 :goto_4

    .line 4985
    .end local v32    # "e":Landroid/os/RemoteException;
    .restart local v38    # "pipe":Ljava/io/FileOutputStream;
    .restart local v39    # "pipeOkay":Z
    :cond_17
    move-wide/from16 v0, v42

    long-to-int v0, v0

    move/from16 v41, v0

    goto/16 :goto_6

    .line 4990
    .restart local v36    # "nRead":I
    .restart local v41    # "toRead":I
    :cond_18
    move/from16 v0, v36

    int-to-long v8, v0

    sub-long v42, v42, v8

    .line 4994
    if-eqz v39, :cond_f

    .line 4996
    :try_start_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBuffer:[B

    const/4 v7, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v5, v7, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_5

    .line 4997
    :catch_3
    move-exception v32

    .line 4998
    .local v32, "e":Ljava/io/IOException;
    :try_start_c
    const-string v5, "RestoreEngine"

    const-string v7, "Failed to write to restore pipe"

    move-object/from16 v0, v32

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4999
    const/16 v39, 0x0

    goto/16 :goto_5

    .line 5036
    .end local v4    # "agentSuccess":Z
    .end local v16    # "token":I
    .end local v32    # "e":Ljava/io/IOException;
    .end local v36    # "nRead":I
    .end local v38    # "pipe":Ljava/io/FileOutputStream;
    .end local v39    # "pipeOkay":Z
    .end local v41    # "toRead":I
    .end local v42    # "toCopy":J
    :cond_19
    if-nez v35, :cond_4

    .line 5038
    move-object/from16 v0, v33

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    const-wide/16 v12, 0x1ff

    add-long/2addr v8, v12

    const-wide/16 v12, -0x200

    and-long v30, v8, v12

    .line 5039
    .local v30, "bytesToConsume":J
    :goto_8
    const-wide/16 v8, 0x0

    cmp-long v5, v30, v8

    if-lez v5, :cond_4

    .line 5040
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBuffer:[B

    array-length v5, v5

    int-to-long v8, v5

    cmp-long v5, v30, v8

    if-lez v5, :cond_1b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBuffer:[B

    array-length v0, v5

    move/from16 v41, v0

    .line 5042
    .restart local v41    # "toRead":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBuffer:[B

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v5, v7, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v36, v0

    .line 5043
    .local v36, "nRead":J
    const-wide/16 v8, 0x0

    cmp-long v5, v36, v8

    if-ltz v5, :cond_1a

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    add-long v8, v8, v36

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    .line 5044
    :cond_1a
    const-wide/16 v8, 0x0

    cmp-long v5, v36, v8

    if-lez v5, :cond_4

    .line 5045
    sub-long v30, v30, v36

    .line 5046
    goto :goto_8

    .line 5040
    .end local v36    # "nRead":J
    .end local v41    # "toRead":I
    :cond_1b
    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v41, v0

    goto :goto_9

    .line 5067
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v30    # "bytesToConsume":J
    .end local v35    # "okay":Z
    .end local v40    # "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    :cond_1c
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 4908
    .restart local v6    # "pkg":Ljava/lang/String;
    .restart local v35    # "okay":Z
    .restart local v40    # "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    :catch_4
    move-exception v5

    goto/16 :goto_3

    .line 4906
    :catch_5
    move-exception v5

    goto/16 :goto_3

    .line 4814
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method sendEndRestore()V
    .locals 3

    .prologue
    .line 5823
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_0

    .line 5825
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onEndRestore()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5831
    :cond_0
    :goto_0
    return-void

    .line 5826
    :catch_0
    move-exception v0

    .line 5827
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RestoreEngine"

    const-string v2, "full restore observer went away: endRestore"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5828
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_0
.end method

.method sendOnRestorePackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5811
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_0

    .line 5814
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onRestorePackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5820
    :cond_0
    :goto_0
    return-void

    .line 5815
    :catch_0
    move-exception v0

    .line 5816
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RestoreEngine"

    const-string v2, "full restore observer went away: restorePackage"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5817
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_0
.end method

.method sendStartRestore()V
    .locals 3

    .prologue
    .line 5800
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_0

    .line 5802
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onStartRestore()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5808
    :cond_0
    :goto_0
    return-void

    .line 5803
    :catch_0
    move-exception v0

    .line 5804
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RestoreEngine"

    const-string v2, "full restore observer went away: startRestore"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5805
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_0
.end method

.method setUpPipes()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5071
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 5072
    return-void
.end method

.method skipTarPadding(JLjava/io/InputStream;)V
    .locals 9
    .param p1, "size"    # J
    .param p3, "instream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x200

    .line 5270
    add-long v4, p1, v6

    rem-long v2, v4, v6

    .line 5271
    .local v2, "partial":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 5272
    long-to-int v4, v2

    rsub-int v1, v4, 0x200

    .line 5276
    .local v1, "needed":I
    new-array v0, v1, [B

    .line 5277
    .local v0, "buffer":[B
    const/4 v4, 0x0

    invoke-virtual {p0, p3, v0, v4, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 5278
    iget-wide v4, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    .line 5281
    .end local v0    # "buffer":[B
    .end local v1    # "needed":I
    :cond_0
    return-void

    .line 5279
    .restart local v0    # "buffer":[B
    .restart local v1    # "needed":I
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unexpected EOF in padding"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method tearDownAgent(Landroid/content/pm/ApplicationInfo;)V
    .locals 1
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 5089
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_0

    .line 5090
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    .line 5091
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 5093
    :cond_0
    return-void
.end method

.method tearDownPipes()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5075
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 5077
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 5078
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 5079
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 5080
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5084
    :goto_0
    iput-object v4, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 5086
    :cond_0
    return-void

    .line 5081
    :catch_0
    move-exception v0

    .line 5082
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "RestoreEngine"

    const-string v2, "Couldn\'t close agent pipes"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
