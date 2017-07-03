.class Lcom/oneplus/base/PermissionManagerImpl$1;
.super Ljava/lang/Object;
.source "PermissionManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/base/PermissionManagerImpl;->onRequestPermissionsResult(J[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/base/PermissionManagerImpl;

.field private final synthetic val$context:Lcom/oneplus/base/BaseActivity;

.field private final synthetic val$penddingRequestPermissions:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/oneplus/base/PermissionManagerImpl;Lcom/oneplus/base/BaseActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/base/PermissionManagerImpl$1;->this$0:Lcom/oneplus/base/PermissionManagerImpl;

    iput-object p2, p0, Lcom/oneplus/base/PermissionManagerImpl$1;->val$context:Lcom/oneplus/base/BaseActivity;

    iput-object p3, p0, Lcom/oneplus/base/PermissionManagerImpl$1;->val$penddingRequestPermissions:Ljava/util/List;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 145
    iget-object v1, p0, Lcom/oneplus/base/PermissionManagerImpl$1;->this$0:Lcom/oneplus/base/PermissionManagerImpl;

    iget-object v2, p0, Lcom/oneplus/base/PermissionManagerImpl$1;->val$context:Lcom/oneplus/base/BaseActivity;

    iget-object v0, p0, Lcom/oneplus/base/PermissionManagerImpl$1;->val$penddingRequestPermissions:Ljava/util/List;

    new-array v3, v4, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v4}, Lcom/oneplus/base/PermissionManagerImpl;->requestPermissions(Lcom/oneplus/base/BaseActivity;[Ljava/lang/String;I)V

    .line 146
    return-void
.end method
