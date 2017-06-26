.class public Lcom/android/settings_ex/IccLockSettings;
.super Lcom/android/settings_ex/InstrumentedPreferenceActivity;
.source "IccLockSettings.java"

# interfaces
.implements Lcom/android/settings_ex/EditPinPreference$OnPinEnteredListener;


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

.field private mListView:Lcom/oneplus/widget/listview/OPListView;

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPin:Ljava/lang/String;

.field private mPinDialog:Lcom/android/settings_ex/EditPinPreference;

.field private mPinToggle:Landroid/preference/SwitchPreference;

.field private mRes:Landroid/content/res/Resources;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mToState:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    .line 123
    new-instance v0, Lcom/android/settings_ex/IccLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/IccLockSettings$1;-><init>(Lcom/android/settings_ex/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mHandler:Landroid/os/Handler;

    .line 147
    new-instance v0, Lcom/android/settings_ex/IccLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/IccLockSettings$2;-><init>(Lcom/android/settings_ex/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 502
    new-instance v0, Lcom/android/settings_ex/IccLockSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/IccLockSettings$3;-><init>(Lcom/android/settings_ex/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 517
    new-instance v0, Lcom/android/settings_ex/IccLockSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/IccLockSettings$4;-><init>(Lcom/android/settings_ex/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/IccLockSettings;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/IccLockSettings;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/IccLockSettings;->iccLockChanged(ZI)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/IccLockSettings;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/IccLockSettings;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/IccLockSettings;->iccPinChanged(ZI)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/IccLockSettings;Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/IccLockSettings;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/IccLockSettings;->iniState(Landroid/os/Bundle;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/IccLockSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/IccLockSettings;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings_ex/IccLockSettings;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/IccLockSettings;
    .param p1, "x1"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings_ex/IccLockSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/IccLockSettings;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->updatePreferences()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/IccLockSettings;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/IccLockSettings;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private getPinPasswordErrorMessage(I)Ljava/lang/String;
    .locals 6
    .param p1, "attemptsRemaining"    # I

    .prologue
    .line 473
    if-nez p1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c061a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, "displayMessage":Ljava/lang/String;
    :goto_0
    const-string v1, "IccLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPinPasswordErrorMessage: attemptsRemaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " displayMessage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return-object v0

    .line 475
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_0
    if-lez p1, :cond_1

    .line 476
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f130008

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0

    .line 478
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c061b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0
.end method

.method static getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 163
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/settings_ex/IccLockSettings;->isIccLockEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0c0603

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "summary":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 163
    .end local v1    # "summary":Ljava/lang/String;
    :cond_0
    const v2, 0x7f0c0604

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

    .line 446
    if-eqz p1, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    iget-boolean v1, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 451
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 452
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->resetDialogState()V

    .line 453
    return-void

    .line 449
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings_ex/IccLockSettings;->getPinPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private iccPinChanged(ZI)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "attemptsRemaining"    # I

    .prologue
    .line 456
    if-nez p1, :cond_0

    .line 457
    invoke-direct {p0, p2}, Lcom/android/settings_ex/IccLockSettings;->getPinPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 462
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->resetDialogState()V

    .line 463
    return-void

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c0610

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private iniState(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 16
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    const-string v10, "phone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 182
    .local v8, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v3

    .line 184
    .local v3, "numSims":I
    const-string v10, "sim_pin"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/android/settings_ex/EditPinPreference;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    .line 185
    const-string v10, "sim_toggle"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    .line 186
    if-eqz p1, :cond_0

    const-string v10, "dialogState"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 187
    const-string v10, "dialogState"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    .line 188
    const-string v10, "dialogPin"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    .line 189
    const-string v10, "dialogError"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    .line 190
    const-string v10, "enableState"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    .line 193
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    packed-switch v10, :pswitch_data_0

    .line 210
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lcom/android/settings_ex/EditPinPreference;->setOnPinEnteredListener(Lcom/android/settings_ex/EditPinPreference$OnPinEnteredListener;)V

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/IccLockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 215
    const/4 v10, 0x1

    if-le v3, v10, :cond_8

    .line 216
    const v10, 0x7f04006a

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/IccLockSettings;->setContentView(I)V

    .line 218
    const v10, 0x1020012

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/IccLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TabHost;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings_ex/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    .line 219
    const v10, 0x1020013

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/IccLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TabWidget;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings_ex/IccLockSettings;->mTabWidget:Landroid/widget/TabWidget;

    .line 220
    const v10, 0x102000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/IccLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/oneplus/widget/listview/OPListView;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings_ex/IccLockSettings;->mListView:Lcom/oneplus/widget/listview/OPListView;

    .line 222
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v10}, Landroid/widget/TabHost;->setup()V

    .line 223
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/IccLockSettings;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v10, v11}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v10}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 226
    invoke-static/range {p0 .. p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v6

    .line 231
    .local v6, "sm":Landroid/telephony/SubscriptionManager;
    const/4 v4, 0x0

    .line 232
    .local v4, "selectTab":I
    const/4 v1, 0x0

    .line 233
    .local v1, "haveCards":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 234
    invoke-virtual {v6, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v7

    .line 235
    .local v7, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v7, :cond_1

    if-nez v1, :cond_1

    .line 236
    add-int/lit8 v4, v4, 0x1

    .line 240
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    if-nez v7, :cond_2

    const v10, 0x7f0c0c13

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    add-int/lit8 v15, v2, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :goto_3
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10}, Lcom/android/settings_ex/IccLockSettings;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 233
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 195
    .end local v1    # "haveCards":Z
    .end local v2    # "i":I
    .end local v4    # "selectTab":I
    .end local v6    # "sm":Landroid/telephony/SubscriptionManager;
    .end local v7    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :pswitch_0
    const-string v10, "oldPinCode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings_ex/IccLockSettings;->mOldPin:Ljava/lang/String;

    goto/16 :goto_0

    .line 199
    :pswitch_1
    const-string v10, "oldPinCode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings_ex/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 200
    const-string v10, "newPinCode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings_ex/IccLockSettings;->mNewPin:Ljava/lang/String;

    goto/16 :goto_0

    .line 238
    .restart local v1    # "haveCards":Z
    .restart local v2    # "i":I
    .restart local v4    # "selectTab":I
    .restart local v6    # "sm":Landroid/telephony/SubscriptionManager;
    .restart local v7    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_1
    const/4 v1, 0x1

    goto :goto_2

    .line 240
    :cond_2
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v10

    goto :goto_3

    .line 244
    .end local v7    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_3
    invoke-static {}, Landroid/util/OpFeatures;->isBlackModeOn()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 245
    const/4 v2, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v10}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v10

    if-ge v2, v10, :cond_4

    .line 246
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v10}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const v11, 0x1020016

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 247
    .local v9, "tv":Landroid/widget/TextView;
    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 248
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v10}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const v11, 0x7f02014c

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 245
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 252
    .end local v9    # "tv":Landroid/widget/TextView;
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    if-eqz v1, :cond_5

    move v10, v4

    :goto_5
    invoke-virtual {v11, v10}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 255
    if-eqz v1, :cond_6

    .end local v4    # "selectTab":I
    :goto_6
    invoke-virtual {v6, v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    .line 258
    .local v5, "sir":Landroid/telephony/SubscriptionInfo;
    if-nez v5, :cond_7

    const/4 v10, 0x0

    :goto_7
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 263
    .end local v1    # "haveCards":Z
    .end local v2    # "i":I
    .end local v5    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v6    # "sm":Landroid/telephony/SubscriptionManager;
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    .line 264
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/IccLockSettings;->updatePreferences()V

    .line 265
    return-void

    .line 252
    .restart local v1    # "haveCards":Z
    .restart local v2    # "i":I
    .restart local v4    # "selectTab":I
    .restart local v6    # "sm":Landroid/telephony/SubscriptionManager;
    :cond_5
    const/4 v10, 0x0

    goto :goto_5

    .line 255
    :cond_6
    const/4 v4, 0x0

    goto :goto_6

    .line 258
    .end local v4    # "selectTab":I
    .restart local v5    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_7
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v10

    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v10

    invoke-static {v10}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    goto :goto_7

    .line 261
    .end local v1    # "haveCards":Z
    .end local v2    # "i":I
    .end local v5    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v6    # "sm":Landroid/telephony/SubscriptionManager;
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_8

    .line 193
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static isIccLockEnabled()Z
    .locals 1

    .prologue
    .line 158
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v0

    return v0
.end method

.method private reasonablePin(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 487
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 488
    :cond_0
    const/4 v0, 0x0

    .line 490
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetDialogState()V
    .locals 1

    .prologue
    .line 495
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    .line 496
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    .line 497
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    .line 498
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->setDialogValues()V

    .line 499
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    .line 500
    return-void
.end method

.method private setDialogValues()V
    .locals 4

    .prologue
    const v3, 0x7f0c060c

    .line 349
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 350
    const-string v0, ""

    .line 351
    .local v0, "message":Ljava/lang/String;
    iget v1, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    packed-switch v1, :pswitch_data_0

    .line 370
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 375
    return-void

    .line 353
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c0606

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 354
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    iget-boolean v1, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c0607

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/settings_ex/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c0608

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 358
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c0609

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 362
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c060a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 363
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 366
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c060b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 367
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 351
    nop

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
    .line 340
    iget v0, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    if-nez v0, :cond_0

    .line 346
    :goto_0
    return-void

    .line 343
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->setDialogValues()V

    .line 345
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/EditPinPreference;->showPinDialog()V

    goto :goto_0
.end method

.method private tryChangeIccLockState()V
    .locals 4

    .prologue
    .line 439
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 440
    .local v0, "callback":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    iget-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 442
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 443
    return-void
.end method

.method private tryChangePin()V
    .locals 4

    .prologue
    .line 466
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 467
    .local v0, "callback":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mOldPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 468
    return-void
.end method

.method private updatePreferences()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 268
    iget-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/settings_ex/EditPinPreference;->setEnabled(Z)V

    .line 269
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 271
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 274
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 268
    goto :goto_0

    :cond_2
    move v1, v2

    .line 269
    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 278
    const/16 v0, 0x38

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 172
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->finish()V

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    const v1, 0x7f08006e

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/IccLockSettings;->addPreferencesFromResource(I)V

    .line 177
    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/IccLockSettings;->iniState(Landroid/os/Bundle;Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 301
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;->onPause()V

    .line 302
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/IccLockSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 303
    return-void
.end method

.method public onPinEntered(Lcom/android/settings_ex/EditPinPreference;Z)V
    .locals 4
    .param p1, "preference"    # Lcom/android/settings_ex/EditPinPreference;
    .param p2, "positiveResult"    # Z

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 378
    if-nez p2, :cond_0

    .line 379
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->resetDialogState()V

    .line 419
    :goto_0
    return-void

    .line 383
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings_ex/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    .line 384
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/IccLockSettings;->reasonablePin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 386
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c060d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    .line 387
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 390
    :cond_1
    iget v0, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 392
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->tryChangeIccLockState()V

    goto :goto_0

    .line 395
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 396
    iput v3, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    .line 397
    iput-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    .line 398
    iput-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    .line 399
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 402
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mNewPin:Ljava/lang/String;

    .line 403
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    .line 404
    iput-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    .line 405
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 408
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 409
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c060e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    .line 410
    iput v3, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    .line 411
    iput-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    .line 412
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 414
    :cond_2
    iput-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    .line 415
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->tryChangePin()V

    goto :goto_0

    .line 390
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 422
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_2

    .line 424
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    .line 426
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 427
    iput v1, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    .line 428
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->showPinDialog()V

    :cond_1
    move v0, v1

    .line 433
    :goto_0
    return v0

    .line 429
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    if-ne p2, v2, :cond_1

    .line 430
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 283
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;->onResume()V

    .line 288
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/IccLockSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 291
    iget v1, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    if-eqz v1, :cond_0

    .line 292
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->showPinDialog()V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->resetDialogState()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Bundle;

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    const-string v0, "dialogState"

    iget v1, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 314
    const-string v0, "dialogPin"

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/settings_ex/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v0, "dialogError"

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v0, "enableState"

    iget-boolean v1, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 319
    iget v0, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    .line 337
    :goto_0
    return-void

    .line 321
    :pswitch_0
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :pswitch_1
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v0, "newPinCode"

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
