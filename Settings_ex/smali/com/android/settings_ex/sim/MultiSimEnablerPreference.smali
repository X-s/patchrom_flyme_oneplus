.class public Lcom/android/settings_ex/sim/MultiSimEnablerPreference;
.super Landroid/preference/Preference;
.source "MultiSimEnablerPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final CONFIRM_ALERT_DLG_ID:I = 0x1

.field private static final DBG:Z = true

.field private static final ERROR_ALERT_DLG_ID:I = 0x2

.field private static final EVT_PROGRESS_DLG_TIME_OUT:I = 0x4

.field private static final EVT_SHOW_PROGRESS_DLG:I = 0x3

.field private static final EVT_SHOW_RESULT_DLG:I = 0x2

.field private static final EVT_UPDATE:I = 0x1

.field private static final MSG_DELAY_TIME:I = 0x7d0

.field private static final PROGRESS_DLG_TIME_OUT:I = 0x7530

.field private static final RESULT_ALERT_DLG_ID:I = 0x3

.field private static mSyncLock:Ljava/lang/Object;

.field private static sAlertDialog:Landroid/app/AlertDialog;

.field private static sProgressDialog:Landroid/app/ProgressDialog;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCmdInProgress:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentState:Z

.field private mDialogCanceListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mParentHandler:Landroid/os/Handler;

.field private mSir:Landroid/telephony/SubscriptionInfo;

.field private mSlotId:I

.field private mSubSummary:Landroid/widget/TextView;

.field private mSubTitle:Landroid/widget/TextView;

.field private final mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 95
    sput-object v0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sAlertDialog:Landroid/app/AlertDialog;

    .line 96
    sput-object v0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sProgressDialog:Landroid/app/ProgressDialog;

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSyncLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;Landroid/os/Handler;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sir"    # Landroid/telephony/SubscriptionInfo;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "slotId"    # I

    .prologue
    .line 118
    const/4 v0, 0x0

    const v1, 0x101008f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Contructor..Enter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 120
    iput p4, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSlotId:I

    .line 121
    iput-object p2, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    .line 122
    iput-object p3, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mParentHandler:Landroid/os/Handler;

    .line 123
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    const-string v0, "MultiSimEnablerPreference"

    iput-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->TAG:Ljava/lang/String;

    .line 90
    iput-boolean v2, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mCmdInProgress:Z

    .line 92
    iput v2, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSwitchVisibility:I

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mParentHandler:Landroid/os/Handler;

    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mIntentFilter:Landroid/content/IntentFilter;

    .line 465
    new-instance v0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$2;-><init>(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)V

    iput-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 488
    new-instance v0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$3;-><init>(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)V

    iput-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mDialogCanceListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 495
    new-instance v0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$4;-><init>(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)V

    iput-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 508
    new-instance v0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$5;-><init>(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)V

    iput-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mHandler:Landroid/os/Handler;

    .line 110
    iput-object p1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    .line 111
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 112
    const v0, 0x7f04002b

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->setWidgetLayoutResource(I)V

    .line 113
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->setSwitchVisibility(I)V

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mCurrentState:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->showProgressDialog()V

    return-void
.end method

.method static synthetic access$1100()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;Landroid/app/Dialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/MultiSimEnablerPreference;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sendSubConfigurationRequest()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/MultiSimEnablerPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->setChecked(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSubSummary:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/MultiSimEnablerPreference;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->processSetUiccDone()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/MultiSimEnablerPreference;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->showAlertDialog(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private configureSubscription()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 289
    invoke-direct {p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->isAirplaneModeOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    const-string v2, "APM is on, EXIT!"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 296
    const v2, 0x7f09003e

    invoke-direct {p0, v4, v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->showAlertDialog(II)V

    .line 340
    :goto_0
    return-void

    .line 302
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 303
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 304
    .local v1, "subId":[I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    aget v3, v1, v5

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call state for phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not idle, EXIT!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 311
    const v2, 0x7f09003f

    invoke-direct {p0, v4, v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->showAlertDialog(II)V

    goto :goto_0

    .line 302
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 319
    .end local v1    # "subId":[I
    :cond_2
    iget-boolean v2, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mCurrentState:Z

    if-nez v2, :cond_4

    .line 320
    iget-object v2, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->getActivatedSubInfoCount(Landroid/content/Context;)I

    move-result v2

    if-le v2, v6, :cond_3

    .line 321
    const-string v2, "More than one sub is active, Deactivation possible."

    invoke-direct {p0, v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 322
    invoke-direct {p0, v6, v5}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->showAlertDialog(II)V

    goto :goto_0

    .line 324
    :cond_3
    const-string v2, "Only one sub is active. Deactivation not possible."

    invoke-direct {p0, v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 329
    const v2, 0x7f090040

    invoke-direct {p0, v4, v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->showAlertDialog(II)V

    goto :goto_0

    .line 336
    :cond_4
    const-string v2, "Activate the sub"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 337
    invoke-direct {p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sendSubConfigurationRequest()V

    goto :goto_0
.end method

.method private dismissDialog(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 447
    if-eqz p1, :cond_0

    .line 448
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 449
    const/4 p1, 0x0

    .line 451
    :cond_0
    return-void
.end method

.method public static getActivatedSubInfoCount(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "activeSubInfoCount":I
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    .line 270
    .local v4, "subInfoLists":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    .line 271
    .local v2, "subController":Lcom/android/internal/telephony/SubscriptionController;
    if-eqz v4, :cond_1

    .line 272
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 273
    .local v3, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getStatus()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_1
    return v0
.end method

.method private hasCard()Z
    .locals 2

    .prologue
    .line 132
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSlotId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 136
    iget-object v1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isCurrentSubValid()Z
    .locals 6

    .prologue
    .line 184
    const/4 v1, 0x0

    .line 185
    .local v1, "isSubValid":Z
    invoke-direct {p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->isAirplaneModeOn()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->hasCard()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 186
    iget-object v4, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 188
    .local v3, "sirList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_2

    .line 189
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 190
    .local v2, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_0

    iget v4, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSlotId:I

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 191
    iput-object v2, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    .line 195
    .end local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    if-ltz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    iget v4, v4, Landroid/telephony/SubscriptionInfo;->mStatus:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 197
    const/4 v1, 0x1

    .line 201
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "sirList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_2
    return v1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    return-void
.end method

.method private processSetUiccDone()V
    .locals 3

    .prologue
    const/16 v2, 0x7d0

    .line 367
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mParentHandler:Landroid/os/Handler;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sendMessage(ILandroid/os/Handler;I)V

    .line 368
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sendMessage(ILandroid/os/Handler;I)V

    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mCmdInProgress:Z

    .line 370
    invoke-direct {p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->unregisterReceiver()V

    .line 371
    return-void
.end method

.method private sendMessage(ILandroid/os/Handler;I)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "delay"    # I

    .prologue
    .line 127
    invoke-virtual {p2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 128
    .local v0, "message":Landroid/os/Message;
    int-to-long v2, p3

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 129
    return-void
.end method

.method private sendSubConfigurationRequest()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mParentHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mCmdInProgress:Z

    .line 348
    invoke-direct {p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->showProgressDialog()V

    .line 349
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 352
    new-instance v0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$1;-><init>(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)V

    invoke-virtual {v0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$1;->start()V

    .line 363
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    goto :goto_0
.end method

.method private setChecked(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked: state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sir:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 220
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 221
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 222
    iput-boolean p1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mCurrentState:Z

    .line 224
    :cond_0
    return-void
.end method

.method private showAlertDialog(II)V
    .locals 7
    .param p1, "dialogId"    # I
    .param p2, "msgId"    # I

    .prologue
    const/4 v6, 0x0

    const v5, 0x104000a

    .line 374
    iget-object v3, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    if-nez v3, :cond_0

    const-string v2, "SUB"

    .line 376
    .local v2, "title":Ljava/lang/String;
    :goto_0
    sget-object v3, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sAlertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v3}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    .line 377
    sget-object v3, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0, v3}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    .line 378
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 381
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 417
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sAlertDialog:Landroid/app/AlertDialog;

    .line 418
    sget-object v3, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 419
    sget-object v3, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 420
    return-void

    .line 374
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "title":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 387
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v2    # "title":Ljava/lang/String;
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    const v4, 0x7f09003d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 391
    iget-object v3, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 392
    const v3, 0x1040009

    iget-object v4, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 393
    iget-object v3, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mDialogCanceListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 396
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 397
    iget-object v3, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v5, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 398
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 405
    :pswitch_2
    iget-boolean v3, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mCurrentState:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    const v4, 0x7f090043

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 410
    .local v1, "msg":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 411
    const/4 v3, 0x0

    invoke-virtual {v0, v5, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 405
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    const v4, 0x7f090045

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 381
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showProgressDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 423
    iget-object v2, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    if-nez v2, :cond_0

    const-string v1, "SUB"

    .line 429
    .local v1, "title":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mCurrentState:Z

    if-eqz v2, :cond_1

    const v2, 0x7f090041

    :goto_1
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "msg":Ljava/lang/String;
    sget-object v2, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    .line 435
    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sProgressDialog:Landroid/app/ProgressDialog;

    .line 436
    sget-object v2, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sProgressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 437
    sget-object v2, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 438
    sget-object v2, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 439
    sget-object v2, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 440
    sget-object v2, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 441
    sget-object v2, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 443
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x7530

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sendMessage(ILandroid/os/Handler;I)V

    .line 444
    return-void

    .line 423
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "title":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 429
    .restart local v1    # "title":Ljava/lang/String;
    :cond_1
    const v2, 0x7f090042

    goto :goto_1
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :goto_0
    return-void

    .line 462
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateSummary()V
    .locals 8

    .prologue
    const v7, 0x7f090038

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 233
    iget-object v5, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 235
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    iget v5, v5, Landroid/telephony/SubscriptionInfo;->mStatus:I

    if-ne v5, v3, :cond_1

    move v0, v3

    .line 236
    .local v0, "isActivated":Z
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSummary: subId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isActivated = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " slot id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSlotId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 242
    if-eqz v0, :cond_2

    .line 243
    iget-object v5, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    new-array v3, v3, [Ljava/lang/Object;

    const v6, 0x7f090039

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {v5, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "summary":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSubSummary:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 255
    iget-object v3, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSubSummary:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->setChecked(Z)V

    .line 258
    return-void

    .end local v0    # "isActivated":Z
    .end local v2    # "summary":Ljava/lang/String;
    :cond_1
    move v0, v4

    .line 235
    goto :goto_0

    .line 246
    .restart local v0    # "isActivated":Z
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->hasCard()Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f09003a

    :goto_2
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v4

    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "summary":Ljava/lang/String;
    goto :goto_1

    .end local v2    # "summary":Ljava/lang/String;
    :cond_3
    const v3, 0x7f09003b

    goto :goto_2
.end method

.method private updateTitle()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSubTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSubTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    if-nez v0, :cond_1

    const-string v0, "SUB"

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->unregisterReceiver()V

    .line 455
    sget-object v0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    .line 456
    sget-object v0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sAlertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    .line 457
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 146
    const v0, 0x7f0f006a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSubTitle:Landroid/widget/TextView;

    .line 147
    const v0, 0x7f0f006b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSubSummary:Landroid/widget/TextView;

    .line 148
    const v0, 0x7f0f006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;

    .line 149
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->update()V

    .line 152
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;

    iget v1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSwitchVisibility:I

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 153
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 280
    iput-boolean p2, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mCurrentState:Z

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 283
    sget-object v1, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 284
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->configureSubscription()V

    .line 285
    monitor-exit v1

    .line 286
    return-void

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 230
    :cond_0
    return-void
.end method

.method public setSwitchVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 213
    iput p1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSwitchVisibility:I

    .line 214
    return-void
.end method

.method public update()V
    .locals 7

    .prologue
    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 158
    iget-object v2, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 159
    .local v1, "res":Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->isCurrentSubValid()Z

    move-result v0

    .line 160
    .local v0, "isSubValid":Z
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->setEnabled(Z)V

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update() isSubValid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 163
    if-eqz v0, :cond_1

    .line 164
    invoke-direct {p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->updateTitle()V

    .line 165
    invoke-direct {p0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->updateSummary()V

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSubTitle:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 172
    iget-object v2, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSubTitle:Landroid/widget/TextView;

    const v3, 0x7f090a61

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSlotId:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSubSummary:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSubSummary:Landroid/widget/TextView;

    const v3, 0x7f090010

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
