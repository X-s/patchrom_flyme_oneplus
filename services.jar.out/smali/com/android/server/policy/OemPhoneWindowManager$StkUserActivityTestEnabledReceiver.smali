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
    .param p1, "this$0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 2334
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$StkUserActivityTestEnabledReceiver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/OemPhoneWindowManager$StkUserActivityTestEnabledReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/OemPhoneWindowManager$StkUserActivityTestEnabledReceiver;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2337
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2339
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.oneplus.intent.action.stk.user_activity_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2342
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$StkUserActivityTestEnabledReceiver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->-set10(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    .line 2336
    :cond_0
    return-void
.end method
