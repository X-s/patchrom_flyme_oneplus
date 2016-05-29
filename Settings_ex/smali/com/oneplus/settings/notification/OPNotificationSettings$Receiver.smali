.class Lcom/oneplus/settings/notification/OPNotificationSettings$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "OPNotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPNotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Receiver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;


# direct methods
.method private constructor <init>(Lcom/oneplus/settings/notification/OPNotificationSettings;)V
    .locals 0

    .prologue
    .line 1475
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$Receiver;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/settings/notification/OPNotificationSettings;Lcom/oneplus/settings/notification/OPNotificationSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;
    .param p2, "x1"    # Lcom/oneplus/settings/notification/OPNotificationSettings$1;

    .prologue
    .line 1475
    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPNotificationSettings$Receiver;-><init>(Lcom/oneplus/settings/notification/OPNotificationSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1493
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1494
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1495
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$Receiver;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mHandler:Lcom/oneplus/settings/notification/OPNotificationSettings$H;
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$800(Lcom/oneplus/settings/notification/OPNotificationSettings;)Lcom/oneplus/settings/notification/OPNotificationSettings$H;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/notification/OPNotificationSettings$H;->sendEmptyMessage(I)Z

    .line 1499
    :cond_0
    :goto_0
    return-void

    .line 1496
    :cond_1
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1497
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$Receiver;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mHandler:Lcom/oneplus/settings/notification/OPNotificationSettings$H;
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$800(Lcom/oneplus/settings/notification/OPNotificationSettings;)Lcom/oneplus/settings/notification/OPNotificationSettings$H;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/notification/OPNotificationSettings$H;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public register(Z)V
    .locals 2
    .param p1, "register"    # Z

    .prologue
    .line 1479
    iget-boolean v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$Receiver;->mRegistered:Z

    if-ne v1, p1, :cond_0

    .line 1489
    :goto_0
    return-void

    .line 1480
    :cond_0
    if-eqz p1, :cond_1

    .line 1481
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1482
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1483
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1484
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$Receiver;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$1300(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1488
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_1
    iput-boolean p1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$Receiver;->mRegistered:Z

    goto :goto_0

    .line 1486
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$Receiver;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$1300(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1
.end method
