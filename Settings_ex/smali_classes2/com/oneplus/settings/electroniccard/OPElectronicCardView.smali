.class public Lcom/oneplus/settings/electroniccard/OPElectronicCardView;
.super Landroid/widget/RelativeLayout;
.source "OPElectronicCardView.java"


# instance fields
.field deviceImeiTv:Landroid/widget/TextView;

.field deviceModelTv:Landroid/widget/TextView;

.field warrantyExpriedDateTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-direct {p0}, Lcom/oneplus/settings/electroniccard/OPElectronicCardView;->init()V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0}, Lcom/oneplus/settings/electroniccard/OPElectronicCardView;->init()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-direct {p0}, Lcom/oneplus/settings/electroniccard/OPElectronicCardView;->init()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    invoke-direct {p0}, Lcom/oneplus/settings/electroniccard/OPElectronicCardView;->init()V

    .line 30
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/oneplus/settings/electroniccard/OPElectronicCardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 37
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0400de

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 38
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f1101fe

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/settings/electroniccard/OPElectronicCardView;->deviceModelTv:Landroid/widget/TextView;

    .line 39
    const v2, 0x7f110200

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/settings/electroniccard/OPElectronicCardView;->deviceImeiTv:Landroid/widget/TextView;

    .line 40
    const v2, 0x7f110202

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/settings/electroniccard/OPElectronicCardView;->warrantyExpriedDateTv:Landroid/widget/TextView;

    .line 35
    return-void
.end method


# virtual methods
.method public getDeviceImeiTv()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oneplus/settings/electroniccard/OPElectronicCardView;->deviceImeiTv:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDeviceModelTv()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/oneplus/settings/electroniccard/OPElectronicCardView;->deviceModelTv:Landroid/widget/TextView;

    return-object v0
.end method

.method public getWarrantyExpriedDateTv()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oneplus/settings/electroniccard/OPElectronicCardView;->warrantyExpriedDateTv:Landroid/widget/TextView;

    return-object v0
.end method
