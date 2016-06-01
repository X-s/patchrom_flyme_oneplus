.class public Lcom/oppo/tribune/ui/CheckView;
.super Landroid/view/View;
.source "CheckView.java"


# instance fields
.field private mIsChecked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/tribune/ui/CheckView;->mIsChecked:Z

    .line 21
    invoke-direct {p0, p1}, Lcom/oppo/tribune/ui/CheckView;->init(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/tribune/ui/CheckView;->mIsChecked:Z

    .line 31
    invoke-direct {p0, p1}, Lcom/oppo/tribune/ui/CheckView;->init(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/tribune/ui/CheckView;->mIsChecked:Z

    .line 26
    invoke-direct {p0, p1}, Lcom/oppo/tribune/ui/CheckView;->init(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/oppo/tribune/ui/CheckView;->mIsChecked:Z

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/ui/CheckView;->setChecked(Z)V

    .line 36
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/oppo/tribune/ui/CheckView;->mIsChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/oppo/tribune/ui/CheckView;->mIsChecked:Z

    .line 40
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->putPermissionTipEnabled(Z)V

    .line 41
    if-eqz p1, :cond_1

    .line 42
    const v0, 0x7f0200d4

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/ui/CheckView;->setBackgroundResource(I)V

    .line 46
    :goto_1
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 44
    :cond_1
    const v0, 0x7f0200d3

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/ui/CheckView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/CheckView;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oppo/tribune/ui/CheckView;->setChecked(Z)V

    .line 54
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
