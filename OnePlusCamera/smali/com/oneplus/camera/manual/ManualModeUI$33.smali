.class Lcom/oneplus/camera/manual/ManualModeUI$33;
.super Ljava/lang/Object;
.source "ManualModeUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/manual/ManualModeUI;->onPreviewReceived(Lcom/oneplus/camera/CameraCaptureEventArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/manual/ManualModeUI;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$height:I

.field final synthetic val$nv21:[B

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/oneplus/camera/manual/ManualModeUI;Landroid/content/Context;[BII)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/manual/ManualModeUI;
    .param p2, "val$context"    # Landroid/content/Context;
    .param p3, "val$nv21"    # [B
    .param p4, "val$width"    # I
    .param p5, "val$height"    # I

    .prologue
    .line 1588
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI$33;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    iput-object p2, p0, Lcom/oneplus/camera/manual/ManualModeUI$33;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/oneplus/camera/manual/ManualModeUI$33;->val$nv21:[B

    iput p4, p0, Lcom/oneplus/camera/manual/ManualModeUI$33;->val$width:I

    iput p5, p0, Lcom/oneplus/camera/manual/ManualModeUI$33;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$33;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI$33;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI$33;->val$nv21:[B

    iget v3, p0, Lcom/oneplus/camera/manual/ManualModeUI$33;->val$width:I

    iget v4, p0, Lcom/oneplus/camera/manual/ManualModeUI$33;->val$height:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/camera/manual/ManualModeUI;->-wrap11(Lcom/oneplus/camera/manual/ManualModeUI;Landroid/content/Context;[BII)V

    .line 1591
    return-void
.end method
