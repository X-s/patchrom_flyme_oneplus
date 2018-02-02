.class Lcom/oneplus/camera/ui/CaptureModeSwitcher$22;
.super Ljava/lang/Object;
.source "CaptureModeSwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CaptureModeSwitcher;->onPreviewCoverStateChanged(Lcom/oneplus/camera/ui/PreviewCover$UIState;Lcom/oneplus/camera/ui/PreviewCover$UIState;)V
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
    .line 1410
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$22;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$22;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get25(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/camera/ui/PreviewCover;

    move-result-object v0

    invoke-static {}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get0()Lcom/oneplus/camera/ui/PreviewCover$Style;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oneplus/camera/ui/PreviewCover;->getPreviewCoverState(Lcom/oneplus/camera/ui/PreviewCover$Style;)Lcom/oneplus/camera/ui/PreviewCover$UIState;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->OPENED:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    if-ne v0, v1, :cond_0

    .line 1416
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$22;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap16(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    .line 1413
    :cond_0
    return-void
.end method
