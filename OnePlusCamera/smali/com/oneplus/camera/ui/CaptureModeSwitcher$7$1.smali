.class Lcom/oneplus/camera/ui/CaptureModeSwitcher$7$1;
.super Ljava/lang/Object;
.source "CaptureModeSwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CaptureModeSwitcher$7;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/ui/CaptureModeSwitcher$7;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher$7;

    .prologue
    .line 501
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$7$1;->this$1:Lcom/oneplus/camera/ui/CaptureModeSwitcher$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$7$1;->this$1:Lcom/oneplus/camera/ui/CaptureModeSwitcher$7;

    iget-object v0, v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$7;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap9(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    .line 503
    return-void
.end method
