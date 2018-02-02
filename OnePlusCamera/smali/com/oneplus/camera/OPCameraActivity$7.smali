.class Lcom/oneplus/camera/OPCameraActivity$7;
.super Ljava/lang/Object;
.source "OPCameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/oneplus/camera/OPCameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/OPCameraActivity;

    .prologue
    .line 501
    iput-object p1, p0, Lcom/oneplus/camera/OPCameraActivity$7;->this$0:Lcom/oneplus/camera/OPCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 506
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 507
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity$7;->this$0:Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v0}, Lcom/oneplus/camera/OPCameraActivity;->finishAndRemoveTask()V

    .line 504
    return-void
.end method
