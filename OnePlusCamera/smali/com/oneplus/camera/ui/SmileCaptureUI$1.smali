.class Lcom/oneplus/camera/ui/SmileCaptureUI$1;
.super Ljava/lang/Object;
.source "SmileCaptureUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/SmileCaptureUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/SmileCaptureUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/SmileCaptureUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/SmileCaptureUI;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/oneplus/camera/ui/SmileCaptureUI$1;->this$0:Lcom/oneplus/camera/ui/SmileCaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oneplus/camera/ui/SmileCaptureUI$1;->this$0:Lcom/oneplus/camera/ui/SmileCaptureUI;

    invoke-static {v0}, Lcom/oneplus/camera/ui/SmileCaptureUI;->-get1(Lcom/oneplus/camera/ui/SmileCaptureUI;)Lcom/oneplus/base/Handle;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/SmileCaptureUI$1;->this$0:Lcom/oneplus/camera/ui/SmileCaptureUI;

    invoke-static {v0}, Lcom/oneplus/camera/ui/SmileCaptureUI;->-get0(Lcom/oneplus/camera/ui/SmileCaptureUI;)Lcom/oneplus/camera/SmileCaptureController;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/SmileCaptureController;->PROP_IS_SMILE_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    iget-object v0, p0, Lcom/oneplus/camera/ui/SmileCaptureUI$1;->this$0:Lcom/oneplus/camera/ui/SmileCaptureUI;

    invoke-static {v0}, Lcom/oneplus/camera/ui/SmileCaptureUI;->-wrap0(Lcom/oneplus/camera/ui/SmileCaptureUI;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/oneplus/camera/SmileCaptureController;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/oneplus/camera/ui/SmileCaptureUI$1;->this$0:Lcom/oneplus/camera/ui/SmileCaptureUI;

    invoke-static {v0}, Lcom/oneplus/camera/ui/SmileCaptureUI;->-wrap2(Lcom/oneplus/camera/ui/SmileCaptureUI;)V

    .line 38
    return-void

    .line 43
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
