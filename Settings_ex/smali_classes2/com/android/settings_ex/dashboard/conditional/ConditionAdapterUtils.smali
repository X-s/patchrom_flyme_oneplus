.class public Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils;
.super Ljava/lang/Object;
.source "ConditionAdapterUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDismiss(Landroid/support/v7/widget/RecyclerView;)V
    .locals 4
    .param p0, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 38
    new-instance v0, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils$1;

    const/4 v2, 0x0

    .line 39
    const/16 v3, 0x30

    .line 38
    invoke-direct {v0, v2, v3, p0}, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils$1;-><init>(IILandroid/support/v7/widget/RecyclerView;)V

    .line 61
    .local v0, "callback":Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;
    new-instance v1, Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    .line 62
    .local v1, "itemTouchHelper":Landroid/support/v7/widget/helper/ItemTouchHelper;
    invoke-virtual {v1, p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 37
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

    .line 168
    const v1, 0x7f1100ea

    invoke-static {p2, v1, p4}, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils;->setViewVisibility(Landroid/view/View;IZ)V

    .line 169
    const v1, 0x7f1100eb

    invoke-static {p2, v1, p4}, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils;->setViewVisibility(Landroid/view/View;IZ)V

    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 171
    .local v0, "beforeBottom":I
    if-eqz p3, :cond_0

    const/4 v1, -0x2

    :goto_0
    invoke-static {p2, v1}, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils;->setHeight(Landroid/view/View;I)V

    .line 172
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 173
    new-instance v1, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils$3;

    invoke-direct {v1, p1, v0, p3, p2}, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils$3;-><init>(Landroid/view/View;IZLandroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 167
    return-void

    :cond_0
    move v1, v2

    .line 171
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
    .line 68
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v13, 0x7f1100e6

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 69
    .local v3, "card":Landroid/view/View;
    invoke-virtual {v3, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/conditional/Condition;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 71
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/conditional/Condition;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/conditional/Condition;->getSummary()Ljava/lang/CharSequence;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 74
    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/conditional/Condition;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    if-nez v12, :cond_6

    .line 77
    const/16 v12, 0x8

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    .line 82
    :goto_0
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v13, 0x7f1100e8

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 83
    .local v7, "expand":Landroid/widget/ImageView;
    invoke-virtual {v7, p0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 84
    if-eqz p2, :cond_7

    const v12, 0x7f020102

    :goto_1
    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    invoke-virtual {v7}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v13

    if-eqz p2, :cond_8

    .line 86
    const v12, 0x7f0e0ff3

    .line 85
    :goto_2
    invoke-virtual {v13, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 87
    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v13, 0x7f1100e9

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 90
    .local v5, "detailGroup":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/conditional/Condition;->getActions()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 91
    .local v1, "actions":[Ljava/lang/CharSequence;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_9

    const/4 v12, 0x1

    :goto_3
    move/from16 v0, p2

    if-eq v0, v12, :cond_1

    .line 93
    invoke-virtual {v7}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0e03e6

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/conditional/Condition;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 94
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v14, 0x7f1100e6

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 95
    array-length v12, v1

    if-lez v12, :cond_a

    const/4 v12, 0x1

    .line 94
    :goto_4
    move/from16 v0, p2

    invoke-static {v13, v14, v5, v0, v12}, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils;->animateChange(Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZ)V

    .line 100
    :cond_1
    const/4 v4, 0x0

    .line 101
    .local v4, "conditionflag":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/conditional/Condition;->getSummary()Ljava/lang/CharSequence;

    move-result-object v12

    if-nez v12, :cond_b

    .line 102
    const/4 v4, 0x1

    .line 103
    const/16 v12, 0x8

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    :goto_5
    invoke-virtual {v7}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0e03e6

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/conditional/Condition;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 110
    const/16 v12, 0x8

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    :cond_2
    if-eqz p2, :cond_f

    .line 115
    invoke-virtual {v7}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0e03e6

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/conditional/Condition;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 116
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/conditional/Condition;->getSummary()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :cond_3
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_6
    const/4 v12, 0x2

    if-ge v9, v12, :cond_f

    .line 120
    if-nez v9, :cond_c

    .line 121
    const v12, 0x7f1100ec

    .line 120
    :goto_7
    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 122
    .local v2, "button":Landroid/widget/Button;
    array-length v12, v1

    if-le v12, v9, :cond_d

    .line 123
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 124
    aget-object v12, v1, v9

    invoke-virtual {v2, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 125
    move v10, v9

    .line 126
    .local v10, "index":I
    new-instance v12, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils$2;

    invoke-direct {v12, p0, v10}, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils$2;-><init>(Lcom/android/settings_ex/dashboard/conditional/Condition;I)V

    invoke-virtual {v2, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    .end local v10    # "index":I
    :goto_8
    invoke-virtual {v7}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0e0359

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 141
    .local v8, "hotspottitle":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string/jumbo v13, "oem.wifi.stasap.concurrency.support"

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    .line 142
    .local v11, "mWifiStaSapConcurrencySupport":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/conditional/Condition;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    if-eqz v11, :cond_e

    .line 143
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    :goto_9
    if-eqz v4, :cond_4

    .line 149
    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 150
    const v12, 0x7f1100ea

    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 151
    .local v6, "dividerview":Landroid/view/View;
    const/16 v12, 0x8

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 155
    .end local v6    # "dividerview":Landroid/view/View;
    :cond_4
    invoke-virtual {v7}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0e03e6

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/conditional/Condition;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 156
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 158
    const v12, 0x7f1100ea

    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 159
    .restart local v6    # "dividerview":Landroid/view/View;
    const/16 v12, 0x8

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 119
    .end local v6    # "dividerview":Landroid/view/View;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_6

    .line 79
    .end local v1    # "actions":[Ljava/lang/CharSequence;
    .end local v2    # "button":Landroid/widget/Button;
    .end local v4    # "conditionflag":Z
    .end local v5    # "detailGroup":Landroid/view/View;
    .end local v7    # "expand":Landroid/widget/ImageView;
    .end local v8    # "hotspottitle":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v11    # "mWifiStaSapConcurrencySupport":Z
    :cond_6
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 84
    .restart local v7    # "expand":Landroid/widget/ImageView;
    :cond_7
    const v12, 0x7f020103

    goto/16 :goto_1

    .line 86
    :cond_8
    const v12, 0x7f0e0ff2

    goto/16 :goto_2

    .line 91
    .restart local v1    # "actions":[Ljava/lang/CharSequence;
    .restart local v5    # "detailGroup":Landroid/view/View;
    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 95
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 105
    .restart local v4    # "conditionflag":Z
    :cond_b
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 121
    .restart local v9    # "i":I
    :cond_c
    const v12, 0x7f1100ed

    goto/16 :goto_7

    .line 136
    .restart local v2    # "button":Landroid/widget/Button;
    :cond_d
    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_8

    .line 145
    .restart local v8    # "hotspottitle":Ljava/lang/String;
    .restart local v11    # "mWifiStaSapConcurrencySupport":Z
    :cond_e
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9

    .line 67
    .end local v2    # "button":Landroid/widget/Button;
    .end local v8    # "hotspottitle":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v11    # "mWifiStaSapConcurrencySupport":Z
    :cond_f
    return-void
.end method

.method private static setHeight(Landroid/view/View;I)V
    .locals 1
    .param p0, "detailGroup"    # Landroid/view/View;
    .param p1, "height"    # I

    .prologue
    .line 198
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 199
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 200
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    return-void
.end method

.method private static setViewVisibility(Landroid/view/View;IZ)V
    .locals 2
    .param p0, "containerView"    # Landroid/view/View;
    .param p1, "viewId"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 205
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 206
    if-eqz p2, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    :cond_0
    return-void

    .line 206
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method
