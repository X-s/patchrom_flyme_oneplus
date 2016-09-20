.class Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl$2$1;
.super Ljava/lang/Object;
.source "CameraSwitchAnimationImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl$2;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl$2;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl$2$1;->this$1:Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl$2$1;->this$1:Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl$2;

    iget-object v0, v0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl$2;->this$0:Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;

    # getter for: Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->access$300(Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "startFlipperAnimation() - On second image animation end"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl$2$1;->this$1:Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl$2;

    iget-object v0, v0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl$2;->this$0:Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;

    # invokes: Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->onFlipperAnimationEnd()V
    invoke-static {v0}, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->access$400(Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;)V

    .line 212
    return-void
.end method
