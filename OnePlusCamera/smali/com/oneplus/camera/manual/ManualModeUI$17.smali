.class Lcom/oneplus/camera/manual/ManualModeUI$17;
.super Ljava/lang/Object;
.source "ManualModeUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/manual/ManualModeUI;->setFloatingTextViewVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/manual/ManualModeUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 915
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI$17;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 920
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$17;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-static {v0, v1}, Lcom/oneplus/camera/manual/ManualModeUI;->-set4(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;)Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    .line 921
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$17;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->-get2(Lcom/oneplus/camera/manual/ManualModeUI;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 918
    return-void
.end method
