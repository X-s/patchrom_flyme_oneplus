.class public Lcom/oppo/tribune/SignInUserView;
.super Landroid/widget/RelativeLayout;
.source "SignInUserView.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mHintView:Lcom/oppo/tribune/ui/LoadHintView;

.field private mUserNameText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/oppo/tribune/SignInUserView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/SignInUserView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/oppo/tribune/SignInUserView;->initialize(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-direct {p0, p1}, Lcom/oppo/tribune/SignInUserView;->initialize(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    invoke-direct {p0, p1}, Lcom/oppo/tribune/SignInUserView;->initialize(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030069

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    const v0, 0x7f0b00a7

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/SignInUserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/tribune/SignInUserView;->mUserNameText:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f0b01df

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/SignInUserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/ui/LoadHintView;

    iput-object v0, p0, Lcom/oppo/tribune/SignInUserView;->mHintView:Lcom/oppo/tribune/ui/LoadHintView;

    .line 66
    iget-object v0, p0, Lcom/oppo/tribune/SignInUserView;->mHintView:Lcom/oppo/tribune/ui/LoadHintView;

    const v1, 0x7f0c0055

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/ui/LoadHintView;->setLoading(I)V

    .line 67
    return-void
.end method


# virtual methods
.method public setLoadFailure()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oppo/tribune/SignInUserView;->mHintView:Lcom/oppo/tribune/ui/LoadHintView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/ui/LoadHintView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/oppo/tribune/SignInUserView;->mUserNameText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/oppo/tribune/SignInUserView;->mHintView:Lcom/oppo/tribune/ui/LoadHintView;

    const v1, 0x7f0c005a

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/ui/LoadHintView;->setLoadingFailure(I)V

    .line 78
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 2
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oppo/tribune/SignInUserView;->mHintView:Lcom/oppo/tribune/ui/LoadHintView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/ui/LoadHintView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/oppo/tribune/SignInUserView;->mUserNameText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/oppo/tribune/SignInUserView;->mUserNameText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    return-void
.end method

.method public startLoadUser()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oppo/tribune/SignInUserView;->mHintView:Lcom/oppo/tribune/ui/LoadHintView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/ui/LoadHintView;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/oppo/tribune/SignInUserView;->mUserNameText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    return-void
.end method
