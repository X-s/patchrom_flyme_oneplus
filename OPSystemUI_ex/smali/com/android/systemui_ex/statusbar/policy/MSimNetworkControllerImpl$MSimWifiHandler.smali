.class Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$MSimWifiHandler;
.super Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$WifiHandler;
.source "MSimNetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MSimWifiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;)V
    .locals 0

    .prologue
    .line 682
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$MSimWifiHandler;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$WifiHandler;-><init>(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 685
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 698
    invoke-super {p0, p1}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$WifiHandler;->handleMessage(Landroid/os/Message;)V

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 687
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$MSimWifiHandler;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    iget v2, v2, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivity:I

    if-eq v1, v2, :cond_0

    .line 688
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$MSimWifiHandler;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivity:I

    .line 689
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 691
    .local v0, "dataSub":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 692
    const/4 v0, 0x0

    .line 694
    :cond_1
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$MSimWifiHandler;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto :goto_0

    .line 685
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
