.class Lcom/android/systemui_ex/controlpanel/OPControlPanel$14;
.super Landroid/os/Handler;
.source "OPControlPanel.java"


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
    .line 957
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$14;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 960
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 961
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 989
    :cond_0
    :goto_0
    return-void

    .line 963
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$14;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelStatus:I
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$300(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 964
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$14;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->hidePanelView(Z)V

    goto :goto_0

    .line 968
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$14;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    # invokes: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->setHintView([I)V
    invoke-static {v1, v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$3500(Lcom/android/systemui_ex/controlpanel/OPControlPanel;[I)V

    goto :goto_0

    .line 971
    :pswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel$14;->removeMessages(I)V

    .line 972
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$14;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # invokes: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->showHintView()V
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$3600(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)V

    .line 973
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$14;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHintView:Lcom/android/systemui_ex/controlpanel/HintView;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$3300(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Lcom/android/systemui_ex/controlpanel/HintView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 974
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$14;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHintView:Lcom/android/systemui_ex/controlpanel/HintView;
    invoke-static {v1}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$3300(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Lcom/android/systemui_ex/controlpanel/HintView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui_ex/controlpanel/HintView;->getHintDecay()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui_ex/controlpanel/OPControlPanel$14;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 978
    :pswitch_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel$14;->removeMessages(I)V

    .line 979
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$14;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # invokes: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->hideHintView()V
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$3700(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)V

    goto :goto_0

    .line 983
    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$14;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$14;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseY:F
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1800(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v2

    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$14;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenY:F
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1600(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v3

    const/4 v4, 0x0

    const v5, 0x3f19999a    # 0.6f

    const-wide/16 v6, 0x12c

    const/4 v8, 0x0

    # invokes: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->showDetailAnimation(FFFFJZ)V
    invoke-static/range {v1 .. v8}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$2900(Lcom/android/systemui_ex/controlpanel/OPControlPanel;FFFFJZ)V

    goto :goto_0

    .line 986
    :pswitch_5
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$14;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$14;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSOpenY:F
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1600(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v2

    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$14;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mQSCloseY:F
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$1800(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)F

    move-result v3

    const v4, 0x3f19999a    # 0.6f

    const v5, -0x40e66666    # -0.6f

    const-wide/16 v6, 0xfa

    const/4 v8, 0x0

    # invokes: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->showDetailAnimation(FFFFJZ)V
    invoke-static/range {v1 .. v8}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$2900(Lcom/android/systemui_ex/controlpanel/OPControlPanel;FFFFJZ)V

    goto :goto_0

    .line 961
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
