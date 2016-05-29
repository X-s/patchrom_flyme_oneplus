.class public Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;
.super Landroid/preference/PreferenceCategory;
.source "OPFingerPrintEditCategory.java"


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private mLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 28
    const v0, 0x7f04008b

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mLayoutResId:I

    .line 33
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->initViews(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const v0, 0x7f04008b

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mLayoutResId:I

    .line 39
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->initViews(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const v0, 0x7f04008b

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mLayoutResId:I

    .line 46
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->initViews(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/preference/PreferenceCategory;->onBindView(Landroid/view/View;)V

    .line 57
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 62
    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 64
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mLayoutResId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 65
    .local v1, "view":Landroid/view/View;
    return-object v1
.end method
