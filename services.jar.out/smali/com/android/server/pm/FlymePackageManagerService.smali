.class public Lcom/android/server/pm/FlymePackageManagerService;
.super Landroid/content/pm/IFlymePackageManager$Stub;
.source "FlymePackageManagerService.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mInstaller:Lcom/android/server/pm/Installer;

.field private mInterceptPackage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPms:Lcom/android/server/pm/PackageManagerService;

.field private startFromInteractive:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "installer"    # Lcom/android/server/pm/Installer;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/content/pm/IFlymePackageManager$Stub;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mInterceptPackage:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->startFromInteractive:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/pm/FlymePackageManagerService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    iput-object p3, p0, Lcom/android/server/pm/FlymePackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    return-void
.end method


# virtual methods
.method public backupData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "sourceDir"    # Ljava/lang/String;
    .param p2, "targetDir"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageManagerService;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "pkgName":Ljava/lang/String;
    if-nez v1, :cond_0

    const-string v3, "FPMS"

    const-string v4, "Calling package is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v1, v2, v2}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v5, "android"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/FlymePackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/pm/Installer;->copyDataFiles(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_1
    const-string v3, "FPMS"

    const-string v4, "Calling package isn\'t System App"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getInternalAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getInternalAppList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackageActivateState(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->getPackageActivateState(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPackageInfoForVersion(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->getPackageInfoForVersion(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public resetVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->resetVersion(Ljava/lang/String;)V

    return-void
.end method

.method public syncPackageState()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService$FlymePackageManagerServiceInjector;->initFlymeDefaultOpService(Lcom/android/server/pm/PackageManagerService;)V

    .line 80
    return-void
.end method

.method public updatePermissions(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->updatePermissions(Ljava/lang/String;)V

    return-void
.end method

.method public changeInterceptPackage(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "state"    # Z

    .prologue
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mInterceptPackage:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mInterceptPackage:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mInterceptPackage:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public changeMayInterceptPackage(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "state"    # Z

    .prologue
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->startFromInteractive:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->startFromInteractive:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->startFromInteractive:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getInterceptPackage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mInterceptPackage:Ljava/util/List;

    return-object v0
.end method

.method public getMayInterceptPackage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->startFromInteractive:Ljava/util/List;

    return-object v0
.end method

.method public setInterceptPackage(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "packageSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/pm/FlymePackageManagerService;->mInterceptPackage:Ljava/util/List;

    return-void
.end method
