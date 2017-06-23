.class Lcom/android/server/policy/OemPhoneWindowManager$StkUserActivityTestEnabledReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OemPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StkUserActivityTestEnabledReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 1835
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$StkUserActivityTestEnabledReceiver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/OemPhoneWindowManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p2, "x1"    # Lcom/android/server/policy/OemPhoneWindowManager$1;

    .prologue
    .line 1835
    invoke-direct {p0, p1}, Lcom/android/server/policy/OemPhoneWindowManager$StkUserActivityTestEnabledReceiver;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1838
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1840
    .local v0, "action":Ljava/lang/String;
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 1848
    :goto_1
    return-void

    .line 1840
    :pswitch_0
    const-string v2, "com.oneplus.intent.action.stk.user_activity_enabled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1843
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$StkUserActivityTestEnabledReceiver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToNotifyStkUserActivity:Z
    invoke-static {v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->access$3402(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    goto :goto_1

    .line 1840
    nop

    :pswitch_data_0
    .packed-switch -0x17f9eac0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
