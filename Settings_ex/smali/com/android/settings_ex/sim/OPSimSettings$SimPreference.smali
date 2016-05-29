.class Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;
.super Landroid/preference/Preference;
.source "OPSimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/sim/OPSimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimPreference"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSlotId:I

.field private mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field final synthetic this$0:Lcom/android/settings_ex/sim/OPSimSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/sim/OPSimSettings;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subInfoRecord"    # Landroid/telephony/SubscriptionInfo;
    .param p4, "slotId"    # I

    .prologue
    .line 914
    iput-object p1, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    .line 915
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 918
    iput-object p2, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->mContext:Landroid/content/Context;

    .line 920
    iput-object p3, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 921
    iput p4, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->mSlotId:I

    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->setKey(Ljava/lang/String;)V

    .line 923
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->update()V

    .line 924
    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;

    .prologue
    .line 907
    iget-object v0, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;

    .prologue
    .line 907
    iget-object v0, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public createEditDialog(Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;)V
    .locals 11
    .param p1, "simPref"    # Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;

    .prologue
    const/16 v10, 0x8

    .line 978
    iget-object v7, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    invoke-virtual {v7}, Lcom/android/settings_ex/sim/OPSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 980
    .local v6, "res":Landroid/content/res/Resources;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    # getter for: Lcom/android/settings_ex/sim/OPSimSettings;->mActivity:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/settings_ex/sim/OPSimSettings;->access$200(Lcom/android/settings_ex/sim/OPSimSettings;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 982
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v7, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    invoke-virtual {v7}, Lcom/android/settings_ex/sim/OPSimSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f04005d

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 984
    .local v2, "dialogLayout":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 986
    const v7, 0x7f0f00f5

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 987
    .local v4, "nameText":Landroid/widget/EditText;
    iget-object v7, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    .line 988
    .local v3, "displayName":Ljava/lang/CharSequence;
    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 989
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 991
    const v7, 0x7f0f00f8

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 992
    .local v5, "numberView":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 994
    iget-object v7, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 995
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 996
    const v7, 0x7f0f00f7

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1000
    :cond_0
    const v7, 0x7f0f00f6

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1002
    .local v1, "carrierView":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/settings_ex/sim/SimSettingUtil;->shortNameConvert(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1007
    const v7, 0x7f090a65

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->mSlotId:I

    add-int/lit8 v10, v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1011
    const v7, 0x7f09021e

    new-instance v8, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference$1;

    invoke-direct {v8, p0, v2}, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference$1;-><init>(Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;Landroid/view/View;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1038
    const v7, 0x7f09021b

    new-instance v8, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference$2;

    invoke-direct {v8, p0}, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference$2;-><init>(Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1045
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 1046
    return-void
.end method

.method public update()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 927
    iget-object v2, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/sim/OPSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 930
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->mSlotId:I

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 931
    iget-object v2, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->mSlotId:I

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 937
    :goto_0
    const v2, 0x7f090a61

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->mSlotId:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 938
    iget-object v2, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v2, :cond_3

    .line 941
    iget-object v2, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 942
    .local v1, "summaryString":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    iget-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/settings_ex/sim/OPSimSettings;->isEmpty(Ljava/lang/CharSequence;)Z
    invoke-static {v2, v3}, Lcom/android/settings_ex/sim/OPSimSettings;->access$1400(Lcom/android/settings_ex/sim/OPSimSettings;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 943
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 945
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 965
    iget-object v2, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    iget v2, v2, Landroid/telephony/SubscriptionInfo;->mStatus:I

    iget-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    # getter for: Lcom/android/settings_ex/sim/OPSimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v3}, Lcom/android/settings_ex/sim/OPSimSettings;->access$000(Lcom/android/settings_ex/sim/OPSimSettings;)Landroid/telephony/SubscriptionManager;

    if-ne v2, v6, :cond_2

    .line 966
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->setEnabled(Z)V

    .line 975
    .end local v1    # "summaryString":Ljava/lang/String;
    :goto_1
    return-void

    .line 933
    :cond_1
    iput-object v7, p0, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    goto :goto_0

    .line 968
    .restart local v1    # "summaryString":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->setEnabled(Z)V

    goto :goto_1

    .line 971
    .end local v1    # "summaryString":Ljava/lang/String;
    :cond_3
    const v2, 0x7f090a62

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->setSummary(I)V

    .line 972
    invoke-virtual {p0, v7}, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->setFragment(Ljava/lang/String;)V

    .line 973
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/sim/OPSimSettings$SimPreference;->setEnabled(Z)V

    goto :goto_1
.end method
