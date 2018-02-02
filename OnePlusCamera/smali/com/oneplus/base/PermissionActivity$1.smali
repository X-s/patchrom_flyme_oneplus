.class Lcom/oneplus/base/PermissionActivity$1;
.super Ljava/lang/Object;
.source "PermissionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/base/PermissionActivity;->requestPermissionsInternal([Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/base/PermissionActivity;

.field final synthetic val$permissions:[Ljava/lang/String;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/oneplus/base/PermissionActivity;[Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/base/PermissionActivity;
    .param p2, "val$permissions"    # [Ljava/lang/String;
    .param p3, "val$requestCode"    # I

    .prologue
    .line 126
    iput-object p1, p0, Lcom/oneplus/base/PermissionActivity$1;->this$0:Lcom/oneplus/base/PermissionActivity;

    iput-object p2, p0, Lcom/oneplus/base/PermissionActivity$1;->val$permissions:[Ljava/lang/String;

    iput p3, p0, Lcom/oneplus/base/PermissionActivity$1;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 131
    iget-object v2, p0, Lcom/oneplus/base/PermissionActivity$1;->val$permissions:[Ljava/lang/String;

    array-length v2, v2

    new-array v0, v2, [I

    .line 132
    .local v0, "grantResults":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 133
    const/4 v2, 0x0

    aput v2, v0, v1

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :cond_0
    iget-object v2, p0, Lcom/oneplus/base/PermissionActivity$1;->this$0:Lcom/oneplus/base/PermissionActivity;

    iget v3, p0, Lcom/oneplus/base/PermissionActivity$1;->val$requestCode:I

    iget-object v4, p0, Lcom/oneplus/base/PermissionActivity$1;->val$permissions:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0}, Lcom/oneplus/base/PermissionActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 129
    return-void
.end method
