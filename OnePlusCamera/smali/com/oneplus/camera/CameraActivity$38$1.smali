.class Lcom/oneplus/camera/CameraActivity$38$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/CameraActivity$38;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/CameraActivity$38;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraActivity$38;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/CameraActivity$38;

    .prologue
    .line 5377
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity$38$1;->this$1:Lcom/oneplus/camera/CameraActivity$38;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 5381
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$38$1;->this$1:Lcom/oneplus/camera/CameraActivity$38;

    iget-object v0, v0, Lcom/oneplus/camera/CameraActivity$38;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->finishAndRemoveTask()V

    .line 5380
    return-void
.end method
