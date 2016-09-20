.class Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl$1;
.super Ljava/lang/Object;
.source "CameraSwitchAnimationImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->startFadeOutAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl$1;->this$0:Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl$1;->this$0:Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;

    # getter for: Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->access$000(Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "startFadeOutAnimation() - On fade out animation end"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl$1;->this$0:Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->reset()V

    .line 180
    return-void
.end method
