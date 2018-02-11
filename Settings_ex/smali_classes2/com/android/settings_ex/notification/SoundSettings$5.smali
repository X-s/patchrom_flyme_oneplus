.class Lcom/android/settings_ex/notification/SoundSettings$5;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/SoundSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/notification/SoundSettings;

    .prologue
    .line 719
    iput-object p1, p0, Lcom/android/settings_ex/notification/SoundSettings$5;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 722
    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings$5;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings_ex/notification/SoundSettings;->-get4(Lcom/android/settings_ex/notification/SoundSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 723
    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings$5;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    .line 724
    iget-object v2, p0, Lcom/android/settings_ex/notification/SoundSettings$5;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    invoke-static {v2}, Lcom/android/settings_ex/notification/SoundSettings;->-get1(Lcom/android/settings_ex/notification/SoundSettings;)Landroid/content/Context;

    move-result-object v2

    .line 723
    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/notification/SoundSettings;->-wrap2(Lcom/android/settings_ex/notification/SoundSettings;Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 725
    .local v0, "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 726
    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings$5;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings_ex/notification/SoundSettings;->-get2(Lcom/android/settings_ex/notification/SoundSettings;)Lcom/android/settings_ex/notification/SoundSettings$H;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/android/settings_ex/notification/SoundSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 729
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings$5;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings_ex/notification/SoundSettings;->-get3(Lcom/android/settings_ex/notification/SoundSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 730
    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings$5;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    .line 731
    iget-object v2, p0, Lcom/android/settings_ex/notification/SoundSettings$5;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    invoke-static {v2}, Lcom/android/settings_ex/notification/SoundSettings;->-get1(Lcom/android/settings_ex/notification/SoundSettings;)Landroid/content/Context;

    move-result-object v2

    .line 730
    invoke-static {v1, v2, v4}, Lcom/android/settings_ex/notification/SoundSettings;->-wrap2(Lcom/android/settings_ex/notification/SoundSettings;Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 732
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 733
    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings$5;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings_ex/notification/SoundSettings;->-get2(Lcom/android/settings_ex/notification/SoundSettings;)Lcom/android/settings_ex/notification/SoundSettings$H;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/android/settings_ex/notification/SoundSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 736
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings$5;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings_ex/notification/SoundSettings;->-get0(Lcom/android/settings_ex/notification/SoundSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 738
    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings$5;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    iget-object v2, p0, Lcom/android/settings_ex/notification/SoundSettings$5;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    invoke-static {v2}, Lcom/android/settings_ex/notification/SoundSettings;->-get1(Lcom/android/settings_ex/notification/SoundSettings;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/notification/SoundSettings;->-wrap2(Lcom/android/settings_ex/notification/SoundSettings;Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 739
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 740
    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings$5;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings_ex/notification/SoundSettings;->-get2(Lcom/android/settings_ex/notification/SoundSettings;)Lcom/android/settings_ex/notification/SoundSettings$H;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/android/settings_ex/notification/SoundSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 744
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings$5;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings_ex/notification/SoundSettings;->-get5(Lcom/android/settings_ex/notification/SoundSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 745
    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings$5;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    .line 746
    iget-object v2, p0, Lcom/android/settings_ex/notification/SoundSettings$5;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    invoke-static {v2}, Lcom/android/settings_ex/notification/SoundSettings;->-get1(Lcom/android/settings_ex/notification/SoundSettings;)Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x8

    .line 745
    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/notification/SoundSettings;->-wrap2(Lcom/android/settings_ex/notification/SoundSettings;Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 747
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_3

    .line 748
    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings$5;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings_ex/notification/SoundSettings;->-get2(Lcom/android/settings_ex/notification/SoundSettings;)Lcom/android/settings_ex/notification/SoundSettings$H;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Lcom/android/settings_ex/notification/SoundSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 721
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_3
    return-void
.end method
