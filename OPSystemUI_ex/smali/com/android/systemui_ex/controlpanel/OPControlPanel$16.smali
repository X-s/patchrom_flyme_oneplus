.class Lcom/android/systemui_ex/controlpanel/OPControlPanel$16;
.super Ljava/lang/Object;
.source "OPControlPanel.java"

# interfaces
.implements Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailCallback;


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
    .line 1008
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$16;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowDetail(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1011
    if-eqz p1, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$16;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$3200(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1016
    :goto_0
    return-void

    .line 1014
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$16;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$3200(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
