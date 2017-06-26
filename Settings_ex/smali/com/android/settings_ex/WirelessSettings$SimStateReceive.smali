.class public Lcom/android/settings_ex/WirelessSettings$SimStateReceive;
.super Landroid/content/BroadcastReceiver;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SimStateReceive"
.end annotation


# instance fields
.field private mRegistered:Z

.field private simState:I

.field final synthetic this$0:Lcom/android/settings_ex/WirelessSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/WirelessSettings;)V
    .locals 1

    .prologue
    .line 745
    iput-object p1, p0, Lcom/android/settings_ex/WirelessSettings$SimStateReceive;->this$0:Lcom/android/settings_ex/WirelessSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 748
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/WirelessSettings$SimStateReceive;->simState:I

    return-void
.end method


# virtual methods
.method public getSimState()I
    .locals 1

    .prologue
    .line 751
    iget v0, p0, Lcom/android/settings_ex/WirelessSettings$SimStateReceive;->simState:I

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 773
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "sim state changed"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 774
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 775
    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 777
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    .line 778
    .local v2, "state":I
    packed-switch v2, :pswitch_data_0

    .line 791
    iput v7, p0, Lcom/android/settings_ex/WirelessSettings$SimStateReceive;->simState:I

    .line 792
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 793
    .local v1, "msg1":Landroid/os/Message;
    iput v7, v1, Landroid/os/Message;->what:I

    .line 794
    iget-object v4, p0, Lcom/android/settings_ex/WirelessSettings$SimStateReceive;->this$0:Lcom/android/settings_ex/WirelessSettings;

    # getter for: Lcom/android/settings_ex/WirelessSettings;->mSimHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/settings_ex/WirelessSettings;->access$200(Lcom/android/settings_ex/WirelessSettings;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 798
    .end local v1    # "msg1":Landroid/os/Message;
    .end local v2    # "state":I
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return-void

    .line 780
    .restart local v2    # "state":I
    .restart local v3    # "tm":Landroid/telephony/TelephonyManager;
    :pswitch_0
    iput v6, p0, Lcom/android/settings_ex/WirelessSettings$SimStateReceive;->simState:I

    .line 781
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 782
    .local v0, "msg":Landroid/os/Message;
    iput v6, v0, Landroid/os/Message;->what:I

    .line 783
    iget-object v4, p0, Lcom/android/settings_ex/WirelessSettings$SimStateReceive;->this$0:Lcom/android/settings_ex/WirelessSettings;

    # getter for: Lcom/android/settings_ex/WirelessSettings;->mSimHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/settings_ex/WirelessSettings;->access$200(Lcom/android/settings_ex/WirelessSettings;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 778
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public register(Z)V
    .locals 2
    .param p1, "register"    # Z

    .prologue
    .line 755
    iget-boolean v1, p0, Lcom/android/settings_ex/WirelessSettings$SimStateReceive;->mRegistered:Z

    if-ne v1, p1, :cond_0

    .line 769
    :goto_0
    return-void

    .line 757
    :cond_0
    if-eqz p1, :cond_1

    .line 759
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 760
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 761
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings$SimStateReceive;->this$0:Lcom/android/settings_ex/WirelessSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 768
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_1
    iput-boolean p1, p0, Lcom/android/settings_ex/WirelessSettings$SimStateReceive;->mRegistered:Z

    goto :goto_0

    .line 765
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings$SimStateReceive;->this$0:Lcom/android/settings_ex/WirelessSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1
.end method
