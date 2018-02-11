.class Lcom/android/settings_ex/notification/SoundSettings$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Receiver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/settings_ex/notification/SoundSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/notification/SoundSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/notification/SoundSettings;

    .prologue
    .line 940
    iput-object p1, p0, Lcom/android/settings_ex/notification/SoundSettings$Receiver;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/notification/SoundSettings;Lcom/android/settings_ex/notification/SoundSettings$Receiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/notification/SoundSettings;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/SoundSettings$Receiver;-><init>(Lcom/android/settings_ex/notification/SoundSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 958
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 959
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 960
    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings$Receiver;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings_ex/notification/SoundSettings;->-get2(Lcom/android/settings_ex/notification/SoundSettings;)Lcom/android/settings_ex/notification/SoundSettings$H;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/notification/SoundSettings$H;->sendEmptyMessage(I)Z

    .line 957
    :cond_0
    :goto_0
    return-void

    .line 961
    :cond_1
    const-string/jumbo v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 962
    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings$Receiver;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings_ex/notification/SoundSettings;->-get2(Lcom/android/settings_ex/notification/SoundSettings;)Lcom/android/settings_ex/notification/SoundSettings$H;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/notification/SoundSettings$H;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public register(Z)V
    .locals 2
    .param p1, "register"    # Z

    .prologue
    .line 944
    iget-boolean v1, p0, Lcom/android/settings_ex/notification/SoundSettings$Receiver;->mRegistered:Z

    if-ne v1, p1, :cond_0

    return-void

    .line 945
    :cond_0
    if-eqz p1, :cond_1

    .line 946
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 947
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 948
    const-string/jumbo v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 949
    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings$Receiver;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings_ex/notification/SoundSettings;->-get1(Lcom/android/settings_ex/notification/SoundSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 953
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    iput-boolean p1, p0, Lcom/android/settings_ex/notification/SoundSettings$Receiver;->mRegistered:Z

    .line 943
    return-void

    .line 951
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings$Receiver;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings_ex/notification/SoundSettings;->-get1(Lcom/android/settings_ex/notification/SoundSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
