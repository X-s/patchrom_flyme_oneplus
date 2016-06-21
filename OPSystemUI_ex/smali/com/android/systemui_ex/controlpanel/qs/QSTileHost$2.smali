.class Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$2;
.super Landroid/os/Handler;
.source "QSTileHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$2;->this$0:Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 318
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 319
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 327
    :goto_0
    return-void

    .line 321
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$2;->this$0:Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;

    # getter for: Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mCallbackControlPanel:Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$CallbackControlPanel;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->access$600(Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;)Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$CallbackControlPanel;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$CallbackControlPanel;->hideControlPanel()V

    goto :goto_0

    .line 324
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$2;->this$0:Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;

    # getter for: Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->mCallbackControlPanel:Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$CallbackControlPanel;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;->access$600(Lcom/android/systemui_ex/controlpanel/qs/QSTileHost;)Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$CallbackControlPanel;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-interface {v1, v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTileHost$CallbackControlPanel;->hideControlPanelThenLaunchIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
