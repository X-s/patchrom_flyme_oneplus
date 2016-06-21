.class Lcom/android/systemui_ex/controlpanel/OPControlPanel$13;
.super Ljava/lang/Object;
.source "OPControlPanel.java"

# interfaces
.implements Lcom/android/systemui_ex/controlpanel/HintView$Callback;


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
    .line 936
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$13;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideHintView()V
    .locals 2

    .prologue
    .line 940
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$13;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$3200(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 941
    return-void
.end method
