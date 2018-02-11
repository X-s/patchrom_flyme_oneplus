.class Lcom/android/settings_ex/sim/SimDialogActivity$3;
.super Ljava/lang/Object;
.source "SimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/sim/SimDialogActivity;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/sim/SimDialogActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:I

.field final synthetic val$subInfoList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/sim/SimDialogActivity;ILjava/util/List;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/sim/SimDialogActivity;
    .param p2, "val$id"    # I
    .param p4, "val$context"    # Landroid/content/Context;

    .prologue
    .line 168
    .local p3, "val$subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    iput-object p1, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->this$0:Lcom/android/settings_ex/sim/SimDialogActivity;

    iput p2, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->val$id:I

    iput-object p3, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->val$subInfoList:Ljava/util/List;

    iput-object p4, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "value"    # I

    .prologue
    .line 174
    iget v3, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->val$id:I

    packed-switch v3, :pswitch_data_0

    .line 192
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid dialog type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 193
    iget v5, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->val$id:I

    .line 192
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 193
    const-string/jumbo v5, " in SIM dialog."

    .line 192
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 176
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->val$subInfoList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 177
    .local v1, "sir":Landroid/telephony/SubscriptionInfo;
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings_ex/sim/SimDialogActivity;->-wrap1(Landroid/content/Context;I)V

    .line 196
    .end local v1    # "sir":Landroid/telephony/SubscriptionInfo;
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->this$0:Lcom/android/settings_ex/sim/SimDialogActivity;

    invoke-virtual {v3}, Lcom/android/settings_ex/sim/SimDialogActivity;->finish()V

    .line 170
    return-void

    .line 181
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->val$context:Landroid/content/Context;

    invoke-static {v3}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v2

    .line 183
    .local v2, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    .line 184
    .local v0, "phoneAccountsList":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    iget-object v4, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->this$0:Lcom/android/settings_ex/sim/SimDialogActivity;

    .line 185
    const/4 v3, 0x1

    if-ge p2, v3, :cond_0

    const/4 v3, 0x0

    .line 184
    :goto_1
    invoke-static {v4, v3}, Lcom/android/settings_ex/sim/SimDialogActivity;->-wrap3(Lcom/android/settings_ex/sim/SimDialogActivity;Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_0

    .line 185
    :cond_0
    add-int/lit8 v3, p2, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    goto :goto_1

    .line 188
    .end local v0    # "phoneAccountsList":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v2    # "telecomManager":Landroid/telecom/TelecomManager;
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->val$subInfoList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 189
    .restart local v1    # "sir":Landroid/telephony/SubscriptionInfo;
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings_ex/sim/SimDialogActivity;->-wrap2(Landroid/content/Context;I)V

    goto :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
