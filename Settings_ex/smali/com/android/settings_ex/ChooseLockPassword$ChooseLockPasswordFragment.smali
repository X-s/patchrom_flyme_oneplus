.class public Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "ChooseLockPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


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

.field private static final KEY_CURRENT_PASSWORD:Ljava/lang/String; = "current_password"

.field private static final KEY_FIRST_PIN:Ljava/lang/String; = "first_pin"

.field private static final KEY_UI_STAGE:Ljava/lang/String; = "ui_stage"

.field private static final MSG_SHOW_ERROR:I = 0x1

.field static final RESULT_FINISHED:I = 0x1


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mChallenge:J

.field private mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

.field private mConformStep:I

.field private mCurrentPassword:Ljava/lang/String;

.field private mDeleteButton:Landroid/widget/TextView;

.field private mDone:Z

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

.field public mPasswordInputCountCallBack:Lcom/oneplus/settings/password/OPPasswordInputCountCallBack;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mRequestedQuality:I

.field private mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 243
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    .line 159
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 160
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 161
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 162
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 163
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 164
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 165
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 166
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 169
    const/high16 v0, 0x20000

    iput v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 171
    sget-object v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 172
    iput-boolean v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mDone:Z

    .line 187
    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mConformStep:I

    .line 189
    new-instance v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$1;-><init>(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordInputCountCallBack:Lcom/oneplus/settings/password/OPPasswordInputCountCallBack;

    .line 205
    new-instance v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$2;-><init>(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 245
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mDeleteButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)Lcom/oneplus/settings/password/OPPasswordTextViewForPin;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;
    .param p1, "x1"    # Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->finishConfirmStage(Z)V

    return-void
.end method

.method private finishConfirmStage(Z)V
    .locals 1
    .param p1, "wasSecureBefore"    # Z

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 669
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mDone:Z

    .line 677
    return-void
.end method

.method private showError(Ljava/lang/String;Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "next"    # Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .prologue
    const/4 v3, 0x1

    .line 708
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 709
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 710
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 711
    .local v0, "mesg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 712
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 713
    return-void
.end method

.method private startVerifyPassword(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "wasSecureBefore"    # Z

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-wide v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mChallenge:J

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    new-instance v5, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$4;

    invoke-direct {v5, p0, p2}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$4;-><init>(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;Z)V

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternChecker;->verifyPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 665
    return-void
.end method

.method private updateUi()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 730
    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-virtual {v3}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 731
    .local v2, "password":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 732
    .local v1, "length":I
    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v4, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v3, v4, :cond_3

    if-lez v1, :cond_3

    .line 733
    iget v3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v1, v3, :cond_1

    .line 763
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v4, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v3, v4, :cond_0

    if-lez v1, :cond_0

    iget v3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mConformStep:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 765
    iget v3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v1, v3, :cond_5

    .line 797
    :cond_0
    :goto_1
    return-void

    .line 740
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 741
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 742
    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 745
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-virtual {v3, v5}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->setEnabled(Z)V

    .line 746
    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$5;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$5;-><init>(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)V

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 759
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

    .line 768
    :cond_5
    invoke-direct {p0, v2}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 769
    .restart local v0    # "error":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 770
    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 782
    :cond_6
    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-virtual {v3, v5}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->setEnabled(Z)V

    .line 783
    iget-object v3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$6;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$6;-><init>(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)V

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 471
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v12, v13, :cond_1

    .line 472
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_0

    const v12, 0x7f0c044e

    :goto_0
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 563
    :goto_1
    return-object v12

    .line 472
    :cond_0
    const v12, 0x7f0c044f

    goto :goto_0

    .line 476
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    if-le v12, v13, :cond_3

    .line 477
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_2

    const v12, 0x7f0c0452

    :goto_2
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

    goto :goto_1

    :cond_2
    const v12, 0x7f0c0453

    goto :goto_2

    .line 481
    :cond_3
    const/4 v5, 0x0

    .line 482
    .local v5, "letters":I
    const/4 v8, 0x0

    .line 483
    .local v8, "numbers":I
    const/4 v6, 0x0

    .line 484
    .local v6, "lowercase":I
    const/4 v10, 0x0

    .line 485
    .local v10, "symbols":I
    const/4 v11, 0x0

    .line 486
    .local v11, "uppercase":I
    const/4 v7, 0x0

    .line 487
    .local v7, "nonletter":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v4, v12, :cond_9

    .line 488
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 490
    .local v3, "c":C
    const/16 v12, 0x20

    if-lt v3, v12, :cond_4

    const/16 v12, 0x7f

    if-le v3, v12, :cond_5

    .line 491
    :cond_4
    const v12, 0x7f0c0456

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 493
    :cond_5
    const/16 v12, 0x30

    if-lt v3, v12, :cond_6

    const/16 v12, 0x39

    if-gt v3, v12, :cond_6

    .line 494
    add-int/lit8 v8, v8, 0x1

    .line 495
    add-int/lit8 v7, v7, 0x1

    .line 487
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 496
    :cond_6
    const/16 v12, 0x41

    if-lt v3, v12, :cond_7

    const/16 v12, 0x5a

    if-gt v3, v12, :cond_7

    .line 497
    add-int/lit8 v5, v5, 0x1

    .line 498
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 499
    :cond_7
    const/16 v12, 0x61

    if-lt v3, v12, :cond_8

    const/16 v12, 0x7a

    if-gt v3, v12, :cond_8

    .line 500
    add-int/lit8 v5, v5, 0x1

    .line 501
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 503
    :cond_8
    add-int/lit8 v10, v10, 0x1

    .line 504
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 507
    .end local v3    # "c":C
    :cond_9
    const/high16 v12, 0x20000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v12, v13, :cond_a

    const/high16 v12, 0x30000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v12, v13, :cond_d

    .line 509
    :cond_a
    if-gtz v5, :cond_b

    if-lez v10, :cond_c

    .line 512
    :cond_b
    const v12, 0x7f0c0454

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 515
    :cond_c
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->maxLengthSequence(Ljava/lang/String;)I

    move-result v9

    .line 516
    .local v9, "sequence":I
    const/high16 v12, 0x30000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v12, v13, :cond_18

    const/4 v12, 0x3

    if-le v9, v12, :cond_18

    .line 518
    const v12, 0x7f0c045b

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 520
    .end local v9    # "sequence":I
    :cond_d
    const/high16 v12, 0x60000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v12, v13, :cond_13

    .line 521
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    if-ge v5, v12, :cond_e

    .line 522
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f130002

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

    .line 525
    :cond_e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    if-ge v8, v12, :cond_f

    .line 526
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f130005

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

    .line 529
    :cond_f
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    if-ge v6, v12, :cond_10

    .line 530
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f130003

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

    .line 533
    :cond_10
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    if-ge v11, v12, :cond_11

    .line 534
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f130004

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

    .line 537
    :cond_11
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    if-ge v10, v12, :cond_12

    .line 538
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f130006

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

    .line 541
    :cond_12
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    if-ge v7, v12, :cond_18

    .line 542
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f130007

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

    .line 547
    :cond_13
    const/high16 v12, 0x40000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v12, v13, :cond_15

    const/4 v1, 0x1

    .line 549
    .local v1, "alphabetic":Z
    :goto_5
    const/high16 v12, 0x50000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v12, v13, :cond_16

    const/4 v2, 0x1

    .line 551
    .local v2, "alphanumeric":Z
    :goto_6
    if-nez v1, :cond_14

    if-eqz v2, :cond_17

    :cond_14
    if-nez v5, :cond_17

    .line 552
    const v12, 0x7f0c0457

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 547
    .end local v1    # "alphabetic":Z
    .end local v2    # "alphanumeric":Z
    :cond_15
    const/4 v1, 0x0

    goto :goto_5

    .line 549
    .restart local v1    # "alphabetic":Z
    :cond_16
    const/4 v2, 0x0

    goto :goto_6

    .line 554
    .restart local v2    # "alphanumeric":Z
    :cond_17
    if-eqz v2, :cond_18

    if-nez v8, :cond_18

    .line 555
    const v12, 0x7f0c0458

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 558
    .end local v1    # "alphabetic":Z
    .end local v2    # "alphanumeric":Z
    :cond_18
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 559
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_19

    const v12, 0x7f0c045a

    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    :cond_19
    const v12, 0x7f0c0455

    goto :goto_7

    .line 563
    :cond_1a
    const/4 v12, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 801
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 802
    sget-object v0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 804
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 805
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 809
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 402
    const/16 v0, 0x1c

    return v0
.end method

.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 450
    invoke-static {p1}, Lcom/android/settings_ex/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public handleNext()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 567
    iget-boolean v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mDone:Z

    if-eqz v10, :cond_1

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-virtual {v10}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 570
    .local v2, "pin":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 573
    const/4 v1, 0x0

    .line 574
    .local v1, "errorMsg":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v11, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v10, v11, :cond_3

    .line 575
    invoke-direct {p0, v2}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 576
    if-nez v1, :cond_2

    .line 577
    iput-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 579
    sget-object v10, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 580
    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    const v11, 0x7f0c045c

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    .line 581
    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-virtual {v10, v14}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->reset(Z)V

    .line 583
    iput v14, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mConformStep:I

    .line 629
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 630
    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-direct {p0, v1, v10}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->showError(Ljava/lang/String;Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_0

    .line 585
    :cond_3
    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v11, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v10, v11, :cond_2

    .line 586
    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 587
    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v10}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    .line 588
    .local v8, "utils":Lcom/android/internal/widget/LockPatternUtils;
    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v9

    .line 589
    .local v9, "wasSecureBefore":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "extra_require_password"

    invoke-virtual {v10, v11, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 591
    .local v3, "required":Z
    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10, v3}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    .line 592
    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v11, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    iget v12, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    invoke-virtual {v10, v2, v11, v12, v13}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    .line 594
    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-virtual {v10, v14}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->reset(Z)V

    .line 595
    iget-boolean v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHasChallenge:Z

    if-eqz v10, :cond_5

    .line 599
    :try_start_0
    iget-wide v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mChallenge:J

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    invoke-virtual {v8, v2, v10, v11, v12}, Lcom/android/internal/widget/LockPatternUtils;->verifyPassword(Ljava/lang/String;JI)[B
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 605
    .local v7, "token":[B
    :goto_2
    if-nez v7, :cond_4

    .line 606
    const-string v10, "ChooseLockPassword"

    const-string v11, "critical: no token returned for known good password."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_4
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 611
    .local v4, "result":Landroid/content/Intent;
    const-string v10, "hw_auth_token"

    invoke-virtual {v4, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 614
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v14, v4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 618
    .end local v4    # "result":Landroid/content/Intent;
    .end local v7    # "token":[B
    :goto_3
    invoke-direct {p0, v9}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->finishConfirmStage(Z)V

    goto :goto_1

    .line 601
    :catch_0
    move-exception v0

    .line 602
    .local v0, "e":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    const/4 v7, 0x0

    .restart local v7    # "token":[B
    goto :goto_2

    .line 616
    .end local v0    # "e":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    .end local v7    # "token":[B
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v14}, Landroid/app/Activity;->setResult(I)V

    goto :goto_3

    .line 620
    .end local v3    # "required":Z
    .end local v8    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v9    # "wasSecureBefore":Z
    :cond_6
    new-instance v5, Landroid/text/SpannableString;

    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-virtual {v10}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 621
    .local v5, "spannableString":Landroid/text/SpannableString;
    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-virtual {v10, v14}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->reset(Z)V

    .line 622
    iget-object v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-virtual {v10}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object v6

    .line 623
    .local v6, "tmp":Ljava/lang/CharSequence;
    if-eqz v6, :cond_7

    .line 624
    const/4 v10, 0x0

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v11

    invoke-static {v5, v10, v11}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 626
    :cond_7
    sget-object v10, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto/16 :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 435
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 436
    packed-switch p1, :pswitch_data_0

    .line 447
    :goto_0
    return-void

    .line 438
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 440
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 442
    :cond_0
    const-string v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    goto :goto_0

    .line 436
    nop

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 688
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 705
    :goto_0
    return-void

    .line 690
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    goto :goto_0

    .line 694
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 697
    :sswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-virtual {v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-virtual {v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 699
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 701
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-virtual {v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->deleteLastChar()V

    goto :goto_0

    .line 688
    :sswitch_data_0
    .sparse-switch
        0x7f12003e -> :sswitch_1
        0x7f12003f -> :sswitch_0
        0x7f12011f -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 249
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 250
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 251
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 252
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings_ex/ChooseLockPassword;

    if-nez v1, :cond_0

    .line 253
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Fragment contained in wrong activity"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    :cond_0
    const-string v1, "lockscreen.password_type"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 258
    const/4 v1, 0x4

    const-string v2, "lockscreen.password_min"

    iget v3, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 262
    const-string v1, "lockscreen.password_max"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 263
    const-string v1, "lockscreen.password_min_letters"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 266
    const-string v1, "lockscreen.password_min_uppercase"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 269
    const-string v1, "lockscreen.password_min_lowercase"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 272
    const-string v1, "lockscreen.password_min_numeric"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 275
    const-string v1, "lockscreen.password_min_symbols"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 278
    const-string v1, "lockscreen.password_min_nonletter"

    iget v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 282
    new-instance v1, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 283
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 288
    const v0, 0x7f04008e

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
    .line 717
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 720
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    .line 721
    const/4 v0, 0x1

    .line 723
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 416
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 421
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onPause()V

    .line 422
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 407
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onResume()V

    .line 408
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 411
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 426
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 427
    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v0, "current_password"

    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 813
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x0

    const v2, 0x7f0c0265

    .line 293
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 295
    const v7, 0x7f12003e

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    .line 296
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    const v7, 0x7f12003f

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    .line 298
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 300
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 302
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 303
    .local v0, "activity":Landroid/app/Activity;
    const v7, 0x7f12010f

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    iput-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .line 304
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    iget-object v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordInputCountCallBack:Lcom/oneplus/settings/password/OPPasswordInputCountCallBack;

    invoke-virtual {v7, v8}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->setCallBack(Lcom/oneplus/settings/password/OPPasswordInputCountCallBack;)V

    .line 306
    const v7, 0x7f12011f

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mDeleteButton:Landroid/widget/TextView;

    .line 307
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mDeleteButton:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    new-instance v8, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$3;

    invoke-direct {v8, p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$3;-><init>(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)V

    invoke-virtual {v7, v8}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->setTextEmptyListener(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$OnTextEmptyListerner;)V

    .line 340
    const v7, 0x7f12003c

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    .line 364
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 365
    .local v3, "intent":Landroid/content/Intent;
    const-string v7, "confirm_credentials"

    invoke-virtual {v3, v7, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 367
    .local v1, "confirmCredentials":Z
    const-string v7, "password"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    .line 368
    const-string v7, "has_challenge"

    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHasChallenge:Z

    .line 370
    const-string v7, "challenge"

    const-wide/16 v8, 0x0

    invoke-virtual {v3, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mChallenge:J

    .line 371
    if-nez p2, :cond_3

    .line 372
    sget-object v7, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 373
    if-eqz v1, :cond_0

    .line 374
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    const/16 v8, 0x3a

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v11}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    .line 390
    :cond_0
    :goto_0
    iput-boolean v10, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mDone:Z

    .line 391
    instance-of v7, v0, Lcom/android/settings_ex/SettingsActivity;

    if-eqz v7, :cond_2

    move-object v4, v0

    .line 392
    check-cast v4, Lcom/android/settings_ex/SettingsActivity;

    .line 393
    .local v4, "sa":Lcom/android/settings_ex/SettingsActivity;
    iget-boolean v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v7, :cond_1

    .line 395
    .local v2, "id":I
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 396
    .local v6, "title":Ljava/lang/CharSequence;
    invoke-virtual {v4, v6}, Lcom/android/settings_ex/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 398
    .end local v2    # "id":I
    .end local v4    # "sa":Lcom/android/settings_ex/SettingsActivity;
    .end local v6    # "title":Ljava/lang/CharSequence;
    :cond_2
    return-void

    .line 379
    :cond_3
    const-string v7, "first_pin"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 380
    const-string v7, "ui_stage"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 381
    .local v5, "state":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 382
    invoke-static {v5}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 383
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 386
    :cond_4
    iget-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 387
    const-string v7, "current_password"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    goto :goto_0
.end method

.method protected setNextEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 681
    return-void
.end method

.method protected setNextText(I)V
    .locals 1
    .param p1, "text"    # I

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 685
    return-void
.end method

.method protected updateStage(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 3
    .param p1, "stage"    # Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 455
    .local v0, "previousStage":Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    iput-object p1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 456
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 460
    if-eq v0, p1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 463
    :cond_0
    return-void
.end method
