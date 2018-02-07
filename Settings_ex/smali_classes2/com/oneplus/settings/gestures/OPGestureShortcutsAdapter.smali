.class public Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;
.super Landroid/widget/BaseAdapter;
.source "OPGestureShortcutsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_ITEM:I = 0x1

.field private static final VIEW_TYPE_TITLE:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGestureAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/gestures/OPGestureAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureSummary:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mSelectedPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p3, "gestureSummary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/gestures/OPGestureAppModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "gestureAppList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/gestures/OPGestureAppModel;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->mGestureAppList:Ljava/util/List;

    .line 32
    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->mContext:Landroid/content/Context;

    .line 33
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 34
    iput-object p2, p0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->mGestureAppList:Ljava/util/List;

    .line 35
    iput-object p3, p0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->mGestureSummary:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->mGestureAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/oneplus/settings/gestures/OPGestureAppModel;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->mGestureAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/gestures/OPGestureAppModel;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->getItem(I)Lcom/oneplus/settings/gestures/OPGestureAppModel;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 68
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "mItemViewHolder":Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->mGestureAppList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/gestures/OPGestureAppModel;

    .line 76
    .local v1, "model":Lcom/oneplus/settings/gestures/OPGestureAppModel;
    if-nez p2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 78
    const v3, 0x7f0400e4

    .line 77
    invoke-virtual {v2, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 79
    new-instance v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;

    .end local v0    # "mItemViewHolder":Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;
    invoke-direct {v0, p0}, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;-><init>(Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;)V

    .line 81
    .local v0, "mItemViewHolder":Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;
    const v2, 0x7f11020e

    .line 80
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->parent:Landroid/widget/RelativeLayout;

    .line 83
    const v2, 0x7f11020d

    .line 82
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    .line 85
    const/high16 v2, 0x7f110000

    .line 84
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    .line 87
    const v2, 0x7f110145

    .line 86
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    .line 88
    const v2, 0x7f110210

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->bottomLine:Landroid/view/View;

    .line 90
    const v2, 0x7f11020c

    .line 89
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->groupDivider:Landroid/view/View;

    .line 92
    const v2, 0x7f110211

    .line 91
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->radioButton:Landroid/widget/RadioButton;

    .line 93
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 97
    :goto_0
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    if-ne p1, v6, :cond_1

    .line 99
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    const v3, 0x7f0e0383

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 104
    :goto_1
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/oneplus/settings/gestures/OPGestureAppModel;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/oneplus/settings/gestures/OPGestureAppModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    if-nez p1, :cond_2

    .line 108
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->bottomLine:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 112
    :goto_2
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->groupDivider:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->mGestureSummary:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/oneplus/settings/gestures/OPGestureAppModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 114
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 118
    :goto_3
    return-object p2

    .line 95
    .local v0, "mItemViewHolder":Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "mItemViewHolder":Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;
    check-cast v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;

    .local v0, "mItemViewHolder":Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;
    goto :goto_0

    .line 101
    :cond_1
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 110
    :cond_2
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->bottomLine:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 116
    :cond_3
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_3
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/gestures/OPGestureAppModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/gestures/OPGestureAppModel;>;"
    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->mGestureAppList:Ljava/util/List;

    .line 40
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->notifyDataSetChanged()V

    .line 38
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->mSelectedPosition:I

    .line 45
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->notifyDataSetChanged()V

    .line 43
    return-void
.end method

.method public setSelectedSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->mGestureSummary:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->notifyDataSetChanged()V

    .line 48
    return-void
.end method
