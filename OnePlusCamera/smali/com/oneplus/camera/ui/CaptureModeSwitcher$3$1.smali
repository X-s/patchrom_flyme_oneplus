.class Lcom/oneplus/camera/ui/CaptureModeSwitcher$3$1;
.super Ljava/lang/Object;
.source "CaptureModeSwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$3$1;->this$1:Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$3$1;->this$1:Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;

    iget-object v0, v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap6(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    .line 371
    return-void
.end method
