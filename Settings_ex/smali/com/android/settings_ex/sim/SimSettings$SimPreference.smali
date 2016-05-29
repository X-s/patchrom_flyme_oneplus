.class Lcom/android/settings_ex/sim/SimSettings$SimPreference;
.super Landroid/preference/Preference;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimPreference"
.end annotation


# instance fields
.field private mSlotId:I

.field private mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field final synthetic this$0:Lcom/android/settings_ex/sim/SimSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/sim/SimSettings;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subInfoRecord"    # Landroid/telephony/SubscriptionInfo;
    .param p4, "slotId"    # I

    .prologue
    .line 553
    iput-object p1, p0, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    .line 554
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 556
    iput-object p3, p0, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 557
    iput p4, p0, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->mSlotId:I

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->setKey(Ljava/lang/String;)V

    .line 559
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->update()V

    .line 560
    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/sim/SimSettings$SimPreference;)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimSettings$SimPreference;

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method


# virtual methods
.method public createEditDialog(Lcom/android/settings_ex/sim/SimSettings$SimPreference;)V
    .locals 10
    .param p1, "simPref"    # Lcom/android/settings_ex/sim/SimSettings$SimPreference;

    .prologue
    .line 578
    iget-object v6, p0, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    invoke-virtual {v6}, Lcom/android/settings_ex/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 580
    .local v5, "res":Landroid/content/res/Resources;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    invoke-virtual {v6}, Lcom/android/settings_ex/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 582
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v6, p0, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    invoke-virtual {v6}, Lcom/android/settings_ex/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f04005d

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 584
    .local v2, "dialogLayout":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 586
    const v6, 0x7f0f00f5

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 587
    .local v3, "nameText":Landroid/widget/EditText;
    iget-object v6, p0, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 589
    const v6, 0x7f0f00f8

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 590
    .local v4, "numberView":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    const v6, 0x7f0f00f6

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 593
    .local v1, "carrierView":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    const v6, 0x7f090a65

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->mSlotId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 598
    const v6, 0x7f09021e

    new-instance v7, Lcom/android/settings_ex/sim/SimSettings$SimPreference$1;

    invoke-direct {v7, p0, v2}, Lcom/android/settings_ex/sim/SimSettings$SimPreference$1;-><init>(Lcom/android/settings_ex/sim/SimSettings$SimPreference;Landroid/view/View;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 617
    const v6, 0x7f09021b

    new-instance v7, Lcom/android/settings_ex/sim/SimSettings$SimPreference$2;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/sim/SimSettings$SimPreference$2;-><init>(Lcom/android/settings_ex/sim/SimSettings$SimPreference;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 624
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 625
    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 563
    iget-object v1, p0, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 565
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f090a61

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->mSlotId:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v1, p0, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_0

    .line 567
    const v1, 0x7f090a57

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 569
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->setEnabled(Z)V

    .line 575
    :goto_0
    return-void

    .line 571
    :cond_0
    const v1, 0x7f090a62

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->setSummary(I)V

    .line 572
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->setFragment(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->setEnabled(Z)V

    goto :goto_0
.end method
