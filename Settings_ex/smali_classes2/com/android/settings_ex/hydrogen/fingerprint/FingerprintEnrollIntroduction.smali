.class public Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;
.super Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;
.source "FingerprintEnrollIntroduction.java"

# interfaces
.implements Lcom/android/setupwizardlib/items/RecyclerItemAdapter$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction$LearnMoreSpan;
    }
.end annotation


# static fields
.field protected static final CHOOSE_LOCK_GENERIC_REQUEST:I = 0x1

.field protected static final FINGERPRINT_FIND_SENSOR_REQUEST:I = 0x2

.field protected static final LEARN_MORE_REQUEST:I = 0x3


# instance fields
.field private mHasPassword:Z

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;-><init>()V

    return-void
.end method

.method private launchChooseLock()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 102
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;->getChooseLockIntent()Landroid/content/Intent;

    move-result-object v2

    .line 103
    .local v2, "intent":Landroid/content/Intent;
    const-class v3, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v0

    .line 104
    .local v0, "challenge":J
    const-string/jumbo v3, "minimum_quality"

    .line 105
    const/high16 v4, 0x10000

    .line 104
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    const-string/jumbo v3, "hide_disabled_prefs"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 107
    const-string/jumbo v3, "has_challenge"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    const-string/jumbo v3, "challenge"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 109
    const-string/jumbo v3, "for_fingerprint"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 110
    iget v3, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;->mUserId:I

    const/16 v4, -0x2710

    if-eq v3, v4, :cond_0

    .line 111
    const-string/jumbo v3, "android.intent.extra.USER_ID"

    iget v4, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;->mUserId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    :cond_0
    invoke-virtual {p0, v2, v5}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V

    .line 101
    return-void
.end method

.method private launchFindSensor([B)V
    .locals 3
    .param p1, "token"    # [B

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;->getFindSensorIntent()Landroid/content/Intent;

    move-result-object v0

    .line 118
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 119
    const-string/jumbo v1, "hw_auth_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 121
    :cond_0
    iget v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_1

    .line 122
    const-string/jumbo v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V

    .line 116
    return-void
.end method

.method private updatePasswordQuality()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 85
    new-instance v2, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    .line 86
    iget-object v3, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;->mUserManager:Landroid/os/UserManager;

    iget v4, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v3

    .line 85
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    .line 87
    .local v0, "passwordQuality":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;->mHasPassword:Z

    .line 84
    return-void
.end method


# virtual methods
.method protected getChooseLockIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/ChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected getFindSensorIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 172
    const/16 v0, 0xf3

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x2

    .line 138
    if-ne p2, v3, :cond_2

    const/4 v0, 0x1

    .line 139
    .local v0, "isResultFinished":Z
    :goto_0
    if-ne p1, v1, :cond_3

    .line 140
    if-nez v0, :cond_0

    if-ne p2, v1, :cond_4

    .line 141
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, -0x1

    .line 142
    .local v1, "result":I
    :cond_1
    invoke-virtual {p0, v1, p3}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;->setResult(ILandroid/content/Intent;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;->finish()V

    .line 144
    return-void

    .line 138
    .end local v0    # "isResultFinished":Z
    .end local v1    # "result":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isResultFinished":Z
    goto :goto_0

    .line 146
    :cond_3
    if-ne p1, v3, :cond_4

    .line 147
    if-eqz v0, :cond_4

    .line 148
    invoke-direct {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;->updatePasswordQuality()V

    .line 150
    const-string/jumbo v3, "hw_auth_token"

    .line 149
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 151
    .local v2, "token":[B
    invoke-direct {p0, v2}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;->launchFindSensor([B)V

    .line 152
    return-void

    .line 155
    .end local v2    # "token":[B
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 137
    return-void
.end method

.method protected onCancelButtonClick()V
    .locals 0

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;->finish()V

    .line 175
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v3, 0x7f040094

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;->setContentView(I)V

    .line 66
    const v3, 0x7f0e060e

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;->setHeaderText(I)V

    .line 67
    const v3, 0x7f0b038a

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;->setHeaderTextColor(I)V

    .line 69
    const v3, 0x7f110157

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;

    .line 70
    .local v2, "layout":Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;->mUserManager:Landroid/os/UserManager;

    .line 71
    invoke-virtual {v2}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;

    .line 72
    .local v0, "adapter":Lcom/android/setupwizardlib/items/RecyclerItemAdapter;
    invoke-virtual {v0, p0}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->setOnItemSelectedListener(Lcom/android/setupwizardlib/items/RecyclerItemAdapter$OnItemSelectedListener;)V

    .line 73
    const v3, 0x7f110404

    invoke-virtual {v0, v3}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->findItemById(I)Lcom/android/setupwizardlib/items/ItemHierarchy;

    move-result-object v1

    check-cast v1, Lcom/android/setupwizardlib/items/Item;

    .line 75
    .local v1, "item":Lcom/android/setupwizardlib/items/Item;
    const v3, 0x7f0e0610

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 76
    const v4, 0x7f0e0db5

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-static {v3, v4}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction$LearnMoreSpan;->linkify(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/setupwizardlib/items/Item;->setTitle(Ljava/lang/CharSequence;)V

    .line 80
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->setDividerInset(I)V

    .line 81
    invoke-direct {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;->updatePasswordQuality()V

    .line 63
    return-void
.end method

.method public onItemSelected(Lcom/android/setupwizardlib/items/IItem;)V
    .locals 1
    .param p1, "item"    # Lcom/android/setupwizardlib/items/IItem;

    .prologue
    .line 160
    check-cast p1, Lcom/android/setupwizardlib/items/Item;

    .end local p1    # "item":Lcom/android/setupwizardlib/items/IItem;
    invoke-virtual {p1}, Lcom/android/setupwizardlib/items/Item;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 159
    :goto_0
    return-void

    .line 162
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;->onNextButtonClick()V

    goto :goto_0

    .line 165
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;->onCancelButtonClick()V

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x7f1100d9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onNextButtonClick()V
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;->mHasPassword:Z

    if-nez v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;->launchChooseLock()V

    .line 91
    :goto_0
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;->launchFindSensor([B)V

    goto :goto_0
.end method
