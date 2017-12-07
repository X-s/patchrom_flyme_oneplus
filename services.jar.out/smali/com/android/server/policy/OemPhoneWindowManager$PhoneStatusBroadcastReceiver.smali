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
    .param p1, "this$0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 2498
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2501
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2503
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2506
    const-string/jumbo v2, "phone"

    .line 2505
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 2508
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 2509
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 2510
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v2}, Lcom/android/server/policy/OemPhoneWindowManager;->-get10(Lcom/android/server/policy/OemPhoneWindowManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2511
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v2}, Lcom/android/server/policy/OemPhoneWindowManager;->-get5(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-result-object v2

    new-instance v3, Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver$1;

    invoke-direct {v3, p0}, Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver$1;-><init>(Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;)V

    invoke-virtual {v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->post(Ljava/lang/Runnable;)Z

    .line 2500
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    return-void
.end method
