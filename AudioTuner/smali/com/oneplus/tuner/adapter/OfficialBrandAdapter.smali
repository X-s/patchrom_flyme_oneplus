.class public Lcom/oneplus/tuner/adapter/OfficialBrandAdapter;
.super Landroid/widget/ArrayAdapter;
.source "OfficialBrandAdapter.java"


# instance fields
.field mBrandArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/tuner/providers/OfficialEarphone;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mInflater:Landroid/view/LayoutInflater;

.field mResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/tuner/providers/OfficialEarphone;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p3, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/OfficialEarphone;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 26
    iput-object p1, p0, Lcom/oneplus/tuner/adapter/OfficialBrandAdapter;->mContext:Landroid/content/Context;

    .line 27
    invoke-static {p3}, Lcom/oneplus/tuner/manager/ConfigurationLoader;->filterBrandConfig(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/adapter/OfficialBrandAdapter;->mBrandArray:Ljava/util/ArrayList;

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/adapter/OfficialBrandAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 29
    iput p2, p0, Lcom/oneplus/tuner/adapter/OfficialBrandAdapter;->mResourceId:I

    .line 30
    return-void
.end method


# virtual methods
.method public getArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/tuner/providers/OfficialEarphone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oneplus/tuner/adapter/OfficialBrandAdapter;->mBrandArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oneplus/tuner/adapter/OfficialBrandAdapter;->mBrandArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "arg0"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 41
    if-nez p2, :cond_0

    .line 42
    iget-object v2, p0, Lcom/oneplus/tuner/adapter/OfficialBrandAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/oneplus/tuner/adapter/OfficialBrandAdapter;->mResourceId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 44
    :cond_0
    const v2, 0x7f0b00f8

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 45
    .local v1, "tv":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/oneplus/tuner/adapter/OfficialBrandAdapter;->mBrandArray:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/tuner/providers/OfficialEarphone;

    .line 46
    .local v0, "config":Lcom/oneplus/tuner/providers/OfficialEarphone;
    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {v0}, Lcom/oneplus/tuner/providers/OfficialEarphone;->getBrand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :cond_1
    return-object p2
.end method
