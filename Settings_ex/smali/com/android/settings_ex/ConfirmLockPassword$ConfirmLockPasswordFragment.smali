.class public Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;
.super Landroid/app/Fragment;
.source "ConfirmLockPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ConfirmLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLockPasswordFragment"
.end annotation


# static fields
.field private static final ERROR_MESSAGE_TIMEOUT:J = 0xbb8L

.field private static final KEY_NUM_WRONG_CONFIRM_ATTEMPTS:Ljava/lang/String; = "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

.field private static final KEY_TIME_WRONG_CONFIRM_ATTEMPTS:Ljava/lang/String; = "confirm_lock_password_fragment.key_time_wrong_confirm_attempts"


# instance fields
.field private mContinueButton:Landroid/widget/Button;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDeleteButton:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mIsAlpha:Z

.field private mIsDeletePassword:Z

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordEntry:Landroid/widget/TextView;

.field public mPasswordInputCountCallBack:Lcom/android/settings_ex/password/PasswordInputCountCallBack;

.field private mPasswordTextViewForPin:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

.field private final mResetErrorRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 158
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 170
    new-instance v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$1;-><init>(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordInputCountCallBack:Lcom/android/settings_ex/password/PasswordInputCountCallBack;

    .line 484
    new-instance v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$4;-><init>(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    .line 189
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDeleteButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/settings_ex/ui/PasswordTextViewForPin;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordTextViewForPin:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getDefaultHeader()I

    move-result v0

    return v0
.end method

.method private getDefaultHeader()I
    .locals 1

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0905be

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0905c0

    goto :goto_0
.end method

.method private handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 424
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 425
    .local v6, "elapsedRealtime":J
    const v0, 0x7f0905e3

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(IJ)V

    .line 429
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordTextViewForPin:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->setEnabled(Z)V

    .line 430
    new-instance v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$3;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$3;-><init>(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;JJ)V

    invoke-virtual {v0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 457
    return-void
.end method

.method private handleNext()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 383
    iget-object v4, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordTextViewForPin:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    invoke-virtual {v4}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 384
    .local v3, "pin":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordTextViewForPin:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    invoke-virtual {v4, v6}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->reset(Z)V

    .line 385
    iget-object v4, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 387
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 388
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/android/settings_ex/ConfirmLockPassword$InternalActivity;

    if-eqz v4, :cond_0

    .line 389
    const-string v5, "type"

    iget-boolean v4, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 392
    const-string v4, "password"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    :cond_0
    const-string v4, "mIsDeletePassword"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 397
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 398
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 421
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 389
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v4, 0x3

    goto :goto_0

    .line 405
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    sget v4, Lcom/android/settings_ex/ConfirmLockPassword;->mNumWrongConfirmAttempts:I

    if-nez v4, :cond_3

    .line 406
    # getter for: Lcom/android/settings_ex/ConfirmLockPassword;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/settings_ex/ConfirmLockPassword;->access$500()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "confirm_lock_password_fragment.key_time_wrong_confirm_attempts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 413
    :cond_3
    sget v4, Lcom/android/settings_ex/ConfirmLockPassword;->mNumWrongConfirmAttempts:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/android/settings_ex/ConfirmLockPassword;->mNumWrongConfirmAttempts:I

    const/4 v5, 0x5

    if-lt v4, v5, :cond_4

    .line 414
    iget-object v4, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    .line 416
    .local v0, "deadline":J
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleAttemptLockout(J)V

    goto :goto_1

    .line 418
    .end local v0    # "deadline":J
    :cond_4
    const v4, 0x7f0905cc

    invoke-direct {p0, v4}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(I)V

    goto :goto_1
.end method

.method private showError(I)V
    .locals 2
    .param p1, "msg"    # I

    .prologue
    .line 481
    const-wide/16 v0, 0xbb8

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(IJ)V

    .line 482
    return-void
.end method

.method private showError(IJ)V
    .locals 2
    .param p1, "msg"    # I
    .param p2, "timeout"    # J

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 492
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 495
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 498
    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 525
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 515
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 460
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 478
    :goto_0
    return-void

    .line 462
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    goto :goto_0

    .line 466
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 467
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 470
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordTextViewForPin:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    invoke-virtual {v0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordTextViewForPin:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    invoke-virtual {v0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordTextViewForPin:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    invoke-virtual {v0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->deleteLastChar()V

    goto :goto_0

    .line 460
    :pswitch_data_0
    .packed-switch 0x7f0f004b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 194
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 195
    if-eqz p1, :cond_0

    .line 196
    const-string v0, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings_ex/ConfirmLockPassword;->mNumWrongConfirmAttempts:I

    .line 200
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 205
    iget-object v8, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v5

    .line 207
    .local v5, "storedQuality":I
    const v8, 0x7f04001c

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 210
    .local v7, "view":Landroid/view/View;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "ConfirmLockPasswordFragment onCreateView !"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 212
    const v8, 0x7f0f004c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    const v8, 0x7f0f004c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 218
    const v8, 0x7f0f004d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    .line 219
    iget-object v8, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v8, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 226
    iget-object v8, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 236
    const v8, 0x7f0f003b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    iput-object v8, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordTextViewForPin:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    .line 238
    iget-object v8, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordTextViewForPin:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    iget-object v9, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordInputCountCallBack:Lcom/android/settings_ex/password/PasswordInputCountCallBack;

    invoke-virtual {v8, v9}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->setCallBack(Lcom/android/settings_ex/password/PasswordInputCountCallBack;)V

    .line 240
    const v8, 0x7f0f004b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDeleteButton:Landroid/widget/TextView;

    .line 241
    iget-object v8, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDeleteButton:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v8, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDeleteButton:Landroid/widget/TextView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object v8, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordTextViewForPin:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    new-instance v9, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$2;

    invoke-direct {v9, p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$2;-><init>(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    invoke-virtual {v8, v9}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->setTextEmptyListener(Lcom/android/settings_ex/ui/PasswordTextViewForPin$OnTextEmptyListerner;)V

    .line 290
    const v8, 0x7f0f003a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    .line 291
    const/high16 v8, 0x40000

    if-eq v8, v5, :cond_0

    const/high16 v8, 0x50000

    if-eq v8, v5, :cond_0

    const/high16 v8, 0x60000

    if-ne v8, v5, :cond_4

    :cond_0
    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    .line 295
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 296
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_2

    .line 297
    const-string v8, "com.android.settings_ex.ConfirmLockPattern.header"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 299
    .local v1, "headerMessage":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 300
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getDefaultHeader()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 302
    :cond_1
    iget-object v8, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    .end local v1    # "headerMessage":Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 322
    .local v0, "activity":Landroid/app/Activity;
    instance-of v8, v0, Lcom/android/settings_ex/SettingsActivity;

    if-eqz v8, :cond_3

    move-object v4, v0

    .line 323
    check-cast v4, Lcom/android/settings_ex/SettingsActivity;

    .line 324
    .local v4, "sa":Lcom/android/settings_ex/SettingsActivity;
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getDefaultHeader()I

    move-result v2

    .line 325
    .local v2, "id":I
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 326
    .local v6, "title":Ljava/lang/CharSequence;
    invoke-virtual {v4, v6}, Lcom/android/settings_ex/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 329
    .end local v2    # "id":I
    .end local v4    # "sa":Lcom/android/settings_ex/SettingsActivity;
    .end local v6    # "title":Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08003f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 331
    return-object v7

    .line 291
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 368
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 369
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 373
    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 503
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 506
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    .line 507
    const/4 v0, 0x1

    .line 509
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 341
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 347
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 352
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 354
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 355
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 356
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleAttemptLockout(J)V

    .line 363
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 377
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 378
    const-string v0, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    sget v1, Lcom/android/settings_ex/ConfirmLockPassword;->mNumWrongConfirmAttempts:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 380
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 519
    return-void
.end method
