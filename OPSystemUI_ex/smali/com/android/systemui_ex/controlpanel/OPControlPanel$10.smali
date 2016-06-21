.class Lcom/android/systemui_ex/controlpanel/OPControlPanel$10;
.super Landroid/content/BroadcastReceiver;
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
    .line 685
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$10;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 689
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 691
    .local v0, "action":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 723
    :cond_1
    :goto_1
    return-void

    .line 691
    :sswitch_0
    const-string v6, "com.android.settings.intent.action.HIDE_CONTROL_CENTER"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v3

    goto :goto_0

    :sswitch_1
    const-string v6, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v4

    goto :goto_0

    :sswitch_2
    const-string v6, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v5

    goto :goto_0

    :sswitch_3
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    .line 693
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$10;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelStatus:I
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$300(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 694
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$10;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    invoke-virtual {v2, v4}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->hidePanelView(Z)V

    goto :goto_1

    .line 699
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$10;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    # getter for: Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mPanelStatus:I
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->access$300(Lcom/android/systemui_ex/controlpanel/OPControlPanel;)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 700
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$10;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    iget-object v2, v2, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v5, :cond_2

    .line 701
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$10;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    invoke-virtual {v2, v3}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->hidePanelView(Z)V

    goto :goto_1

    .line 703
    :cond_2
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$10;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    invoke-virtual {v2, v4}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->hidePanelView(Z)V

    goto :goto_1

    .line 709
    :pswitch_2
    const-string v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 710
    .local v1, "state":Ljava/lang/String;
    const-string v2, "RINGING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 711
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$10;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    invoke-virtual {v2, v4}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->hidePanelView(Z)V

    goto :goto_1

    .line 716
    .end local v1    # "state":Ljava/lang/String;
    :pswitch_3
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/OPControlPanel$10;->this$0:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    invoke-virtual {v2, v3}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->hidePanelView(Z)V

    goto :goto_1

    .line 691
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_3
        -0x4f0a83a5 -> :sswitch_2
        -0x1808c879 -> :sswitch_1
        0x43d4b46f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
