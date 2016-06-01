.class Lcom/oneplus/camera/manual/ManualModeUI$18;
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

    .prologue
    .line 931
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI$18;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 935
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$18;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    # setter for: Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextViewVisibilityState:Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;
    invoke-static {v0, v1}, Lcom/oneplus/camera/manual/ManualModeUI;->access$3902(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;)Lcom/oneplus/camera/manual/ManualModeUI$ViewVisibilityState;

    .line 936
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$18;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    # getter for: Lcom/oneplus/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->access$4000(Lcom/oneplus/camera/manual/ManualModeUI;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 937
    return-void
.end method
