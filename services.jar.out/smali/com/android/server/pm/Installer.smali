.class public final Lcom/android/server/pm/Installer;
.super Lcom/android/server/SystemService;
.source "Installer.java"


# static fields
.field public static final DEXOPT_BOOTCOMPLETE:I = 0x10

.field public static final DEXOPT_DEBUGGABLE:I = 0x8

.field public static final DEXOPT_OTA:I = 0x40

.field public static final DEXOPT_PROFILE_GUIDED:I = 0x20

.field public static final DEXOPT_PUBLIC:I = 0x2

.field public static final DEXOPT_SAFEMODE:I = 0x4

.field public static final DEXOPT_SPEED:I = 0x80

.field public static final FLAG_CLEAR_CACHE_ONLY:I = 0x100

.field public static final FLAG_CLEAR_CODE_CACHE_ONLY:I = 0x200

.field private static final TAG:Ljava/lang/String; = "Installer"


# instance fields
.field private final mInstaller:Lcom/android/internal/os/InstallerConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Lcom/android/internal/os/InstallerConnection;

    invoke-direct {v0}, Lcom/android/internal/os/InstallerConnection;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    .line 63
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/os/InstallerConnection;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connection"    # Lcom/android/internal/os/InstallerConnection;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 72
    iput-object p2, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    .line 70
    return-void
.end method

.method private static assertValidInstructionSet(Ljava/lang/String;)V
    .locals 5
    .param p0, "instructionSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    .prologue
    .line 252
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 253
    .local v0, "abi":Ljava/lang/String;
    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 254
    return-void

    .line 252
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    .end local v0    # "abi":Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/android/internal/os/InstallerConnection$InstallerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid instruction set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/os/InstallerConnection$InstallerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "pkgname"    # Ljava/lang/String;
    .param p3, "userid"    # I
    .param p4, "flags"    # I
    .param p5, "ceDataInode"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    const-string/jumbo v1, "clear_app_data"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    .line 107
    return-void
.end method

.method public clearAppProfiles(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    const-string/jumbo v1, "clear_app_profiles"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    .line 186
    return-void
.end method

.method public createAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "pkgname"    # Ljava/lang/String;
    .param p3, "userid"    # I
    .param p4, "flags"    # I
    .param p5, "appid"    # I
    .param p6, "seinfo"    # Ljava/lang/String;
    .param p7, "targetSdkVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    const-string/jumbo v1, "create_app_data"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    const/4 v3, 0x5

    aput-object p6, v2, v3

    .line 92
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v2, v4

    .line 91
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    .line 90
    return-void
.end method

.method public createOatDir(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "oatDir"    # Ljava/lang/String;
    .param p2, "dexInstructionSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    const-string/jumbo v1, "createoatdir"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    .line 223
    return-void
.end method

.method public createUserData(Ljava/lang/String;III)V
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "userSerial"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    const-string/jumbo v1, "create_user_data"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    .line 195
    return-void
.end method

.method public deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "instructionSet"    # Ljava/lang/String;
    .param p3, "outputPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    const-string/jumbo v1, "delete_odex"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    .line 238
    return-void
.end method

.method public destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "pkgname"    # Ljava/lang/String;
    .param p3, "userid"    # I
    .param p4, "flags"    # I
    .param p5, "ceDataInode"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    const-string/jumbo v1, "destroy_app_data"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    .line 112
    return-void
.end method

.method public destroyAppProfiles(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    const-string/jumbo v1, "destroy_app_profiles"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    .line 190
    return-void
.end method

.method public destroyUserData(Ljava/lang/String;II)V
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    const-string/jumbo v1, "destroy_user_data"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    .line 199
    return-void
.end method

.method public dexopt(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "instructionSet"    # Ljava/lang/String;
    .param p4, "dexoptNeeded"    # I
    .param p5, "dexFlags"    # I
    .param p6, "compilerFilter"    # Ljava/lang/String;
    .param p7, "volumeUuid"    # Ljava/lang/String;
    .param p8, "sharedLibraries"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {p3}, Lcom/android/server/pm/Installer;->assertValidInstructionSet(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/os/InstallerConnection;->dexopt(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "instructionSet"    # Ljava/lang/String;
    .param p5, "dexoptNeeded"    # I
    .param p6, "outputPath"    # Ljava/lang/String;
    .param p7, "dexFlags"    # I
    .param p8, "compilerFilter"    # Ljava/lang/String;
    .param p9, "volumeUuid"    # Ljava/lang/String;
    .param p10, "sharedLibraries"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-static {p4}, Lcom/android/server/pm/Installer;->assertValidInstructionSet(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/os/InstallerConnection;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public dumpProfiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "gid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "codePaths"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/InstallerConnection;->dumpProfiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public freeCache(Ljava/lang/String;J)V
    .locals 6
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "freeStorageSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    const-string/jumbo v1, "freecache"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    .line 208
    return-void
.end method

.method public getAppDataInode(Ljava/lang/String;Ljava/lang/String;II)J
    .locals 7
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "pkgname"    # Ljava/lang/String;
    .param p3, "userid"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 138
    iget-object v2, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    const-string/jumbo v3, "get_app_data_inode"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object p2, v4, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "res":[Ljava/lang/String;
    const/4 v2, 0x1

    :try_start_0
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Lcom/android/internal/os/InstallerConnection$InstallerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid inode result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/os/InstallerConnection$InstallerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getAppSize(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Landroid/content/pm/PackageStats;)V
    .locals 7
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "pkgname"    # Ljava/lang/String;
    .param p3, "userid"    # I
    .param p4, "flags"    # I
    .param p5, "ceDataInode"    # J
    .param p7, "codePath"    # Ljava/lang/String;
    .param p8, "stats"    # Landroid/content/pm/PackageStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v2, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    const-string/jumbo v3, "get_app_size"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 126
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v4, v6

    const/4 v5, 0x5

    aput-object p7, v4, v5

    .line 125
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "res":[Ljava/lang/String;
    :try_start_0
    iget-wide v2, p8, Landroid/content/pm/PackageStats;->codeSize:J

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p8, Landroid/content/pm/PackageStats;->codeSize:J

    .line 129
    iget-wide v2, p8, Landroid/content/pm/PackageStats;->dataSize:J

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p8, Landroid/content/pm/PackageStats;->dataSize:J

    .line 130
    iget-wide v2, p8, Landroid/content/pm/PackageStats;->cacheSize:J

    const/4 v4, 0x3

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p8, Landroid/content/pm/PackageStats;->cacheSize:J
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Lcom/android/internal/os/InstallerConnection$InstallerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid size result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/os/InstallerConnection$InstallerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public idmap(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "targetApkPath"    # Ljava/lang/String;
    .param p2, "overlayApkPath"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    const-string/jumbo v1, "idmap"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    .line 173
    return-void
.end method

.method public initPreloadFiles()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    const-string/jumbo v1, "init_preload_files"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    .line 245
    return-void
.end method

.method public linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "fromBase"    # Ljava/lang/String;
    .param p3, "toBase"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    const-string/jumbo v1, "linkfile"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    .line 228
    return-void
.end method

.method public linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "dataPath"    # Ljava/lang/String;
    .param p3, "nativeLibPath32"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    const-string/jumbo v1, "linklib"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    .line 218
    return-void
.end method

.method public markBootComplete(Ljava/lang/String;)V
    .locals 4
    .param p1, "instructionSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    .prologue
    .line 204
    invoke-static {p1}, Lcom/android/server/pm/Installer;->assertValidInstructionSet(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    const-string/jumbo v1, "markbootcomplete"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    .line 203
    return-void
.end method

.method public mergeProfiles(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/InstallerConnection;->mergeProfiles(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "pkgname"    # Ljava/lang/String;
    .param p3, "userid"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    const-string/jumbo v1, "migrate_app_data"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    .line 102
    return-void
.end method

.method public moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "instructionSet"    # Ljava/lang/String;
    .param p3, "outputPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    const-string/jumbo v1, "move_ab"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    .line 233
    return-void
.end method

.method public moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 5
    .param p1, "from_uuid"    # Ljava/lang/String;
    .param p2, "to_uuid"    # Ljava/lang/String;
    .param p3, "package_name"    # Ljava/lang/String;
    .param p4, "data_app_name"    # Ljava/lang/String;
    .param p5, "appid"    # I
    .param p6, "seinfo"    # Ljava/lang/String;
    .param p7, "targetSdkVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    const-string/jumbo v1, "move_complete_app"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    .line 120
    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    const/4 v3, 0x5

    aput-object p6, v2, v3

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v2, v4

    .line 119
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    .line 118
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 85
    const-string/jumbo v0, "Installer"

    const-string/jumbo v1, "Waiting for installd to be ready."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Lcom/android/internal/os/InstallerConnection;->waitForConnection()V

    .line 84
    return-void
.end method

.method public restoreconAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "pkgname"    # Ljava/lang/String;
    .param p3, "userid"    # I
    .param p4, "flags"    # I
    .param p5, "appid"    # I
    .param p6, "seinfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    const-string/jumbo v1, "restorecon_app_data"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    .line 98
    const/4 v3, 0x5

    aput-object p6, v2, v3

    .line 97
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    .line 96
    return-void
.end method

.method public rmPackageDir(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    const-string/jumbo v1, "rmpackagedir"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    .line 182
    return-void
.end method

.method public rmdex(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "codePath"    # Ljava/lang/String;
    .param p2, "instructionSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-static {p2}, Lcom/android/server/pm/Installer;->assertValidInstructionSet(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    const-string/jumbo v1, "rmdex"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setWarnIfHeld(Ljava/lang/Object;)V
    .locals 1
    .param p1, "warnIfHeld"    # Ljava/lang/Object;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/InstallerConnection;->setWarnIfHeld(Ljava/lang/Object;)V

    .line 79
    return-void
.end method
