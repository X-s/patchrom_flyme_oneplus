.class public Lcom/android/settings_ex/sim/SimDialogActivity;
.super Landroid/app/Activity;
.source "SimDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/sim/SimDialogActivity$SelectAccountListAdapter;
    }
.end annotation


# static fields
.field public static final CALLS_PICK:I = 0x1

.field public static final DATA_PICK:I = 0x0

.field public static DIALOG_TYPE_KEY:Ljava/lang/String; = null

.field public static final INVALID_PICK:I = -0x1

.field public static final PREFERRED_PICK:I = 0x3

.field public static PREFERRED_SIM:Ljava/lang/String; = null

.field public static final SMS_PICK:I = 0x2

.field private static TAG:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings_ex/sim/SimDialogActivity;I)Landroid/telecom/PhoneAccountHandle;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/sim/SimDialogActivity;->subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/settings_ex/sim/SimDialogActivity;->setDefaultDataSubId(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/content/Context;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/settings_ex/sim/SimDialogActivity;->setDefaultSmsSubId(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings_ex/sim/SimDialogActivity;Landroid/telecom/PhoneAccountHandle;)V
    .locals 0
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/sim/SimDialogActivity;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string/jumbo v0, "SimDialogActivity"

    sput-object v0, Lcom/android/settings_ex/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "preferred_sim"

    sput-object v0, Lcom/android/settings_ex/sim/SimDialogActivity;->PREFERRED_SIM:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "dialog_type"

    sput-object v0, Lcom/android/settings_ex/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private displayPreferredDialog(I)V
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 90
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 91
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 94
    .local v3, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v3, :cond_0

    .line 95
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 96
    .local v0, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0e0865

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 97
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 98
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f0e0866

    .line 97
    invoke-virtual {v2, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 100
    new-instance v4, Lcom/android/settings_ex/sim/SimDialogActivity$1;

    invoke-direct {v4, p0, v3, v1}, Lcom/android/settings_ex/sim/SimDialogActivity$1;-><init>(Lcom/android/settings_ex/sim/SimDialogActivity;Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)V

    const v5, 0x7f0e04e2

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 113
    new-instance v4, Lcom/android/settings_ex/sim/SimDialogActivity$2;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/sim/SimDialogActivity$2;-><init>(Lcom/android/settings_ex/sim/SimDialogActivity;)V

    const v5, 0x7f0e04e3

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 121
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 88
    .end local v0    # "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimDialogActivity;->finish()V

    goto :goto_0
.end method

.method private static setDefaultDataSubId(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 128
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 129
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 130
    const v1, 0x7f0e0ded

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 127
    return-void
.end method

.method private static setDefaultSmsSubId(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 134
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 135
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    .line 133
    return-void
.end method

.method private setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .locals 1
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 139
    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 140
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v0, p1}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 138
    return-void
.end method

.method private subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;
    .locals 6
    .param p1, "subId"    # I

    .prologue
    .line 144
    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v3

    .line 145
    .local v3, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 147
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 149
    .local v2, "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 150
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 151
    .local v1, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {v3, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 152
    .local v0, "phoneAccount":Landroid/telecom/PhoneAccount;
    invoke-virtual {v4, v0}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v5

    if-ne p1, v5, :cond_0

    .line 153
    return-object v1

    .line 157
    .end local v0    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v1    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    :cond_1
    const/4 v5, 0x0

    return-object v5
.end method


# virtual methods
.method public createDialog(Landroid/content/Context;I)Landroid/app/Dialog;
    .locals 29
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 161
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v18, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v26

    .line 164
    .local v26, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual/range {v26 .. v26}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v25

    .line 165
    .local v25, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v25, :cond_0

    const/16 v21, 0x0

    .line 168
    .local v21, "selectableSubInfoLength":I
    :goto_0
    new-instance v22, Lcom/android/settings_ex/sim/SimDialogActivity$3;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, v25

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/sim/SimDialogActivity$3;-><init>(Lcom/android/settings_ex/sim/SimDialogActivity;ILjava/util/List;Landroid/content/Context;)V

    .line 200
    .local v22, "selectionListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v17, Lcom/android/settings_ex/sim/SimDialogActivity$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/sim/SimDialogActivity$4;-><init>(Lcom/android/settings_ex/sim/SimDialogActivity;)V

    .line 211
    .local v17, "keyListener":Landroid/content/DialogInterface$OnKeyListener;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v13, "callsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v6, 0x1

    move/from16 v0, p2

    if-ne v0, v6, :cond_2

    .line 213
    invoke-static/range {p1 .. p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v27

    .line 214
    .local v27, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-static/range {p1 .. p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v28

    .line 216
    .local v28, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v27 .. v27}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v20

    .line 218
    .local v20, "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0e08

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    const/4 v6, 0x0

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 222
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v19

    .line 223
    .local v19, "phoneAccount":Landroid/telecom/PhoneAccount;
    invoke-virtual/range {v19 .. v19}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v24

    .line 225
    .local v24, "subId":I
    const/4 v6, -0x1

    move/from16 v0, v24

    if-eq v0, v6, :cond_1

    .line 226
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v6

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v23

    .line 228
    .local v23, "sir":Landroid/telephony/SubscriptionInfo;
    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 165
    .end local v13    # "callsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .end local v17    # "keyListener":Landroid/content/DialogInterface$OnKeyListener;
    .end local v19    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v20    # "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v21    # "selectableSubInfoLength":I
    .end local v22    # "selectionListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v23    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v24    # "subId":I
    .end local v27    # "telecomManager":Landroid/telecom/TelecomManager;
    .end local v28    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v21

    .restart local v21    # "selectableSubInfoLength":I
    goto/16 :goto_0

    .line 230
    .restart local v13    # "callsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v17    # "keyListener":Landroid/content/DialogInterface$OnKeyListener;
    .restart local v19    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .restart local v20    # "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    .restart local v22    # "selectionListener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v24    # "subId":I
    .restart local v27    # "telecomManager":Landroid/telecom/TelecomManager;
    .restart local v28    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 234
    .end local v19    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v20    # "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v24    # "subId":I
    .end local v27    # "telecomManager":Landroid/telecom/TelecomManager;
    .end local v28    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_2
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 235
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/telephony/SubscriptionInfo;

    .line 236
    .restart local v23    # "sir":Landroid/telephony/SubscriptionInfo;
    invoke-virtual/range {v23 .. v23}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v15

    .line 237
    .local v15, "displayName":Ljava/lang/CharSequence;
    if-nez v15, :cond_3

    .line 238
    const-string/jumbo v15, ""

    .line 240
    :cond_3
    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 244
    .end local v15    # "displayName":Ljava/lang/CharSequence;
    .end local v16    # "i":I
    .end local v23    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_4
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    .line 246
    .local v10, "arr":[Ljava/lang/String;
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 248
    .local v12, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v5, Lcom/android/settings_ex/sim/SimDialogActivity$SelectAccountListAdapter;

    .line 249
    const/4 v6, 0x1

    move/from16 v0, p2

    if-ne v0, v6, :cond_5

    move-object v7, v13

    .line 250
    :goto_3
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 251
    const v9, 0x7f04018b

    move-object/from16 v6, p0

    move/from16 v11, p2

    .line 248
    invoke-direct/range {v5 .. v11}, Lcom/android/settings_ex/sim/SimDialogActivity$SelectAccountListAdapter;-><init>(Lcom/android/settings_ex/sim/SimDialogActivity;Ljava/util/List;Landroid/content/Context;I[Ljava/lang/String;I)V

    .line 254
    .local v5, "adapter":Landroid/widget/ListAdapter;
    packed-switch p2, :pswitch_data_0

    .line 265
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid dialog type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 266
    const-string/jumbo v8, " in SIM dialog."

    .line 265
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v5    # "adapter":Landroid/widget/ListAdapter;
    :cond_5
    move-object/from16 v7, v25

    .line 249
    goto :goto_3

    .line 256
    .restart local v5    # "adapter":Landroid/widget/ListAdapter;
    :pswitch_0
    const v6, 0x7f0e0dec

    invoke-virtual {v12, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 269
    :goto_4
    move-object/from16 v0, v22

    invoke-virtual {v12, v5, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    .line 270
    .local v14, "dialog":Landroid/app/Dialog;
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 272
    new-instance v6, Lcom/android/settings_ex/sim/SimDialogActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/settings_ex/sim/SimDialogActivity$5;-><init>(Lcom/android/settings_ex/sim/SimDialogActivity;)V

    invoke-virtual {v14, v6}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 279
    return-object v14

    .line 259
    .end local v14    # "dialog":Landroid/app/Dialog;
    :pswitch_1
    const v6, 0x7f0e0dee

    invoke-virtual {v12, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    .line 262
    :pswitch_2
    const v6, 0x7f0e0df8

    invoke-virtual {v12, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    .line 254
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 64
    .local v1, "extras":Landroid/os/Bundle;
    sget-object v2, Lcom/android/settings_ex/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 67
    .local v0, "dialogType":I
    const-string/jumbo v2, "persist.radio.aosp_usr_pref_sel"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimDialogActivity;->finish()V

    .line 69
    return-void

    .line 73
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 83
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid dialog type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " sent."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :pswitch_0
    invoke-virtual {p0, p0, v0}, Lcom/android/settings_ex/sim/SimDialogActivity;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 61
    :goto_0
    return-void

    .line 80
    :pswitch_1
    sget-object v2, Lcom/android/settings_ex/sim/SimDialogActivity;->PREFERRED_SIM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/sim/SimDialogActivity;->displayPreferredDialog(I)V

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
