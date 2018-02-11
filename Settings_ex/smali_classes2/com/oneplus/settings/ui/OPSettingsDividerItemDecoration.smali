.class public Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "OPSettingsDividerItemDecoration.java"


# instance fields
.field private mCategoryStartIndex:I

.field private mContext:Landroid/content/Context;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mHasCategory:Z

.field mLTRLayout:Z

.field private mMarginLeft2:I

.field private mMarginLeft4:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dividerDrawable"    # I
    .param p3, "dividerHeight"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 49
    const/4 v2, -0x1

    iput v2, p0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mCategoryStartIndex:I

    .line 52
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mContext:Landroid/content/Context;

    .line 53
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 55
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 56
    .local v0, "hight":I
    iput v0, p0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDividerHeight:I

    .line 57
    const v2, 0x7f0f0291

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mMarginLeft2:I

    .line 58
    const v2, 0x7f0f0293

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mMarginLeft4:I

    .line 59
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isLTRLayout(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mLTRLayout:Z

    .line 51
    return-void
.end method

.method private itemHasIcon(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    const/4 v3, 0x0

    .line 148
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 149
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    instance-of v2, v0, Landroid/support/v7/preference/PreferenceViewHolder;

    if-eqz v2, :cond_1

    .line 150
    check-cast v0, Landroid/support/v7/preference/PreferenceViewHolder;

    .end local v0    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 151
    .local v1, "icon":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    const/4 v2, 0x1

    return v2

    .line 154
    :cond_0
    return v3

    .line 157
    .end local v1    # "icon":Landroid/view/View;
    .restart local v0    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    return v3
.end method

.method private shouldDrawDividerBelow(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    const/4 v6, 0x0

    .line 130
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 131
    .local v1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    instance-of v7, v1, Landroid/support/v7/preference/PreferenceViewHolder;

    if-eqz v7, :cond_0

    .line 132
    check-cast v1, Landroid/support/v7/preference/PreferenceViewHolder;

    .end local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceViewHolder;->isDividerAllowedBelow()Z

    move-result v0

    .line 133
    .local v0, "dividerAllowedBelow":Z
    :goto_0
    if-nez v0, :cond_1

    .line 134
    return v6

    .end local v0    # "dividerAllowedBelow":Z
    .restart local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_0
    move v0, v6

    .line 131
    goto :goto_0

    .line 136
    .end local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .restart local v0    # "dividerAllowedBelow":Z
    :cond_1
    const/4 v3, 0x1

    .line 137
    .local v3, "nextAllowed":Z
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 138
    .local v2, "index":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_2

    .line 139
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p2, v6}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 140
    .local v5, "nextView":Landroid/view/View;
    invoke-virtual {p2, v5}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    .line 141
    .local v4, "nextHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    instance-of v6, v4, Landroid/support/v7/preference/PreferenceViewHolder;

    if-eqz v6, :cond_3

    .line 142
    check-cast v4, Landroid/support/v7/preference/PreferenceViewHolder;

    .end local v4    # "nextHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceViewHolder;->isDividerAllowedAbove()Z

    move-result v3

    .line 144
    .end local v3    # "nextAllowed":Z
    .end local v5    # "nextView":Landroid/view/View;
    :cond_2
    :goto_1
    return v3

    .line 141
    .restart local v3    # "nextAllowed":Z
    .restart local v4    # "nextHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .restart local v5    # "nextView":Landroid/view/View;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 124
    invoke-direct {p0, p2, p3}, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->shouldDrawDividerBelow(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget v0, p0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDividerHeight:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 123
    :cond_0
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 17
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 64
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v13, :cond_0

    .line 65
    return-void

    .line 67
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    .line 68
    .local v3, "childCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v12

    .line 69
    .local v12, "width":I
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v13

    instance-of v13, v13, Landroid/support/v7/preference/PreferenceGroupAdapter;

    if-nez v13, :cond_1

    .line 70
    return-void

    .line 72
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/PreferenceGroupAdapter;

    .line 73
    .local v2, "adapter":Landroid/support/v7/preference/PreferenceGroupAdapter;
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v8

    .line 74
    .local v8, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    const/4 v5, 0x0

    .line 75
    .local v5, "firstItemPosition":I
    instance-of v13, v8, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v13, :cond_2

    move-object v9, v8

    .line 76
    check-cast v9, Landroid/support/v7/widget/LinearLayoutManager;

    .line 77
    .local v9, "linearManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v9}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v5

    .line 79
    .end local v9    # "linearManager":Landroid/support/v7/widget/LinearLayoutManager;
    :cond_2
    const/4 v4, 0x0

    .local v4, "childViewIndex":I
    :goto_0
    if-ge v4, v3, :cond_c

    .line 80
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 81
    .local v11, "view":Landroid/view/View;
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 82
    .local v7, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2, v4}, Landroid/support/v7/preference/PreferenceGroupAdapter;->getItem(I)Landroid/support/v7/preference/Preference;

    move-result-object v13

    instance-of v13, v13, Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v13, :cond_3

    .line 83
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mHasCategory:Z

    .line 84
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mCategoryStartIndex:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_3

    .line 85
    move-object/from16 v0, p0

    iput v4, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mCategoryStartIndex:I

    .line 88
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mHasCategory:Z

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mCategoryStartIndex:I

    add-int/lit8 v13, v13, -0x1

    sub-int/2addr v13, v5

    if-lt v4, v13, :cond_5

    const/4 v6, 0x1

    .line 89
    .local v6, "hasCategory":Z
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v11, v1}, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->shouldDrawDividerBelow(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 90
    invoke-static {v11}, Landroid/support/v4/view/ViewCompat;->getY(Landroid/view/View;)F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v14

    add-int v10, v13, v14

    .line 91
    .local v10, "top":I
    add-int/lit8 v13, v3, -0x1

    if-ne v4, v13, :cond_6

    .line 92
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDividerHeight:I

    add-int/2addr v14, v10

    const/4 v15, 0x0

    invoke-virtual {v13, v15, v10, v12, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 116
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 79
    .end local v10    # "top":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 88
    .end local v6    # "hasCategory":Z
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "hasCategory":Z
    goto :goto_1

    .line 94
    .restart local v10    # "top":I
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v11, v1}, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->itemHasIcon(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 95
    if-eqz v6, :cond_8

    .line 96
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mLTRLayout:Z

    if-eqz v13, :cond_7

    .line 97
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mMarginLeft4:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDividerHeight:I

    add-int/2addr v15, v10

    invoke-virtual {v13, v14, v10, v12, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    .line 99
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mMarginLeft4:I

    sub-int v14, v12, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDividerHeight:I

    add-int/2addr v15, v10

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0, v10, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    .line 102
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDividerHeight:I

    add-int/2addr v14, v10

    const/4 v15, 0x0

    invoke-virtual {v13, v15, v10, v12, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    .line 105
    :cond_9
    if-eqz v6, :cond_b

    .line 106
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mLTRLayout:Z

    if-eqz v13, :cond_a

    .line 107
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mMarginLeft2:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDividerHeight:I

    add-int/2addr v15, v10

    invoke-virtual {v13, v14, v10, v12, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    .line 109
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mMarginLeft2:I

    sub-int v14, v12, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDividerHeight:I

    add-int/2addr v15, v10

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0, v10, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_2

    .line 112
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDividerHeight:I

    add-int/2addr v14, v10

    const/4 v15, 0x0

    invoke-virtual {v13, v15, v10, v12, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_2

    .line 63
    .end local v6    # "hasCategory":Z
    .end local v7    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v10    # "top":I
    .end local v11    # "view":Landroid/view/View;
    :cond_c
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 160
    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDividerHeight:I

    .line 165
    :goto_0
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 159
    return-void

    .line 163
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDividerHeight:I

    goto :goto_0
.end method

.method public setDividerHeight(I)V
    .locals 0
    .param p1, "dividerHeight"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDividerHeight:I

    .line 169
    return-void
.end method
