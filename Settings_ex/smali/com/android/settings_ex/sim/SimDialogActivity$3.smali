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
    .line 179
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
    .locals 11
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "value"    # I

    .prologue
    const/4 v10, 0x1

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "ddsalertDisplayed":Z
    iget v8, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->val$id:I

    packed-switch v8, :pswitch_data_0

    .line 229
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid dialog type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->val$id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in SIM dialog."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 187
    :pswitch_0
    iget-object v8, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->val$subInfoList:Ljava/util/List;

    invoke-interface {v8, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    .line 188
    .local v6, "sir":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    .line 189
    .local v5, "preferredSubID":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    .line 190
    .local v1, "defaultDataSubId":I
    if-eq v1, v5, :cond_0

    .line 191
    iget-object v8, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->this$0:Lcom/android/settings_ex/sim/SimDialogActivity;

    iget-object v9, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/settings_ex/sim/SimDialogActivity;->displayDdsAlertIfNeeded(Landroid/content/Context;II)Z
    invoke-static {v8, v9, v5, v1}, Lcom/android/settings_ex/sim/SimDialogActivity;->access$400(Lcom/android/settings_ex/sim/SimDialogActivity;Landroid/content/Context;II)Z

    move-result v0

    .line 193
    if-nez v0, :cond_0

    .line 194
    iget-object v8, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/settings_ex/sim/SimDialogActivity;->setDefaultDataSubId(Landroid/content/Context;I)V
    invoke-static {v8, v5}, Lcom/android/settings_ex/sim/SimDialogActivity;->access$100(Landroid/content/Context;I)V

    .line 232
    .end local v1    # "defaultDataSubId":I
    .end local v5    # "preferredSubID":I
    .end local v6    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_0
    :goto_0
    iget v8, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->val$id:I

    if-nez v8, :cond_1

    if-nez v0, :cond_2

    .line 233
    :cond_1
    iget-object v8, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->this$0:Lcom/android/settings_ex/sim/SimDialogActivity;

    invoke-virtual {v8}, Lcom/android/settings_ex/sim/SimDialogActivity;->finish()V

    .line 235
    :cond_2
    return-void

    .line 199
    :pswitch_1
    iget-object v8, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->val$context:Landroid/content/Context;

    invoke-static {v8}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v7

    .line 201
    .local v7, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v7}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v4

    .line 203
    .local v4, "phoneAccountsList":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    iget-object v9, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->this$0:Lcom/android/settings_ex/sim/SimDialogActivity;

    if-ge p2, v10, :cond_3

    const/4 v8, 0x0

    :goto_1
    # invokes: Lcom/android/settings_ex/sim/SimDialogActivity;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    invoke-static {v9, v8}, Lcom/android/settings_ex/sim/SimDialogActivity;->access$300(Lcom/android/settings_ex/sim/SimDialogActivity;Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_0

    :cond_3
    add-int/lit8 v8, p2, -0x1

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telecom/PhoneAccountHandle;

    goto :goto_1

    .line 207
    .end local v4    # "phoneAccountsList":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v7    # "telecomManager":Landroid/telecom/TelecomManager;
    :pswitch_2
    const/4 v3, 0x0

    .line 208
    .local v3, "isSmsPrompt":Z
    if-ge p2, v10, :cond_4

    .line 209
    const/4 v3, 0x1

    .line 219
    :goto_2
    # getter for: Lcom/android/settings_ex/sim/SimDialogActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/sim/SimDialogActivity;->access$500()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isSmsPrompt: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :try_start_0
    iget-object v8, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->this$0:Lcom/android/settings_ex/sim/SimDialogActivity;

    # getter for: Lcom/android/settings_ex/sim/SimDialogActivity;->mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;
    invoke-static {v8}, Lcom/android/settings_ex/sim/SimDialogActivity;->access$600(Lcom/android/settings_ex/sim/SimDialogActivity;)Lcom/android/internal/telephony/IExtTelephony;

    move-result-object v8

    invoke-interface {v8, v3}, Lcom/android/internal/telephony/IExtTelephony;->setSMSPromptEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 222
    :catch_0
    move-exception v2

    .line 223
    .local v2, "ex":Landroid/os/RemoteException;
    # getter for: Lcom/android/settings_ex/sim/SimDialogActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/sim/SimDialogActivity;->access$500()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RemoteException @setSMSPromptEnabled"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 211
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_4
    iget-object v8, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->val$smsSubInfoList:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    .line 212
    .restart local v6    # "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v6, :cond_5

    .line 213
    iget-object v8, p0, Lcom/android/settings_ex/sim/SimDialogActivity$3;->val$context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    # invokes: Lcom/android/settings_ex/sim/SimDialogActivity;->setDefaultSmsSubId(Landroid/content/Context;I)V
    invoke-static {v8, v9}, Lcom/android/settings_ex/sim/SimDialogActivity;->access$200(Landroid/content/Context;I)V

    .line 217
    :goto_3
    # getter for: Lcom/android/settings_ex/sim/SimDialogActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/sim/SimDialogActivity;->access$500()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SubscriptionInfo:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 215
    :cond_5
    const/4 v3, 0x1

    goto :goto_3

    .line 224
    .end local v6    # "sir":Landroid/telephony/SubscriptionInfo;
    :catch_1
    move-exception v2

    .line 225
    .local v2, "ex":Ljava/lang/NullPointerException;
    # getter for: Lcom/android/settings_ex/sim/SimDialogActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/sim/SimDialogActivity;->access$500()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NullPointerException @setSMSPromptEnabled"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
