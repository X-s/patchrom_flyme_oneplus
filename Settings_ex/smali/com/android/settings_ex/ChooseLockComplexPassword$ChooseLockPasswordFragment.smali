.class public Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "ChooseLockComplexPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;
.implements Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ChooseLockComplexPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPasswordFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;
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

.field private mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockComplexPassword$SaveAndFinishWorker;

.field private mUiStage:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 201
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    .line 137
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 138
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 139
    iput v1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 140
    iput v1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 141
    iput v1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 142
    iput v1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 143
    iput v1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 144
    iput v1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 147
    const/high16 v0, 0x20000

    iput v0, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 149
    sget-object v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;

    .line 163
    new-instance v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$1;-><init>(Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 203
    return-void
.end method

.method private showError(Ljava/lang/String;Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "next"    # Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;

    .prologue
    const/4 v3, 0x1

    .line 539
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 541
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 542
    .local v0, "mesg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 543
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 544
    return-void
.end method

.method private startSaveAndFinish()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 605
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockComplexPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 606
    const-string v0, "ChooseLockPassword"

    const-string v1, "startSaveAndFinish with an existing SaveAndFinishWorker."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :goto_0
    return-void

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 611
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    .line 613
    new-instance v0, Lcom/android/settings_ex/ChooseLockComplexPassword$SaveAndFinishWorker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ChooseLockComplexPassword$SaveAndFinishWorker;-><init>(Lcom/android/settings_ex/ChooseLockComplexPassword$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockComplexPassword$SaveAndFinishWorker;

    .line 614
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockComplexPassword$SaveAndFinishWorker;

    const-string v3, "save_and_finish_worker"

    invoke-virtual {v0, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 616
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockComplexPassword$SaveAndFinishWorker;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/ChooseLockComplexPassword$SaveAndFinishWorker;->setListener(Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;)V

    .line 618
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_require_password"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 620
    .local v2, "required":Z
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockComplexPassword$SaveAndFinishWorker;

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-boolean v3, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mHasChallenge:Z

    iget-wide v4, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mChallenge:J

    iget-object v6, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    iget v8, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    invoke-virtual/range {v0 .. v8}, Lcom/android/settings_ex/ChooseLockComplexPassword$SaveAndFinishWorker;->start(Lcom/android/internal/widget/LockPatternUtils;ZZJLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private updateUi()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 561
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockComplexPassword$SaveAndFinishWorker;

    if-nez v7, :cond_0

    move v0, v5

    .line 562
    .local v0, "canInput":Z
    :goto_0
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 563
    .local v4, "password":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 564
    .local v2, "length":I
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;

    sget-object v8, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;

    if-ne v7, v8, :cond_4

    .line 565
    iget v7, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v2, v7, :cond_2

    .line 566
    iget-boolean v7, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v7, :cond_1

    const v7, 0x7f0c043b

    :goto_1
    new-array v5, v5, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-virtual {p0, v7, v5}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 568
    .local v3, "msg":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    .line 584
    .end local v3    # "msg":Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;

    iget v5, v5, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->setNextText(I)V

    .line 585
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v5, v0}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 586
    return-void

    .end local v0    # "canInput":Z
    .end local v2    # "length":I
    .end local v4    # "password":Ljava/lang/String;
    :cond_0
    move v0, v6

    .line 561
    goto :goto_0

    .line 566
    .restart local v0    # "canInput":Z
    .restart local v2    # "length":I
    .restart local v4    # "password":Ljava/lang/String;
    :cond_1
    const v7, 0x7f0c043c

    goto :goto_1

    .line 571
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 572
    .local v1, "error":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 573
    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    goto :goto_2

    .line 576
    :cond_3
    iget-object v6, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v7, 0x7f0c043d

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 577
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    goto :goto_2

    .line 581
    .end local v1    # "error":Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-boolean v7, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;

    iget v7, v7, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    :goto_3
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(I)V

    .line 582
    if-eqz v0, :cond_6

    if-lez v2, :cond_6

    :goto_4
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    goto :goto_2

    .line 581
    :cond_5
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;

    iget v7, v7, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    goto :goto_3

    :cond_6
    move v5, v6

    .line 582
    goto :goto_4
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 393
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v12, v13, :cond_1

    .line 394
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_0

    const v12, 0x7f0c043b

    :goto_0
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 485
    :goto_1
    return-object v12

    .line 394
    :cond_0
    const v12, 0x7f0c043c

    goto :goto_0

    .line 398
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    if-le v12, v13, :cond_3

    .line 399
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_2

    const v12, 0x7f0c043f

    :goto_2
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    add-int/lit8 v15, v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :cond_2
    const v12, 0x7f0c0440

    goto :goto_2

    .line 403
    :cond_3
    const/4 v5, 0x0

    .line 404
    .local v5, "letters":I
    const/4 v8, 0x0

    .line 405
    .local v8, "numbers":I
    const/4 v6, 0x0

    .line 406
    .local v6, "lowercase":I
    const/4 v10, 0x0

    .line 407
    .local v10, "symbols":I
    const/4 v11, 0x0

    .line 408
    .local v11, "uppercase":I
    const/4 v7, 0x0

    .line 409
    .local v7, "nonletter":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v4, v12, :cond_9

    .line 410
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 412
    .local v3, "c":C
    const/16 v12, 0x20

    if-lt v3, v12, :cond_4

    const/16 v12, 0x7f

    if-le v3, v12, :cond_5

    .line 413
    :cond_4
    const v12, 0x7f0c0443

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 415
    :cond_5
    const/16 v12, 0x30

    if-lt v3, v12, :cond_6

    const/16 v12, 0x39

    if-gt v3, v12, :cond_6

    .line 416
    add-int/lit8 v8, v8, 0x1

    .line 417
    add-int/lit8 v7, v7, 0x1

    .line 409
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 418
    :cond_6
    const/16 v12, 0x41

    if-lt v3, v12, :cond_7

    const/16 v12, 0x5a

    if-gt v3, v12, :cond_7

    .line 419
    add-int/lit8 v5, v5, 0x1

    .line 420
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 421
    :cond_7
    const/16 v12, 0x61

    if-lt v3, v12, :cond_8

    const/16 v12, 0x7a

    if-gt v3, v12, :cond_8

    .line 422
    add-int/lit8 v5, v5, 0x1

    .line 423
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 425
    :cond_8
    add-int/lit8 v10, v10, 0x1

    .line 426
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 429
    .end local v3    # "c":C
    :cond_9
    const/high16 v12, 0x20000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v12, v13, :cond_a

    const/high16 v12, 0x30000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v12, v13, :cond_d

    .line 431
    :cond_a
    if-gtz v5, :cond_b

    if-lez v10, :cond_c

    .line 434
    :cond_b
    const v12, 0x7f0c0441

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 437
    :cond_c
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->maxLengthSequence(Ljava/lang/String;)I

    move-result v9

    .line 438
    .local v9, "sequence":I
    const/high16 v12, 0x30000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v12, v13, :cond_18

    const/4 v12, 0x3

    if-le v9, v12, :cond_18

    .line 440
    const v12, 0x7f0c0448

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 442
    .end local v9    # "sequence":I
    :cond_d
    const/high16 v12, 0x60000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v12, v13, :cond_13

    .line 443
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    if-ge v5, v12, :cond_e

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f130004

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 447
    :cond_e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    if-ge v8, v12, :cond_f

    .line 448
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f130007

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 451
    :cond_f
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    if-ge v6, v12, :cond_10

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f130005

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 455
    :cond_10
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    if-ge v11, v12, :cond_11

    .line 456
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f130006

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 459
    :cond_11
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    if-ge v10, v12, :cond_12

    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f130008

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 463
    :cond_12
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    if-ge v7, v12, :cond_18

    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f130009

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 469
    :cond_13
    const/high16 v12, 0x40000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v12, v13, :cond_15

    const/4 v1, 0x1

    .line 471
    .local v1, "alphabetic":Z
    :goto_5
    const/high16 v12, 0x50000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v12, v13, :cond_16

    const/4 v2, 0x1

    .line 473
    .local v2, "alphanumeric":Z
    :goto_6
    if-nez v1, :cond_14

    if-eqz v2, :cond_17

    :cond_14
    if-nez v5, :cond_17

    .line 474
    const v12, 0x7f0c0444

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 469
    .end local v1    # "alphabetic":Z
    .end local v2    # "alphanumeric":Z
    :cond_15
    const/4 v1, 0x0

    goto :goto_5

    .line 471
    .restart local v1    # "alphabetic":Z
    :cond_16
    const/4 v2, 0x0

    goto :goto_6

    .line 476
    .restart local v2    # "alphanumeric":Z
    :cond_17
    if-eqz v2, :cond_18

    if-nez v8, :cond_18

    .line 477
    const v12, 0x7f0c0445

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 480
    .end local v1    # "alphabetic":Z
    .end local v2    # "alphanumeric":Z
    :cond_18
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 481
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_19

    const v12, 0x7f0c0447

    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    :cond_19
    const v12, 0x7f0c0442

    goto :goto_7

    .line 485
    :cond_1a
    const/4 v12, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 591
    sget-object v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;

    .line 593
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 594
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 598
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 322
    const/16 v0, 0x1c

    return v0
.end method

.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 372
    invoke-static {p1}, Lcom/android/settings_ex/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public handleNext()V
    .locals 5

    .prologue
    .line 489
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockComplexPassword$SaveAndFinishWorker;

    if-eqz v2, :cond_1

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    .line 491
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 494
    const/4 v0, 0x0

    .line 495
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;

    sget-object v3, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;

    if-ne v2, v3, :cond_3

    .line 496
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    if-nez v0, :cond_2

    .line 498
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 499
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    sget-object v2, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;)V

    .line 513
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 514
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;

    invoke-direct {p0, v0, v2}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->showError(Ljava/lang/String;Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_0

    .line 502
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;

    sget-object v3, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;

    if-ne v2, v3, :cond_2

    .line 503
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 504
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->startSaveAndFinish()V

    goto :goto_1

    .line 506
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 507
    .local v1, "tmp":Ljava/lang/CharSequence;
    if-eqz v1, :cond_5

    move-object v2, v1

    .line 508
    check-cast v2, Landroid/text/Spannable;

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 510
    :cond_5
    sget-object v2, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 357
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 358
    packed-switch p1, :pswitch_data_0

    .line 369
    :goto_0
    return-void

    .line 360
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 362
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 364
    :cond_0
    const-string v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    goto :goto_0

    .line 358
    nop

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
    .line 626
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 627
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 629
    if-nez p1, :cond_0

    .line 630
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 631
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 632
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->startActivity(Landroid/content/Intent;)V

    .line 635
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 527
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 536
    :goto_0
    return-void

    .line 529
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->handleNext()V

    goto :goto_0

    .line 533
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 527
    :pswitch_data_0
    .packed-switch 0x7f120057
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 207
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 208
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 209
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 210
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings_ex/ChooseLockComplexPassword;

    if-nez v1, :cond_0

    .line 211
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Fragment contained in wrong activity"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 213
    :cond_0
    const-string v1, "lockscreen.password_type"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 216
    const/4 v1, 0x4

    const-string v2, "lockscreen.password_min"

    iget v3, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 220
    const-string v1, "lockscreen.password_max"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 221
    const-string v1, "lockscreen.password_min_letters"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 224
    const-string v1, "lockscreen.password_min_uppercase"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 227
    const-string v1, "lockscreen.password_min_lowercase"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 230
    const-string v1, "lockscreen.password_min_numeric"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 233
    const-string v1, "lockscreen.password_min_symbols"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 236
    const-string v1, "lockscreen.password_min_nonletter"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 240
    new-instance v1, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 241
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 246
    const v0, 0x7f040025

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 548
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 551
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->handleNext()V

    .line 552
    const/4 v0, 0x1

    .line 554
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 339
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockComplexPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockComplexPassword$SaveAndFinishWorker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ChooseLockComplexPassword$SaveAndFinishWorker;->setListener(Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;)V

    .line 343
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onPause()V

    .line 344
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 327
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onResume()V

    .line 328
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;)V

    .line 329
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockComplexPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockComplexPassword$SaveAndFinishWorker;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/ChooseLockComplexPassword$SaveAndFinishWorker;->setListener(Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;)V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 348
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 349
    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v0, "current_password"

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 602
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 251
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 253
    const v8, 0x7f120057

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    .line 254
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    const v8, 0x7f120058

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    .line 256
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    const/high16 v8, 0x40000

    iget v9, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v8, v9, :cond_0

    const/high16 v8, 0x50000

    iget v9, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v8, v9, :cond_0

    const/high16 v8, 0x60000

    iget v9, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v8, v9, :cond_3

    :cond_0
    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    .line 261
    const v8, 0x7f120059

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v8, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 262
    const v8, 0x7f120029

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 263
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 264
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 265
    new-instance v8, Lcom/android/internal/widget/TextViewInputDisabler;

    iget-object v9, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v8, v9}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    iput-object v8, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    .line 267
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 268
    .local v0, "activity":Landroid/app/Activity;
    new-instance v8, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v9, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v8, v0, v9, v10}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v8, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 270
    iget-object v9, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-boolean v8, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v9, v8}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 274
    const v8, 0x7f120027

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    .line 275
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v8}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 277
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    .line 278
    .local v2, "currentType":I
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-boolean v9, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v9, :cond_5

    .end local v2    # "currentType":I
    :goto_2
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 281
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 282
    .local v4, "intent":Landroid/content/Intent;
    const-string v8, "confirm_credentials"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 284
    .local v1, "confirmCredentials":Z
    const-string v8, "password"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    .line 285
    const-string v8, "has_challenge"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mHasChallenge:Z

    .line 287
    const-string v8, "challenge"

    const-wide/16 v10, 0x0

    invoke-virtual {v4, v8, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mChallenge:J

    .line 288
    if-nez p2, :cond_6

    .line 289
    sget-object v8, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;)V

    .line 290
    if-eqz v1, :cond_1

    .line 291
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    const/16 v9, 0x3a

    const v10, 0x7f0c0417

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    .line 311
    :cond_1
    :goto_3
    instance-of v8, v0, Lcom/android/settings_ex/SettingsActivity;

    if-eqz v8, :cond_2

    move-object v5, v0

    .line 312
    check-cast v5, Lcom/android/settings_ex/SettingsActivity;

    .line 313
    .local v5, "sa":Lcom/android/settings_ex/SettingsActivity;
    iget-boolean v8, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v8, :cond_9

    const v3, 0x7f0c0727

    .line 315
    .local v3, "id":I
    :goto_4
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 316
    .local v7, "title":Ljava/lang/CharSequence;
    invoke-virtual {v5, v7}, Lcom/android/settings_ex/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 318
    .end local v3    # "id":I
    .end local v5    # "sa":Lcom/android/settings_ex/SettingsActivity;
    .end local v7    # "title":Ljava/lang/CharSequence;
    :cond_2
    return-void

    .line 258
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "confirmCredentials":Z
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 270
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_4
    const/4 v8, 0x1

    goto :goto_1

    .line 278
    .restart local v2    # "currentType":I
    :cond_5
    const/16 v2, 0x12

    goto :goto_2

    .line 296
    .end local v2    # "currentType":I
    .restart local v1    # "confirmCredentials":Z
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_6
    const-string v8, "first_pin"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 297
    const-string v8, "ui_stage"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 298
    .local v6, "state":Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 299
    invoke-static {v6}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;

    .line 300
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;)V

    .line 303
    :cond_7
    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    if-nez v8, :cond_8

    .line 304
    const-string v8, "current_password"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    .line 308
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    const-string v9, "save_and_finish_worker"

    invoke-virtual {v8, v9}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v8

    check-cast v8, Lcom/android/settings_ex/ChooseLockComplexPassword$SaveAndFinishWorker;

    iput-object v8, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/ChooseLockComplexPassword$SaveAndFinishWorker;

    goto :goto_3

    .line 313
    .end local v6    # "state":Ljava/lang/String;
    .restart local v5    # "sa":Lcom/android/settings_ex/SettingsActivity;
    :cond_9
    const v3, 0x7f0c0729

    goto :goto_4
.end method

.method protected setNextEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 520
    return-void
.end method

.method protected setNextText(I)V
    .locals 1
    .param p1, "text"    # I

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 524
    return-void
.end method

.method protected updateStage(Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 3
    .param p1, "stage"    # Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;

    .line 377
    .local v0, "previousStage":Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;
    iput-object p1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;

    .line 378
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 382
    if-eq v0, p1, :cond_0

    .line 383
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 385
    :cond_0
    return-void
.end method
