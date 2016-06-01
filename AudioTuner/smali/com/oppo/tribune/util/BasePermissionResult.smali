.class public Lcom/oppo/tribune/util/BasePermissionResult;
.super Ljava/lang/Object;
.source "BasePermissionResult.java"

# interfaces
.implements Lcom/oppo/tribune/util/PermissionResult;


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mHasPermission:Z

.field private mMessageCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "hasPermission"    # Z

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean p1, p0, Lcom/oppo/tribune/util/BasePermissionResult;->mHasPermission:Z

    .line 33
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "hasPermission"    # Z
    .param p2, "messageCode"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean p1, p0, Lcom/oppo/tribune/util/BasePermissionResult;->mHasPermission:Z

    .line 27
    iput-object p2, p0, Lcom/oppo/tribune/util/BasePermissionResult;->mMessageCode:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/oppo/tribune/util/BasePermissionResult;->mDescription:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method protected checkPermission(Z)V
    .locals 1
    .param p1, "hasPermission"    # Z

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/oppo/tribune/util/BasePermissionResult;->mHasPermission:Z

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 62
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/oppo/tribune/util/BasePermissionResult;->mHasPermission:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 57
    iget-object v0, p0, Lcom/oppo/tribune/util/BasePermissionResult;->mDescription:Ljava/lang/String;

    return-object v0

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMessageCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/oppo/tribune/util/BasePermissionResult;->mHasPermission:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 51
    iget-object v0, p0, Lcom/oppo/tribune/util/BasePermissionResult;->mMessageCode:Ljava/lang/String;

    return-object v0

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPermission()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/oppo/tribune/util/BasePermissionResult;->mHasPermission:Z

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/oppo/tribune/util/BasePermissionResult;->mDescription:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setMessageCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageCode"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/oppo/tribune/util/BasePermissionResult;->mMessageCode:Ljava/lang/String;

    .line 37
    return-void
.end method
