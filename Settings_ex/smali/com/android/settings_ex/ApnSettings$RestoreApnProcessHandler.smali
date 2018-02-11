.class Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnProcessHandler"
.end annotation


# instance fields
.field private mRestoreApnUiHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/settings_ex/ApnSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/ApnSettings;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "restoreApnUiHandler"    # Landroid/os/Handler;

    .prologue
    .line 730
    iput-object p1, p0, Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings_ex/ApnSettings;

    .line 731
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 732
    iput-object p3, p0, Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    .line 730
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 737
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 736
    :goto_0
    return-void

    .line 740
    :pswitch_0
    iget-object v4, p0, Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings_ex/ApnSettings;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 741
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings_ex/ApnSettings;

    invoke-static {v4}, Lcom/android/settings_ex/ApnSettings;->-get3(Lcom/android/settings_ex/ApnSettings;)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    if-nez v4, :cond_0

    const-string/jumbo v0, ""

    .line 743
    .local v0, "mccmnc":Ljava/lang/String;
    :goto_1
    const-string/jumbo v4, "ApnSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "delete apn mccmnc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "numeric=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 745
    .local v3, "where":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings_ex/ApnSettings;

    invoke-virtual {v4}, Lcom/android/settings_ex/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 746
    .local v1, "resolver":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings_ex/ApnSettings;

    invoke-static {}, Lcom/android/settings_ex/ApnSettings;->-get0()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings_ex/ApnSettings;->-wrap0(Lcom/android/settings_ex/ApnSettings;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 748
    iget-object v4, p0, Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    .line 749
    const/4 v5, 0x2

    .line 748
    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 742
    .end local v0    # "mccmnc":Ljava/lang/String;
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "where":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings_ex/ApnSettings;

    invoke-static {v4}, Lcom/android/settings_ex/ApnSettings;->-get3(Lcom/android/settings_ex/ApnSettings;)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "mccmnc":Ljava/lang/String;
    goto :goto_1

    .line 737
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
