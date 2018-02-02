.class Lcom/oneplus/camera/ui/CaptureModeSwitcher$29;
.super Ljava/lang/Object;
.source "CaptureModeSwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CaptureModeSwitcher;->switchCaptureMode(Lcom/oneplus/camera/capturemode/CaptureMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .prologue
    .line 1920
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$29;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1925
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$29;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap9(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    .line 1923
    return-void
.end method
