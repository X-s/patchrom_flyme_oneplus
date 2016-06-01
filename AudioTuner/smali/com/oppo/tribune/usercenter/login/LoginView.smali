.class public Lcom/oppo/tribune/usercenter/login/LoginView;
.super Landroid/widget/LinearLayout;
.source "LoginView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;
    }
.end annotation


# instance fields
.field private bSavePassword:Z

.field private mAccountListView:Landroid/widget/ListView;

.field private mAccountSelectpw:Landroid/widget/PopupWindow;

.field private mBtnAccounSelect:Landroid/widget/ImageButton;

.field private mBtnLogin:Landroid/widget/Button;

.field private mBtnRegister:Landroid/widget/Button;

.field private mEdtxAccount:Landroid/widget/EditText;

.field private mEdtxPassword:Landroid/widget/EditText;

.field private mImgSavePassword:Landroid/widget/ImageView;

.field private mLoginPrcsDlg:Lcom/oppo/tribune/ui/CustomProgressDialog;

.field private mTxvForgetPswd:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->bSavePassword:Z

    .line 67
    invoke-direct {p0, p1}, Lcom/oppo/tribune/usercenter/login/LoginView;->init(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->bSavePassword:Z

    .line 72
    invoke-direct {p0, p1}, Lcom/oppo/tribune/usercenter/login/LoginView;->init(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/tribune/usercenter/login/LoginView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/usercenter/login/LoginView;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->bSavePassword:Z

    return v0
.end method

.method static synthetic access$100(Lcom/oppo/tribune/usercenter/login/LoginView;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/usercenter/login/LoginView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mAccountSelectpw:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/tribune/usercenter/login/LoginView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/usercenter/login/LoginView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mEdtxAccount:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oppo/tribune/usercenter/login/LoginView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/usercenter/login/LoginView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mEdtxPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method private getAcntListItemClkLsn(Ljava/util/List;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/usercenter/login/SignInRecord;",
            ">;)",
            "Landroid/widget/AdapterView$OnItemClickListener;"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "recordList":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/usercenter/login/SignInRecord;>;"
    new-instance v0, Lcom/oppo/tribune/usercenter/login/LoginView$2;

    invoke-direct {v0, p0, p1}, Lcom/oppo/tribune/usercenter/login/LoginView$2;-><init>(Lcom/oppo/tribune/usercenter/login/LoginView;Ljava/util/List;)V

    return-object v0
.end method

.method private final getImgSavePswdClkLsn()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/oppo/tribune/usercenter/login/LoginView$1;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/usercenter/login/LoginView$1;-><init>(Lcom/oppo/tribune/usercenter/login/LoginView;)V

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 78
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030037

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 80
    const v1, 0x7f0b013d

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/usercenter/login/LoginView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mEdtxAccount:Landroid/widget/EditText;

    .line 81
    const v1, 0x7f0b0141

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/usercenter/login/LoginView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mEdtxPassword:Landroid/widget/EditText;

    .line 83
    const v1, 0x7f0b013e

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/usercenter/login/LoginView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mBtnAccounSelect:Landroid/widget/ImageButton;

    .line 85
    const v1, 0x7f0b0146

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/usercenter/login/LoginView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mTxvForgetPswd:Landroid/widget/TextView;

    .line 87
    const v1, 0x7f0b0144

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/usercenter/login/LoginView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mImgSavePassword:Landroid/widget/ImageView;

    .line 88
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mImgSavePassword:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/oppo/tribune/usercenter/login/LoginView;->getImgSavePswdClkLsn()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v1, 0x7f0b0149

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/usercenter/login/LoginView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mBtnLogin:Landroid/widget/Button;

    .line 91
    const v1, 0x7f0b0148

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/usercenter/login/LoginView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mBtnRegister:Landroid/widget/Button;

    .line 92
    return-void
.end method


# virtual methods
.method public addAccountChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .param p1, "textWatcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mEdtxAccount:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mEdtxAccount:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 253
    :cond_0
    return-void
.end method

.method public dismissAccountPw()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mAccountSelectpw:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mAccountSelectpw:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mAccountSelectpw:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 153
    :cond_0
    return-void
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mEdtxAccount:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mEdtxPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideLoginPrcsDlg()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mLoginPrcsDlg:Lcom/oppo/tribune/ui/CustomProgressDialog;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mLoginPrcsDlg:Lcom/oppo/tribune/ui/CustomProgressDialog;

    invoke-virtual {v0}, Lcom/oppo/tribune/ui/CustomProgressDialog;->dismiss()V

    .line 201
    :cond_0
    return-void
.end method

.method public isImgSavePswdChecked()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->bSavePassword:Z

    return v0
.end method

.method public isLoginTaskRunning()Z
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mLoginPrcsDlg:Lcom/oppo/tribune/ui/CustomProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mLoginPrcsDlg:Lcom/oppo/tribune/ui/CustomProgressDialog;

    invoke-virtual {v0}, Lcom/oppo/tribune/ui/CustomProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 1
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mEdtxAccount:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 257
    return-void
.end method

.method public setBtnAcountSelectClkLsn(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mBtnAccounSelect:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    return-void
.end method

.method public setBtnForgetPswdClkLsn(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mTxvForgetPswd:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    return-void
.end method

.method public setBtnLoginClkLsn(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mBtnLogin:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    return-void
.end method

.method public setBtnRegisterClkLsn(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mBtnRegister:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    return-void
.end method

.method public setImgSavePsswordChecked(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 228
    if-eqz p1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mImgSavePassword:Landroid/widget/ImageView;

    const v1, 0x7f0200d4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->bSavePassword:Z

    .line 235
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mImgSavePassword:Landroid/widget/ImageView;

    const v1, 0x7f0200d3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->bSavePassword:Z

    goto :goto_0
.end method

.method public setImgSavePsswordClkLsn(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mImgSavePassword:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mEdtxPassword:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 261
    return-void
.end method

.method public showAccountPopWd(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/usercenter/login/SignInRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "recordList":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/usercenter/login/SignInRecord;>;"
    const/4 v10, 0x0

    .line 109
    invoke-virtual {p0}, Lcom/oppo/tribune/usercenter/login/LoginView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 110
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f030036

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 114
    .local v0, "accountSelectView":Landroid/view/View;
    iget-object v7, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mBtnAccounSelect:Landroid/widget/ImageButton;

    invoke-static {v7}, Lcom/oppo/tribune/util/CommonMethods;->hideSoftKeyboard(Landroid/view/View;)V

    .line 116
    iget-object v7, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mAccountSelectpw:Landroid/widget/PopupWindow;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mAccountSelectpw:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 117
    iget-object v7, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mAccountSelectpw:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->dismiss()V

    .line 120
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 123
    .local v6, "size":I
    const/4 v5, -0x2

    .line 124
    .local v5, "selectWindowHeight":I
    const/4 v7, 0x5

    if-le v6, v7, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/oppo/tribune/usercenter/login/LoginView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0900da

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 127
    .local v3, "itemHeight":I
    add-int/lit8 v7, v3, 0x2

    mul-int/lit8 v5, v7, 0x5

    .line 129
    .end local v3    # "itemHeight":I
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/usercenter/login/LoginView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0900db

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 132
    .local v4, "leftOffset":I
    new-instance v7, Landroid/widget/PopupWindow;

    iget-object v8, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mEdtxAccount:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getWidth()I

    move-result v8

    add-int/2addr v8, v4

    const/4 v9, 0x1

    invoke-direct {v7, v0, v8, v5, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v7, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mAccountSelectpw:Landroid/widget/PopupWindow;

    .line 135
    iget-object v7, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mAccountSelectpw:Landroid/widget/PopupWindow;

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    iget-object v7, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mAccountSelectpw:Landroid/widget/PopupWindow;

    iget-object v8, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mEdtxAccount:Landroid/widget/EditText;

    mul-int/lit8 v9, v4, -0x1

    invoke-virtual {v7, v8, v9, v10}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 140
    const v7, 0x7f0b0139

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mAccountListView:Landroid/widget/ListView;

    .line 143
    new-instance v1, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;

    invoke-virtual {p0}, Lcom/oppo/tribune/usercenter/login/LoginView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, p0, v7, p1}, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;-><init>(Lcom/oppo/tribune/usercenter/login/LoginView;Landroid/content/Context;Ljava/util/List;)V

    .line 144
    .local v1, "adpater":Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;
    iget-object v7, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mAccountListView:Landroid/widget/ListView;

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 145
    iget-object v7, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mAccountListView:Landroid/widget/ListView;

    invoke-direct {p0, p1}, Lcom/oppo/tribune/usercenter/login/LoginView;->getAcntListItemClkLsn(Ljava/util/List;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 147
    return-void
.end method

.method public showLoginPrcsDlg(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 3
    .param p1, "dlgDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/oppo/tribune/usercenter/login/LoginView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/tribune/ui/CustomProgressDialog;->createDialog(Landroid/content/Context;)Lcom/oppo/tribune/ui/CustomProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mLoginPrcsDlg:Lcom/oppo/tribune/ui/CustomProgressDialog;

    .line 190
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mLoginPrcsDlg:Lcom/oppo/tribune/ui/CustomProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/ui/CustomProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 191
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mLoginPrcsDlg:Lcom/oppo/tribune/ui/CustomProgressDialog;

    invoke-virtual {p0}, Lcom/oppo/tribune/usercenter/login/LoginView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c03f0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/ui/CustomProgressDialog;->setMessage(Ljava/lang/String;)Lcom/oppo/tribune/ui/CustomProgressDialog;

    .line 193
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mLoginPrcsDlg:Lcom/oppo/tribune/ui/CustomProgressDialog;

    invoke-virtual {v0, p1}, Lcom/oppo/tribune/ui/CustomProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 194
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView;->mLoginPrcsDlg:Lcom/oppo/tribune/ui/CustomProgressDialog;

    invoke-virtual {v0}, Lcom/oppo/tribune/ui/CustomProgressDialog;->show()V

    .line 195
    return-void
.end method

.method public showToast(I)V
    .locals 2
    .param p1, "strResId"    # I

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/oppo/tribune/usercenter/login/LoginView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 265
    return-void
.end method
