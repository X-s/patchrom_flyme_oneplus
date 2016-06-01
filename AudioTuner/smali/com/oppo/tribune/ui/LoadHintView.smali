.class public Lcom/oppo/tribune/ui/LoadHintView;
.super Landroid/widget/RelativeLayout;
.source "LoadHintView.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mHintView:Landroid/widget/TextView;

.field private mLoadBar:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/oppo/tribune/ui/LoadHintView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/ui/LoadHintView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0, p1}, Lcom/oppo/tribune/ui/LoadHintView;->initialize(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/oppo/tribune/ui/LoadHintView;->initialize(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0, p1}, Lcom/oppo/tribune/ui/LoadHintView;->initialize(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030032

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 36
    const v0, 0x7f0b012e

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/ui/LoadHintView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/tribune/ui/LoadHintView;->mHintView:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f0b012d

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/ui/LoadHintView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/oppo/tribune/ui/LoadHintView;->mLoadBar:Landroid/widget/ProgressBar;

    .line 38
    return-void
.end method


# virtual methods
.method public setLoading(I)V
    .locals 2
    .param p1, "res"    # I

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-virtual {p0, v1}, Lcom/oppo/tribune/ui/LoadHintView;->setVisibility(I)V

    .line 42
    iget-object v0, p0, Lcom/oppo/tribune/ui/LoadHintView;->mLoadBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/oppo/tribune/ui/LoadHintView;->mHintView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 45
    return-void
.end method

.method public setLoadingFailure(I)V
    .locals 2
    .param p1, "res"    # I

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/ui/LoadHintView;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/oppo/tribune/ui/LoadHintView;->mLoadBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/oppo/tribune/ui/LoadHintView;->mHintView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 55
    return-void
.end method

.method public setLoadingSuccess()V
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/ui/LoadHintView;->setVisibility(I)V

    .line 49
    return-void
.end method
