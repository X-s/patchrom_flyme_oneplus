.class Lcom/android/server/pm/PackageManagerService$FileInstallArgs$2;
.super Lcom/android/internal/os/IParcelFileDescriptorFactory$Stub;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->doCopyApkTheme(Lcom/android/internal/app/IMediaContainerService;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageManagerService$FileInstallArgs;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$FileInstallArgs;)V
    .locals 0

    .prologue
    .line 11719
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs$2;->this$1:Lcom/android/server/pm/PackageManagerService$FileInstallArgs;

    invoke-direct {p0}, Lcom/android/internal/os/IParcelFileDescriptorFactory$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public open(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 11723
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs$2;->this$1:Lcom/android/server/pm/PackageManagerService$FileInstallArgs;

    # getter for: Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->access$4500(Lcom/android/server/pm/PackageManagerService$FileInstallArgs;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11724
    .local v2, "file":Ljava/io/File;
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "creating theme package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11725
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 11726
    .local v3, "parent":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 11727
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 11729
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    sget v5, Landroid/system/OsConstants;->O_RDWR:I

    sget v6, Landroid/system/OsConstants;->O_CREAT:I

    or-int/2addr v5, v6

    const/16 v6, 0x1a4

    invoke-static {v4, v5, v6}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 11731
    .local v1, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1a4

    invoke-static {v4, v5}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 11732
    new-instance v4, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v4, v1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 11733
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "parent":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 11734
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v4, Landroid/os/RemoteException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to open: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
