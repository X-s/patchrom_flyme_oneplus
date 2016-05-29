.class public Lcom/android/settings_ex/OwnerInfoSettings;
.super Landroid/app/Fragment;
.source "OwnerInfoSettings.java"


# static fields
.field public static final EXTRA_SHOW_NICKNAME:Ljava/lang/String; = "show_nickname"


# instance fields
.field private mCheckbox:Landroid/widget/CheckBox;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNickname:Landroid/widget/EditText;

.field private mOwnerInfo:Landroid/widget/EditText;

.field private mShowNickname:Z

.field private mUserId:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/OwnerInfoSettings;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/OwnerInfoSettings;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/OwnerInfoSettings;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/OwnerInfoSettings;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    return-object v0
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 68
    iget-object v2, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mView:Landroid/view/View;

    const v3, 0x7f0f0197

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mNickname:Landroid/widget/EditText;

    .line 69
    iget-boolean v2, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mShowNickname:Z

    if-nez v2, :cond_2

    .line 70
    iget-object v2, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mNickname:Landroid/widget/EditText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 76
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled()Z

    move-result v0

    .line 78
    .local v0, "enabled":Z
    iget-object v2, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mView:Landroid/view/View;

    const v3, 0x7f0f0198

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mCheckbox:Landroid/widget/CheckBox;

    .line 79
    iget-object v2, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 80
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/android/settings_ex/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 82
    iget-object v2, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mCheckbox:Landroid/widget/CheckBox;

    const v3, 0x7f09025c

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(I)V

    .line 87
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mCheckbox:Landroid/widget/CheckBox;

    new-instance v3, Lcom/android/settings_ex/OwnerInfoSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/OwnerInfoSettings$1;-><init>(Lcom/android/settings_ex/OwnerInfoSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 94
    iget-object v2, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "info":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mView:Landroid/view/View;

    const v3, 0x7f0f0199

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    .line 97
    iget-object v2, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 98
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 99
    iget-object v2, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :cond_1
    return-void

    .line 72
    .end local v0    # "enabled":Z
    .end local v1    # "info":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mNickname:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings_ex/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v2, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mNickname:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelected(Z)V

    goto :goto_0

    .line 84
    .restart local v0    # "enabled":Z
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mCheckbox:Landroid/widget/CheckBox;

    const v3, 0x7f09025a

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(I)V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings_ex/OwnerInfoSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 52
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "show_nickname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    const-string v1, "show_nickname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mShowNickname:Z

    .line 55
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    const v0, 0x7f040090

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mView:Landroid/view/View;

    .line 61
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mUserId:I

    .line 62
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 63
    invoke-direct {p0}, Lcom/android/settings_ex/OwnerInfoSettings;->initView()V

    .line 64
    iget-object v0, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings_ex/OwnerInfoSettings;->saveChanges()V

    .line 107
    return-void
.end method

.method saveChanges()V
    .locals 6

    .prologue
    .line 110
    iget-object v3, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "info":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mUserId:I

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfo(Ljava/lang/String;I)V

    .line 112
    iget-boolean v3, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mShowNickname:Z

    if-eqz v3, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/android/settings_ex/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "oldName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mNickname:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 115
    .local v1, "newName":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/android/settings_ex/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    .line 120
    .end local v1    # "newName":Ljava/lang/CharSequence;
    .end local v2    # "oldName":Ljava/lang/String;
    :cond_0
    return-void
.end method
