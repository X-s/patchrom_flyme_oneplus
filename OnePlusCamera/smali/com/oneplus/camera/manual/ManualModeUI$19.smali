.class Lcom/oneplus/camera/manual/ManualModeUI$19;
.super Ljava/lang/Object;
.source "ManualModeUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/manual/ManualModeUI;->updateKnobViewVisibility(Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/manual/ManualModeUI;

.field final synthetic val$oldControlType:Lcom/oneplus/camera/manual/ControlType;

.field final synthetic val$oldFinalKnobView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/manual/ControlType;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/manual/ManualModeUI;
    .param p2, "val$oldControlType"    # Lcom/oneplus/camera/manual/ControlType;
    .param p3, "val$oldFinalKnobView"    # Landroid/view/View;

    .prologue
    .line 1211
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI$19;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    iput-object p2, p0, Lcom/oneplus/camera/manual/ManualModeUI$19;->val$oldControlType:Lcom/oneplus/camera/manual/ControlType;

    iput-object p3, p0, Lcom/oneplus/camera/manual/ManualModeUI$19;->val$oldFinalKnobView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$19;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeUI$19;->val$oldControlType:Lcom/oneplus/camera/manual/ControlType;

    sget-object v2, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->-wrap5(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/manual/ControlType;Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;)V

    .line 1217
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$19;->val$oldFinalKnobView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1214
    return-void
.end method
