.class public Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;
.super Landroid/app/Fragment;
.source "ChooseLockPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


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
        Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    }
.end annotation


# static fields
.field private static final CONFIRM_EXISTING_REQUEST:I = 0x3a

.field private static final ERROR_MESSAGE_TIMEOUT:J = 0xbb8L

.field private static final KEY_FIRST_PIN:Ljava/lang/String; = "first_pin"

.field private static final KEY_UI_STAGE:Ljava/lang/String; = "ui_stage"

.field private static final MSG_SHOW_ERROR:I = 0x1

.field static final RESULT_FINISHED:I = 0x1


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

.field private mConformStep:I

.field private mDeleteButton:Landroid/widget/TextView;

.field private mDone:Z

.field private mFirstPin:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mIsAlphaMode:Z

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordEntry:Landroid/widget/TextView;

.field public mPasswordInputCountCallBack:Lcom/android/settings_ex/password/PasswordInputCountCallBack;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mPasswordTextViewForPin:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

.field private mRequestedQuality:I

.field private mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 218
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 136
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 137
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 138
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 139
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 140
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 141
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 142
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 143
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 145
    const/high16 v0, 0x20000

    iput v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 147
    sget-object v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 148
    iput-boolean v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mDone:Z

    .line 164
    new-instance v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$1;-><init>(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordInputCountCallBack:Lcom/android/settings_ex/password/PasswordInputCountCallBack;

    .line 180
    new-instance v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$2;-><init>(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 514
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mConformStep:I

    .line 220
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mDeleteButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)Lcom/android/settings_ex/ui/PasswordTextViewForPin;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordTextViewForPin:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;
    .param p1, "x1"    # Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    return-void
.end method

.method private showError(Ljava/lang/String;Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "next"    # Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .prologue
    const/4 v3, 0x1

    .line 601
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 602
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 603
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 604
    .local v0, "mesg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 605
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 606
    return-void
.end method

.method private updateUi()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 623
    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordTextViewForPin:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    invoke-virtual {v3}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 624
    .local v2, "password":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 625
    .local v1, "length":I
    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v4, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v3, v4, :cond_3

    if-lez v1, :cond_3

    .line 626
    iget v3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v1, v3, :cond_1

    .line 664
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v4, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v3, v4, :cond_0

    if-lez v1, :cond_0

    iget v3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mConformStep:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 666
    iget v3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v1, v3, :cond_5

    .line 699
    :cond_0
    :goto_1
    return-void

    .line 632
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 633
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 634
    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 646
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordTextViewForPin:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    invoke-virtual {v3, v5}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->setEnabled(Z)V

    .line 647
    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$4;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$4;-><init>(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)V

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 659
    .end local v0    # "error":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v3, v3, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v3, v3, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    goto :goto_2

    .line 669
    :cond_5
    invoke-direct {p0, v2}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 670
    .restart local v0    # "error":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 671
    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 683
    :cond_6
    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordTextViewForPin:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    invoke-virtual {v3, v5}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->setEnabled(Z)V

    .line 684
    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$5;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$5;-><init>(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)V

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 424
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    if-le v12, v13, :cond_1

    .line 425
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_0

    const v12, 0x7f0902a3

    :goto_0
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    add-int/lit8 v15, v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 511
    :goto_1
    return-object v12

    .line 425
    :cond_0
    const v12, 0x7f0902a4

    goto :goto_0

    .line 429
    :cond_1
    const/4 v5, 0x0

    .line 430
    .local v5, "letters":I
    const/4 v8, 0x0

    .line 431
    .local v8, "numbers":I
    const/4 v6, 0x0

    .line 432
    .local v6, "lowercase":I
    const/4 v10, 0x0

    .line 433
    .local v10, "symbols":I
    const/4 v11, 0x0

    .line 434
    .local v11, "uppercase":I
    const/4 v7, 0x0

    .line 435
    .local v7, "nonletter":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v4, v12, :cond_7

    .line 436
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 438
    .local v3, "c":C
    const/16 v12, 0x20

    if-lt v3, v12, :cond_2

    const/16 v12, 0x7f

    if-le v3, v12, :cond_3

    .line 439
    :cond_2
    const v12, 0x7f0902a7

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 441
    :cond_3
    const/16 v12, 0x30

    if-lt v3, v12, :cond_4

    const/16 v12, 0x39

    if-gt v3, v12, :cond_4

    .line 442
    add-int/lit8 v8, v8, 0x1

    .line 443
    add-int/lit8 v7, v7, 0x1

    .line 435
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 444
    :cond_4
    const/16 v12, 0x41

    if-lt v3, v12, :cond_5

    const/16 v12, 0x5a

    if-gt v3, v12, :cond_5

    .line 445
    add-int/lit8 v5, v5, 0x1

    .line 446
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 447
    :cond_5
    const/16 v12, 0x61

    if-lt v3, v12, :cond_6

    const/16 v12, 0x7a

    if-gt v3, v12, :cond_6

    .line 448
    add-int/lit8 v5, v5, 0x1

    .line 449
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 451
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 452
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 455
    .end local v3    # "c":C
    :cond_7
    const/high16 v12, 0x20000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v12, v13, :cond_8

    const/high16 v12, 0x30000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v12, v13, :cond_b

    .line 457
    :cond_8
    if-gtz v5, :cond_9

    if-lez v10, :cond_a

    .line 460
    :cond_9
    const v12, 0x7f0902a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 463
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->maxLengthSequence(Ljava/lang/String;)I

    move-result v9

    .line 464
    .local v9, "sequence":I
    const/high16 v12, 0x30000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v12, v13, :cond_16

    const/4 v12, 0x3

    if-le v9, v12, :cond_16

    .line 466
    const v12, 0x7f0902ac

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 468
    .end local v9    # "sequence":I
    :cond_b
    const/high16 v12, 0x60000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v12, v13, :cond_11

    .line 469
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    if-ge v5, v12, :cond_c

    .line 470
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100001

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 473
    :cond_c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    if-ge v8, v12, :cond_d

    .line 474
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100004

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 477
    :cond_d
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    if-ge v6, v12, :cond_e

    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100002

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 481
    :cond_e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    if-ge v11, v12, :cond_f

    .line 482
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100003

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 485
    :cond_f
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    if-ge v10, v12, :cond_10

    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100005

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 489
    :cond_10
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    if-ge v7, v12, :cond_16

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100006

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 495
    :cond_11
    const/high16 v12, 0x40000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v12, v13, :cond_13

    const/4 v1, 0x1

    .line 497
    .local v1, "alphabetic":Z
    :goto_4
    const/high16 v12, 0x50000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v12, v13, :cond_14

    const/4 v2, 0x1

    .line 499
    .local v2, "alphanumeric":Z
    :goto_5
    if-nez v1, :cond_12

    if-eqz v2, :cond_15

    :cond_12
    if-nez v5, :cond_15

    .line 500
    const v12, 0x7f0902a8

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 495
    .end local v1    # "alphabetic":Z
    .end local v2    # "alphanumeric":Z
    :cond_13
    const/4 v1, 0x0

    goto :goto_4

    .line 497
    .restart local v1    # "alphabetic":Z
    :cond_14
    const/4 v2, 0x0

    goto :goto_5

    .line 502
    .restart local v2    # "alphanumeric":Z
    :cond_15
    if-eqz v2, :cond_16

    if-nez v8, :cond_16

    .line 503
    const v12, 0x7f0902a9

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 506
    .end local v1    # "alphabetic":Z
    .end local v2    # "alphanumeric":Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 507
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_17

    const v12, 0x7f0902ab

    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    :cond_17
    const v12, 0x7f0902a6

    goto :goto_6

    .line 511
    :cond_18
    const/4 v12, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 704
    sget-object v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 706
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 707
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 711
    return-void
.end method

.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 398
    invoke-static {p1}, Lcom/android/settings_ex/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public handleNext()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 517
    iget-boolean v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mDone:Z

    if-eqz v7, :cond_1

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordTextViewForPin:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    invoke-virtual {v7}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 520
    .local v2, "pin":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 523
    const/4 v0, 0x0

    .line 524
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v8, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v7, v8, :cond_3

    .line 525
    invoke-direct {p0, v2}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 526
    if-nez v0, :cond_2

    .line 527
    iput-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 529
    sget-object v7, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 530
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    const v8, 0x7f0902ad

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    .line 531
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordTextViewForPin:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    invoke-virtual {v7, v9}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->reset(Z)V

    .line 533
    iput v9, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mConformStep:I

    .line 567
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 568
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-direct {p0, v0, v7}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->showError(Ljava/lang/String;Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_0

    .line 536
    :cond_3
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v8, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v7, v8, :cond_2

    .line 537
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 538
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 540
    .local v1, "isFallback":Z
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v6

    .line 541
    .local v6, "wasSecureBefore":Z
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 542
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "extra_require_password"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 544
    .local v3, "required":Z
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v3}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    .line 545
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    invoke-virtual {v7, v2, v8, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZ)V

    .line 546
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordTextViewForPin:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    invoke-virtual {v7, v9}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->reset(Z)V

    .line 547
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/app/Activity;->setResult(I)V

    .line 548
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    .line 549
    iput-boolean v9, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mDone:Z

    .line 550
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_screen_allow_private_notifications"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 552
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_screen_show_notifications"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 558
    .end local v1    # "isFallback":Z
    .end local v3    # "required":Z
    .end local v6    # "wasSecureBefore":Z
    :cond_4
    new-instance v4, Landroid/text/SpannableString;

    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordTextViewForPin:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    invoke-virtual {v7}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 559
    .local v4, "spannableString":Landroid/text/SpannableString;
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordTextViewForPin:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    invoke-virtual {v7, v9}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->reset(Z)V

    .line 560
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordTextViewForPin:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    invoke-virtual {v7}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object v5

    .line 561
    .local v5, "tmp":Ljava/lang/CharSequence;
    if-eqz v5, :cond_5

    .line 562
    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v7

    invoke-static {v4, v10, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 564
    :cond_5
    sget-object v7, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto/16 :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 386
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 387
    packed-switch p1, :pswitch_data_0

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 389
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 391
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 387
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 581
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 598
    :goto_0
    return-void

    .line 583
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    goto :goto_0

    .line 587
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 590
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordTextViewForPin:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    invoke-virtual {v0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordTextViewForPin:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    invoke-virtual {v0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 592
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordTextViewForPin:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    invoke-virtual {v0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->deleteLastChar()V

    goto :goto_0

    .line 581
    :pswitch_data_0
    .packed-switch 0x7f0f004b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 224
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 225
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 226
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 227
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings_ex/ChooseLockPassword;

    if-nez v1, :cond_0

    .line 228
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Fragment contained in wrong activity"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_0
    const-string v1, "lockscreen.password_type"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 232
    const-string v1, "lockscreen.password_min"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 235
    const-string v1, "lockscreen.password_max"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 236
    const-string v1, "lockscreen.password_min_letters"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 238
    const-string v1, "lockscreen.password_min_uppercase"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 240
    const-string v1, "lockscreen.password_min_lowercase"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 242
    const-string v1, "lockscreen.password_min_numeric"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 244
    const-string v1, "lockscreen.password_min_symbols"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 246
    const-string v1, "lockscreen.password_min_nonletter"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 249
    new-instance v1, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 250
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 255
    const v0, 0x7f040019

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
    .line 610
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 613
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    .line 614
    const/4 v0, 0x1

    .line 616
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 373
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 374
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 364
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 365
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 367
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 378
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 379
    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 715
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const v2, 0x7f0905bb

    const/4 v8, 0x4

    .line 260
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 262
    const v7, 0x7f0f004c

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    .line 263
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    const v7, 0x7f0f004d

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    .line 265
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 272
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 289
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 290
    .local v0, "activity":Landroid/app/Activity;
    const v7, 0x7f0f003b

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    iput-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordTextViewForPin:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    .line 291
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordTextViewForPin:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordInputCountCallBack:Lcom/android/settings_ex/password/PasswordInputCountCallBack;

    invoke-virtual {v7, v8}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->setCallBack(Lcom/android/settings_ex/password/PasswordInputCountCallBack;)V

    .line 293
    const v7, 0x7f0f004b

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mDeleteButton:Landroid/widget/TextView;

    .line 294
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mDeleteButton:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordTextViewForPin:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    new-instance v8, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$3;

    invoke-direct {v8, p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$3;-><init>(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)V

    invoke-virtual {v7, v8}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->setTextEmptyListener(Lcom/android/settings_ex/ui/PasswordTextViewForPin$OnTextEmptyListerner;)V

    .line 329
    const v7, 0x7f0f003a

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    .line 336
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 337
    .local v3, "intent":Landroid/content/Intent;
    const-string v7, "confirm_credentials"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 338
    .local v1, "confirmCredentials":Z
    if-nez p2, :cond_3

    .line 339
    sget-object v7, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 340
    if-eqz v1, :cond_0

    .line 341
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    const/16 v8, 0x3a

    invoke-virtual {v7, v8, v9, v9}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 352
    :cond_0
    :goto_0
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mDone:Z

    .line 353
    instance-of v7, v0, Lcom/android/settings_ex/SettingsActivity;

    if-eqz v7, :cond_2

    move-object v4, v0

    .line 354
    check-cast v4, Lcom/android/settings_ex/SettingsActivity;

    .line 355
    .local v4, "sa":Lcom/android/settings_ex/SettingsActivity;
    iget-boolean v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v7, :cond_1

    .line 357
    .local v2, "id":I
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 358
    .local v6, "title":Ljava/lang/CharSequence;
    invoke-virtual {v4, v6}, Lcom/android/settings_ex/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 360
    .end local v2    # "id":I
    .end local v4    # "sa":Lcom/android/settings_ex/SettingsActivity;
    .end local v6    # "title":Ljava/lang/CharSequence;
    :cond_2
    return-void

    .line 345
    :cond_3
    const-string v7, "first_pin"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 346
    const-string v7, "ui_stage"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 347
    .local v5, "state":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 348
    invoke-static {v5}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 349
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_0
.end method

.method protected setNextEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 574
    return-void
.end method

.method protected setNextText(I)V
    .locals 1
    .param p1, "text"    # I

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 578
    return-void
.end method

.method protected updateStage(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 3
    .param p1, "stage"    # Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 403
    .local v0, "previousStage":Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    iput-object p1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 404
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 408
    if-eq v0, p1, :cond_0

    .line 409
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 411
    :cond_0
    return-void
.end method
