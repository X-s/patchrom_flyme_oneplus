.class Lcom/android/settings_ex/sim/OPSimSettings$SimPreference$1;
.super Ljava/lang/Object;
.source "OPSimSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->createEditDialog(Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;

.field final synthetic val$dialogLayout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference$1;->this$1:Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;

    iput-object p2, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference$1;->val$dialogLayout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 1014
    iget-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference$1;->val$dialogLayout:Landroid/view/View;

    const v4, 0x7f0f00f5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1016
    .local v1, "nameText":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1017
    .local v0, "displayName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference$1;->this$1:Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;

    # getter for: Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;
    invoke-static {v3}, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->access$1500(Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 1020
    .local v2, "subId":I
    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 1021
    const-string v3, "%"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1022
    iget-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference$1;->this$1:Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;

    # getter for: Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->access$1600(Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0900b4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1026
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference$1;->this$1:Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;

    # getter for: Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;
    invoke-static {v3}, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->access$1500(Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/telephony/SubscriptionInfo;->setDisplayName(Ljava/lang/CharSequence;)V

    .line 1027
    iget-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference$1;->this$1:Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;

    iget-object v3, v3, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    # getter for: Lcom/android/settings_ex/sim/OPSimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v3}, Lcom/android/settings_ex/sim/OPSimSettings;->access$000(Lcom/android/settings_ex/sim/OPSimSettings;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    const-wide/16 v4, 0x2

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;IJ)I

    .line 1031
    iget-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference$1;->this$1:Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;

    iget-object v3, v3, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    int-to-long v4, v2

    # invokes: Lcom/android/settings_ex/sim/OPSimSettings;->findRecordBySubId(J)Landroid/telephony/SubscriptionInfo;
    invoke-static {v3, v4, v5}, Lcom/android/settings_ex/sim/OPSimSettings;->access$1700(Lcom/android/settings_ex/sim/OPSimSettings;J)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/telephony/SubscriptionInfo;->setDisplayName(Ljava/lang/CharSequence;)V

    .line 1033
    iget-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference$1;->this$1:Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;

    iget-object v3, v3, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    # invokes: Lcom/android/settings_ex/sim/OPSimSettings;->updateAllOptions()V
    invoke-static {v3}, Lcom/android/settings_ex/sim/OPSimSettings;->access$1800(Lcom/android/settings_ex/sim/OPSimSettings;)V

    .line 1034
    iget-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference$1;->this$1:Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;

    invoke-virtual {v3}, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->update()V

    .line 1035
    return-void
.end method
