.class public abstract Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;
.super Lcom/android/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardPinBasedInputViewForPin.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private mButton0:Landroid/view/View;

.field private mButton1:Landroid/view/View;

.field private mButton2:Landroid/view/View;

.field private mButton3:Landroid/view/View;

.field private mButton4:Landroid/view/View;

.field private mButton5:Landroid/view/View;

.field private mButton6:Landroid/view/View;

.field private mButton7:Landroid/view/View;

.field private mButton8:Landroid/view/View;

.field private mButton9:Landroid/view/View;

.field private mDeleteButton:Landroid/widget/TextView;

.field private mEmergencyCall:Landroid/widget/TextView;

.field public mKeyguardInputCountCallBack:Lcom/android/keyguard/KeyguardInputCountCallBack;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    new-instance v0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$1;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mKeyguardInputCountCallBack:Lcom/android/keyguard/KeyguardInputCountCallBack;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton0:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton1:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mDeleteButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton2:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton3:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton4:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton5:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton6:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton7:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton8:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton9:Landroid/view/View;

    return-object v0
.end method

.method private performClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 144
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 145
    return-void
.end method

.method private performNumberClick(I)V
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 148
    packed-switch p1, :pswitch_data_0

    .line 180
    :goto_0
    return-void

    .line 150
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton0:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 153
    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton1:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 156
    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton2:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 159
    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton3:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 162
    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton4:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 165
    :pswitch_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton5:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 168
    :pswitch_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton6:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 171
    :pswitch_7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton7:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 174
    :pswitch_8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton8:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 177
    :pswitch_9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton9:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method protected getPasswordText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 214
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 215
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPowerManager:Landroid/os/PowerManager;

    .line 216
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->getPasswordTextViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextViewForPin;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    .line 217
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/PasswordTextViewForPin;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 218
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mKeyguardInputCountCallBack:Lcom/android/keyguard/KeyguardInputCountCallBack;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextViewForPin;->setCallBack(Lcom/android/keyguard/KeyguardInputCountCallBack;)V

    .line 220
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextViewForPin;->setSelected(Z)V

    .line 223
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$2;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextViewForPin;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    sget v0, Lcom/android/keyguard/R$id;->digit_emergency_call:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mEmergencyCall:Landroid/widget/TextView;

    .line 244
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mEmergencyCall:Landroid/widget/TextView;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$3;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    sget v0, Lcom/android/keyguard/R$id;->deleteOrCancel:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mDeleteButton:Landroid/widget/TextView;

    .line 253
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mDeleteButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$4;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mDeleteButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$5;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 281
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$6;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextViewForPin;->setTextEmptyListener(Lcom/android/keyguard/PasswordTextViewForPin$OnTextEmptyListerner;)V

    .line 293
    sget v0, Lcom/android/keyguard/R$id;->key0:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton0:Landroid/view/View;

    .line 294
    sget v0, Lcom/android/keyguard/R$id;->key1:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton1:Landroid/view/View;

    .line 295
    sget v0, Lcom/android/keyguard/R$id;->key2:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton2:Landroid/view/View;

    .line 296
    sget v0, Lcom/android/keyguard/R$id;->key3:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton3:Landroid/view/View;

    .line 297
    sget v0, Lcom/android/keyguard/R$id;->key4:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton4:Landroid/view/View;

    .line 298
    sget v0, Lcom/android/keyguard/R$id;->key5:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton5:Landroid/view/View;

    .line 299
    sget v0, Lcom/android/keyguard/R$id;->key6:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton6:Landroid/view/View;

    .line 300
    sget v0, Lcom/android/keyguard/R$id;->key7:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton7:Landroid/view/View;

    .line 301
    sget v0, Lcom/android/keyguard/R$id;->key8:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton8:Landroid/view/View;

    .line 302
    sget v0, Lcom/android/keyguard/R$id;->key9:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton9:Landroid/view/View;

    .line 304
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextViewForPin;->requestFocus()Z

    .line 305
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    .line 306
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 310
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 311
    invoke-virtual {p0, p2, p3}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 312
    const/4 v0, 0x1

    .line 314
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 131
    const/16 v2, 0x43

    if-ne p1, v2, :cond_0

    .line 132
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mDeleteButton:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    .line 140
    :goto_0
    return v1

    .line 135
    :cond_0
    const/4 v2, 0x7

    if-lt p1, v2, :cond_1

    const/16 v2, 0x10

    if-gt p1, v2, :cond_1

    .line 136
    add-int/lit8 v0, p1, -0x7

    .line 137
    .local v0, "number":I
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performNumberClick(I)V

    goto :goto_0

    .line 140
    .end local v0    # "number":I
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/PasswordTextViewForPin;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextViewForPin;->requestFocus()Z

    .line 107
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->reset()V

    .line 108
    return-void
.end method

.method protected resetPasswordText(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/PasswordTextViewForPin;->reset(Z)V

    .line 185
    return-void
.end method

.method protected resetState()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextViewForPin;->setEnabled(Z)V

    .line 118
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mEcaView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    return-void
.end method

.method protected setPasswordEntryEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/PasswordTextViewForPin;->setEnabled(Z)V

    .line 124
    return-void
.end method

.method public takeEmergencyCallAction()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 198
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 199
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()V

    .line 210
    :goto_0
    return-void

    .line 202
    :cond_0
    const/4 v0, 0x1

    .line 203
    .local v0, "bypassHandler":Z
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportEmergencyCallAction(Z)V

    .line 204
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 207
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method
