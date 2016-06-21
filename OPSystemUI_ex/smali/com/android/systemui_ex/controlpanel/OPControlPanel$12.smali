.class Lcom/android/systemui_ex/controlpanel/OPControlPanel$12;
.super Ljava/lang/Object;
.source "OPControlPanel.java"

# interfaces
.implements Lcom/android/systemui_ex/controlpanel/qs/QSTile$CallbackControlPanel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/OPControlPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)V
    .locals 0

    .prologue
    .line 887
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$12;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideHintView()V
    .locals 2

    .prologue
    .line 891
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$12;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$3200(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 892
    return-void
.end method

.method public setHintOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 901
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$12;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHintView:Lcom/android/systemui_ex/controlpanel/HintView;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$3300(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Lcom/android/systemui_ex/controlpanel/HintView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$12;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHintView:Lcom/android/systemui_ex/controlpanel/HintView;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$3300(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Lcom/android/systemui_ex/controlpanel/HintView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/controlpanel/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 904
    :cond_0
    return-void
.end method

.method public setHintView(III)V
    .locals 12
    .param p1, "icon"    # I
    .param p2, "title"    # I
    .param p3, "content"    # I

    .prologue
    const/4 v11, 0x2

    .line 908
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$12;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHintView:Lcom/android/systemui_ex/controlpanel/HintView;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$3300(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Lcom/android/systemui_ex/controlpanel/HintView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$12;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 910
    .local v7, "res":Landroid/content/res/Resources;
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$12;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    new-instance v1, Lcom/android/systemui_ex/controlpanel/HintView;

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$12;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    iget-object v2, v2, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui_ex/controlpanel/HintView;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHintView:Lcom/android/systemui_ex/controlpanel/HintView;
    invoke-static {v0, v1}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$3302(Lcom/android/systemui_ex/controlpanel/OPControlPanel;Lcom/android/systemui_ex/controlpanel/HintView;)Lcom/android/systemui_ex/controlpanel/HintView;

    .line 911
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$12;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHintView:Lcom/android/systemui_ex/controlpanel/HintView;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$3300(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Lcom/android/systemui_ex/controlpanel/HintView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/controlpanel/HintView;->setVisibility(I)V

    .line 912
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$12;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHintView:Lcom/android/systemui_ex/controlpanel/HintView;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$3300(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Lcom/android/systemui_ex/controlpanel/HintView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$12;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    iget-object v1, v1, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHintViewCallback:Lcom/android/systemui_ex/controlpanel/HintView$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/controlpanel/HintView;->setCallback(Lcom/android/systemui_ex/controlpanel/HintView$Callback;)V

    .line 913
    const v0, 0x7f0d012a

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 914
    .local v6, "height":I
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$12;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v9

    .line 915
    .local v9, "touchSlop":I
    iget-object v10, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$12;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    div-int/lit8 v2, v9, 0x2

    add-int/2addr v2, v6

    const/16 v3, 0x7de

    const v4, 0x820328

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    # setter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHintLp:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v10, v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$3402(Lcom/android/systemui_ex/controlpanel/OPControlPanel;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    .line 926
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$12;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHintLp:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$3400(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 927
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$12;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHintLp:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$3400(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x7f0a0041

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 928
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$12;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHintLp:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$3400(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x7f0b0028

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 929
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$12;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHintLp:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$3400(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "Control Center Hint"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 931
    .end local v6    # "height":I
    .end local v7    # "res":Landroid/content/res/Resources;
    .end local v9    # "touchSlop":I
    :cond_0
    const/4 v0, 0x3

    new-array v8, v0, [I

    const/4 v0, 0x0

    aput p1, v8, v0

    const/4 v0, 0x1

    aput p2, v8, v0

    aput p3, v8, v11

    .line 932
    .local v8, "resIds":[I
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$12;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$3200(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v11, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 933
    return-void
.end method

.method public showHintView()V
    .locals 2

    .prologue
    .line 896
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$12;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$3200(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 897
    return-void
.end method
