.class Lcom/android/settings_ex/SettingsActivity$3;
.super Landroid/os/Handler;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/SettingsActivity;

    .prologue
    .line 544
    iput-object p1, p0, Lcom/android/settings_ex/SettingsActivity$3;->this$0:Lcom/android/settings_ex/SettingsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 549
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 550
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 552
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity$3;->this$0:Lcom/android/settings_ex/SettingsActivity;

    invoke-static {v2}, Lcom/android/settings_ex/SettingsActivity;->-get3(Lcom/android/settings_ex/SettingsActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 554
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity$3;->this$0:Lcom/android/settings_ex/SettingsActivity;

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->isLowStorage(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 555
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 556
    .local v0, "indexStartTime":J
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity$3;->this$0:Lcom/android/settings_ex/SettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings_ex/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings_ex/search/Index;->update()V

    goto :goto_0

    .line 560
    .end local v0    # "indexStartTime":J
    :cond_1
    const-string/jumbo v2, "Settings"

    const-string/jumbo v3, "Cannot update the Indexer as we are running low on storage space!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 550
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
