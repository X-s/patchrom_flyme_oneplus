.class final Lcom/android/settings_ex/applications/AppPermissions$PermissionGroup;
.super Ljava/lang/Object;
.source "AppPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/AppPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PermissionGroup"
.end annotation


# instance fields
.field private mHasRuntimePermissions:Z

.field private final mPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/applications/AppPermissions$Permission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/applications/AppPermissions$PermissionGroup;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/applications/AppPermissions$PermissionGroup;->mHasRuntimePermissions:Z

    return v0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/AppPermissions$PermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    .line 129
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/applications/AppPermissions$PermissionGroup;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/applications/AppPermissions$PermissionGroup;-><init>()V

    return-void
.end method


# virtual methods
.method addPermission(Lcom/android/settings_ex/applications/AppPermissions$Permission;Ljava/lang/String;)V
    .locals 1
    .param p1, "permission"    # Lcom/android/settings_ex/applications/AppPermissions$Permission;
    .param p2, "permName"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppPermissions$PermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-static {p1}, Lcom/android/settings_ex/applications/AppPermissions$Permission;->-get1(Lcom/android/settings_ex/applications/AppPermissions$Permission;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/AppPermissions$PermissionGroup;->mHasRuntimePermissions:Z

    .line 152
    :cond_0
    return-void
.end method

.method public areRuntimePermissionsGranted()Z
    .locals 4

    .prologue
    .line 138
    iget-object v3, p0, Lcom/android/settings_ex/applications/AppPermissions$PermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 139
    .local v2, "permissionCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 140
    iget-object v3, p0, Lcom/android/settings_ex/applications/AppPermissions$PermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/AppPermissions$Permission;

    .line 141
    .local v1, "permission":Lcom/android/settings_ex/applications/AppPermissions$Permission;
    invoke-static {v1}, Lcom/android/settings_ex/applications/AppPermissions$Permission;->-get1(Lcom/android/settings_ex/applications/AppPermissions$Permission;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Lcom/android/settings_ex/applications/AppPermissions$Permission;->-get0(Lcom/android/settings_ex/applications/AppPermissions$Permission;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_1
    const/4 v3, 0x0

    return v3

    .line 145
    .end local v1    # "permission":Lcom/android/settings_ex/applications/AppPermissions$Permission;
    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method public getPermissions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/applications/AppPermissions$Permission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings_ex/applications/AppPermissions$PermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hasRuntimePermissions()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/AppPermissions$PermissionGroup;->mHasRuntimePermissions:Z

    return v0
.end method
