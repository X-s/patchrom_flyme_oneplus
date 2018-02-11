.class public Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingsDrawerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$Item;,
        Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    .line 37
    iput-object p1, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;->mActivity:Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;

    .line 36
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 85
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 95
    iget-object v1, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$Item;

    .line 96
    .local v0, "item":Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$Item;
    if-nez v0, :cond_0

    .line 97
    const/4 v1, 0x0

    return v1

    .line 99
    :cond_0
    iget-object v1, v0, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$Item;->icon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_1

    .line 100
    const/4 v1, 0x1

    return v1

    .line 102
    :cond_1
    const/4 v1, 0x2

    return v1
.end method

.method public getTile(I)Lcom/android/settings_exlib/drawer/Tile;
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 70
    iget-object v1, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$Item;

    iget-object v0, v0, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$Item;->tile:Lcom/android/settings_exlib/drawer/Tile;

    :cond_0
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 115
    iget-object v3, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$Item;

    .line 117
    .local v2, "item":Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$Item;
    if-nez v2, :cond_0

    .line 118
    iget-object v3, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;->mActivity:Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/android/settings_exlib/R$layout;->drawer_spacer:I

    invoke-virtual {v3, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 120
    return-object p2

    .line 122
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/android/settings_exlib/R$id;->spacer:I

    if-ne v3, v4, :cond_1

    .line 123
    const/4 p2, 0x0

    .line 125
    .end local p2    # "convertView":Landroid/view/View;
    :cond_1
    iget-object v3, v2, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$Item;->icon:Landroid/graphics/drawable/Icon;

    if-eqz v3, :cond_4

    const/4 v1, 0x1

    .line 126
    .local v1, "isTile":Z
    :goto_0
    if-nez p2, :cond_6

    .line 127
    new-instance v0, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$ViewHolder;

    invoke-direct {v0, v5}, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$ViewHolder;-><init>(Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$ViewHolder;)V

    .line 128
    .local v0, "holder":Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$ViewHolder;
    iget-object v3, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;->mActivity:Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    if-eqz v1, :cond_5

    sget v3, Lcom/android/settings_exlib/R$layout;->drawer_item:I

    :goto_1
    invoke-virtual {v4, v3, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 131
    .restart local p2    # "convertView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 132
    const v3, 0x1020006

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 134
    :cond_2
    const v3, 0x1020016

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 135
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 140
    .end local p2    # "convertView":Landroid/view/View;
    :goto_2
    if-eqz v1, :cond_3

    .line 141
    iget-object v3, v0, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v4, v2, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$Item;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 143
    :cond_3
    iget-object v3, v0, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$Item;->label:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    return-object p2

    .line 125
    .end local v0    # "holder":Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$ViewHolder;
    .end local v1    # "isTile":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "isTile":Z
    goto :goto_0

    .line 129
    .restart local v0    # "holder":Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$ViewHolder;
    :cond_5
    sget v3, Lcom/android/settings_exlib/R$layout;->drawer_category:I

    goto :goto_1

    .line 137
    .end local v0    # "holder":Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$ViewHolder;
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$ViewHolder;
    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$Item;

    iget-object v0, v0, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$Item;->icon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method updateCategories()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 41
    iget-object v7, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;->mActivity:Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;

    invoke-virtual {v7}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->getDashboardCategories()Ljava/util/List;

    move-result-object v0

    .line 42
    .local v0, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/drawer/DashboardCategory;>;"
    iget-object v7, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 45
    iget-object v7, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v6, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$Item;

    invoke-direct {v6, v9}, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$Item;-><init>(Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$Item;)V

    .line 47
    .local v6, "tile":Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$Item;
    iget-object v7, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;->mActivity:Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;

    sget v8, Lcom/android/settings_exlib/R$string;->home:I

    invoke-virtual {v7, v8}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$Item;->label:Ljava/lang/CharSequence;

    .line 48
    iget-object v7, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;->mActivity:Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;

    sget v8, Lcom/android/settings_exlib/R$drawable;->home:I

    invoke-static {v7, v8}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$Item;->icon:Landroid/graphics/drawable/Icon;

    .line 49
    iget-object v7, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 52
    new-instance v1, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$Item;

    invoke-direct {v1, v9}, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$Item;-><init>(Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$Item;)V

    .line 53
    .local v1, "category":Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$Item;
    iput-object v9, v1, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$Item;->icon:Landroid/graphics/drawable/Icon;

    .line 54
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/drawer/DashboardCategory;

    .line 55
    .local v2, "dashboardCategory":Lcom/android/settings_exlib/drawer/DashboardCategory;
    iget-object v7, v2, Lcom/android/settings_exlib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    iput-object v7, v1, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$Item;->label:Ljava/lang/CharSequence;

    .line 56
    iget-object v7, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    iget-object v7, v2, Lcom/android/settings_exlib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_0

    .line 58
    new-instance v6, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$Item;

    .end local v6    # "tile":Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$Item;
    invoke-direct {v6, v9}, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$Item;-><init>(Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$Item;)V

    .line 59
    .restart local v6    # "tile":Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$Item;
    iget-object v7, v2, Lcom/android/settings_exlib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_exlib/drawer/Tile;

    .line 60
    .local v3, "dashboardTile":Lcom/android/settings_exlib/drawer/Tile;
    iget-object v7, v3, Lcom/android/settings_exlib/drawer/Tile;->title:Ljava/lang/CharSequence;

    iput-object v7, v6, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$Item;->label:Ljava/lang/CharSequence;

    .line 61
    iget-object v7, v3, Lcom/android/settings_exlib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    iput-object v7, v6, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$Item;->icon:Landroid/graphics/drawable/Icon;

    .line 62
    iput-object v3, v6, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$Item;->tile:Lcom/android/settings_exlib/drawer/Tile;

    .line 63
    iget-object v7, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 51
    .end local v3    # "dashboardTile":Lcom/android/settings_exlib/drawer/Tile;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 66
    .end local v1    # "category":Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$Item;
    .end local v2    # "dashboardCategory":Lcom/android/settings_exlib/drawer/DashboardCategory;
    .end local v5    # "j":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;->notifyDataSetChanged()V

    .line 40
    return-void
.end method
