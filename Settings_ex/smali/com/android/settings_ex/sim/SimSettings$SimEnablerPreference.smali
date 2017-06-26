.class Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;
.super Lcom/android/settings_ex/sim/SimSettings$SimPreference;
.source "SimSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimEnablerPreference"
.end annotation


# static fields
.field private static final CONFIRM_ALERT_DLG_ID:I = 0x1

.field private static final DBG:Z = true

.field private static final DISPLAY_NUMBERS_TYPE:Ljava/lang/String; = "display_numbers_type"

.field private static final ERROR_ALERT_DLG_ID:I = 0x2

.field private static final EVT_PROGRESS_DLG_TIME_OUT:I = 0x4

.field private static final EVT_SHOW_PROGRESS_DLG:I = 0x3

.field private static final EVT_SHOW_RESULT_DLG:I = 0x2

.field private static final EVT_UPDATE:I = 0x1

.field private static final GENERIC_FAILURE:I = -0x1

.field private static final INVALID_INPUT:I = -0x2

.field private static final MSG_DELAY_TIME:I = 0x7d0

.field private static final PROGRESS_DLG_TIME_OUT:I = 0x7530

.field private static final REQUEST_IN_PROGRESS:I = -0x3

.field private static final REQUEST_SUCCESS:I = 0x0

.field private static final RESULT_ALERT_DLG_ID:I = 0x3


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCmdInProgress:Z

.field private mCurrentUiccProvisionState:Z

.field private mDialogCanceListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

.field private mHandler:Landroid/os/Handler;

.field private mIsChecked:Z

.field private mSir:Landroid/telephony/SubscriptionInfo;

.field private mSwitch:Landroid/widget/CompoundButton;

.field private mSwitchVisibility:I

.field final synthetic this$0:Lcom/android/settings_ex/sim/SimSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/sim/SimSettings;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "sir"    # Landroid/telephony/SubscriptionInfo;
    .param p4, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 441
    iput-object p1, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    .line 442
    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    const v1, 0x101008f

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings_ex/sim/SimSettings$SimPreference;-><init>(Lcom/android/settings_ex/sim/SimSettings;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 406
    const-string v0, "SimEnablerPreference"

    iput-object v0, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->TAG:Ljava/lang/String;

    .line 431
    iput-boolean v2, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mCmdInProgress:Z

    .line 432
    iput v2, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSwitchVisibility:I

    .line 796
    new-instance v0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference$1;-><init>(Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;)V

    iput-object v0, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 809
    new-instance v0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference$2;-><init>(Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;)V

    iput-object v0, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mDialogCanceListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 817
    new-instance v0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference$3;-><init>(Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;)V

    iput-object v0, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mHandler:Landroid/os/Handler;

    .line 444
    const-string v0, "Contructor..Enter"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 445
    iput-object p2, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    .line 446
    iput p4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    .line 447
    iput-object p3, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    .line 448
    iput-object p3, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    .line 449
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    const v0, 0x7f040038

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->setWidgetLayoutResource(I)V

    .line 455
    :goto_0
    const-string v0, "extphone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IExtTelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

    .line 457
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->setSwitchVisibility(I)V

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->setKey(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->update()V

    .line 460
    return-void

    .line 452
    :cond_0
    const v0, 0x7f040039

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->setWidgetLayoutResource(I)V

    goto :goto_0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->sendUiccProvisioningRequest()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 404
    invoke-direct {p0, p1}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 404
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->showAlertDialog(II)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->showProgressDialog()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;Landroid/app/Dialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 404
    invoke-direct {p0, p1}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method private dismissDialog(Landroid/app/Dialog;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 785
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 787
    const/4 p1, 0x0

    .line 789
    :cond_0
    return-void
.end method

.method private getProvisionStatus(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mUiccProvisionStatus:[I
    invoke-static {v0}, Lcom/android/settings_ex/sim/SimSettings;->access$700(Lcom/android/settings_ex/sim/SimSettings;)[I

    move-result-object v0

    aget v0, v0, p1

    return v0
.end method

.method private getProvisionedSlotId(Landroid/content/Context;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 754
    const/4 v0, -0x1

    .line 755
    .local v0, "activeSlotId":I
    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v4}, Lcom/android/settings_ex/sim/SimSettings;->access$800(Lcom/android/settings_ex/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 757
    .local v3, "subInfoLists":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_1

    .line 758
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 759
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->getProvisionStatus(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 761
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    add-int/lit8 v0, v4, 0x1

    goto :goto_0

    .line 764
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_1
    return v0
.end method

.method private declared-synchronized handleUserRequest()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 634
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->isAirplaneModeOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 636
    const-string v2, "APM is on, EXIT!"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 637
    const/4 v2, 0x2

    const v3, 0x7f0c0da6

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->showAlertDialog(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    :goto_0
    monitor-exit p0

    return-void

    .line 640
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mPhoneCount:I
    invoke-static {v2}, Lcom/android/settings_ex/sim/SimSettings;->access$900(Lcom/android/settings_ex/sim/SimSettings;)I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 641
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 643
    .local v1, "subId":[I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 645
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

    invoke-direct {p0, v2}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 646
    const/4 v2, 0x2

    const v3, 0x7f0c0da7

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->showAlertDialog(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 634
    .end local v0    # "i":I
    .end local v1    # "subId":[I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 640
    .restart local v0    # "i":I
    .restart local v1    # "subId":[I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 651
    .end local v1    # "subId":[I
    :cond_2
    :try_start_2
    iget-boolean v2, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mIsChecked:Z

    if-nez v2, :cond_4

    .line 652
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->getNumOfSubsProvisioned()I

    move-result v2

    if-le v2, v4, :cond_3

    .line 653
    const-string v2, "More than one sub is active, Deactivation possible."

    invoke-direct {p0, v2}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 654
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->showAlertDialog(II)V

    goto :goto_0

    .line 656
    :cond_3
    const-string v2, "Only one sub is active. Deactivation not possible."

    invoke-direct {p0, v2}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 657
    const/4 v2, 0x2

    const v3, 0x7f0c0da8

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->showAlertDialog(II)V

    goto :goto_0

    .line 661
    :cond_4
    const-string v2, "Activate the sub"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 662
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->sendUiccProvisioningRequest()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private hasCard()Z
    .locals 2

    .prologue
    .line 473
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 477
    iget-object v1, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

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
    .line 537
    const/4 v1, 0x0

    .line 538
    .local v1, "isSubValid":Z
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->hasCard()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 539
    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v4}, Lcom/android/settings_ex/sim/SimSettings;->access$800(Lcom/android/settings_ex/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 541
    .local v3, "sirList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_2

    .line 542
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

    .line 543
    .local v2, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_0

    iget v4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 544
    iput-object v2, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    .line 548
    .end local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    if-ltz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->getProvisionStatus(I)I

    move-result v4

    if-ltz v4, :cond_2

    .line 552
    const/4 v1, 0x1

    .line 556
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "sirList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_2
    return v1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    return-void
.end method

.method private processSetUiccDone(II)V
    .locals 6
    .param p1, "result"    # I
    .param p2, "newProvisionedState"    # I

    .prologue
    const/16 v3, 0x7d0

    .line 693
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->sendMessage(ILandroid/os/Handler;I)V

    .line 694
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mHandler:Landroid/os/Handler;

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->sendMessage(ILandroid/os/Handler;III)V

    .line 695
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mCmdInProgress:Z

    .line 696
    return-void
.end method

.method private sendMessage(ILandroid/os/Handler;I)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "delay"    # I

    .prologue
    .line 463
    invoke-virtual {p2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 464
    .local v0, "message":Landroid/os/Message;
    int-to-long v2, p3

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 465
    return-void
.end method

.method private sendMessage(ILandroid/os/Handler;III)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "delay"    # I
    .param p4, "arg1"    # I
    .param p5, "arg2"    # I

    .prologue
    .line 468
    invoke-virtual {p2, p1, p4, p5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 469
    .local v0, "message":Landroid/os/Message;
    int-to-long v2, p3

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 470
    return-void
.end method

.method private sendUiccProvisioningRequest()V
    .locals 5

    .prologue
    .line 667
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 690
    :goto_0
    return-void

    .line 670
    :cond_0
    const/4 v2, -0x1

    .line 671
    .local v2, "result":I
    const/4 v1, 0x0

    .line 672
    .local v1, "newProvisionedState":I
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mCmdInProgress:Z

    .line 674
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->showProgressDialog()V

    .line 675
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->setEnabled(Z)V

    .line 677
    :try_start_0
    iget-boolean v3, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mIsChecked:Z

    if-eqz v3, :cond_1

    .line 678
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IExtTelephony;->activateUiccCard(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 679
    const/4 v1, 0x1

    .line 689
    :goto_1
    invoke-direct {p0, v2, v1}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->processSetUiccDone(II)V

    goto :goto_0

    .line 681
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IExtTelephony;->deactivateUiccCard(I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_1

    .line 683
    :catch_0
    move-exception v0

    .line 684
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activate  sub failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " phoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 685
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 686
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to activate sub Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setChecked(Z)V
    .locals 2
    .param p1, "uiccProvisionState"    # Z

    .prologue
    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked: uiccProvisionState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sir:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 569
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 571
    iget-boolean v0, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mCmdInProgress:Z

    if-nez v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 575
    iput-boolean p1, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mCurrentUiccProvisionState:Z

    .line 577
    :cond_1
    return-void
.end method

.method private showAlertDialog(II)V
    .locals 10
    .param p1, "dialogId"    # I
    .param p2, "msgId"    # I

    .prologue
    const v6, 0x7f0c0da3

    const v9, 0x104000a

    const/4 v8, 0x0

    .line 700
    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    if-nez v4, :cond_0

    const-string v3, "SUB"

    .line 702
    .local v3, "title":Ljava/lang/String;
    :goto_0
    # getter for: Lcom/android/settings_ex/sim/SimSettings;->sAlertDialog:Lcom/oneplus/app/OPAlertDialog;
    invoke-static {}, Lcom/android/settings_ex/sim/SimSettings;->access$1000()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    .line 703
    # getter for: Lcom/android/settings_ex/sim/SimSettings;->sProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/android/settings_ex/sim/SimSettings;->access$1100()Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    .line 704
    new-instance v4, Lcom/oneplus/app/OPAlertDialog$Builder;

    iget-object v5, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Lcom/oneplus/app/OPAlertDialog$Builder;->setIcon(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v0

    .line 708
    .local v0, "builder":Lcom/oneplus/app/OPAlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 748
    :goto_1
    invoke-virtual {v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v4

    # setter for: Lcom/android/settings_ex/sim/SimSettings;->sAlertDialog:Lcom/oneplus/app/OPAlertDialog;
    invoke-static {v4}, Lcom/android/settings_ex/sim/SimSettings;->access$1002(Lcom/oneplus/app/OPAlertDialog;)Lcom/oneplus/app/OPAlertDialog;

    .line 749
    # getter for: Lcom/android/settings_ex/sim/SimSettings;->sAlertDialog:Lcom/oneplus/app/OPAlertDialog;
    invoke-static {}, Lcom/android/settings_ex/sim/SimSettings;->access$1000()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/oneplus/app/OPAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 750
    # getter for: Lcom/android/settings_ex/sim/SimSettings;->sAlertDialog:Lcom/oneplus/app/OPAlertDialog;
    invoke-static {}, Lcom/android/settings_ex/sim/SimSettings;->access$1000()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/app/OPAlertDialog;->show()V

    .line 751
    return-void

    .line 700
    .end local v0    # "builder":Lcom/oneplus/app/OPAlertDialog$Builder;
    .end local v3    # "title":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 711
    .restart local v0    # "builder":Lcom/oneplus/app/OPAlertDialog$Builder;
    .restart local v3    # "title":Ljava/lang/String;
    :pswitch_0
    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 713
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 715
    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0da5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->getProvisionedSlotId(Landroid/content/Context;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 721
    .local v1, "message":Ljava/lang/String;
    :goto_2
    const v4, 0x7f0c0da4

    invoke-virtual {v0, v4}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 725
    :goto_3
    invoke-virtual {v0, v1}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 726
    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v9, v4}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 727
    const v4, 0x1040009

    iget-object v5, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v4, v5}, Lcom/oneplus/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 728
    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mDialogCanceListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v4}, Lcom/oneplus/app/OPAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    goto :goto_1

    .line 719
    .end local v1    # "message":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_2

    .line 723
    .end local v1    # "message":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_3

    .line 732
    .end local v1    # "message":Ljava/lang/String;
    :pswitch_1
    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 733
    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v9, v4}, Lcom/oneplus/app/OPAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 734
    invoke-virtual {v0, v8}, Lcom/oneplus/app/OPAlertDialog$Builder;->setCancelable(Z)Lcom/oneplus/app/OPAlertDialog$Builder;

    goto/16 :goto_1

    .line 738
    :pswitch_2
    iget-boolean v4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mCurrentUiccProvisionState:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0dab

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 741
    .local v2, "msg":Ljava/lang/String;
    :goto_4
    invoke-virtual {v0, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 742
    const/4 v4, 0x0

    invoke-virtual {v0, v9, v4}, Lcom/oneplus/app/OPAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    goto/16 :goto_1

    .line 738
    .end local v2    # "msg":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0dad

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 708
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

    .line 768
    iget-object v2, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    if-nez v2, :cond_0

    const-string v1, "SUB"

    .line 770
    .local v1, "title":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mIsChecked:Z

    if-eqz v2, :cond_1

    const v2, 0x7f0c0da9

    :goto_1
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 772
    .local v0, "msg":Ljava/lang/String;
    # getter for: Lcom/android/settings_ex/sim/SimSettings;->sProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/android/settings_ex/sim/SimSettings;->access$1100()Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    .line 773
    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/settings_ex/sim/SimSettings;->sProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/settings_ex/sim/SimSettings;->access$1102(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 774
    # getter for: Lcom/android/settings_ex/sim/SimSettings;->sProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/android/settings_ex/sim/SimSettings;->access$1100()Landroid/app/ProgressDialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 775
    # getter for: Lcom/android/settings_ex/sim/SimSettings;->sProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/android/settings_ex/sim/SimSettings;->access$1100()Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 776
    # getter for: Lcom/android/settings_ex/sim/SimSettings;->sProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/android/settings_ex/sim/SimSettings;->access$1100()Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 777
    # getter for: Lcom/android/settings_ex/sim/SimSettings;->sProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/android/settings_ex/sim/SimSettings;->access$1100()Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 778
    # getter for: Lcom/android/settings_ex/sim/SimSettings;->sProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/android/settings_ex/sim/SimSettings;->access$1100()Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 779
    # getter for: Lcom/android/settings_ex/sim/SimSettings;->sProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/android/settings_ex/sim/SimSettings;->access$1100()Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 781
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x7530

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->sendMessage(ILandroid/os/Handler;I)V

    .line 782
    return-void

    .line 768
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "title":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 770
    .restart local v1    # "title":Ljava/lang/String;
    :cond_1
    const v2, 0x7f0c0daa

    goto :goto_1
.end method

.method private updateSummary()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 580
    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 582
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->getProvisionStatus(I)I

    move-result v4

    if-ne v4, v5, :cond_1

    move v1, v5

    .line 583
    .local v1, "isActivated":Z
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateSummary: subId "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " isActivated = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " slot id = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 586
    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    if-nez v4, :cond_2

    const-string v0, "SIM"

    .line 587
    .local v0, "displayName":Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_3

    .line 588
    move-object v3, v0

    .line 589
    .local v3, "summary":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 590
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 597
    :cond_0
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 598
    invoke-direct {p0, v1}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->setChecked(Z)V

    .line 599
    return-void

    .end local v0    # "displayName":Ljava/lang/String;
    .end local v1    # "isActivated":Z
    .end local v3    # "summary":Ljava/lang/String;
    :cond_1
    move v1, v6

    .line 582
    goto :goto_0

    .line 586
    .restart local v1    # "isActivated":Z
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    goto :goto_1

    .line 593
    .restart local v0    # "displayName":Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    const v9, 0x7f0c0d9e

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->hasCard()Z

    move-result v4

    if-eqz v4, :cond_4

    const v4, 0x7f0c0da0

    :goto_3
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    invoke-virtual {v8, v9, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "summary":Ljava/lang/String;
    goto :goto_2

    .end local v3    # "summary":Ljava/lang/String;
    :cond_4
    const v4, 0x7f0c0da1

    goto :goto_3
.end method


# virtual methods
.method public cleanUpPendingDialogs()V
    .locals 1

    .prologue
    .line 792
    # getter for: Lcom/android/settings_ex/sim/SimSettings;->sProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/android/settings_ex/sim/SimSettings;->access$1100()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    .line 793
    # getter for: Lcom/android/settings_ex/sim/SimSettings;->sAlertDialog:Lcom/oneplus/app/OPAlertDialog;
    invoke-static {}, Lcom/android/settings_ex/sim/SimSettings;->access$1000()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    .line 794
    return-void
.end method

.method public getNumOfSubsProvisioned()I
    .locals 6

    .prologue
    .line 608
    const/4 v0, 0x0

    .line 609
    .local v0, "activeSubInfoCount":I
    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v4}, Lcom/android/settings_ex/sim/SimSettings;->access$800(Lcom/android/settings_ex/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 611
    .local v3, "subInfoLists":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_1

    .line 612
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 613
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->getProvisionStatus(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 614
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 617
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_1
    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 487
    invoke-super {p0, p1}, Lcom/android/settings_ex/sim/SimSettings$SimPreference;->onBindView(Landroid/view/View;)V

    .line 488
    const-string v0, "onBindView...."

    invoke-direct {p0, v0}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 489
    const v0, 0x7f120062

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    .line 490
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 491
    invoke-virtual {p0}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->update()V

    .line 493
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    iget v1, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSwitchVisibility:I

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 497
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 502
    :goto_0
    return-void

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 621
    iput-boolean p2, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mIsChecked:Z

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 624
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->handleUserRequest()V

    .line 625
    return-void
.end method

.method public setSwitchVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 560
    iput p1, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSwitchVisibility:I

    .line 561
    return-void
.end method

.method public update()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 506
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 507
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 510
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mUiccProvisionStatus:[I
    invoke-static {v3}, Lcom/android/settings_ex/sim/SimSettings;->access$700(Lcom/android/settings_ex/sim/SimSettings;)[I

    move-result-object v3

    iget v4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    iget-object v5, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

    iget v6, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/IExtTelephony;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v5

    aput v5, v3, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 520
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->isCurrentSubValid()Z

    move-result v1

    .line 521
    .local v1, "isSubValid":Z
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->setEnabled(Z)V

    .line 523
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update: isSubValid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " provision status["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mUiccProvisionStatus:[I
    invoke-static {v4}, Lcom/android/settings_ex/sim/SimSettings;->access$700(Lcom/android/settings_ex/sim/SimSettings;)[I

    move-result-object v4

    iget v5, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 525
    const v3, 0x7f0c0c0f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 526
    if-eqz v1, :cond_0

    .line 527
    invoke-direct {p0}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->updateSummary()V

    .line 528
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    iget-object v5, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/telephony/SubscriptionInfo;->createIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 532
    :goto_1
    return-void

    .line 512
    .end local v1    # "isSubValid":Z
    :catch_0
    move-exception v0

    .line 513
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mUiccProvisionStatus:[I
    invoke-static {v3}, Lcom/android/settings_ex/sim/SimSettings;->access$700(Lcom/android/settings_ex/sim/SimSettings;)[I

    move-result-object v3

    iget v4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    aput v7, v3, v4

    .line 514
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get pref, slotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 515
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 516
    .local v0, "ex":Ljava/lang/NullPointerException;
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mUiccProvisionStatus:[I
    invoke-static {v3}, Lcom/android/settings_ex/sim/SimSettings;->access$700(Lcom/android/settings_ex/sim/SimSettings;)[I

    move-result-object v3

    iget v4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    aput v7, v3, v4

    .line 517
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get pref, slotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 530
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    .restart local v1    # "isSubValid":Z
    :cond_0
    const v3, 0x7f0c0c10

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
