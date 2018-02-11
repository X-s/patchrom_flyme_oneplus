.class Lcom/android/settings_ex/SettingsActivity$4$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/SettingsActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/SettingsActivity$4;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SettingsActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/SettingsActivity$4;

    .prologue
    .line 701
    iput-object p1, p0, Lcom/android/settings_ex/SettingsActivity$4$1;->this$1:Lcom/android/settings_ex/SettingsActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 705
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity$4$1;->this$1:Lcom/android/settings_ex/SettingsActivity$4;

    iget-object v2, v2, Lcom/android/settings_ex/SettingsActivity$4;->this$0:Lcom/android/settings_ex/SettingsActivity;

    invoke-static {v2}, Lcom/android/settings_ex/SettingsActivity;->-get3(Lcom/android/settings_ex/SettingsActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 707
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity$4$1;->this$1:Lcom/android/settings_ex/SettingsActivity$4;

    iget-object v2, v2, Lcom/android/settings_ex/SettingsActivity$4;->this$0:Lcom/android/settings_ex/SettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings_ex/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f020324

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 708
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity$4$1;->this$1:Lcom/android/settings_ex/SettingsActivity$4;

    iget-object v2, v2, Lcom/android/settings_ex/SettingsActivity$4;->this$0:Lcom/android/settings_ex/SettingsActivity;

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->isLowStorage(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 709
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 710
    .local v0, "indexStartTime":J
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity$4$1;->this$1:Lcom/android/settings_ex/SettingsActivity$4;

    iget-object v2, v2, Lcom/android/settings_ex/SettingsActivity$4;->this$0:Lcom/android/settings_ex/SettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings_ex/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings_ex/search/Index;->update()V

    .line 711
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity$4$1;->this$1:Lcom/android/settings_ex/SettingsActivity$4;

    iget-object v2, v2, Lcom/android/settings_ex/SettingsActivity$4;->this$0:Lcom/android/settings_ex/SettingsActivity;

    invoke-static {v2}, Lcom/android/settings_ex/SettingsActivity;->-get1(Lcom/android/settings_ex/SettingsActivity;)Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/SettingsActivity$4$1;->this$1:Lcom/android/settings_ex/SettingsActivity$4;

    iget-object v3, v3, Lcom/android/settings_ex/SettingsActivity$4;->this$0:Lcom/android/settings_ex/SettingsActivity;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->register(Landroid/app/Activity;I)V

    .line 703
    .end local v0    # "indexStartTime":J
    :cond_0
    :goto_0
    return-void

    .line 715
    :cond_1
    const-string/jumbo v2, "Settings"

    const-string/jumbo v3, "Cannot update the Indexer as we are running low on storage space!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
