.class public Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "OxygenChooseLockPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;
.implements Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/OxygenChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPasswordFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$-void_setupPasswordRequirementsView_android_view_View_view_LambdaImpl0;,
        Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;,
        Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;
    }
.end annotation


# static fields
.field private static final CONFIRM_EXISTING_REQUEST:I = 0x3a

.field private static final CONTAIN_INVALID_CHARACTERS:I = 0x1

.field private static final CONTAIN_NON_DIGITS:I = 0x8

.field private static final CONTAIN_SEQUENTIAL_DIGITS:I = 0x10

.field private static final FRAGMENT_TAG_SAVE_AND_FINISH:Ljava/lang/String; = "save_and_finish_worker"

.field private static final KEY_CURRENT_PASSWORD:Ljava/lang/String; = "current_password"

.field private static final KEY_FIRST_PIN:Ljava/lang/String; = "first_pin"

.field private static final KEY_UI_STAGE:Ljava/lang/String; = "ui_stage"

.field private static final MIN_LETTER_IN_PASSWORD:I = 0x0

.field private static final MIN_LOWER_LETTERS_IN_PASSWORD:I = 0x2

.field private static final MIN_NON_LETTER_IN_PASSWORD:I = 0x5

.field private static final MIN_NUMBER_IN_PASSWORD:I = 0x4

.field private static final MIN_SYMBOLS_IN_PASSWORD:I = 0x3

.field private static final MIN_UPPER_LETTERS_IN_PASSWORD:I = 0x1

.field private static final NOT_ENOUGH_DIGITS:I = 0x200

.field private static final NOT_ENOUGH_LETTER:I = 0x40

.field private static final NOT_ENOUGH_LOWER_CASE:I = 0x100

.field private static final NOT_ENOUGH_NON_LETTER:I = 0x800

.field private static final NOT_ENOUGH_SYMBOLS:I = 0x400

.field private static final NOT_ENOUGH_UPPER_CASE:I = 0x80

.field private static final NO_ERROR:I = 0x0

.field private static final RECENTLY_USED:I = 0x20

.field static final RESULT_FINISHED:I = 0x1

.field private static final TOO_LONG:I = 0x4

.field private static final TOO_SHORT:I = 0x2


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mChallenge:J

.field private mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

.field private mChosenPassword:Ljava/lang/String;

.field private mCurrentPassword:Ljava/lang/String;

.field private mFirstPin:Ljava/lang/String;

.field private mHasChallenge:Z

.field private mHeaderText:Landroid/widget/TextView;

.field private mHideDrawer:Z

.field private mIsAlphaMode:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLengthToFulfillAllPolicies:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mPasswordRequirementAdapter:Lcom/android/settings_ex/password/PasswordRequirementAdapter;

.field private mPasswordRequirements:[I

.field private mPasswordRestrictionView:Landroid/support/v7/widget/RecyclerView;

.field private mRequestedQuality:I

.field private mSaveAndFinishWorker:Lcom/android/settings_ex/OxygenChooseLockPassword$SaveAndFinishWorker;

.field private mTextChangedHandler:Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;

.field private mUiStage:Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field private mUserId:I


# direct methods
.method static synthetic -com_android_settings_OxygenChooseLockPassword$ChooseLockPasswordFragment_lambda$1(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "i"    # Ljava/lang/Integer;

    .prologue
    .line 431
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 258
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    .line 172
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 173
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 174
    iput v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 175
    iput v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 176
    iput v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 177
    iput v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 178
    iput v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 179
    iput v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 180
    iput v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLengthToFulfillAllPolicies:I

    .line 182
    iput-boolean v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mHideDrawer:Z

    .line 190
    const/high16 v0, 0x20000

    iput v0, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 192
    sget-object v0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 258
    return-void
.end method

.method private convertErrorCodeToMessages(I)[Ljava/lang/String;
    .locals 7
    .param p1, "errorCode"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 734
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 735
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    and-int/lit8 v1, p1, 0x1

    if-lez v1, :cond_0

    .line 736
    const v1, 0x7f0e069f

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 738
    :cond_0
    and-int/lit8 v1, p1, 0x8

    if-lez v1, :cond_1

    .line 739
    const v1, 0x7f0e069d

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    :cond_1
    and-int/lit16 v1, p1, 0x80

    if-lez v1, :cond_2

    .line 742
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 743
    iget v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 742
    new-array v3, v6, [Ljava/lang/Object;

    .line 744
    iget v4, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 743
    const v4, 0x7f130007

    .line 742
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 746
    :cond_2
    and-int/lit16 v1, p1, 0x100

    if-lez v1, :cond_3

    .line 747
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 748
    iget v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 747
    new-array v3, v6, [Ljava/lang/Object;

    .line 749
    iget v4, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 748
    const v4, 0x7f130006

    .line 747
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 751
    :cond_3
    and-int/lit8 v1, p1, 0x40

    if-lez v1, :cond_4

    .line 752
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 753
    iget v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 752
    new-array v3, v6, [Ljava/lang/Object;

    .line 754
    iget v4, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 753
    const v4, 0x7f130005

    .line 752
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    :cond_4
    and-int/lit16 v1, p1, 0x200

    if-lez v1, :cond_5

    .line 757
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 758
    iget v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 757
    new-array v3, v6, [Ljava/lang/Object;

    .line 759
    iget v4, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 758
    const v4, 0x7f130008

    .line 757
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    :cond_5
    and-int/lit16 v1, p1, 0x400

    if-lez v1, :cond_6

    .line 762
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 763
    iget v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 762
    new-array v3, v6, [Ljava/lang/Object;

    .line 764
    iget v4, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 763
    const v4, 0x7f130009

    .line 762
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 766
    :cond_6
    and-int/lit16 v1, p1, 0x800

    if-lez v1, :cond_7

    .line 767
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 768
    iget v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 767
    new-array v3, v6, [Ljava/lang/Object;

    .line 769
    iget v4, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 768
    const v4, 0x7f13000a

    .line 767
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 771
    :cond_7
    and-int/lit8 v1, p1, 0x2

    if-lez v1, :cond_8

    .line 772
    iget-boolean v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v1, :cond_c

    .line 773
    const v1, 0x7f0e0698

    .line 772
    :goto_0
    new-array v2, v6, [Ljava/lang/Object;

    .line 774
    iget v3, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 772
    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 776
    :cond_8
    and-int/lit8 v1, p1, 0x4

    if-lez v1, :cond_9

    .line 777
    iget-boolean v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v1, :cond_d

    .line 778
    const v1, 0x7f0e069b

    .line 777
    :goto_1
    new-array v2, v6, [Ljava/lang/Object;

    .line 779
    iget v3, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 777
    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 781
    :cond_9
    and-int/lit8 v1, p1, 0x10

    if-lez v1, :cond_a

    .line 782
    const v1, 0x7f0e06a4

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 784
    :cond_a
    and-int/lit8 v1, p1, 0x20

    if-lez v1, :cond_b

    .line 785
    iget-boolean v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v1, :cond_e

    const v1, 0x7f0e06a3

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 788
    :cond_b
    new-array v1, v5, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 774
    :cond_c
    const v1, 0x7f0e0699

    goto :goto_0

    .line 779
    :cond_d
    const v1, 0x7f0e069c

    goto :goto_1

    .line 786
    :cond_e
    const v1, 0x7f0e069e

    goto :goto_2
.end method

.method private getMinLengthToFulfillAllPolicies()I
    .locals 5

    .prologue
    .line 792
    iget v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 793
    iget v3, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    iget v4, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    add-int/2addr v3, v4

    .line 792
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 794
    .local v0, "minLengthForLetters":I
    iget v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 795
    iget v3, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    iget v4, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    add-int/2addr v3, v4

    .line 794
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 796
    .local v1, "minLengthForNonLetters":I
    add-int v2, v0, v1

    return v2
.end method

.method private processPasswordRequirements(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 510
    iget-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v0

    .line 511
    .local v0, "dpmPasswordQuality":I
    const-string/jumbo v1, "lockscreen.password_type"

    .line 512
    iget v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 511
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 515
    const-string/jumbo v1, "lockscreen.password_min"

    iget v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 514
    const/4 v2, 0x4

    .line 513
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 516
    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength(I)I

    move-result v2

    .line 513
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 517
    const-string/jumbo v1, "lockscreen.password_max"

    iget v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 518
    const-string/jumbo v1, "lockscreen.password_min_letters"

    .line 519
    iget v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 518
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 519
    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 520
    iget v3, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 519
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters(I)I

    move-result v2

    .line 518
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 521
    const-string/jumbo v1, "lockscreen.password_min_uppercase"

    .line 522
    iget v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 521
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 522
    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 523
    iget v3, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 522
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase(I)I

    move-result v2

    .line 521
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 524
    const-string/jumbo v1, "lockscreen.password_min_lowercase"

    .line 525
    iget v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 524
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 525
    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 526
    iget v3, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 525
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase(I)I

    move-result v2

    .line 524
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 527
    const-string/jumbo v1, "lockscreen.password_min_numeric"

    .line 528
    iget v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 527
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 528
    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 529
    iget v3, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 528
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric(I)I

    move-result v2

    .line 527
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 530
    const-string/jumbo v1, "lockscreen.password_min_symbols"

    .line 531
    iget v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 530
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 531
    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 532
    iget v3, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 531
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols(I)I

    move-result v2

    .line 530
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 533
    const-string/jumbo v1, "lockscreen.password_min_nonletter"

    .line 534
    iget v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 533
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 534
    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 535
    iget v3, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 534
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter(I)I

    move-result v2

    .line 533
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 538
    sparse-switch v0, :sswitch_data_0

    .line 556
    iput v4, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 557
    iput v4, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 558
    iput v4, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 559
    iput v4, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 560
    iput v4, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 561
    iput v4, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 563
    :cond_0
    :goto_0
    :sswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getMinLengthToFulfillAllPolicies()I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLengthToFulfillAllPolicies:I

    .line 509
    return-void

    .line 540
    :sswitch_1
    iget v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    if-nez v1, :cond_0

    .line 541
    iput v5, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    goto :goto_0

    .line 545
    :sswitch_2
    iget v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    if-nez v1, :cond_1

    .line 546
    iput v5, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 548
    :cond_1
    iget v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    if-nez v1, :cond_0

    .line 549
    iput v5, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    goto :goto_0

    .line 538
    :sswitch_data_0
    .sparse-switch
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method private setHeaderText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 827
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 827
    if-eqz v0, :cond_0

    .line 829
    return-void

    .line 831
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 825
    return-void
.end method

.method private setupPasswordRequirementsView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 387
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v0, "passwordRequirements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v1, "requirementDescriptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    if-lez v2, :cond_0

    .line 390
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 392
    iget v3, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 391
    new-array v4, v7, [Ljava/lang/Object;

    .line 393
    iget v5, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 392
    const v5, 0x7f130007

    .line 391
    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    :cond_0
    iget v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    if-lez v2, :cond_1

    .line 396
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 398
    iget v3, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 397
    new-array v4, v7, [Ljava/lang/Object;

    .line 399
    iget v5, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 398
    const v5, 0x7f130006

    .line 397
    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    :cond_1
    iget v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    if-lez v2, :cond_2

    .line 402
    iget v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    iget v3, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    iget v4, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    add-int/2addr v3, v4

    if-le v2, v3, :cond_2

    .line 403
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 405
    iget v3, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 404
    new-array v4, v7, [Ljava/lang/Object;

    .line 406
    iget v5, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 405
    const v5, 0x7f130005

    .line 404
    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    :cond_2
    iget v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    if-lez v2, :cond_3

    .line 410
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 412
    iget v3, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 411
    new-array v4, v7, [Ljava/lang/Object;

    .line 413
    iget v5, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 412
    const v5, 0x7f130008

    .line 411
    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    :cond_3
    iget v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    if-lez v2, :cond_4

    .line 416
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 418
    iget v3, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 417
    new-array v4, v7, [Ljava/lang/Object;

    .line 419
    iget v5, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 418
    const v5, 0x7f130009

    .line 417
    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_4
    iget v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    if-lez v2, :cond_5

    .line 422
    iget v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    iget v3, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    iget v4, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    add-int/2addr v3, v4

    if-le v2, v3, :cond_5

    .line 423
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 425
    iget v3, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 424
    new-array v4, v7, [Ljava/lang/Object;

    .line 427
    iget v5, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 425
    const v5, 0x7f13000a

    .line 424
    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$-void_setupPasswordRequirementsView_android_view_View_view_LambdaImpl0;

    invoke-direct {v3}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$-void_setupPasswordRequirementsView_android_view_View_view_LambdaImpl0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRequirements:[I

    .line 433
    const v2, 0x7f110255

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    .line 432
    iput-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRestrictionView:Landroid/support/v7/widget/RecyclerView;

    .line 434
    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRestrictionView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 435
    new-instance v2, Lcom/android/settings_ex/password/PasswordRequirementAdapter;

    invoke-direct {v2}, Lcom/android/settings_ex/password/PasswordRequirementAdapter;-><init>()V

    iput-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRequirementAdapter:Lcom/android/settings_ex/password/PasswordRequirementAdapter;

    .line 436
    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRestrictionView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRequirementAdapter:Lcom/android/settings_ex/password/PasswordRequirementAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 385
    return-void
.end method

.method private startSaveAndFinish()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 852
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/OxygenChooseLockPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 853
    const-string/jumbo v0, "ChooseLockPassword"

    const-string/jumbo v1, "startSaveAndFinish with an existing SaveAndFinishWorker."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    return-void

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 858
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    .line 860
    new-instance v0, Lcom/android/settings_ex/OxygenChooseLockPassword$SaveAndFinishWorker;

    invoke-direct {v0, v3}, Lcom/android/settings_ex/OxygenChooseLockPassword$SaveAndFinishWorker;-><init>(Lcom/android/settings_ex/OxygenChooseLockPassword$SaveAndFinishWorker;)V

    iput-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/OxygenChooseLockPassword$SaveAndFinishWorker;

    .line 861
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/OxygenChooseLockPassword$SaveAndFinishWorker;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$SaveAndFinishWorker;->setListener(Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;)V

    .line 863
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/OxygenChooseLockPassword$SaveAndFinishWorker;

    .line 864
    const-string/jumbo v3, "save_and_finish_worker"

    .line 863
    invoke-virtual {v0, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 865
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 867
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 868
    const-string/jumbo v1, "extra_require_password"

    const/4 v3, 0x1

    .line 867
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 869
    .local v2, "required":Z
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/OxygenChooseLockPassword$SaveAndFinishWorker;

    iget-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-boolean v3, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mHasChallenge:Z

    iget-wide v4, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mChallenge:J

    .line 870
    iget-object v6, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    iget v8, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    iget v9, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 869
    invoke-virtual/range {v0 .. v9}, Lcom/android/settings_ex/OxygenChooseLockPassword$SaveAndFinishWorker;->start(Lcom/android/internal/widget/LockPatternUtils;ZZJLjava/lang/String;Ljava/lang/String;II)V

    .line 851
    return-void
.end method

.method private updateUi()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 803
    iget-object v7, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/OxygenChooseLockPassword$SaveAndFinishWorker;

    if-nez v7, :cond_0

    const/4 v0, 0x1

    .line 804
    .local v0, "canInput":Z
    :goto_0
    iget-object v7, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 805
    .local v4, "password":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 806
    .local v2, "length":I
    iget-object v7, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v8, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v7, v8, :cond_2

    .line 807
    iget-object v7, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRestrictionView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7, v6}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 808
    invoke-direct {p0, v4}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)I

    move-result v1

    .line 809
    .local v1, "errorCode":I
    invoke-direct {p0, v1}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->convertErrorCodeToMessages(I)[Ljava/lang/String;

    move-result-object v3

    .line 811
    .local v3, "messages":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRequirementAdapter:Lcom/android/settings_ex/password/PasswordRequirementAdapter;

    invoke-virtual {v7, v3}, Lcom/android/settings_ex/password/PasswordRequirementAdapter;->setRequirements([Ljava/lang/String;)V

    .line 813
    if-nez v1, :cond_1

    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    .line 821
    .end local v1    # "errorCode":I
    .end local v3    # "messages":[Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v5, v5, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->setNextText(I)V

    .line 822
    iget-object v5, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v5, v0}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 802
    return-void

    .line 803
    .end local v0    # "canInput":Z
    .end local v2    # "length":I
    .end local v4    # "password":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "canInput":Z
    goto :goto_0

    .restart local v1    # "errorCode":I
    .restart local v2    # "length":I
    .restart local v3    # "messages":[Ljava/lang/String;
    .restart local v4    # "password":Ljava/lang/String;
    :cond_1
    move v5, v6

    .line 813
    goto :goto_1

    .line 816
    .end local v1    # "errorCode":I
    .end local v3    # "messages":[Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRestrictionView:Landroid/support/v7/widget/RecyclerView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 818
    iget-boolean v7, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v7, v7, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    .line 817
    :goto_3
    invoke-virtual {p0, v7}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->setHeaderText(Ljava/lang/String;)V

    .line 819
    if-eqz v0, :cond_3

    if-lez v2, :cond_3

    move v6, v5

    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    goto :goto_2

    .line 818
    :cond_4
    iget-object v7, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v7, v7, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    goto :goto_3
.end method

.method private validatePassword(Ljava/lang/String;)I
    .locals 14
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/high16 v13, 0x30000

    .line 573
    const/4 v1, 0x0

    .line 575
    .local v1, "errorCode":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    iget v12, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v11, v12, :cond_2

    .line 576
    iget v11, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    iget v12, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLengthToFulfillAllPolicies:I

    if-le v11, v12, :cond_0

    .line 577
    const/4 v1, 0x2

    .line 597
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 598
    .local v3, "letters":I
    const/4 v6, 0x0

    .line 599
    .local v6, "numbers":I
    const/4 v4, 0x0

    .line 600
    .local v4, "lowercase":I
    const/4 v9, 0x0

    .line 601
    .local v9, "symbols":I
    const/4 v10, 0x0

    .line 602
    .local v10, "uppercase":I
    const/4 v5, 0x0

    .line 603
    .local v5, "nonletter":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v2, v11, :cond_9

    .line 604
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 606
    .local v0, "c":C
    const/16 v11, 0x20

    if-lt v0, v11, :cond_1

    const/16 v11, 0x7f

    if-le v0, v11, :cond_5

    .line 607
    :cond_1
    or-int/lit8 v1, v1, 0x1

    .line 603
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 579
    .end local v0    # "c":C
    .end local v2    # "i":I
    .end local v3    # "letters":I
    .end local v4    # "lowercase":I
    .end local v5    # "nonletter":I
    .end local v6    # "numbers":I
    .end local v9    # "symbols":I
    .end local v10    # "uppercase":I
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    iget v12, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    if-le v11, v12, :cond_3

    .line 580
    const/4 v1, 0x4

    goto :goto_0

    .line 583
    :cond_3
    iget v11, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v11, v13, :cond_4

    .line 585
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->maxLengthSequence(Ljava/lang/String;)I

    move-result v8

    .line 586
    .local v8, "sequence":I
    const/4 v11, 0x3

    if-le v8, v11, :cond_4

    .line 587
    const/16 v1, 0x10

    .line 591
    .end local v8    # "sequence":I
    :cond_4
    iget-object v11, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v12, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v11, p1, v12}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 592
    or-int/lit8 v1, v1, 0x20

    goto :goto_0

    .line 610
    .restart local v0    # "c":C
    .restart local v2    # "i":I
    .restart local v3    # "letters":I
    .restart local v4    # "lowercase":I
    .restart local v5    # "nonletter":I
    .restart local v6    # "numbers":I
    .restart local v9    # "symbols":I
    .restart local v10    # "uppercase":I
    :cond_5
    const/16 v11, 0x30

    if-lt v0, v11, :cond_6

    const/16 v11, 0x39

    if-gt v0, v11, :cond_6

    .line 611
    add-int/lit8 v6, v6, 0x1

    .line 612
    add-int/lit8 v5, v5, 0x1

    .line 610
    goto :goto_2

    .line 613
    :cond_6
    const/16 v11, 0x41

    if-lt v0, v11, :cond_7

    const/16 v11, 0x5a

    if-gt v0, v11, :cond_7

    .line 614
    add-int/lit8 v3, v3, 0x1

    .line 615
    add-int/lit8 v10, v10, 0x1

    .line 613
    goto :goto_2

    .line 616
    :cond_7
    const/16 v11, 0x61

    if-lt v0, v11, :cond_8

    const/16 v11, 0x7a

    if-gt v0, v11, :cond_8

    .line 617
    add-int/lit8 v3, v3, 0x1

    .line 618
    add-int/lit8 v4, v4, 0x1

    .line 616
    goto :goto_2

    .line 620
    :cond_8
    add-int/lit8 v9, v9, 0x1

    .line 621
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 627
    .end local v0    # "c":C
    :cond_9
    iget v11, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/high16 v12, 0x20000

    if-eq v11, v12, :cond_a

    .line 628
    iget v11, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v11, v13, :cond_c

    .line 629
    :cond_a
    if-gtz v3, :cond_b

    if-lez v9, :cond_c

    .line 630
    :cond_b
    or-int/lit8 v1, v1, 0x8

    .line 635
    :cond_c
    const/4 v2, 0x0

    :goto_3
    iget-object v11, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRequirements:[I

    array-length v11, v11

    if-ge v2, v11, :cond_e

    .line 636
    iget-object v11, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRequirements:[I

    aget v7, v11, v2

    .line 637
    .local v7, "passwordRestriction":I
    packed-switch v7, :pswitch_data_0

    .line 635
    :cond_d
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 639
    :pswitch_0
    iget v11, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    if-ge v3, v11, :cond_d

    .line 640
    or-int/lit8 v1, v1, 0x40

    goto :goto_4

    .line 644
    :pswitch_1
    iget v11, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    if-ge v10, v11, :cond_d

    .line 645
    or-int/lit16 v1, v1, 0x80

    goto :goto_4

    .line 649
    :pswitch_2
    iget v11, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    if-ge v4, v11, :cond_d

    .line 650
    or-int/lit16 v1, v1, 0x100

    goto :goto_4

    .line 654
    :pswitch_3
    iget v11, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    if-ge v9, v11, :cond_d

    .line 655
    or-int/lit16 v1, v1, 0x400

    goto :goto_4

    .line 659
    :pswitch_4
    iget v11, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    if-ge v6, v11, :cond_d

    .line 660
    or-int/lit16 v1, v1, 0x200

    goto :goto_4

    .line 664
    :pswitch_5
    iget v11, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    if-ge v5, v11, :cond_d

    .line 665
    or-int/lit16 v1, v1, 0x800

    goto :goto_4

    .line 670
    .end local v7    # "passwordRestriction":I
    :cond_e
    return v1

    .line 637
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 837
    sget-object v0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mTextChangedHandler:Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;

    invoke-static {v0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;->-wrap0(Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;)V

    .line 834
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 843
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 441
    const/16 v0, 0x1c

    return v0
.end method

.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 489
    iget v0, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {p1, v0}, Lcom/android/settings_ex/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public handleNext()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 674
    iget-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/OxygenChooseLockPassword$SaveAndFinishWorker;

    if-eqz v1, :cond_0

    return-void

    .line 675
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    .line 676
    iget-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 677
    return-void

    .line 679
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v2, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v1, v2, :cond_3

    .line 680
    iget-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 681
    iget-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 682
    iget-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 683
    sget-object v1, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 673
    :cond_2
    :goto_0
    return-void

    .line 685
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v2, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v1, v2, :cond_2

    .line 686
    iget-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 687
    invoke-direct {p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->startSaveAndFinish()V

    goto :goto_0

    .line 689
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 690
    .local v0, "tmp":Ljava/lang/CharSequence;
    if-eqz v0, :cond_5

    move-object v1, v0

    .line 691
    check-cast v1, Landroid/text/Spannable;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v1, v3, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 693
    :cond_5
    sget-object v1, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 474
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 475
    packed-switch p1, :pswitch_data_0

    .line 473
    :goto_0
    return-void

    .line 477
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 478
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 479
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 482
    :cond_0
    const-string/jumbo v0, "password"

    .line 481
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    goto :goto_0

    .line 475
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
    .line 875
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 877
    if-nez p1, :cond_0

    .line 878
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 879
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 880
    const-string/jumbo v1, ":settings:hide_drawer"

    iget-boolean v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mHideDrawer:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 881
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->startActivity(Landroid/content/Intent;)V

    .line 884
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 874
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 707
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 706
    :goto_0
    return-void

    .line 709
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    goto :goto_0

    .line 713
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 707
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
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 264
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 265
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 266
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 267
    .local v10, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings_ex/ChooseLockPassword;

    if-nez v1, :cond_0

    .line 268
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Fragment contained in wrong activity"

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/settings_ex/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 272
    invoke-direct {p0, v10}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->processPasswordRequirements(Landroid/content/Intent;)V

    .line 273
    new-instance v1, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 274
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, ":settings:hide_drawer"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mHideDrawer:Z

    .line 277
    const-string/jumbo v1, "for_cred_req_boot"

    .line 276
    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    new-instance v0, Lcom/android/settings_ex/OxygenChooseLockPassword$SaveAndFinishWorker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/OxygenChooseLockPassword$SaveAndFinishWorker;-><init>(Lcom/android/settings_ex/OxygenChooseLockPassword$SaveAndFinishWorker;)V

    .line 279
    .local v0, "w":Lcom/android/settings_ex/OxygenChooseLockPassword$SaveAndFinishWorker;
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 280
    const-string/jumbo v4, "extra_require_password"

    .line 279
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 282
    .local v2, "required":Z
    const-string/jumbo v1, "password"

    .line 281
    invoke-virtual {v10, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 283
    .local v6, "current":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/android/settings_ex/OxygenChooseLockPassword$SaveAndFinishWorker;->setBlocking(Z)V

    .line 284
    invoke-virtual {v0, p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$SaveAndFinishWorker;->setListener(Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;)V

    .line 285
    iget-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 286
    const-wide/16 v4, 0x0

    iget v8, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    iget v9, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    move-object v7, v6

    .line 285
    invoke-virtual/range {v0 .. v9}, Lcom/android/settings_ex/OxygenChooseLockPassword$SaveAndFinishWorker;->start(Lcom/android/internal/widget/LockPatternUtils;ZZJLjava/lang/String;Ljava/lang/String;II)V

    .line 288
    .end local v0    # "w":Lcom/android/settings_ex/OxygenChooseLockPassword$SaveAndFinishWorker;
    .end local v2    # "required":Z
    .end local v6    # "current":Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;-><init>(Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;)V

    iput-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mTextChangedHandler:Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;

    .line 263
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 294
    const v0, 0x7f040127

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

    .line 720
    if-eqz p2, :cond_0

    .line 721
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 723
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    .line 724
    const/4 v0, 0x1

    return v0

    .line 722
    :cond_1
    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    .line 726
    return v1
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 457
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/OxygenChooseLockPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/OxygenChooseLockPassword$SaveAndFinishWorker;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/OxygenChooseLockPassword$SaveAndFinishWorker;->setListener(Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;)V

    .line 460
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onPause()V

    .line 456
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 446
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onResume()V

    .line 447
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 448
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/OxygenChooseLockPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/OxygenChooseLockPassword$SaveAndFinishWorker;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$SaveAndFinishWorker;->setListener(Lcom/android/settings_ex/SaveChosenLockWorkerBase$Listener;)V

    .line 445
    :goto_0
    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 465
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 466
    const-string/jumbo v0, "ui_stage"

    iget-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-string/jumbo v0, "first_pin"

    iget-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string/jumbo v0, "current_password"

    iget-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 847
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 19
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 299
    invoke-super/range {p0 .. p2}, Lcom/android/settings_ex/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 301
    const v3, 0x7f1100d9

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    .line 302
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    const v3, 0x7f1100da

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    .line 304
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/high16 v4, 0x40000

    if-eq v4, v3, :cond_0

    .line 307
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/high16 v4, 0x50000

    if-ne v4, v3, :cond_3

    .line 306
    :cond_0
    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    .line 310
    invoke-direct/range {p0 .. p1}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->setupPasswordRequirementsView(Landroid/view/View;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRestrictionView:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 313
    const v3, 0x7f1100d8

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    .line 314
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 317
    new-instance v3, Lcom/android/internal/widget/TextViewInputDisabler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-direct {v3, v4}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 320
    .local v8, "activity":Landroid/app/Activity;
    const v3, 0x7f1100d7

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    .line 322
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getInputType()I

    move-result v12

    .line 323
    .local v12, "currentType":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v4, :cond_5

    .end local v12    # "currentType":I
    :goto_1
    invoke-virtual {v3, v12}, Landroid/widget/EditText;->setInputType(I)V

    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    .line 328
    .local v14, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "confirm_credentials"

    const/4 v4, 0x1

    .line 327
    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 329
    .local v11, "confirmCredentials":Z
    const-string/jumbo v3, "password"

    invoke-virtual {v14, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    .line 331
    const-string/jumbo v3, "has_challenge"

    const/4 v4, 0x0

    .line 330
    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mHasChallenge:Z

    .line 332
    const-string/jumbo v3, "challenge"

    const-wide/16 v4, 0x0

    invoke-virtual {v14, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mChallenge:J

    .line 333
    if-nez p2, :cond_6

    .line 334
    sget-object v3, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 335
    if-eqz v11, :cond_1

    .line 336
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 337
    const v4, 0x7f0e065d

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 338
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 336
    const/16 v6, 0x3a

    .line 337
    const/16 v18, 0x1

    .line 336
    move/from16 v0, v18

    invoke-virtual {v3, v6, v4, v0, v5}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    .line 364
    :cond_1
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 365
    const v4, 0x7f0f027d

    .line 364
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 367
    .local v7, "visibleVerticalSpaceBelowPassword":I
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    .line 368
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 367
    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 369
    .local v2, "drawable":Landroid/graphics/drawable/InsetDrawable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 370
    const v3, 0x7f110254

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 372
    .local v9, "bottomContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 373
    .local v10, "bottomContainerLp":Landroid/widget/LinearLayout$LayoutParams;
    neg-int v3, v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v10, v4, v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 375
    instance-of v3, v8, Lcom/android/settings_ex/SettingsActivity;

    if-eqz v3, :cond_2

    move-object v15, v8

    .line 376
    check-cast v15, Lcom/android/settings_ex/SettingsActivity;

    .line 377
    .local v15, "sa":Lcom/android/settings_ex/SettingsActivity;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v3, :cond_9

    const v13, 0x7f0e09af

    .line 379
    .local v13, "id":I
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    .line 380
    .local v17, "title":Ljava/lang/CharSequence;
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/settings_ex/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 381
    check-cast p1, Lcom/android/setupwizardlib/GlifLayout;

    .end local p1    # "view":Landroid/view/View;
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 298
    .end local v13    # "id":I
    .end local v15    # "sa":Lcom/android/settings_ex/SettingsActivity;
    .end local v17    # "title":Ljava/lang/CharSequence;
    :cond_2
    return-void

    .line 308
    .end local v2    # "drawable":Landroid/graphics/drawable/InsetDrawable;
    .end local v7    # "visibleVerticalSpaceBelowPassword":I
    .end local v8    # "activity":Landroid/app/Activity;
    .end local v9    # "bottomContainer":Landroid/widget/LinearLayout;
    .end local v10    # "bottomContainerLp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "confirmCredentials":Z
    .end local v14    # "intent":Landroid/content/Intent;
    .restart local p1    # "view":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/high16 v4, 0x60000

    if-ne v4, v3, :cond_4

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 324
    .restart local v8    # "activity":Landroid/app/Activity;
    .restart local v12    # "currentType":I
    :cond_5
    const/16 v12, 0x12

    goto/16 :goto_1

    .line 342
    .end local v12    # "currentType":I
    .restart local v11    # "confirmCredentials":Z
    .restart local v14    # "intent":Landroid/content/Intent;
    :cond_6
    const-string/jumbo v3, "first_pin"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 343
    const-string/jumbo v3, "ui_stage"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 344
    .local v16, "state":Ljava/lang/String;
    if-eqz v16, :cond_7

    .line 345
    invoke-static/range {v16 .. v16}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 349
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 350
    const-string/jumbo v3, "current_password"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    .line 354
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    .line 355
    const-string/jumbo v4, "save_and_finish_worker"

    .line 354
    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/OxygenChooseLockPassword$SaveAndFinishWorker;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings_ex/OxygenChooseLockPassword$SaveAndFinishWorker;

    goto/16 :goto_2

    .line 378
    .end local v16    # "state":Ljava/lang/String;
    .restart local v2    # "drawable":Landroid/graphics/drawable/InsetDrawable;
    .restart local v7    # "visibleVerticalSpaceBelowPassword":I
    .restart local v9    # "bottomContainer":Landroid/widget/LinearLayout;
    .restart local v10    # "bottomContainerLp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v15    # "sa":Lcom/android/settings_ex/SettingsActivity;
    :cond_9
    const v13, 0x7f0e09b1

    goto :goto_3
.end method

.method protected setNextEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 699
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 698
    return-void
.end method

.method protected setNextText(I)V
    .locals 1
    .param p1, "text"    # I

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 702
    return-void
.end method

.method protected updateStage(Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 3
    .param p1, "stage"    # Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 494
    .local v0, "previousStage":Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;
    iput-object p1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 495
    invoke-direct {p0}, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 499
    if-eq v0, p1, :cond_0

    .line 500
    iget-object v1, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/OxygenChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 492
    :cond_0
    return-void
.end method
