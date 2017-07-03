.class public Lcom/oneplus/gallery/widget/GridView;
.super Landroid/widget/GridView;
.source "GridView.java"


# instance fields
.field private m_SaveInstanceState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/widget/GridView;->m_SaveInstanceState:Z

    .line 24
    return-void
.end method


# virtual methods
.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 31
    invoke-super {p0}, Landroid/widget/GridView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 32
    .local v0, "state":Landroid/os/Parcelable;
    iget-boolean v1, p0, Lcom/oneplus/gallery/widget/GridView;->m_SaveInstanceState:Z

    if-eqz v1, :cond_0

    .end local v0    # "state":Landroid/os/Parcelable;
    :goto_0
    return-object v0

    .restart local v0    # "state":Landroid/os/Parcelable;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSaveInstanceStateEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/oneplus/gallery/widget/GridView;->m_SaveInstanceState:Z

    .line 43
    return-void
.end method
