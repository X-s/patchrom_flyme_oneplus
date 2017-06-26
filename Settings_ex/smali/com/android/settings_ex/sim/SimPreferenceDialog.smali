.class public Lcom/android/settings_ex/sim/SimPreferenceDialog;
.super Landroid/app/Activity;
.source "SimPreferenceDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/sim/SimPreferenceDialog$SelectColorAdapter;
    }
.end annotation


# instance fields
.field private final SIM_NAME:Ljava/lang/String;

.field private final TINT_POS:Ljava/lang/String;

.field mBuilder:Lcom/oneplus/app/OPAlertDialog$Builder;

.field private mColorStrings:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mDialogLayout:Landroid/view/View;

.field private mSlotId:I

.field private mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTintArr:[I

.field private mTintSelectorPos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    const-string v0, "sim_name"

    iput-object v0, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->SIM_NAME:Ljava/lang/String;

    .line 57
    const-string v0, "tint_pos"

    iput-object v0, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->TINT_POS:Ljava/lang/String;

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/sim/SimPreferenceDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimPreferenceDialog;

    .prologue
    .line 45
    iget v0, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mTintSelectorPos:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/sim/SimPreferenceDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimPreferenceDialog;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mTintSelectorPos:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/sim/SimPreferenceDialog;)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimPreferenceDialog;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/sim/SimPreferenceDialog;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimPreferenceDialog;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/sim/SimPreferenceDialog;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimPreferenceDialog;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mTintArr:[I

    return-object v0
.end method

.method private createEditDialog(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 105
    iget-object v10, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 106
    .local v6, "res":Landroid/content/res/Resources;
    iget-object v10, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v11, 0x7f1200de

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 107
    .local v3, "nameText":Landroid/widget/EditText;
    iget-object v10, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v10, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v11, 0x7f1200df

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    .line 110
    .local v8, "tintSpinner":Landroid/widget/Spinner;
    new-instance v0, Lcom/android/settings_ex/sim/SimPreferenceDialog$SelectColorAdapter;

    iget-object v10, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    const v11, 0x7f040106

    iget-object v12, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mColorStrings:[Ljava/lang/String;

    invoke-direct {v0, p0, v10, v11, v12}, Lcom/android/settings_ex/sim/SimPreferenceDialog$SelectColorAdapter;-><init>(Lcom/android/settings_ex/sim/SimPreferenceDialog;Landroid/content/Context;I[Ljava/lang/String;)V

    .line 112
    .local v0, "adapter":Lcom/android/settings_ex/sim/SimPreferenceDialog$SelectColorAdapter;
    const v10, 0x1090009

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/sim/SimPreferenceDialog$SelectColorAdapter;->setDropDownViewResource(I)V

    .line 113
    invoke-virtual {v8, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 115
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v10, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mTintArr:[I

    array-length v10, v10

    if-ge v2, v10, :cond_0

    .line 116
    iget-object v10, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mTintArr:[I

    aget v10, v10, v2

    iget-object v11, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v11}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v11

    if-ne v10, v11, :cond_1

    .line 117
    invoke-virtual {v8, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 118
    iput v2, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mTintSelectorPos:I

    .line 123
    :cond_0
    new-instance v10, Lcom/android/settings_ex/sim/SimPreferenceDialog$1;

    invoke-direct {v10, p0, v8}, Lcom/android/settings_ex/sim/SimPreferenceDialog$1;-><init>(Lcom/android/settings_ex/sim/SimPreferenceDialog;Landroid/widget/Spinner;)V

    invoke-virtual {v8, v10}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 136
    iget-object v10, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    const-string v11, "phone"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 138
    .local v9, "tm":Landroid/telephony/TelephonyManager;
    iget-object v10, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v11, 0x7f1200e1

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 139
    .local v4, "numberView":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v5

    .line 141
    .local v5, "rawNumber":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 142
    const v10, 0x104000e

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :goto_1
    iget-object v10, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v7

    .line 149
    .local v7, "simCarrierName":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v11, 0x7f1200e0

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 150
    .local v1, "carrierView":Landroid/widget/TextView;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .end local v7    # "simCarrierName":Ljava/lang/String;
    :goto_2
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v10, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mBuilder:Lcom/oneplus/app/OPAlertDialog$Builder;

    const v11, 0x7f0c0c13

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v14}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 156
    iget-object v10, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mBuilder:Lcom/oneplus/app/OPAlertDialog$Builder;

    const v11, 0x7f0c03a3

    new-instance v12, Lcom/android/settings_ex/sim/SimPreferenceDialog$2;

    invoke-direct {v12, p0, v8}, Lcom/android/settings_ex/sim/SimPreferenceDialog$2;-><init>(Lcom/android/settings_ex/sim/SimPreferenceDialog;Landroid/widget/Spinner;)V

    invoke-virtual {v10, v11, v12}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 177
    iget-object v10, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mBuilder:Lcom/oneplus/app/OPAlertDialog$Builder;

    const v11, 0x7f0c03a2

    new-instance v12, Lcom/android/settings_ex/sim/SimPreferenceDialog$3;

    invoke-direct {v12, p0}, Lcom/android/settings_ex/sim/SimPreferenceDialog$3;-><init>(Lcom/android/settings_ex/sim/SimPreferenceDialog;)V

    invoke-virtual {v10, v11, v12}, Lcom/oneplus/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 185
    iget-object v10, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mBuilder:Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-virtual {v10}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v10

    invoke-virtual {v10}, Lcom/oneplus/app/OPAlertDialog;->show()V

    .line 186
    return-void

    .line 115
    .end local v1    # "carrierView":Landroid/widget/TextView;
    .end local v4    # "numberView":Landroid/widget/TextView;
    .end local v5    # "rawNumber":Ljava/lang/String;
    .end local v9    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 144
    .restart local v4    # "numberView":Landroid/widget/TextView;
    .restart local v5    # "rawNumber":Ljava/lang/String;
    .restart local v9    # "tm":Landroid/telephony/TelephonyManager;
    :cond_2
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 150
    .restart local v1    # "carrierView":Landroid/widget/TextView;
    .restart local v7    # "simCarrierName":Ljava/lang/String;
    :cond_3
    iget-object v10, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    const v11, 0x104000e

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    iput-object p0, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimPreferenceDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 64
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "slot_id"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mSlotId:I

    .line 65
    iget-object v2, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 66
    iget-object v2, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget v3, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mSlotId:I

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    .line 67
    iget-object v2, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mTintArr:[I

    .line 68
    iget-object v2, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mColorStrings:[Ljava/lang/String;

    .line 69
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mTintSelectorPos:I

    .line 71
    new-instance v2, Lcom/oneplus/app/OPAlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mBuilder:Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 72
    iget-object v2, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 74
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04007e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    .line 75
    iget-object v2, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mBuilder:Lcom/oneplus/app/OPAlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/oneplus/app/OPAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 77
    invoke-direct {p0, p1}, Lcom/android/settings_ex/sim/SimPreferenceDialog;->createEditDialog(Landroid/os/Bundle;)V

    .line 78
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 95
    const-string v3, "tint_pos"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 96
    .local v1, "pos":I
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v4, 0x7f1200df

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 97
    .local v2, "tintSpinner":Landroid/widget/Spinner;
    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 98
    iput v1, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mTintSelectorPos:I

    .line 100
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v4, 0x7f1200de

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 101
    .local v0, "nameText":Landroid/widget/EditText;
    const-string v3, "sim_name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    const-string v1, "tint_pos"

    iget v2, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mTintSelectorPos:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    iget-object v1, p0, Lcom/android/settings_ex/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v2, 0x7f1200de

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 85
    .local v0, "nameText":Landroid/widget/EditText;
    const-string v1, "sim_name"

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 89
    return-void
.end method
