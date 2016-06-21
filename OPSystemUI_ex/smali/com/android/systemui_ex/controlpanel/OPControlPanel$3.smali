.class Lcom/android/systemui_ex/controlpanel/OPControlPanel$3;
.super Landroid/widget/FrameLayout;
.source "OPControlPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/controlpanel/OPControlPanel;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/controlpanel/OPControlPanel;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$3;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 194
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_1

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$3;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelStatus:I
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$300(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$3;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->hidePanelView(Z)V

    .line 201
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
