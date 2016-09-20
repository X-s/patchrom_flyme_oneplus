.class final Lcom/oneplus/camera/ui/CaptureBar$PanelStyleHandle;
.super Lcom/oneplus/base/Handle;
.source "CaptureBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/CaptureBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PanelStyleHandle"
.end annotation


# instance fields
.field public final style:Lcom/oneplus/camera/ui/CaptureControlPanel$Style;

.field final synthetic this$0:Lcom/oneplus/camera/ui/CaptureBar;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/ui/CaptureControlPanel$Style;)V
    .locals 1
    .param p2, "style"    # Lcom/oneplus/camera/ui/CaptureControlPanel$Style;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar$PanelStyleHandle;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    .line 177
    const-string v0, "CaptureControlPanelStyle"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 178
    iput-object p2, p0, Lcom/oneplus/camera/ui/CaptureBar$PanelStyleHandle;->style:Lcom/oneplus/camera/ui/CaptureControlPanel$Style;

    .line 179
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 184
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$PanelStyleHandle;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    # invokes: Lcom/oneplus/camera/ui/CaptureBar;->restorePanelStyle(Lcom/oneplus/camera/ui/CaptureBar$PanelStyleHandle;)V
    invoke-static {v0, p0}, Lcom/oneplus/camera/ui/CaptureBar;->access$200(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/ui/CaptureBar$PanelStyleHandle;)V

    .line 185
    return-void
.end method
