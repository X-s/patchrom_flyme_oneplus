.class public Lcom/android/settings_ex/ResetNetwork;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "ResetNetwork.java"


# static fields
.field private static final KEYGUARD_REQUEST:I = 0x37

.field private static final TAG:Ljava/lang/String; = "ResetNetwork"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mInitiateButton:Lcom/oneplus/widget/button/OPButton;

.field private final mInitiateListener:Landroid/view/View$OnClickListener;

.field private mSubscriptionSpinner:Landroid/widget/Spinner;

.field private mSubscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    .line 120
    new-instance v0, Lcom/android/settings_ex/ResetNetwork$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ResetNetwork$1;-><init>(Lcom/android/settings_ex/ResetNetwork;)V

    iput-object v0, p0, Lcom/android/settings_ex/ResetNetwork;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ResetNetwork;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ResetNetwork;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ResetNetwork;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/ResetNetwork;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ResetNetwork;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings_ex/ResetNetwork;->showFinalConfirmation()V

    return-void
.end method

.method private establishInitialState()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x0

    .line 143
    iget-object v8, p0, Lcom/android/settings_ex/ResetNetwork;->mContentView:Landroid/view/View;

    const v9, 0x7f1201ef

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/android/settings_ex/ResetNetwork;->mSubscriptionSpinner:Landroid/widget/Spinner;

    .line 145
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetNetwork;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/ResetNetwork;->mSubscriptions:Ljava/util/List;

    .line 146
    iget-object v8, p0, Lcom/android/settings_ex/ResetNetwork;->mSubscriptions:Ljava/util/List;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/settings_ex/ResetNetwork;->mSubscriptions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_8

    .line 148
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    .line 149
    .local v1, "defaultSubscription":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 150
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v1

    .line 152
    :cond_0
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 153
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v1

    .line 155
    :cond_1
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 156
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v1

    .line 159
    :cond_2
    const/4 v5, 0x0

    .line 160
    .local v5, "selectedIndex":I
    iget-object v8, p0, Lcom/android/settings_ex/ResetNetwork;->mSubscriptions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    .line 161
    .local v6, "size":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v7, "subscriptionNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/settings_ex/ResetNetwork;->mSubscriptions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 163
    .local v4, "record":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    if-ne v8, v1, :cond_3

    .line 165
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 167
    :cond_3
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 169
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v3

    .line 171
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 172
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 174
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 175
    const-string v8, "MCC:%s MNC:%s Slot:%s Id:%s"

    new-array v9, v13, [Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    const/4 v10, 0x1

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 178
    :cond_6
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "record":Landroid/telephony/SubscriptionInfo;
    :cond_7
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings_ex/ResetNetwork;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x1090008

    invoke-direct {v0, v8, v9, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 182
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v8, 0x1090009

    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 183
    iget-object v8, p0, Lcom/android/settings_ex/ResetNetwork;->mSubscriptionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 184
    iget-object v8, p0, Lcom/android/settings_ex/ResetNetwork;->mSubscriptionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 185
    iget-object v8, p0, Lcom/android/settings_ex/ResetNetwork;->mSubscriptionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8, v12}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 189
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1    # "defaultSubscription":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "selectedIndex":I
    .end local v6    # "size":I
    .end local v7    # "subscriptionNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    iget-object v8, p0, Lcom/android/settings_ex/ResetNetwork;->mContentView:Landroid/view/View;

    const v9, 0x7f1201f0

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/oneplus/widget/button/OPButton;

    iput-object v8, p0, Lcom/android/settings_ex/ResetNetwork;->mInitiateButton:Lcom/oneplus/widget/button/OPButton;

    .line 190
    iget-object v8, p0, Lcom/android/settings_ex/ResetNetwork;->mInitiateButton:Lcom/oneplus/widget/button/OPButton;

    iget-object v9, p0, Lcom/android/settings_ex/ResetNetwork;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Lcom/oneplus/widget/button/OPButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    return-void

    .line 187
    :cond_8
    iget-object v8, p0, Lcom/android/settings_ex/ResetNetwork;->mSubscriptionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8, v13}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_1
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .param p1, "request"    # I

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetNetwork;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 83
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/ResetNetwork;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v2, 0x7f0c06e0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private showFinalConfirmation()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 105
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v2, "args":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/android/settings_ex/ResetNetwork;->mSubscriptions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/ResetNetwork;->mSubscriptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/settings_ex/ResetNetwork;->mSubscriptionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    .line 108
    .local v7, "selectedIndex":I
    iget-object v0, p0, Lcom/android/settings_ex/ResetNetwork;->mSubscriptions:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubscriptionInfo;

    .line 109
    .local v8, "subscription":Landroid/telephony/SubscriptionInfo;
    const-string v0, "subscription"

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    .end local v7    # "selectedIndex":I
    .end local v8    # "subscription":Landroid/telephony/SubscriptionInfo;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetNetwork;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    const-class v1, Lcom/android/settings_ex/ResetNetworkConfirm;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c06e5

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 113
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 210
    const/16 v0, 0x53

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 89
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 91
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 97
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 98
    invoke-direct {p0}, Lcom/android/settings_ex/ResetNetwork;->showFinalConfirmation()V

    goto :goto_0

    .line 100
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/ResetNetwork;->establishInitialState()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 196
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/ResetNetwork;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const-string v1, "no_network_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    :cond_0
    const v0, 0x7f04007f

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 205
    :goto_0
    return-object v0

    .line 202
    :cond_1
    const v0, 0x7f0400f5

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ResetNetwork;->mContentView:Landroid/view/View;

    .line 204
    invoke-direct {p0}, Lcom/android/settings_ex/ResetNetwork;->establishInitialState()V

    .line 205
    iget-object v0, p0, Lcom/android/settings_ex/ResetNetwork;->mContentView:Landroid/view/View;

    goto :goto_0
.end method
