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

.field final synthetic val$smsSubInfoList:Ljava/util/ArrayList;

.field final synthetic val$subInfoList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/sim/SimDialogActivity;ILjava/util/List;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->this$0:Lcom/android/settings_ex/sim/SimDialogActivity;

    iput p2, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->val$id:I

    iput-object p3, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->val$subInfoList:Ljava/util/List;

    iput-object p4, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->val$smsSubInfoList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "value"    # I

    .prologue
    const/4 v7, 0x1

    .line 183
    iget v5, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->val$id:I

    packed-switch v5, :pswitch_data_0

    .line 219
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid dialog type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->val$id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in SIM dialog."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 185
    :pswitch_0
    iget-object v5, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->val$subInfoList:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 186
    .local v3, "sir":Landroid/telephony/SubscriptionInfo;
    iget-object v5, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    # invokes: Lcom/android/settings_ex/sim/SimDialogActivity;->setDefaultDataSubId(Landroid/content/Context;I)V
    invoke-static {v5, v6}, Lcom/android/settings_ex/sim/SimDialogActivity;->access$100(Landroid/content/Context;I)V

    .line 223
    .end local v3    # "sir":Landroid/telephony/SubscriptionInfo;
    :goto_0
    iget-object v5, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->this$0:Lcom/android/settings_ex/sim/SimDialogActivity;

    invoke-virtual {v5}, Lcom/android/settings_ex/sim/SimDialogActivity;->finish()V

    .line 224
    return-void

    .line 189
    :pswitch_1
    iget-object v5, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->val$context:Landroid/content/Context;

    invoke-static {v5}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v4

    .line 191
    .local v4, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v2

    .line 193
    .local v2, "phoneAccountsList":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    iget-object v6, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->this$0:Lcom/android/settings_ex/sim/SimDialogActivity;

    if-ge p2, v7, :cond_0

    const/4 v5, 0x0

    :goto_1
    # invokes: Lcom/android/settings_ex/sim/SimDialogActivity;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    invoke-static {v6, v5}, Lcom/android/settings_ex/sim/SimDialogActivity;->access$300(Lcom/android/settings_ex/sim/SimDialogActivity;Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_0

    :cond_0
    add-int/lit8 v5, p2, -0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/PhoneAccountHandle;

    goto :goto_1

    .line 197
    .end local v2    # "phoneAccountsList":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v4    # "telecomManager":Landroid/telecom/TelecomManager;
    :pswitch_2
    const/4 v1, 0x0

    .line 198
    .local v1, "isSmsPrompt":Z
    if-ge p2, v7, :cond_1

    .line 199
    const/4 v1, 0x1

    .line 209
    :goto_2
    # getter for: Lcom/android/settings_ex/sim/SimDialogActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/sim/SimDialogActivity;->access$400()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSmsPrompt: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :try_start_0
    iget-object v5, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->this$0:Lcom/android/settings_ex/sim/SimDialogActivity;

    # getter for: Lcom/android/settings_ex/sim/SimDialogActivity;->mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;
    invoke-static {v5}, Lcom/android/settings_ex/sim/SimDialogActivity;->access$500(Lcom/android/settings_ex/sim/SimDialogActivity;)Lcom/android/internal/telephony/IExtTelephony;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/android/internal/telephony/IExtTelephony;->setSMSPromptEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "ex":Landroid/os/RemoteException;
    # getter for: Lcom/android/settings_ex/sim/SimDialogActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/sim/SimDialogActivity;->access$400()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteException @setSMSPromptEnabled"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 201
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->val$smsSubInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 202
    .restart local v3    # "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v3, :cond_2

    .line 203
    iget-object v5, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    # invokes: Lcom/android/settings_ex/sim/SimDialogActivity;->setDefaultSmsSubId(Landroid/content/Context;I)V
    invoke-static {v5, v6}, Lcom/android/settings_ex/sim/SimDialogActivity;->access$200(Landroid/content/Context;I)V

    .line 207
    :goto_3
    # getter for: Lcom/android/settings_ex/sim/SimDialogActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/sim/SimDialogActivity;->access$400()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SubscriptionInfo:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 205
    :cond_2
    const/4 v1, 0x1

    goto :goto_3

    .line 214
    .end local v3    # "sir":Landroid/telephony/SubscriptionInfo;
    :catch_1
    move-exception v0

    .line 215
    .local v0, "ex":Ljava/lang/NullPointerException;
    # getter for: Lcom/android/settings_ex/sim/SimDialogActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/sim/SimDialogActivity;->access$400()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NullPointerException @setSMSPromptEnabled"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
