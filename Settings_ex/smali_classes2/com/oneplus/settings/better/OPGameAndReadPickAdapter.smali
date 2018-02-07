.class public Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;
.super Landroid/widget/BaseAdapter;
.source "OPGameAndReadPickAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;
    }
.end annotation


# instance fields
.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSelectedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/better/OPAppModel;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mAppList:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mSelectedList:Ljava/util/List;

    .line 28
    iput-object p2, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mAppList:Ljava/util/List;

    .line 29
    iput-object p1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mContext:Landroid/content/Context;

    .line 30
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/oneplus/settings/better/OPAppModel;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/better/OPAppModel;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->getItem(I)Lcom/oneplus/settings/better/OPAppModel;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 66
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelected(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mSelectedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "mItemViewHolder":Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;
    iget-object v2, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/better/OPAppModel;

    .line 74
    .local v1, "model":Lcom/oneplus/settings/better/OPAppModel;
    if-nez p2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 76
    const v3, 0x7f0400e3

    .line 75
    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 77
    new-instance v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;

    .end local v0    # "mItemViewHolder":Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;
    invoke-direct {v0, p0}, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;-><init>(Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;)V

    .line 79
    .local v0, "mItemViewHolder":Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;
    const v2, 0x7f11020e

    .line 78
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->parent:Landroid/widget/RelativeLayout;

    .line 81
    const v2, 0x7f11020d

    .line 80
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    .line 83
    const/high16 v2, 0x7f110000

    .line 82
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    .line 85
    const v2, 0x7f110145

    .line 84
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    .line 87
    const v2, 0x7f1100e5

    .line 86
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->summaryTv:Landroid/widget/TextView;

    .line 88
    const v2, 0x7f110210

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->bottomLine:Landroid/view/View;

    .line 90
    const v2, 0x7f11020c

    .line 89
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->groupDivider:Landroid/view/View;

    .line 92
    const v2, 0x7f11020f

    .line 91
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 93
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 97
    :goto_0
    if-nez p1, :cond_1

    .line 98
    iget-object v2, v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    const v3, 0x7f0e03d5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 99
    iget-object v2, v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    :goto_1
    iget-object v2, v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object v2, v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v2, v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->groupDivider:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->getSelected(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 112
    iget-object v2, v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 116
    :goto_2
    return-object p2

    .line 95
    .local v0, "mItemViewHolder":Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "mItemViewHolder":Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;
    check-cast v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;

    .local v0, "mItemViewHolder":Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;
    goto :goto_0

    .line 101
    :cond_1
    iget-object v2, v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 114
    :cond_2
    iget-object v2, v0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2
.end method

.method public setData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/better/OPAppModel;>;"
    iput-object p1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mAppList:Ljava/util/List;

    .line 35
    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mSelectedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 36
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 37
    iget-object v2, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mSelectedList:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->isSelected()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->notifyDataSetChanged()V

    .line 33
    return-void
.end method

.method public setSelected(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "selected"    # Z

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->mSelectedList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->notifyDataSetChanged()V

    .line 42
    return-void
.end method
