.class public Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils;
.super Ljava/lang/Object;
.source "ConditionAdapterUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDismiss(Landroid/support/v7/widget/RecyclerView;)V
    .locals 4
    .param p0, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 37
    new-instance v0, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils$1;

    const/4 v2, 0x0

    .line 38
    const/16 v3, 0x30

    .line 37
    invoke-direct {v0, v2, v3, p0}, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils$1;-><init>(IILandroid/support/v7/widget/RecyclerView;)V

    .line 60
    .local v0, "callback":Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;
    new-instance v1, Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    .line 61
    .local v1, "itemTouchHelper":Landroid/support/v7/widget/helper/ItemTouchHelper;
    invoke-virtual {v1, p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 36
    return-void
.end method

.method private static animateChange(Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZ)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "content"    # Landroid/view/View;
    .param p2, "detailGroup"    # Landroid/view/View;
    .param p3, "visible"    # Z
    .param p4, "hasButtons"    # Z

    .prologue
    const/4 v2, 0x0

    .line 146
    const v1, 0x7f1100ea

    invoke-static {p2, v1, p4}, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils;->setViewVisibility(Landroid/view/View;IZ)V

    .line 147
    const v1, 0x7f1100eb

    invoke-static {p2, v1, p4}, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils;->setViewVisibility(Landroid/view/View;IZ)V

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 149
    .local v0, "beforeBottom":I
    if-eqz p3, :cond_0

    const/4 v1, -0x2

    :goto_0
    invoke-static {p2, v1}, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils;->setHeight(Landroid/view/View;I)V

    .line 150
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 151
    new-instance v1, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils$3;

    invoke-direct {v1, p1, v0, p3, p2}, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils$3;-><init>(Landroid/view/View;IZLandroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 145
    return-void

    :cond_0
    move v1, v2

    .line 149
    goto :goto_0
.end method

.method public static bindViews(Lcom/android/settings_ex/dashboard/conditional/Condition;Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 15
    .param p0, "condition"    # Lcom/android/settings_ex/dashboard/conditional/Condition;
    .param p1, "view"    # Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;
    .param p2, "isExpanded"    # Z
    .param p3, "onClickListener"    # Landroid/view/View$OnClickListener;
    .param p4, "onExpandListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 67
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v13, 0x7f1100e6

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 68
    .local v3, "card":Landroid/view/View;
    invoke-virtual {v3, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 69
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/conditional/Condition;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 70
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/conditional/Condition;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/conditional/Condition;->getSummary()Ljava/lang/CharSequence;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 73
    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/conditional/Condition;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    if-nez v12, :cond_3

    .line 76
    const/16 v12, 0x8

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    .line 81
    :goto_0
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v13, 0x7f1100e8

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 82
    .local v7, "expand":Landroid/widget/ImageView;
    invoke-virtual {v7, p0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 83
    if-eqz p2, :cond_4

    const v12, 0x7f020101

    :goto_1
    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    invoke-virtual {v7}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v13

    if-eqz p2, :cond_5

    .line 85
    const v12, 0x7f0e0fc5

    .line 84
    :goto_2
    invoke-virtual {v13, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 86
    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v13, 0x7f1100e9

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 89
    .local v5, "detailGroup":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/conditional/Condition;->getActions()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 90
    .local v1, "actions":[Ljava/lang/CharSequence;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_6

    const/4 v12, 0x1

    :goto_3
    move/from16 v0, p2

    if-eq v0, v12, :cond_1

    .line 91
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v14, 0x7f1100e6

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 92
    array-length v12, v1

    if-lez v12, :cond_7

    const/4 v12, 0x1

    .line 91
    :goto_4
    move/from16 v0, p2

    invoke-static {v13, v14, v5, v0, v12}, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils;->animateChange(Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZ)V

    .line 95
    :cond_1
    const/4 v4, 0x0

    .line 96
    .local v4, "conditionflag":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/conditional/Condition;->getSummary()Ljava/lang/CharSequence;

    move-result-object v12

    if-nez v12, :cond_8

    .line 97
    const/4 v4, 0x1

    .line 98
    const/16 v12, 0x8

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    :goto_5
    if-eqz p2, :cond_c

    .line 104
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/conditional/Condition;->getSummary()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_6
    const/4 v12, 0x2

    if-ge v9, v12, :cond_c

    .line 106
    if-nez v9, :cond_9

    .line 107
    const v12, 0x7f1100ec

    .line 106
    :goto_7
    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 108
    .local v2, "button":Landroid/widget/Button;
    array-length v12, v1

    if-le v12, v9, :cond_a

    .line 109
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 110
    aget-object v12, v1, v9

    invoke-virtual {v2, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 111
    move v10, v9

    .line 112
    .local v10, "index":I
    new-instance v12, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils$2;

    invoke-direct {v12, p0, v10}, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils$2;-><init>(Lcom/android/settings_ex/dashboard/conditional/Condition;I)V

    invoke-virtual {v2, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    .end local v10    # "index":I
    :goto_8
    invoke-virtual {v7}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0e0359

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 127
    .local v8, "hotspottitle":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string/jumbo v13, "oem.wifi.stasap.concurrency.support"

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    .line 128
    .local v11, "mWifiStaSapConcurrencySupport":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/conditional/Condition;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    if-eqz v11, :cond_b

    .line 129
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    :goto_9
    if-eqz v4, :cond_2

    .line 135
    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 136
    const v12, 0x7f1100ea

    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 137
    .local v6, "dividerview":Landroid/view/View;
    const/16 v12, 0x8

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .end local v6    # "dividerview":Landroid/view/View;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 78
    .end local v1    # "actions":[Ljava/lang/CharSequence;
    .end local v2    # "button":Landroid/widget/Button;
    .end local v4    # "conditionflag":Z
    .end local v5    # "detailGroup":Landroid/view/View;
    .end local v7    # "expand":Landroid/widget/ImageView;
    .end local v8    # "hotspottitle":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v11    # "mWifiStaSapConcurrencySupport":Z
    :cond_3
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 83
    .restart local v7    # "expand":Landroid/widget/ImageView;
    :cond_4
    const v12, 0x7f020102

    goto/16 :goto_1

    .line 85
    :cond_5
    const v12, 0x7f0e0fc4

    goto/16 :goto_2

    .line 90
    .restart local v1    # "actions":[Ljava/lang/CharSequence;
    .restart local v5    # "detailGroup":Landroid/view/View;
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 92
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 100
    .restart local v4    # "conditionflag":Z
    :cond_8
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 107
    .restart local v9    # "i":I
    :cond_9
    const v12, 0x7f1100ed

    goto :goto_7

    .line 122
    .restart local v2    # "button":Landroid/widget/Button;
    :cond_a
    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_8

    .line 131
    .restart local v8    # "hotspottitle":Ljava/lang/String;
    .restart local v11    # "mWifiStaSapConcurrencySupport":Z
    :cond_b
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9

    .line 66
    .end local v2    # "button":Landroid/widget/Button;
    .end local v8    # "hotspottitle":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v11    # "mWifiStaSapConcurrencySupport":Z
    :cond_c
    return-void
.end method

.method private static setHeight(Landroid/view/View;I)V
    .locals 1
    .param p0, "detailGroup"    # Landroid/view/View;
    .param p1, "height"    # I

    .prologue
    .line 176
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 177
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 178
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    return-void
.end method

.method private static setViewVisibility(Landroid/view/View;IZ)V
    .locals 2
    .param p0, "containerView"    # Landroid/view/View;
    .param p1, "viewId"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 183
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 184
    if-eqz p2, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 181
    :cond_0
    return-void

    .line 184
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method
