.class public Lcom/android/settings_ex/IccLockSettings;
.super Landroid/preference/PreferenceActivity;
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

.field private static final NEW_PINCODE_TWO:Ljava/lang/String; = "newPinCodeTwo"

.field private static final OFF_MODE:I = 0x0

.field private static final OLD_PINCODE:Ljava/lang/String; = "oldPinCode"

.field private static final OLD_PINCODE_TWO:Ljava/lang/String; = "oldPinCodeTwo"

.field private static final PIN_DIALOG:Ljava/lang/String; = "sim_pin"

.field private static final PIN_TOGGLE:Ljava/lang/String; = "sim_toggle"

.field private static final TAG:Ljava/lang/String; = "IccLockSettings"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mDialogState:I

.field private mError:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPin:Ljava/lang/String;

.field private mPinDialog:Lcom/android/settings_ex/EditPinPreference;

.field private mPinToggle:Landroid/preference/SwitchPreference;

.field private mRes:Landroid/content/res/Resources;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mToState:Z

.field private phoneId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    .line 124
    new-instance v0, Lcom/android/settings_ex/IccLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/IccLockSettings$1;-><init>(Lcom/android/settings_ex/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mHandler:Landroid/os/Handler;

    .line 143
    new-instance v0, Lcom/android/settings_ex/IccLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/IccLockSettings$2;-><init>(Lcom/android/settings_ex/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/IccLockSettings;Ljava/lang/Throwable;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/IccLockSettings;
    .param p1, "x1"    # Ljava/lang/Throwable;
    .param p2, "x2"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/IccLockSettings;->iccLockChanged(Ljava/lang/Throwable;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/IccLockSettings;Ljava/lang/Throwable;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/IccLockSettings;
    .param p1, "x1"    # Ljava/lang/Throwable;
    .param p2, "x2"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/IccLockSettings;->iccPinChanged(Ljava/lang/Throwable;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/IccLockSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/IccLockSettings;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->updatePreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/IccLockSettings;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/IccLockSettings;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/IccLockSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/IccLockSettings;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/IccLockSettings;)Lcom/android/settings_ex/EditPinPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/IccLockSettings;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/IccLockSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/IccLockSettings;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private displayRetryCounter(Ljava/lang/String;I)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "attemptsRemaining"    # I

    .prologue
    const/4 v4, 0x0

    .line 567
    if-ltz p2, :cond_0

    .line 568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09049d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, "displayMsg":Ljava/lang/String;
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 575
    .end local v0    # "displayMsg":Ljava/lang/String;
    :goto_0
    return-void

    .line 572
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090496

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 174
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/settings_ex/IccLockSettings;->isIccLockEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f090484

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "summary":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 174
    .end local v1    # "summary":Ljava/lang/String;
    :cond_0
    const v2, 0x7f090485

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private handleException(Ljava/lang/Throwable;II)V
    .locals 5
    .param p1, "exception"    # Ljava/lang/Throwable;
    .param p2, "requestType"    # I
    .param p3, "attemptsRemaining"    # I

    .prologue
    const/16 v4, 0x64

    const v3, 0x7f0900a0

    .line 454
    instance-of v2, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_8

    .line 455
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .end local p1    # "exception":Ljava/lang/Throwable;
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 457
    .local v0, "err":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_2

    .line 459
    if-ne p2, v4, :cond_1

    .line 460
    const v1, 0x7f09049c

    .line 465
    .local v1, "id":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 512
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    .end local v1    # "id":I
    :cond_0
    :goto_1
    return-void

    .line 462
    .restart local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    const v1, 0x7f09049b

    .restart local v1    # "id":I
    goto :goto_0

    .line 469
    .end local v1    # "id":I
    :cond_2
    if-ne p2, v4, :cond_6

    .line 470
    iget-boolean v2, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    if-eqz v2, :cond_4

    .line 471
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_3

    .line 472
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/android/settings_ex/IccLockSettings;->displayRetryCounter(Ljava/lang/String;I)V

    goto :goto_1

    .line 476
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090494

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/android/settings_ex/IccLockSettings;->displayRetryCounter(Ljava/lang/String;I)V

    goto :goto_1

    .line 481
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_5

    .line 482
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/android/settings_ex/IccLockSettings;->displayRetryCounter(Ljava/lang/String;I)V

    goto :goto_1

    .line 486
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090493

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/android/settings_ex/IccLockSettings;->displayRetryCounter(Ljava/lang/String;I)V

    goto :goto_1

    .line 492
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_7

    .line 493
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/android/settings_ex/IccLockSettings;->displayRetryCounter(Ljava/lang/String;I)V

    goto :goto_1

    .line 497
    :cond_7
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090492

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/android/settings_ex/IccLockSettings;->displayRetryCounter(Ljava/lang/String;I)V

    goto :goto_1

    .line 503
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    .restart local p1    # "exception":Ljava/lang/Throwable;
    :cond_8
    instance-of v2, p1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method private iccLockChanged(Ljava/lang/Throwable;I)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/Throwable;
    .param p2, "attemptsRemaining"    # I

    .prologue
    const/4 v2, 0x0

    .line 515
    if-nez p1, :cond_1

    .line 516
    iget-boolean v0, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f09049e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 523
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    iget-boolean v1, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 528
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 529
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->resetDialogState()V

    .line 530
    return-void

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f09049f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 525
    :cond_1
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings_ex/IccLockSettings;->handleException(Ljava/lang/Throwable;II)V

    goto :goto_1
.end method

.method private iccPinChanged(Ljava/lang/Throwable;I)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Throwable;
    .param p2, "attemptsRemaining"    # I

    .prologue
    .line 533
    if-eqz p1, :cond_0

    .line 534
    const/16 v0, 0x65

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings_ex/IccLockSettings;->handleException(Ljava/lang/Throwable;II)V

    .line 540
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->resetDialogState()V

    .line 541
    return-void

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090495

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static isIccLockEnabled()Z
    .locals 1

    .prologue
    .line 169
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
    .line 550
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 552
    :cond_0
    const/4 v0, 0x0

    .line 554
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetDialogState()V
    .locals 1

    .prologue
    .line 559
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    .line 560
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    .line 561
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    .line 562
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->setDialogValues()V

    .line 563
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    .line 564
    return-void
.end method

.method private setDialogValues()V
    .locals 4

    .prologue
    const v3, 0x7f09048d

    .line 345
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 346
    const-string v0, ""

    .line 347
    .local v0, "message":Ljava/lang/String;
    iget v1, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    packed-switch v1, :pswitch_data_0

    .line 367
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 368
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

    .line 369
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    .line 371
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 372
    return-void

    .line 349
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090487

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 350
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    iget-boolean v1, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090488

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/settings_ex/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090489

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 355
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f09048a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 356
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 359
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f09048b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 360
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 363
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f09048c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 364
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 347
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
    .line 336
    iget v0, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    if-nez v0, :cond_0

    .line 342
    :goto_0
    return-void

    .line 339
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->setDialogValues()V

    .line 341
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/EditPinPreference;->showPinDialog()V

    goto :goto_0
.end method

.method private tryChangeIccLockState()V
    .locals 4

    .prologue
    .line 440
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 442
    .local v0, "callback":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    iget-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 444
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 445
    return-void
.end method

.method private tryChangePin()V
    .locals 4

    .prologue
    .line 544
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 546
    .local v0, "callback":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mOldPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 547
    return-void
.end method

.method private updatePreferences()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 263
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 182
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 184
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->finish()V

    .line 259
    :goto_0
    return-void

    .line 189
    :cond_0
    const v3, 0x7f06005f

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/IccLockSettings;->addPreferencesFromResource(I)V

    .line 191
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mActionBar:Landroid/app/ActionBar;

    .line 192
    iget-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mActionBar:Landroid/app/ActionBar;

    if-eqz v3, :cond_1

    .line 193
    iget-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 194
    iget-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v6}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 195
    iget-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090480

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 199
    :cond_1
    const-string v3, "sim_pin"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/EditPinPreference;

    iput-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    .line 200
    const-string v3, "sim_toggle"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    .line 205
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 206
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "subscription"

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 210
    .local v1, "subId":I
    const-string v3, "phoneId"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/IccLockSettings;->phoneId:I

    .line 211
    iget v3, p0, Lcom/android/settings_ex/IccLockSettings;->phoneId:I

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 213
    const-string v3, "title"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 216
    if-eqz p1, :cond_2

    const-string v3, "dialogState"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 218
    const-string v3, "dialogState"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    .line 219
    const-string v3, "dialogPin"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    .line 220
    const-string v3, "dialogError"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    .line 221
    const-string v3, "enableState"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    .line 224
    iget v3, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    packed-switch v3, :pswitch_data_0

    .line 252
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {v3, p0}, Lcom/android/settings_ex/EditPinPreference;->setOnPinEnteredListener(Lcom/android/settings_ex/EditPinPreference$OnPinEnteredListener;)V

    .line 255
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 257
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    .line 258
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->updatePreferences()V

    goto/16 :goto_0

    .line 226
    :pswitch_0
    iget v3, p0, Lcom/android/settings_ex/IccLockSettings;->phoneId:I

    if-nez v3, :cond_3

    .line 227
    const-string v3, "oldPinCode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mOldPin:Ljava/lang/String;

    goto :goto_1

    .line 228
    :cond_3
    iget v3, p0, Lcom/android/settings_ex/IccLockSettings;->phoneId:I

    if-ne v3, v6, :cond_2

    .line 229
    const-string v3, "oldPinCodeTwo"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mOldPin:Ljava/lang/String;

    goto :goto_1

    .line 235
    :pswitch_1
    iget v3, p0, Lcom/android/settings_ex/IccLockSettings;->phoneId:I

    if-nez v3, :cond_4

    .line 236
    const-string v3, "oldPinCode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 237
    const-string v3, "newPinCode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mNewPin:Ljava/lang/String;

    goto :goto_1

    .line 238
    :cond_4
    iget v3, p0, Lcom/android/settings_ex/IccLockSettings;->phoneId:I

    if-ne v3, v6, :cond_2

    .line 239
    const-string v3, "oldPinCodeTwo"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 240
    const-string v3, "newPinCodeTwo"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mNewPin:Ljava/lang/String;

    goto :goto_1

    .line 224
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 580
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 582
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->finish()V

    .line 583
    const/4 v0, 0x1

    .line 586
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 285
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 286
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/IccLockSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 287
    return-void
.end method

.method public onPinEntered(Lcom/android/settings_ex/EditPinPreference;Z)V
    .locals 4
    .param p1, "preference"    # Lcom/android/settings_ex/EditPinPreference;
    .param p2, "positiveResult"    # Z

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 376
    if-nez p2, :cond_0

    .line 377
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->resetDialogState()V

    .line 419
    :goto_0
    return-void

    .line 381
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings_ex/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    .line 382
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/IccLockSettings;->reasonablePin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f09048e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    .line 386
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->showPinDialog()V

    .line 387
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

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

    const v1, 0x7f09048f

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

    .line 423
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_2

    .line 425
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    .line 427
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 428
    iput v1, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    .line 429
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->showPinDialog()V

    :cond_1
    move v0, v1

    .line 434
    :goto_0
    return v0

    .line 430
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    if-ne p2, v2, :cond_1

    .line 431
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 267
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 271
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/IccLockSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 275
    iget v1, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    if-eqz v1, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->showPinDialog()V

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->resetDialogState()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "out"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 296
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 297
    const-string v0, "dialogState"

    iget v1, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 298
    const-string v0, "dialogPin"

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/settings_ex/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v0, "dialogError"

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v0, "enableState"

    iget-boolean v1, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 304
    iget v0, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 306
    :pswitch_0
    iget v0, p0, Lcom/android/settings_ex/IccLockSettings;->phoneId:I

    if-nez v0, :cond_1

    .line 307
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :cond_1
    iget v0, p0, Lcom/android/settings_ex/IccLockSettings;->phoneId:I

    if-ne v0, v2, :cond_0

    .line 309
    const-string v0, "oldPinCodeTwo"

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :pswitch_1
    iget v0, p0, Lcom/android/settings_ex/IccLockSettings;->phoneId:I

    if-nez v0, :cond_2

    .line 316
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v0, "newPinCode"

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :cond_2
    iget v0, p0, Lcom/android/settings_ex/IccLockSettings;->phoneId:I

    if-ne v0, v2, :cond_0

    .line 319
    const-string v0, "oldPinCodeTwo"

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v0, "newPinCodeTwo"

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :cond_3
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
