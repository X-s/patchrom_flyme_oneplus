.class Lcom/oneplus/base/BaseActivity$3;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/base/BaseActivity;->onAllPermissionsCompleted([Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/base/BaseActivity;

.field final synthetic val$grantedPermissions:[Ljava/lang/String;

.field final synthetic val$results:[I


# direct methods
.method constructor <init>(Lcom/oneplus/base/BaseActivity;[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/base/BaseActivity;
    .param p2, "val$grantedPermissions"    # [Ljava/lang/String;
    .param p3, "val$results"    # [I

    .prologue
    .line 654
    iput-object p1, p0, Lcom/oneplus/base/BaseActivity$3;->this$0:Lcom/oneplus/base/BaseActivity;

    iput-object p2, p0, Lcom/oneplus/base/BaseActivity$3;->val$grantedPermissions:[Ljava/lang/String;

    iput-object p3, p0, Lcom/oneplus/base/BaseActivity$3;->val$results:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 659
    iget-object v0, p0, Lcom/oneplus/base/BaseActivity$3;->this$0:Lcom/oneplus/base/BaseActivity;

    iget-object v1, p0, Lcom/oneplus/base/BaseActivity$3;->val$grantedPermissions:[Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/base/BaseActivity$3;->val$results:[I

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/BaseActivity;->onInitialPermissionsRequestCompleted([Ljava/lang/String;[I)Z

    .line 657
    return-void
.end method
