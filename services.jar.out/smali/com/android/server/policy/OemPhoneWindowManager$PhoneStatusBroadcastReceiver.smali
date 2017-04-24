.class Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OemPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneStatusBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 1606
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/OemPhoneWindowManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p2, "x1"    # Lcom/android/server/policy/OemPhoneWindowManager$1;

    .prologue
    .line 1606
    invoke-direct {p0, p1}, Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1609
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1611
    .local v0, "action":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_1

    .line 1631
    :cond_1
    :goto_1
    return-void

    .line 1611
    :pswitch_0
    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 1613
    :pswitch_1
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1616
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1618
    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToDismissScreenshotGuider:Z
    invoke-static {v2}, Lcom/android/server/policy/OemPhoneWindowManager;->access$2900(Lcom/android/server/policy/OemPhoneWindowManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1619
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;
    invoke-static {v2}, Lcom/android/server/policy/OemPhoneWindowManager;->access$2700(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-result-object v2

    new-instance v3, Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver$1;

    invoke-direct {v3, p0}, Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver$1;-><init>(Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;)V

    invoke-virtual {v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1611
    nop

    :pswitch_data_0
    .packed-switch -0x4f0a83a5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
