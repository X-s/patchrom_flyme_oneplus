.class Lcom/android/server/pm/PackageManagerService$8;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->scanDirLI(Ljava/io/File;IIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$ref_currentTime:J

.field final synthetic val$ref_file:Ljava/io/File;

.field final synthetic val$ref_parseFlags:I

.field final synthetic val$ref_scanFlags:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;IIJ)V
    .locals 1

    .prologue
    .line 5993
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$8;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$8;->val$ref_file:Ljava/io/File;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$8;->val$ref_parseFlags:I

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$8;->val$ref_scanFlags:I

    iput-wide p5, p0, Lcom/android/server/pm/PackageManagerService$8;->val$ref_currentTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 5996
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$8;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$8;->val$ref_file:Ljava/io/File;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$8;->val$ref_parseFlags:I

    or-int/lit8 v2, v2, 0x4

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$8;->val$ref_scanFlags:I

    iget-wide v4, p0, Lcom/android/server/pm/PackageManagerService$8;->val$ref_currentTime:J

    const/4 v6, 0x0

    # invokes: Lcom/android/server/pm/PackageManagerService;->scanPackageLI(Ljava/io/File;IIJLandroid/os/UserHandle;)Landroid/content/pm/PackageParser$Package;
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->access$3500(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;IIJLandroid/os/UserHandle;)Landroid/content/pm/PackageParser$Package;
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6012
    :cond_0
    :goto_0
    return-void

    .line 5998
    :catch_0
    move-exception v7

    .line 5999
    .local v7, "e":Lcom/android/server/pm/PackageManagerException;
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$8;->val$ref_file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6002
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$8;->val$ref_parseFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget v0, v7, Lcom/android/server/pm/PackageManagerException;->error:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 6004
    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting invalid package at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$8;->val$ref_file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->logCriticalInfo(ILjava/lang/String;)V

    .line 6005
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$8;->val$ref_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6006
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$8;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$8;->val$ref_file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Installer;->rmPackageDir(Ljava/lang/String;)I

    goto :goto_0

    .line 6008
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$8;->val$ref_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method
