.class public Lcom/android/settings_ex/IccLockSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "IccLockSettings.java"

# interfaces
.implements Lcom/android/settings_ex/EditPinPreference$OnPinEnteredListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/IccLockSettings$1;,
        Lcom/android/settings_ex/IccLockSettings$2;,
        Lcom/android/settings_ex/IccLockSettings$3;,
        Lcom/android/settings_ex/IccLockSettings$4;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DIALOG_ERROR:Ljava/lang/String; = "dialogError"

.field private static final DIALOG_PIN:Ljava/lang/String; = "dialogPin"

.field private static final DIALOG_STATE:Ljava/lang/String; = "dialogState"

.field private static final ENABLE_TO_STATE:Ljava/lang/String; = "enableState"

.field private static final ICC_LOCK_MODE:I = 0x1

.field private static final ICC_NEW_MODE:I = 0x3

.field private static final ICC_OLD_MODE:I = 0x2

.field private static final ICC_REENTER_MODE:I = 0x4

.field private static final MAX_PIN_LENGTH:I = 0x8

.field private static final MIN_PIN_LENGTH:I = 0x4

.field private static final MSG_CHANGE_ICC_PIN_COMPLETE:I = 0x65

.field private static final MSG_ENABLE_ICC_PIN_COMPLETE:I = 0x64

.field private static final MSG_SIM_STATE_CHANGED:I = 0x66

.field private static final NEW_PINCODE:Ljava/lang/String; = "newPinCode"

.field private static final OFF_MODE:I = 0x0

.field private static final OLD_PINCODE:Ljava/lang/String; = "oldPinCode"

.field private static final PIN_DIALOG:Ljava/lang/String; = "sim_pin"

.field private static final PIN_TOGGLE:Ljava/lang/String; = "sim_toggle"

.field private static final TAG:Ljava/lang/String; = "IccLockSettings"


# instance fields
.field private mDialogState:I

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mError:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPin:Ljava/lang/String;

.field private mPinDialog:Lcom/android/settings_ex/EditPinPreference;

.field private mPinToggle:Landroid/support/v14/preference/SwitchPreference;

.field private mRes:Landroid/content/res/Resources;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mToState:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/IccLockSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/IccLockSettings;)Landroid/widget/TabHost;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/IccLockSettings;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/IccLockSettings;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/IccLockSettings;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/IccLockSettings;ZI)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "attemptsRemaining"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/IccLockSettings;->iccLockChanged(ZI)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/IccLockSettings;ZI)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "attemptsRemaining"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/IccLockSettings;->iccPinChanged(ZI)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings_ex/IccLockSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->updatePreferences()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    .line 117
    new-instance v0, Lcom/android/settings_ex/IccLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/IccLockSettings$1;-><init>(Lcom/android/settings_ex/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mHandler:Landroid/os/Handler;

    .line 136
    new-instance v0, Lcom/android/settings_ex/IccLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/IccLockSettings$2;-><init>(Lcom/android/settings_ex/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 545
    new-instance v0, Lcom/android/settings_ex/IccLockSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/IccLockSettings$3;-><init>(Lcom/android/settings_ex/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 560
    new-instance v0, Lcom/android/settings_ex/IccLockSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/IccLockSettings$4;-><init>(Lcom/android/settings_ex/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 59
    return-void
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 569
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 568
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private getPinPasswordErrorMessage(I)Ljava/lang/String;
    .locals 5
    .param p1, "attemptsRemaining"    # I

    .prologue
    const/4 v4, 0x0

    .line 512
    if-nez p1, :cond_0

    .line 513
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0e0867

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, "displayMessage":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "IccLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPinPasswordErrorMessage: attemptsRemaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 522
    const-string/jumbo v3, " displayMessage="

    .line 521
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    return-object v0

    .line 514
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_0
    if-lez p1, :cond_1

    .line 515
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 517
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 516
    const v3, 0x7f13000b

    .line 515
    invoke-virtual {v1, v3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0

    .line 519
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0e0868

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0
.end method

.method static getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 173
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/settings_ex/IccLockSettings;->isIccLockEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    const v2, 0x7f0e0850

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "summary":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 175
    .end local v1    # "summary":Ljava/lang/String;
    :cond_0
    const v2, 0x7f0e0851

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private iccLockChanged(ZI)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "attemptsRemaining"    # I

    .prologue
    const/4 v2, 0x1

    .line 476
    if-eqz p1, :cond_0

    .line 477
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v1, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 482
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 483
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->resetDialogState()V

    .line 475
    return-void

    .line 479
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/settings_ex/IccLockSettings;->getPinPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private iccPinChanged(ZI)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "attemptsRemaining"    # I

    .prologue
    .line 487
    if-nez p1, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/settings_ex/IccLockSettings;->getPinPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    .line 489
    const/4 v2, 0x1

    .line 488
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 497
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->resetDialogState()V

    .line 486
    return-void

    .line 492
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0e085d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 493
    const/4 v2, 0x0

    .line 492
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static isIccLockEnabled()Z
    .locals 1

    .prologue
    .line 168
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v0

    return v0
.end method

.method private reasonablePin(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 527
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 529
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10400ba

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 531
    const/4 v0, 0x0

    return v0

    .line 527
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 533
    return v2
.end method

.method private resetDialogState()V
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    .line 539
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    .line 540
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    .line 541
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->setDialogValues()V

    .line 542
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    .line 537
    return-void
.end method

.method private setDialogValues()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0e0859

    .line 372
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 374
    const-string/jumbo v0, ""

    .line 375
    .local v0, "message":Ljava/lang/String;
    iget v1, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    packed-switch v1, :pswitch_data_0

    .line 395
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    iput-object v4, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 369
    return-void

    .line 377
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0e0853

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 378
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    iget-boolean v1, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    if-eqz v1, :cond_1

    .line 379
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0e0854

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 378
    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/settings_ex/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 380
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0e0855

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 383
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0e0856

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 384
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 387
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0e0857

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 388
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 391
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0e0858

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 392
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 375
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPinDialog()V
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    if-nez v0, :cond_0

    .line 362
    return-void

    .line 364
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->setDialogValues()V

    .line 366
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/EditPinPreference;->showPinDialog()V

    .line 360
    return-void
.end method

.method private tryChangeIccLockState()V
    .locals 4

    .prologue
    .line 467
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    .line 469
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 470
    .local v0, "callback":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    iget-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 472
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 463
    return-void
.end method

.method private tryChangePin()V
    .locals 4

    .prologue
    .line 502
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    .line 504
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 505
    .local v0, "callback":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 506
    iget-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mNewPin:Ljava/lang/String;

    .line 505
    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 500
    return-void
.end method

.method private updatePreferences()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 275
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_1

    .line 279
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 280
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/EditPinPreference;->setEnabled(Z)V

    .line 285
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 273
    :cond_0
    :goto_1
    return-void

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 283
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/EditPinPreference;->setEnabled(Z)V

    goto :goto_0

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/EditPinPreference;->setEnabled(Z)V

    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 297
    const/16 v0, 0x38

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 181
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 183
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 185
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->finish()V

    .line 187
    return-void

    .line 190
    :cond_0
    const v0, 0x7f080088

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/IccLockSettings;->addPreferencesFromResource(I)V

    .line 192
    const-string/jumbo v0, "sim_pin"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/EditPinPreference;

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    .line 193
    const-string/jumbo v0, "sim_toggle"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    .line 194
    if-eqz p1, :cond_1

    const-string/jumbo v0, "dialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    const-string/jumbo v0, "dialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    .line 196
    const-string/jumbo v0, "dialogPin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    .line 197
    const-string/jumbo v0, "dialogError"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    .line 198
    const-string/jumbo v0, "enableState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    .line 201
    iget v0, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    .line 218
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/EditPinPreference;->setOnPinEnteredListener(Lcom/android/settings_ex/EditPinPreference$OnPinEnteredListener;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setPersistent(Z)V

    .line 223
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    .line 180
    return-void

    .line 203
    :pswitch_0
    const-string/jumbo v0, "oldPinCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mOldPin:Ljava/lang/String;

    goto :goto_0

    .line 207
    :pswitch_1
    const-string/jumbo v0, "oldPinCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 208
    const-string/jumbo v0, "newPinCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mNewPin:Ljava/lang/String;

    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 18
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string/jumbo v13, "phone"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 232
    .local v10, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v4

    .line 233
    .local v4, "numSims":I
    const/4 v12, 0x1

    if-le v4, v12, :cond_3

    .line 234
    const v12, 0x7f040099

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v12, v1, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 235
    .local v11, "view":Landroid/view/View;
    const v12, 0x7f11008c

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 236
    .local v6, "prefs_container":Landroid/view/ViewGroup;
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v11, v6, v12}, Lcom/android/settings_ex/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 237
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-super {v0, v1, v6, v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v5

    .line 238
    .local v5, "prefs":Landroid/view/View;
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 240
    const v12, 0x1020012

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TabHost;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings_ex/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    .line 241
    const v12, 0x1020013

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TabWidget;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings_ex/IccLockSettings;->mTabWidget:Landroid/widget/TabWidget;

    .line 242
    const v12, 0x102000a

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings_ex/IccLockSettings;->mListView:Landroid/widget/ListView;

    .line 244
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v12}, Landroid/widget/TabHost;->setup()V

    .line 245
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/IccLockSettings;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v12, v13}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v12}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v8

    .line 249
    .local v8, "sm":Landroid/telephony/SubscriptionManager;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 250
    invoke-virtual {v8, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v9

    .line 251
    .local v9, "subInfo":Landroid/telephony/SubscriptionInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 252
    if-nez v9, :cond_0

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v12

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    add-int/lit8 v16, v3, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    const v16, 0x7f0e0df4

    move/from16 v0, v16

    invoke-virtual {v12, v0, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 252
    :goto_1
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 251
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v12}, Lcom/android/settings_ex/IccLockSettings;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v12

    invoke-virtual {v13, v12}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 249
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v12

    goto :goto_1

    .line 256
    .end local v9    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_1
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v7

    .line 258
    .local v7, "sir":Landroid/telephony/SubscriptionInfo;
    if-nez v7, :cond_2

    const/4 v12, 0x0

    :goto_2
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 260
    return-object v11

    .line 259
    :cond_2
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v12

    invoke-static {v12}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v12

    invoke-static {v12}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v12

    goto :goto_2

    .line 262
    .end local v3    # "i":I
    .end local v5    # "prefs":Landroid/view/View;
    .end local v6    # "prefs_container":Landroid/view/ViewGroup;
    .end local v7    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v8    # "sm":Landroid/telephony/SubscriptionManager;
    .end local v11    # "view":Landroid/view/View;
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 263
    invoke-super/range {p0 .. p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v12

    return-object v12
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 322
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 323
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 321
    return-void
.end method

.method public onPinEntered(Lcom/android/settings_ex/EditPinPreference;Z)V
    .locals 4
    .param p1, "preference"    # Lcom/android/settings_ex/EditPinPreference;
    .param p2, "positiveResult"    # Z

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 404
    if-nez p2, :cond_0

    .line 405
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->resetDialogState()V

    .line 406
    return-void

    .line 409
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings_ex/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    .line 410
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/IccLockSettings;->reasonablePin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0e085a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    .line 413
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->showPinDialog()V

    .line 414
    return-void

    .line 416
    :cond_1
    iget v0, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    .line 403
    :goto_0
    return-void

    .line 418
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->tryChangeIccLockState()V

    goto :goto_0

    .line 421
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 422
    iput v3, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    .line 423
    iput-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    .line 424
    iput-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    .line 425
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 428
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mNewPin:Ljava/lang/String;

    .line 429
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    .line 430
    iput-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    .line 431
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 434
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 435
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0e085b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    .line 436
    iput v3, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    .line 437
    iput-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    .line 438
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 440
    :cond_2
    iput-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    .line 441
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->tryChangePin()V

    goto :goto_0

    .line 416
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 449
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_2

    .line 451
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    .line 453
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    if-eqz v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 454
    iput v1, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    .line 455
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->showPinDialog()V

    .line 460
    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 453
    goto :goto_0

    .line 456
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    if-ne p1, v2, :cond_0

    .line 457
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    .line 458
    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 302
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 306
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 308
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 312
    iget v1, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    if-eqz v1, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->showPinDialog()V

    .line 301
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->resetDialogState()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Bundle;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    const-string/jumbo v0, "dialogState"

    iget v1, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 335
    const-string/jumbo v0, "dialogPin"

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/settings_ex/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string/jumbo v0, "dialogError"

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string/jumbo v0, "enableState"

    iget-boolean v1, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 340
    iget v0, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    .line 327
    :goto_0
    return-void

    .line 342
    :pswitch_0
    const-string/jumbo v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 346
    :pswitch_1
    const-string/jumbo v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string/jumbo v0, "newPinCode"

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 356
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 340
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 269
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 270
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->updatePreferences()V

    .line 268
    return-void
.end method
