.class public Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "ChooseLockPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;
.implements Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPasswordFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$1;,
        Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    }
.end annotation


# static fields
.field private static final CONFIRM_EXISTING_REQUEST:I = 0x3a

.field private static final ERROR_MESSAGE_TIMEOUT:J = 0xbb8L

.field private static final FRAGMENT_TAG_SAVE_AND_FINISH:Ljava/lang/String; = "save_and_finish_worker"

.field private static final KEY_CURRENT_PASSWORD:Ljava/lang/String; = "current_password"

.field private static final KEY_FIRST_PIN:Ljava/lang/String; = "first_pin"

.field private static final KEY_UI_STAGE:Ljava/lang/String; = "ui_stage"

.field private static final MSG_SHOW_ERROR:I = 0x1

.field static final RESULT_FINISHED:I = 0x1


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mChallenge:J

.field private mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

.field private mChosenPassword:Ljava/lang/String;

.field private mCurrentPassword:Ljava/lang/String;

.field private mFirstPin:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHasChallenge:Z

.field private mHeaderText:Landroid/widget/TextView;

.field private mHideDrawer:Z

.field private mIsAlphaMode:Z

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mRequestedQuality:I

.field private mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;

.field private mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 229
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    .line 162
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 163
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 164
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 165
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 166
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 167
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 168
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 169
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 172
    const/high16 v0, 0x20000

    iput v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 174
    sget-object v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 189
    iput-boolean v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHideDrawer:Z

    .line 191
    new-instance v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$1;-><init>(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 229
    return-void
.end method

.method private showError(Ljava/lang/String;Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "next"    # Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .prologue
    const/4 v3, 0x1

    .line 584
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 586
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 587
    .local v0, "mesg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 588
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 583
    return-void
.end method

.method private startSaveAndFinish()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 653
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 654
    const-string/jumbo v0, "ChooseLockPassword"

    const-string/jumbo v1, "startSaveAndFinish with an existing SaveAndFinishWorker."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    return-void

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 659
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    .line 661
    new-instance v0, Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;

    invoke-direct {v0, v3}, Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;-><init>(Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;)V

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;

    .line 662
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;->setListener(Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;)V

    .line 664
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;

    .line 665
    const-string/jumbo v3, "save_and_finish_worker"

    .line 664
    invoke-virtual {v0, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 666
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 668
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 669
    const-string/jumbo v1, "extra_require_password"

    const/4 v3, 0x1

    .line 668
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 670
    .local v2, "required":Z
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-boolean v3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHasChallenge:Z

    iget-wide v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mChallenge:J

    .line 671
    iget-object v6, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    iget v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    iget v9, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 670
    invoke-virtual/range {v0 .. v9}, Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;->start(Lcom/android/internal/widget/LockPatternUtils;ZZJLjava/lang/String;Ljava/lang/String;II)V

    .line 652
    return-void
.end method

.method private updateUi()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 606
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;

    if-nez v5, :cond_0

    const/4 v0, 0x1

    .line 607
    .local v0, "canInput":Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 608
    .local v4, "password":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 609
    .local v2, "length":I
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v8, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v5, v8, :cond_4

    .line 610
    iget v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v2, v5, :cond_2

    .line 611
    iget-boolean v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v5, :cond_1

    const v5, 0x7f0e066a

    :goto_1
    new-array v6, v6, [Ljava/lang/Object;

    .line 612
    iget v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 611
    invoke-virtual {p0, v5, v6}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 613
    .local v3, "msg":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    invoke-virtual {p0, v7}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    .line 632
    .end local v3    # "msg":Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v5, v5, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->setNextText(I)V

    .line 633
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v5, v0}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 605
    return-void

    .line 606
    .end local v0    # "canInput":Z
    .end local v2    # "length":I
    .end local v4    # "password":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "canInput":Z
    goto :goto_0

    .line 612
    .restart local v2    # "length":I
    .restart local v4    # "password":Ljava/lang/String;
    :cond_1
    const v5, 0x7f0e066b

    goto :goto_1

    .line 616
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 617
    .local v1, "error":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 618
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    invoke-virtual {p0, v7}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    goto :goto_2

    .line 621
    :cond_3
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    goto :goto_2

    .line 626
    .end local v1    # "error":Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-boolean v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v5, v5, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    :goto_3
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(I)V

    .line 629
    if-eqz v0, :cond_6

    const/4 v5, 0x4

    if-lt v2, v5, :cond_6

    move v5, v6

    :goto_4
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    goto :goto_2

    .line 626
    :cond_5
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v5, v5, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    goto :goto_3

    :cond_6
    move v5, v7

    .line 629
    goto :goto_4
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 438
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v12, v13, :cond_1

    .line 439
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_0

    .line 440
    const v12, 0x7f0e066a

    .line 439
    :goto_0
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    .line 441
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    .line 439
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 441
    :cond_0
    const v12, 0x7f0e066b

    goto :goto_0

    .line 443
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    if-le v12, v13, :cond_3

    .line 444
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_2

    .line 445
    const v12, 0x7f0e066d

    .line 444
    :goto_1
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    .line 446
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    add-int/lit8 v14, v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    .line 444
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 446
    :cond_2
    const v12, 0x7f0e066e

    goto :goto_1

    .line 448
    :cond_3
    const/4 v5, 0x0

    .line 449
    .local v5, "letters":I
    const/4 v8, 0x0

    .line 450
    .local v8, "numbers":I
    const/4 v6, 0x0

    .line 451
    .local v6, "lowercase":I
    const/4 v10, 0x0

    .line 452
    .local v10, "symbols":I
    const/4 v11, 0x0

    .line 453
    .local v11, "uppercase":I
    const/4 v7, 0x0

    .line 454
    .local v7, "nonletter":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v4, v12, :cond_9

    .line 455
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 457
    .local v3, "c":C
    const/16 v12, 0x20

    if-lt v3, v12, :cond_4

    const/16 v12, 0x7f

    if-le v3, v12, :cond_5

    .line 458
    :cond_4
    const v12, 0x7f0e0671

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 460
    :cond_5
    const/16 v12, 0x30

    if-lt v3, v12, :cond_6

    const/16 v12, 0x39

    if-gt v3, v12, :cond_6

    .line 461
    add-int/lit8 v8, v8, 0x1

    .line 462
    add-int/lit8 v7, v7, 0x1

    .line 454
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 463
    :cond_6
    const/16 v12, 0x41

    if-lt v3, v12, :cond_7

    const/16 v12, 0x5a

    if-gt v3, v12, :cond_7

    .line 464
    add-int/lit8 v5, v5, 0x1

    .line 465
    add-int/lit8 v11, v11, 0x1

    .line 463
    goto :goto_3

    .line 466
    :cond_7
    const/16 v12, 0x61

    if-lt v3, v12, :cond_8

    const/16 v12, 0x7a

    if-gt v3, v12, :cond_8

    .line 467
    add-int/lit8 v5, v5, 0x1

    .line 468
    add-int/lit8 v6, v6, 0x1

    .line 466
    goto :goto_3

    .line 470
    :cond_8
    add-int/lit8 v10, v10, 0x1

    .line 471
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 474
    .end local v3    # "c":C
    :cond_9
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/high16 v13, 0x20000

    if-eq v13, v12, :cond_a

    .line 475
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/high16 v13, 0x30000

    if-ne v13, v12, :cond_d

    .line 476
    :cond_a
    if-gtz v5, :cond_b

    if-lez v10, :cond_c

    .line 479
    :cond_b
    const v12, 0x7f0e066f

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 482
    :cond_c
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->maxLengthSequence(Ljava/lang/String;)I

    move-result v9

    .line 483
    .local v9, "sequence":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/high16 v13, 0x30000

    if-ne v13, v12, :cond_18

    .line 484
    const/4 v12, 0x3

    if-le v9, v12, :cond_18

    .line 485
    const v12, 0x7f0e0676

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 487
    .end local v9    # "sequence":I
    :cond_d
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/high16 v13, 0x60000

    if-ne v13, v12, :cond_13

    .line 488
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    if-ge v5, v12, :cond_e

    .line 489
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 490
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    const v14, 0x7f130005

    .line 489
    invoke-virtual {v12, v14, v13}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    .line 491
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    .line 489
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 492
    :cond_e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    if-ge v8, v12, :cond_f

    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 494
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    const v14, 0x7f130008

    .line 493
    invoke-virtual {v12, v14, v13}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    .line 495
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    .line 493
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 496
    :cond_f
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    if-ge v6, v12, :cond_10

    .line 497
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 498
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    const v14, 0x7f130006

    .line 497
    invoke-virtual {v12, v14, v13}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    .line 499
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    .line 497
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 500
    :cond_10
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    if-ge v11, v12, :cond_11

    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 502
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    const v14, 0x7f130007

    .line 501
    invoke-virtual {v12, v14, v13}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    .line 503
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    .line 501
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 504
    :cond_11
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    if-ge v10, v12, :cond_12

    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 506
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    const v14, 0x7f130009

    .line 505
    invoke-virtual {v12, v14, v13}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    .line 507
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    .line 505
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 508
    :cond_12
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    if-ge v7, v12, :cond_18

    .line 509
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 510
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    const v14, 0x7f13000a

    .line 509
    invoke-virtual {v12, v14, v13}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    .line 511
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    .line 509
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 515
    :cond_13
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 514
    const/high16 v13, 0x40000

    if-ne v13, v12, :cond_15

    const/4 v1, 0x1

    .line 517
    .local v1, "alphabetic":Z
    :goto_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 516
    const/high16 v13, 0x50000

    if-ne v13, v12, :cond_16

    const/4 v2, 0x1

    .line 518
    .local v2, "alphanumeric":Z
    :goto_5
    if-nez v1, :cond_14

    if-eqz v2, :cond_17

    :cond_14
    if-nez v5, :cond_17

    .line 519
    const v12, 0x7f0e0672

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 514
    .end local v1    # "alphabetic":Z
    .end local v2    # "alphanumeric":Z
    :cond_15
    const/4 v1, 0x0

    .restart local v1    # "alphabetic":Z
    goto :goto_4

    .line 516
    :cond_16
    const/4 v2, 0x0

    .restart local v2    # "alphanumeric":Z
    goto :goto_5

    .line 521
    :cond_17
    if-eqz v2, :cond_18

    if-nez v8, :cond_18

    .line 522
    const v12, 0x7f0e0673

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 525
    .end local v1    # "alphabetic":Z
    .end local v2    # "alphanumeric":Z
    :cond_18
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 526
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_19

    const v12, 0x7f0e0675

    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 527
    :cond_19
    const v12, 0x7f0e0670

    goto :goto_6

    .line 530
    :cond_1a
    const/4 v12, 0x0

    return-object v12
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 639
    sget-object v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 641
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 636
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 644
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 367
    const/16 v0, 0x1c

    return v0
.end method

.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 417
    iget v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {p1, v0}, Lcom/android/settings_ex/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public handleNext()V
    .locals 5

    .prologue
    .line 534
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;

    if-eqz v2, :cond_0

    return-void

    .line 535
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    .line 536
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 537
    return-void

    .line 539
    :cond_1
    const/4 v0, 0x0

    .line 540
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v3, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v2, v3, :cond_4

    .line 541
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 542
    .local v0, "errorMsg":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 543
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 544
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    sget-object v2, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 558
    .end local v0    # "errorMsg":Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 559
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-direct {p0, v0, v2}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->showError(Ljava/lang/String;Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 533
    :cond_3
    return-void

    .line 547
    .local v0, "errorMsg":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v3, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v2, v3, :cond_2

    .line 548
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 549
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->startSaveAndFinish()V

    goto :goto_0

    .line 551
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 552
    .local v1, "tmp":Ljava/lang/CharSequence;
    if-eqz v1, :cond_6

    move-object v2, v1

    .line 553
    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 555
    :cond_6
    sget-object v2, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 402
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 403
    packed-switch p1, :pswitch_data_0

    .line 401
    :goto_0
    return-void

    .line 405
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 406
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 407
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 410
    :cond_0
    const-string/jumbo v0, "password"

    .line 409
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    goto :goto_0

    .line 403
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method public onChosenLockSaveFinished(ZLandroid/content/Intent;)V
    .locals 3
    .param p1, "wasSecureBefore"    # Z
    .param p2, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 678
    if-nez p1, :cond_0

    .line 679
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 680
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 681
    const-string/jumbo v1, ":settings:hide_drawer"

    iget-boolean v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHideDrawer:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 682
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->startActivity(Landroid/content/Intent;)V

    .line 685
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 675
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 572
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 571
    :goto_0
    return-void

    .line 574
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    goto :goto_0

    .line 578
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 572
    :pswitch_data_0
    .packed-switch 0x7f1100d9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 235
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 236
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 237
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 238
    .local v10, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings_ex/ChooseLockPassword;

    if-nez v1, :cond_0

    .line 239
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Fragment contained in wrong activity"

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/settings_ex/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 243
    const-string/jumbo v1, "lockscreen.password_type"

    .line 244
    iget v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 243
    invoke-virtual {v10, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 244
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 245
    iget v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 244
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v4

    .line 243
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 248
    const-string/jumbo v1, "lockscreen.password_min"

    iget v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-virtual {v10, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 247
    const/4 v4, 0x4

    .line 246
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 249
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength(I)I

    move-result v4

    .line 246
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 250
    const-string/jumbo v1, "lockscreen.password_max"

    iget v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    invoke-virtual {v10, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 251
    const-string/jumbo v1, "lockscreen.password_min_letters"

    .line 252
    iget v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 251
    invoke-virtual {v10, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 252
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 253
    iget v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 252
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters(I)I

    move-result v4

    .line 251
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 254
    const-string/jumbo v1, "lockscreen.password_min_uppercase"

    .line 255
    iget v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 254
    invoke-virtual {v10, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 255
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 256
    iget v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 255
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase(I)I

    move-result v4

    .line 254
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 257
    const-string/jumbo v1, "lockscreen.password_min_lowercase"

    .line 258
    iget v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 257
    invoke-virtual {v10, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 258
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 259
    iget v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 258
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase(I)I

    move-result v4

    .line 257
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 260
    const-string/jumbo v1, "lockscreen.password_min_numeric"

    .line 261
    iget v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 260
    invoke-virtual {v10, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 261
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 262
    iget v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 261
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric(I)I

    move-result v4

    .line 260
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 263
    const-string/jumbo v1, "lockscreen.password_min_symbols"

    .line 264
    iget v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 263
    invoke-virtual {v10, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 264
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 265
    iget v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 264
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols(I)I

    move-result v4

    .line 263
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 266
    const-string/jumbo v1, "lockscreen.password_min_nonletter"

    .line 267
    iget v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 266
    invoke-virtual {v10, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 267
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 268
    iget v5, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 267
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter(I)I

    move-result v4

    .line 266
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 270
    new-instance v1, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 271
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, ":settings:hide_drawer"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHideDrawer:Z

    .line 274
    const-string/jumbo v1, "for_cred_req_boot"

    .line 273
    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    new-instance v0, Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;-><init>(Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;)V

    .line 276
    .local v0, "w":Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 277
    const-string/jumbo v4, "extra_require_password"

    .line 276
    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 279
    .local v2, "required":Z
    const-string/jumbo v1, "password"

    .line 278
    invoke-virtual {v10, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 280
    .local v6, "current":Ljava/lang/String;
    invoke-virtual {v0, v7}, Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;->setBlocking(Z)V

    .line 281
    invoke-virtual {v0, p0}, Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;->setListener(Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;)V

    .line 282
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 283
    const-wide/16 v4, 0x0

    iget v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    iget v9, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    move-object v7, v6

    .line 282
    invoke-virtual/range {v0 .. v9}, Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;->start(Lcom/android/internal/widget/LockPatternUtils;ZZJLjava/lang/String;Ljava/lang/String;II)V

    .line 234
    .end local v0    # "w":Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;
    .end local v2    # "required":Z
    .end local v6    # "current":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 290
    const v0, 0x7f04003e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 593
    if-eqz p2, :cond_0

    .line 594
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 596
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    .line 597
    const/4 v0, 0x1

    return v0

    .line 595
    :cond_1
    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    .line 599
    return v1
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 383
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 384
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;->setListener(Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;)V

    .line 388
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onPause()V

    .line 382
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 372
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onResume()V

    .line 373
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 374
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;->setListener(Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;)V

    .line 371
    :goto_0
    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 393
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 394
    const-string/jumbo v0, "ui_stage"

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string/jumbo v0, "first_pin"

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string/jumbo v0, "current_password"

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 648
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 295
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 297
    const v8, 0x7f1100d9

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    .line 298
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    const v8, 0x7f1100da

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    .line 300
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/high16 v11, 0x40000

    if-eq v11, v8, :cond_0

    .line 303
    iget v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/high16 v11, 0x50000

    if-ne v11, v8, :cond_3

    :cond_0
    move v8, v9

    .line 302
    :goto_0
    iput-boolean v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    .line 305
    const v8, 0x7f1100db

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 306
    const v8, 0x7f1100d8

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 307
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 308
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 309
    new-instance v8, Lcom/android/internal/widget/TextViewInputDisabler;

    iget-object v11, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v8, v11}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    iput-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    .line 311
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 312
    .local v0, "activity":Landroid/app/Activity;
    new-instance v8, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 313
    iget-object v11, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v12, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 312
    invoke-direct {v8, v0, v11, v12}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 314
    iget-object v11, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-boolean v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v8, :cond_5

    move v8, v10

    :goto_1
    invoke-virtual {v11, v8}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 318
    const v8, 0x7f1100d7

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    .line 319
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v8}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 321
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    .line 322
    .local v2, "currentType":I
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-boolean v11, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v11, :cond_6

    .end local v2    # "currentType":I
    :goto_2
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 325
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 327
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "confirm_credentials"

    .line 326
    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 328
    .local v1, "confirmCredentials":Z
    const-string/jumbo v8, "password"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    .line 330
    const-string/jumbo v8, "has_challenge"

    .line 329
    invoke-virtual {v4, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHasChallenge:Z

    .line 331
    const-string/jumbo v8, "challenge"

    const-wide/16 v10, 0x0

    invoke-virtual {v4, v8, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mChallenge:J

    .line 332
    if-nez p2, :cond_7

    .line 333
    sget-object v8, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 334
    if-eqz v1, :cond_1

    .line 335
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 336
    const v10, 0x7f0e062f

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 337
    iget v11, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 335
    const/16 v12, 0x3a

    invoke-virtual {v8, v12, v10, v9, v11}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    .line 356
    :cond_1
    :goto_3
    instance-of v8, v0, Lcom/android/settings_ex/SettingsActivity;

    if-eqz v8, :cond_2

    move-object v5, v0

    .line 357
    check-cast v5, Lcom/android/settings_ex/SettingsActivity;

    .line 358
    .local v5, "sa":Lcom/android/settings_ex/SettingsActivity;
    iget-boolean v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v8, :cond_a

    const v3, 0x7f0e0981

    .line 360
    .local v3, "id":I
    :goto_4
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 361
    .local v7, "title":Ljava/lang/CharSequence;
    invoke-virtual {v5, v7}, Lcom/android/settings_ex/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 294
    .end local v3    # "id":I
    .end local v5    # "sa":Lcom/android/settings_ex/SettingsActivity;
    .end local v7    # "title":Ljava/lang/CharSequence;
    :cond_2
    return-void

    .line 304
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "confirmCredentials":Z
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_3
    iget v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/high16 v11, 0x60000

    if-ne v11, v8, :cond_4

    move v8, v9

    goto/16 :goto_0

    :cond_4
    move v8, v10

    goto/16 :goto_0

    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_5
    move v8, v9

    .line 316
    goto/16 :goto_1

    .line 323
    .restart local v2    # "currentType":I
    :cond_6
    const/16 v2, 0x12

    goto :goto_2

    .line 341
    .end local v2    # "currentType":I
    .restart local v1    # "confirmCredentials":Z
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_7
    const-string/jumbo v8, "first_pin"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 342
    const-string/jumbo v8, "ui_stage"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 343
    .local v6, "state":Ljava/lang/String;
    if-eqz v6, :cond_8

    .line 344
    invoke-static {v6}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 345
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 348
    :cond_8
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    if-nez v8, :cond_9

    .line 349
    const-string/jumbo v8, "current_password"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    .line 353
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    .line 354
    const-string/jumbo v9, "save_and_finish_worker"

    .line 353
    invoke-virtual {v8, v9}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v8

    check-cast v8, Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;

    iput-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;

    goto :goto_3

    .line 359
    .end local v6    # "state":Ljava/lang/String;
    .restart local v5    # "sa":Lcom/android/settings_ex/SettingsActivity;
    :cond_a
    const v3, 0x7f0e0983

    goto :goto_4
.end method

.method protected setNextEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 563
    return-void
.end method

.method protected setNextText(I)V
    .locals 1
    .param p1, "text"    # I

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 567
    return-void
.end method

.method protected updateStage(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 3
    .param p1, "stage"    # Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 422
    .local v0, "previousStage":Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    iput-object p1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 423
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 427
    if-eq v0, p1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 420
    :cond_0
    return-void
.end method
