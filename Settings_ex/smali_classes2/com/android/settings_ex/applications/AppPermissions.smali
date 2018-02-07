.class public final Lcom/android/settings_ex/applications/AppPermissions;
.super Ljava/lang/Object;
.source "AppPermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/AppPermissions$Permission;,
        Lcom/android/settings_ex/applications/AppPermissions$PermissionGroup;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppPermissions"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGroups:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/applications/AppPermissions$PermissionGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageInfo:Landroid/content/pm/PackageInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/AppPermissions;->mGroups:Landroid/util/ArrayMap;

    .line 45
    iput-object p1, p0, Lcom/android/settings_ex/applications/AppPermissions;->mContext:Landroid/content/Context;

    .line 46
    invoke-direct {p0, p2}, Lcom/android/settings_ex/applications/AppPermissions;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 47
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppPermissions;->refresh()V

    .line 44
    return-void
.end method

.method public static appSupportsRuntime(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 126
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 53
    const/16 v2, 0x1000

    .line 52
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v1, "AppPermissions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    const/4 v1, 0x0

    return-object v1
.end method

.method private loadPermissionGroups()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 81
    iget-object v11, p0, Lcom/android/settings_ex/applications/AppPermissions;->mGroups:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->clear()V

    .line 82
    iget-object v11, p0, Lcom/android/settings_ex/applications/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v11, :cond_0

    .line 83
    return-void

    .line 87
    :cond_0
    iget-object v11, p0, Lcom/android/settings_ex/applications/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 86
    invoke-static {v11}, Lcom/android/settings_ex/applications/AppPermissions;->appSupportsRuntime(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    .line 89
    .local v0, "appSupportsRuntimePermissions":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v11, p0, Lcom/android/settings_ex/applications/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v11, v11

    if-ge v5, v11, :cond_6

    .line 90
    iget-object v11, p0, Lcom/android/settings_ex/applications/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v9, v11, v5

    .line 94
    .local v9, "requestedPerm":Ljava/lang/String;
    :try_start_0
    iget-object v11, p0, Lcom/android/settings_ex/applications/AppPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v9, v12}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 100
    .local v6, "permInfo":Landroid/content/pm/PermissionInfo;
    iget-object v7, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 101
    .local v7, "permName":Ljava/lang/String;
    iget-object v11, v6, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v11, :cond_2

    iget-object v4, v6, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 103
    .local v4, "groupName":Ljava/lang/String;
    :goto_1
    iget-object v11, p0, Lcom/android/settings_ex/applications/AppPermissions;->mGroups:Landroid/util/ArrayMap;

    invoke-virtual {v11, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/applications/AppPermissions$PermissionGroup;

    .line 104
    .local v3, "group":Lcom/android/settings_ex/applications/AppPermissions$PermissionGroup;
    if-nez v3, :cond_1

    .line 105
    new-instance v3, Lcom/android/settings_ex/applications/AppPermissions$PermissionGroup;

    .end local v3    # "group":Lcom/android/settings_ex/applications/AppPermissions$PermissionGroup;
    invoke-direct {v3, v14}, Lcom/android/settings_ex/applications/AppPermissions$PermissionGroup;-><init>(Lcom/android/settings_ex/applications/AppPermissions$PermissionGroup;)V

    .line 106
    .restart local v3    # "group":Lcom/android/settings_ex/applications/AppPermissions$PermissionGroup;
    iget-object v11, p0, Lcom/android/settings_ex/applications/AppPermissions;->mGroups:Landroid/util/ArrayMap;

    invoke-virtual {v11, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_1
    if-eqz v0, :cond_4

    .line 110
    iget v11, v6, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    const/4 v10, 0x1

    .line 111
    .local v10, "runtime":Z
    :goto_2
    iget-object v11, p0, Lcom/android/settings_ex/applications/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v11, v11, v5

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_5

    const/4 v2, 0x1

    .line 114
    .local v2, "granted":Z
    :goto_3
    new-instance v8, Lcom/android/settings_ex/applications/AppPermissions$Permission;

    invoke-direct {v8, v10, v2}, Lcom/android/settings_ex/applications/AppPermissions$Permission;-><init>(ZZ)V

    .line 115
    .local v8, "permission":Lcom/android/settings_ex/applications/AppPermissions$Permission;
    invoke-virtual {v3, v8, v7}, Lcom/android/settings_ex/applications/AppPermissions$PermissionGroup;->addPermission(Lcom/android/settings_ex/applications/AppPermissions$Permission;Ljava/lang/String;)V

    .line 89
    .end local v2    # "granted":Z
    .end local v3    # "group":Lcom/android/settings_ex/applications/AppPermissions$PermissionGroup;
    .end local v4    # "groupName":Ljava/lang/String;
    .end local v6    # "permInfo":Landroid/content/pm/PermissionInfo;
    .end local v7    # "permName":Ljava/lang/String;
    .end local v8    # "permission":Lcom/android/settings_ex/applications/AppPermissions$Permission;
    .end local v10    # "runtime":Z
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v11, "AppPermissions"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unknown permission: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 101
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "permInfo":Landroid/content/pm/PermissionInfo;
    .restart local v7    # "permName":Ljava/lang/String;
    :cond_2
    move-object v4, v7

    .restart local v4    # "groupName":Ljava/lang/String;
    goto :goto_1

    .line 110
    .restart local v3    # "group":Lcom/android/settings_ex/applications/AppPermissions$PermissionGroup;
    :cond_3
    const/4 v10, 0x0

    .restart local v10    # "runtime":Z
    goto :goto_2

    .line 109
    .end local v10    # "runtime":Z
    :cond_4
    const/4 v10, 0x0

    .restart local v10    # "runtime":Z
    goto :goto_2

    .line 111
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "granted":Z
    goto :goto_3

    .line 118
    .end local v2    # "granted":Z
    .end local v3    # "group":Lcom/android/settings_ex/applications/AppPermissions$PermissionGroup;
    .end local v4    # "groupName":Ljava/lang/String;
    .end local v6    # "permInfo":Landroid/content/pm/PermissionInfo;
    .end local v7    # "permName":Ljava/lang/String;
    .end local v9    # "requestedPerm":Ljava/lang/String;
    .end local v10    # "runtime":Z
    :cond_6
    iget-object v11, p0, Lcom/android/settings_ex/applications/AppPermissions;->mGroups:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    add-int/lit8 v5, v11, -0x1

    :goto_5
    if-ltz v5, :cond_8

    .line 119
    iget-object v11, p0, Lcom/android/settings_ex/applications/AppPermissions;->mGroups:Landroid/util/ArrayMap;

    invoke-virtual {v11, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings_ex/applications/AppPermissions$PermissionGroup;

    invoke-static {v11}, Lcom/android/settings_ex/applications/AppPermissions$PermissionGroup;->-get0(Lcom/android/settings_ex/applications/AppPermissions$PermissionGroup;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 120
    iget-object v11, p0, Lcom/android/settings_ex/applications/AppPermissions;->mGroups:Landroid/util/ArrayMap;

    invoke-virtual {v11, v5}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 118
    :cond_7
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    .line 80
    :cond_8
    return-void
.end method


# virtual methods
.method public getGrantedPermissionsCount()I
    .locals 3

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "ct":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/AppPermissions;->mGroups:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 73
    iget-object v2, p0, Lcom/android/settings_ex/applications/AppPermissions;->mGroups:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/AppPermissions$PermissionGroup;

    invoke-virtual {v2}, Lcom/android/settings_ex/applications/AppPermissions$PermissionGroup;->areRuntimePermissionsGranted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    add-int/lit8 v0, v0, 0x1

    .line 72
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_1
    return v0
.end method

.method public getPermissionCount()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppPermissions;->mGroups:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/android/settings_ex/applications/AppPermissions;->loadPermissionGroups()V

    .line 60
    :cond_0
    return-void
.end method
