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
    .line 29
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 26
    const v0, 0x7f040097

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mLayoutResId:I

    .line 31
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->initViews(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const v0, 0x7f040097

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mLayoutResId:I

    .line 37
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->initViews(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const v0, 0x7f040097

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mLayoutResId:I

    .line 44
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->initViews(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/preference/PreferenceCategory;->onBindView(Landroid/view/View;)V

    .line 55
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 60
    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 62
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mLayoutResId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 63
    .local v1, "view":Landroid/view/View;
    return-object v1
.end method
