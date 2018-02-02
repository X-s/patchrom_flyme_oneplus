.class Lcom/oneplus/camera/OPCameraActivity$8;
.super Ljava/lang/Object;
.source "OPCameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/OPCameraActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/OPCameraActivity;

.field final synthetic val$rotationLockHandle:Lcom/oneplus/base/Handle;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/OPCameraActivity;Lcom/oneplus/base/Handle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/OPCameraActivity;
    .param p2, "val$rotationLockHandle"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 510
    iput-object p1, p0, Lcom/oneplus/camera/OPCameraActivity$8;->this$0:Lcom/oneplus/camera/OPCameraActivity;

    iput-object p2, p0, Lcom/oneplus/camera/OPCameraActivity$8;->val$rotationLockHandle:Lcom/oneplus/base/Handle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 515
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity$8;->val$rotationLockHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 513
    return-void
.end method
